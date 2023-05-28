module Greenfield.Main where

import Control.Lens
import Control.Monad.Except
import qualified Crypto.Hash as Hash
import qualified Crypto.Secp256k1 as Secp256k1
import qualified Data.ByteArray as BA
import qualified Data.ByteString as BS
import qualified Data.ByteString.Base16 as BS.Base16
import qualified Data.ByteString.Base64 as BS.Base64
import qualified Data.ByteString.Char8 as BS.Char8
import qualified Data.ProtoLens as ProtoLens
import qualified Data.ProtoLens.Encoding.Wire as ProtoLens.Wire
import Data.ProtoLens.Field (field)
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text.Encoding
import Data.Word
import GHC.Generics
import qualified Greenfield.Main.Internal.CosmosRpc as G.CosmosRpc
import qualified Greenfield.Main.RpcConfig as G.RpcConfig
import qualified Proto.Cosmos.Auth.V1beta1.Auth as Proto.Auth.Auth
import qualified Proto.Cosmos.Auth.V1beta1.Query as Proto.Auth.Query
import qualified Proto.Cosmos.Base.V1beta1.Coin as Proto.Coin
import qualified Proto.Cosmos.Crypto.Eth.Ethsecp256k1 as Proto.Ethsecp256k1
import qualified Proto.Cosmos.Tx.Signing.V1beta1.Signing as Proto.Tx.Signing
import qualified Proto.Cosmos.Tx.V1beta1.Service as Proto.Tx.Service
import qualified Proto.Cosmos.Tx.V1beta1.Tx as Proto.Tx.Tx
import qualified Proto.Greenfield.Payment.Tx as Proto.Payment.Tx

data Account = Account
  { _address :: Text.Text,
    _accountNumber :: Word64,
    _sequence :: Word64
  }
  deriving (Show, Generic)

message :: Proto.Auth.Query.QueryAccountRequest
message =
  ProtoLens.defMessage @Proto.Auth.Query.QueryAccountRequest
    & field @"address"
      .~ testAddr

testAddr :: Text.Text
testAddr = "0x21e6f5649f9B9859a2e9c7F6b84921eb1FB35429"

testConfig :: G.RpcConfig.RpcConfig
testConfig =
  G.RpcConfig.defaultRpcConfig
    "https://gnfd-testnet-fullnode-tendermint-us.bnbchain.org"

testSecKey :: Secp256k1.SecKey
testSecKey =
  maybe (error "bad") id $
    Secp256k1.secKey $
      BS.Base16.decodeBase16Lenient $
        "d4de598fbe800ebaf45b2809730106c62839bb5189a63d7dfdd098d3452e7232"

testPubKey :: Secp256k1.PubKey
testPubKey =
  Secp256k1.derivePubKey testSecKey

queryAccount ::
  G.RpcConfig.RpcConfig ->
  Text.Text ->
  IO Account
queryAccount rpcConfig address = do
  let request =
        ProtoLens.defMessage @Proto.Auth.Query.QueryAccountRequest
          & field @"address" .~ address
  result <-
    G.CosmosRpc.performAbciQuery
      rpcConfig
      Proto.Auth.Query.Query
      #account
      request
  let accountAny = result ^. field @"account"
  baseAccount <-
    G.CosmosRpc.parseProtoAny @Proto.Auth.Auth.BaseAccount accountAny
  pure $
    Account
      { _address =
          baseAccount ^. field @"address",
        _accountNumber =
          baseAccount ^. field @"accountNumber",
        _sequence =
          baseAccount ^. field @"sequence"
      }

data GasPrice = GasPrice Text.Text Integer
  deriving (Show, Generic)

data SimulationResult = SimulationResult
  { _gasWanted :: Word64,
    _gasUsed :: Word64,
    _gasPrice :: [GasPrice]
  }
  deriving (Show, Generic)

simulateTx ::
  G.RpcConfig.RpcConfig ->
  BS.ByteString ->
  IO SimulationResult
simulateTx rpcConfig txBytes = do
  let request =
        ProtoLens.defMessage @Proto.Tx.Service.SimulateRequest
          & field @"txBytes" .~ txBytes
  result <-
    G.CosmosRpc.performAbciQuery
      rpcConfig
      Proto.Tx.Service.Service
      #simulate
      request
  let gasInfo = result ^. field @"gasInfo"
  pure $
    SimulationResult
      { _gasWanted =
          gasInfo ^. field @"gasWanted",
        _gasUsed =
          gasInfo ^. field @"gasUsed",
        _gasPrice = do
          ProtoLens.TaggedValue tag wval <- gasInfo ^. ProtoLens.unknownFields
          guard (tag == 3)
          bs <- case wval of
            ProtoLens.Wire.Lengthy bs -> [bs]
            _ -> []
          let bsDigits = BS.takeWhile isDigit bs
          guard (not $ BS.null bsDigits)
          let bsDenom = BS.dropWhile isDigit bs
          denom <-
            either (const []) (\x -> [x]) $
              Text.Encoding.decodeUtf8' bsDenom
          [GasPrice denom (read $ BS.Char8.unpack bsDigits)]
      }
  where
    isDigit x = 0x30 <= x && x <= 0x39

signBytes ::
  Secp256k1.SecKey ->
  BS.ByteString ->
  BS.ByteString
signBytes secKey bytes = do
  let hash = BA.convert $ Hash.hash @_ @Hash.SHA256 bytes
  case Secp256k1.msg hash of
    Just msg -> Secp256k1.exportSig $ Secp256k1.signMsg secKey msg
    Nothing -> error "bad hash"

createPaymentAccount ::
  G.RpcConfig.RpcConfig ->
  Text.Text ->
  Secp256k1.SecKey ->
  IO ()
createPaymentAccount rpcConfig creatorAddress creatorSecKey = do
  let msg =
        ProtoLens.defMessage @Proto.Payment.Tx.MsgCreatePaymentAccount
          & field @"creator"
            .~ creatorAddress
  creatorAccount <- queryAccount rpcConfig creatorAddress
  let txBody =
        ProtoLens.defMessage @Proto.Tx.Tx.TxBody
          & field @"messages"
            .~ [ G.CosmosRpc.toProtoAny msg
               ]
  let modeInfo =
        ProtoLens.defMessage @Proto.Tx.Tx.ModeInfo
          & field @"maybe'sum"
            .~ Just
              ( Proto.Tx.Tx.ModeInfo'Single' $
                  ProtoLens.defMessage
                    & field @"mode"
                      .~ toEnum @Proto.Tx.Signing.SignMode 712
              )
  let pubKey =
        ProtoLens.defMessage @Proto.Ethsecp256k1.PubKey
          & field @"key"
            .~ ( Secp256k1.exportPubKey True $
                   Secp256k1.derivePubKey creatorSecKey
               )
  let signerInfo =
        ProtoLens.defMessage @Proto.Tx.Tx.SignerInfo
          & field @"publicKey"
            .~ G.CosmosRpc.toProtoAny pubKey
          & field @"modeInfo"
            .~ modeInfo
          & field @"sequence"
            .~ (creatorAccount ^. #_sequence)
  let authInfoSimulated =
        ProtoLens.defMessage @Proto.Tx.Tx.AuthInfo
          & field @"signerInfos"
            .~ [ signerInfo
               ]
          & field @"fee"
            .~ ( ProtoLens.defMessage @Proto.Tx.Tx.Fee
                   & field @"amount"
                     .~ []
                   & field @"gasLimit"
                     .~ 0
                   & field @"payer"
                     .~ creatorAddress
                   & field @"granter"
                     .~ ""
               )
          & field @"tip"
            .~ ( ProtoLens.defMessage @Proto.Tx.Tx.Tip
                   & field @"amount"
                     .~ []
                   & field @"tipper"
                     .~ ""
               )
  let txBodyBytes = ProtoLens.encodeMessage txBody
  let txRawSimulated =
        ProtoLens.defMessage @Proto.Tx.Tx.TxRaw
          & field @"bodyBytes"
            .~ txBodyBytes
          & field @"authInfoBytes"
            .~ ProtoLens.encodeMessage authInfoSimulated
          & field @"signatures"
            .~ [ ""
               ]
  simResult <- simulateTx rpcConfig $ ProtoLens.encodeMessage txRawSimulated
  let gasRequired =
        round (1.5 * (fromIntegral (simResult ^. #_gasUsed) :: Double))
  let authInfo =
        authInfoSimulated
          & field @"fee" . field @"gasLimit"
            .~ gasRequired
          & field @"fee" . field @"amount"
            .~ ( do
                   GasPrice denom price <- simResult ^. #_gasPrice
                   let amt = price * (toInteger gasRequired)
                   [ ProtoLens.defMessage @Proto.Coin.Coin
                       & field @"denom"
                         .~ denom
                       & field @"amount"
                         .~ Text.pack (show amt)
                     ]
               )
  let authInfoBytes = ProtoLens.encodeMessage authInfo
  let chainId = "5600"
  let accountNumber = creatorAccount ^. #_accountNumber
  let _unused = (authInfoBytes, chainId, accountNumber)
  do
        let txRaw = ProtoLens.defMessage @Proto.Tx.Tx.TxRaw
                & field @"bodyBytes" .~
                    txBodyBytes
                & field @"authInfoBytes" .~
                    authInfoBytes
                & field @"signatures" .~
                    [ "00112233445566778899aabbccddeeff00112233445566778899aabbccddeeff"
                    ]
        print $ BS.Base64.encodeBase64 $ ProtoLens.encodeMessage txRaw
  fail "EIP-712 signing is not implemented, so signing transactions is currently impossible"

{-
Example of an EIP-712 request:

{
    "types": {
        "Coin": [
            {
                "name": "denom",
                "type": "string"
            },
            {
                "name": "amount",
                "type": "uint256"
            }
        ],
        "EIP712Domain": [
            {
                "name": "name",
                "type": "string"
            },
            {
                "name": "version",
                "type": "string"
            },
            {
                "name": "chainId",
                "type": "uint256"
            },
            {
                "name": "verifyingContract",
                "type": "string"
            },
            {
                "name": "salt",
                "type": "string"
            }
        ],
        "Tx": [
            {
                "name": "account_number",
                "type": "uint256"
            },
            {
                "name": "chain_id",
                "type": "uint256"
            },
            {
                "name": "fee",
                "type": "Fee"
            },
            {
                "name": "memo",
                "type": "string"
            },
            {
                "name": "msg",
                "type": "Msg"
            },
            {
                "name": "sequence",
                "type": "uint256"
            },
            {
                "name": "timeout_height",
                "type": "uint256"
            }
        ],
        "Fee": [
            {
                "name": "amount",
                "type": "Coin[]"
            },
            {
                "name": "gas_limit",
                "type": "uint256"
            },
            {
                "name": "payer",
                "type": "string"
            },
            {
                "name": "granter",
                "type": "string"
            }
        ],
        "TypeAmount": [
            {
                "name": "denom",
                "type": "string"
            },
            {
                "name": "amount",
                "type": "string"
            }
        ],
        "Msg": [
            {
                "name": "type",
                "type": "string"
            },
            {
                "name": "creator",
                "type": "string"
            },
            {
                "name": "bucket_name",
                "type": "string"
            },
            {
                "name": "visibility",
                "type": "string"
            },
            {
                "name": "payment_address",
                "type": "string"
            },
            {
                "name": "primary_sp_address",
                "type": "string"
            },
            {
                "name": "primary_sp_approval",
                "type": "TypePrimarySpApproval"
            },
            {
                "name": "charged_read_quota",
                "type": "uint64"
            }
        ],
        "TypePrimarySpApproval": [
            {
                "name": "expired_height",
                "type": "uint64"
            },
            {
                "name": "sig",
                "type": "bytes"
            }
        ]
    },
    "primaryType": "Tx",
    "domain": {
        "name": "Greenfield Tx",
        "version": "1.0.0",
        "chainId": "5600",
        "verifyingContract": "greenfield",
        "salt": "0"
    },
    "message": {
        "account_number": "1613",
        "chain_id": "5600",
        "sequence": "0",
        "memo": "",
        "fee": {
            "amount": [
                {
                    "amount": "12000000000000",
                    "denom": "BNB"
                }
            ],
            "gas_limit": "2400",
            "payer": "0x21e6f5649f9B9859a2e9c7F6b84921eb1FB35429",
            "granter": ""
        },
        "msg": {
            "type": "/greenfield.storage.MsgCreateBucket",
            "bucket_name": "evgeny-osipenko-1",
            "creator": "0x21e6f5649f9B9859a2e9c7F6b84921eb1FB35429",
            "visibility": "VISIBILITY_TYPE_PUBLIC_READ",
            "payment_address": "",
            "primary_sp_address": "0xa3ac8c0999b73f028122CE609e318c7da09cb752",
            "primary_sp_approval": {
                "expired_height": "103527",
                "sig": "10A/F7PtY+QIZGJFCe9vsULBtBAA2tOj1NVDxAjRM3wAywzNIHfySr9NmXcRyWbg6FwfXuy4C4QfIu4Hrd7NAgE="
            },
            "charged_read_quota": "0"
        },
        "timeout_height": "0"
    }
}
-}
