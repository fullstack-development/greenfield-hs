{- This file was auto-generated from greenfield/sp/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Tx (
        Msg(..), MsgCreateStorageProvider(),
        MsgCreateStorageProviderResponse(), MsgDeposit(),
        MsgDepositResponse(), MsgEditStorageProvider(),
        MsgEditStorageProviderResponse(), MsgUpdateParams(),
        MsgUpdateParamsResponse(), MsgUpdateSpStoragePrice(),
        MsgUpdateSpStoragePriceResponse()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Sp.Params
import qualified Proto.Greenfield.Sp.Types
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Tx_Fields.creator' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.description' @:: Lens' MsgCreateStorageProvider Proto.Greenfield.Sp.Types.Description@
         * 'Proto.Greenfield.Sp.Tx_Fields.maybe'description' @:: Lens' MsgCreateStorageProvider (Prelude.Maybe Proto.Greenfield.Sp.Types.Description)@
         * 'Proto.Greenfield.Sp.Tx_Fields.spAddress' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.fundingAddress' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.sealAddress' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.approvalAddress' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.gcAddress' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.endpoint' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.deposit' @:: Lens' MsgCreateStorageProvider Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Sp.Tx_Fields.maybe'deposit' @:: Lens' MsgCreateStorageProvider (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Greenfield.Sp.Tx_Fields.readPrice' @:: Lens' MsgCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.freeReadQuota' @:: Lens' MsgCreateStorageProvider Data.Word.Word64@
         * 'Proto.Greenfield.Sp.Tx_Fields.storePrice' @:: Lens' MsgCreateStorageProvider Data.Text.Text@ -}
data MsgCreateStorageProvider
  = MsgCreateStorageProvider'_constructor {_MsgCreateStorageProvider'creator :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'description :: !(Prelude.Maybe Proto.Greenfield.Sp.Types.Description),
                                           _MsgCreateStorageProvider'spAddress :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'fundingAddress :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'sealAddress :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'approvalAddress :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'gcAddress :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'endpoint :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'deposit :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                           _MsgCreateStorageProvider'readPrice :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'freeReadQuota :: !Data.Word.Word64,
                                           _MsgCreateStorageProvider'storePrice :: !Data.Text.Text,
                                           _MsgCreateStorageProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateStorageProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'creator
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "description" Proto.Greenfield.Sp.Types.Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'description
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "maybe'description" (Prelude.Maybe Proto.Greenfield.Sp.Types.Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'description
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'spAddress
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "fundingAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'fundingAddress
           (\ x__ y__
              -> x__ {_MsgCreateStorageProvider'fundingAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "sealAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'sealAddress
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'sealAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "approvalAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'approvalAddress
           (\ x__ y__
              -> x__ {_MsgCreateStorageProvider'approvalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "gcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'gcAddress
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'gcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'endpoint
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "deposit" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'deposit
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'deposit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "maybe'deposit" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'deposit
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'deposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "readPrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'readPrice
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'readPrice = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "freeReadQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'freeReadQuota
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'freeReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateStorageProvider "storePrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateStorageProvider'storePrice
           (\ x__ y__ -> x__ {_MsgCreateStorageProvider'storePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateStorageProvider where
  messageName _
    = Data.Text.pack "greenfield.sp.MsgCreateStorageProvider"
  packedMessageDescriptor _
    = "\n\
      \\CANMsgCreateStorageProvider\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2B\n\
      \\vdescription\CAN\STX \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL\DC27\n\
      \\n\
      \sp_address\CAN\ETX \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
      \\SIfunding_address\CAN\EOT \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
      \\fseal_address\CAN\ENQ \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\DLEapproval_address\CAN\ACK \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \gc_address\CAN\a \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bendpoint\CAN\b \SOH(\tR\bendpoint\DC29\n\
      \\adeposit\CAN\t \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\adepositB\EOT\200\222\US\NUL\DC2[\n\
      \\n\
      \read_price\CAN\n\
      \ \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2&\n\
      \\SIfree_read_quota\CAN\v \SOH(\EOTR\rfreeReadQuota\DC2]\n\
      \\vstore_price\CAN\f \SOH(\tR\n\
      \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec:\f\130\231\176*\acreator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"creator")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        fundingAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "funding_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fundingAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        sealAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seal_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sealAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        approvalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "approval_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"approvalAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        gcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gc_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gcAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        deposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deposit")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        readPrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readPrice")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        freeReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free_read_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"freeReadQuota")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
        storePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storePrice")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateStorageProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, fundingAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, sealAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, approvalAddress__field_descriptor),
           (Data.ProtoLens.Tag 7, gcAddress__field_descriptor),
           (Data.ProtoLens.Tag 8, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 9, deposit__field_descriptor),
           (Data.ProtoLens.Tag 10, readPrice__field_descriptor),
           (Data.ProtoLens.Tag 11, freeReadQuota__field_descriptor),
           (Data.ProtoLens.Tag 12, storePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateStorageProvider'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateStorageProvider'_unknownFields = y__})
  defMessage
    = MsgCreateStorageProvider'_constructor
        {_MsgCreateStorageProvider'creator = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'description = Prelude.Nothing,
         _MsgCreateStorageProvider'spAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'fundingAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'sealAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'approvalAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'gcAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'endpoint = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'deposit = Prelude.Nothing,
         _MsgCreateStorageProvider'readPrice = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'freeReadQuota = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'storePrice = Data.ProtoLens.fieldDefault,
         _MsgCreateStorageProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateStorageProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateStorageProvider
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "creator"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "sp_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddress") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "funding_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fundingAddress") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "seal_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sealAddress") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "approval_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"approvalAddress") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "gc_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gcAddress") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deposit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"deposit") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "read_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readPrice") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "free_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"freeReadQuota") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "store_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCreateStorageProvider"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"creator") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'description") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddress") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"fundingAddress") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"sealAddress") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"approvalAddress") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"gcAddress") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"endpoint") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'deposit") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"readPrice") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8 _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"freeReadQuota") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"storePrice") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((Prelude..)
                                                          (\ bs
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     (Prelude.fromIntegral
                                                                        (Data.ByteString.length
                                                                           bs)))
                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                     bs))
                                                          Data.Text.Encoding.encodeUtf8 _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData MsgCreateStorageProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateStorageProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateStorageProvider'creator x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateStorageProvider'description x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreateStorageProvider'spAddress x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreateStorageProvider'fundingAddress x__)
                         (Control.DeepSeq.deepseq
                            (_MsgCreateStorageProvider'sealAddress x__)
                            (Control.DeepSeq.deepseq
                               (_MsgCreateStorageProvider'approvalAddress x__)
                               (Control.DeepSeq.deepseq
                                  (_MsgCreateStorageProvider'gcAddress x__)
                                  (Control.DeepSeq.deepseq
                                     (_MsgCreateStorageProvider'endpoint x__)
                                     (Control.DeepSeq.deepseq
                                        (_MsgCreateStorageProvider'deposit x__)
                                        (Control.DeepSeq.deepseq
                                           (_MsgCreateStorageProvider'readPrice x__)
                                           (Control.DeepSeq.deepseq
                                              (_MsgCreateStorageProvider'freeReadQuota x__)
                                              (Control.DeepSeq.deepseq
                                                 (_MsgCreateStorageProvider'storePrice x__)
                                                 ()))))))))))))
{- | Fields :
      -}
data MsgCreateStorageProviderResponse
  = MsgCreateStorageProviderResponse'_constructor {_MsgCreateStorageProviderResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateStorageProviderResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCreateStorageProviderResponse where
  messageName _
    = Data.Text.pack "greenfield.sp.MsgCreateStorageProviderResponse"
  packedMessageDescriptor _
    = "\n\
      \ MsgCreateStorageProviderResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateStorageProviderResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreateStorageProviderResponse'_unknownFields = y__})
  defMessage
    = MsgCreateStorageProviderResponse'_constructor
        {_MsgCreateStorageProviderResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateStorageProviderResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateStorageProviderResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgCreateStorageProviderResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCreateStorageProviderResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateStorageProviderResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Tx_Fields.creator' @:: Lens' MsgDeposit Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.spAddress' @:: Lens' MsgDeposit Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.deposit' @:: Lens' MsgDeposit Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Sp.Tx_Fields.maybe'deposit' @:: Lens' MsgDeposit (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgDeposit
  = MsgDeposit'_constructor {_MsgDeposit'creator :: !Data.Text.Text,
                             _MsgDeposit'spAddress :: !Data.Text.Text,
                             _MsgDeposit'deposit :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                             _MsgDeposit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeposit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeposit "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'creator (\ x__ y__ -> x__ {_MsgDeposit'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeposit "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'spAddress
           (\ x__ y__ -> x__ {_MsgDeposit'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeposit "deposit" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'deposit (\ x__ y__ -> x__ {_MsgDeposit'deposit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgDeposit "maybe'deposit" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'deposit (\ x__ y__ -> x__ {_MsgDeposit'deposit = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeposit where
  messageName _ = Data.Text.pack "greenfield.sp.MsgDeposit"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \MsgDeposit\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \sp_address\CAN\STX \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
      \\adeposit\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\adepositB\EOT\200\222\US\NUL:\f\130\231\176*\acreator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"creator")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
        deposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deposit")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, deposit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeposit'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeposit'_unknownFields = y__})
  defMessage
    = MsgDeposit'_constructor
        {_MsgDeposit'creator = Data.ProtoLens.fieldDefault,
         _MsgDeposit'spAddress = Data.ProtoLens.fieldDefault,
         _MsgDeposit'deposit = Prelude.Nothing,
         _MsgDeposit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeposit -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeposit
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "creator"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "sp_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddress") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deposit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"deposit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeposit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"creator") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddress") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'deposit") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgDeposit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeposit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeposit'creator x__)
                (Control.DeepSeq.deepseq
                   (_MsgDeposit'spAddress x__)
                   (Control.DeepSeq.deepseq (_MsgDeposit'deposit x__) ())))
{- | Fields :
      -}
data MsgDepositResponse
  = MsgDepositResponse'_constructor {_MsgDepositResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDepositResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDepositResponse where
  messageName _ = Data.Text.pack "greenfield.sp.MsgDepositResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgDepositResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDepositResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDepositResponse'_unknownFields = y__})
  defMessage
    = MsgDepositResponse'_constructor
        {_MsgDepositResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDepositResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDepositResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDepositResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDepositResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDepositResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Tx_Fields.spAddress' @:: Lens' MsgEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.endpoint' @:: Lens' MsgEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.description' @:: Lens' MsgEditStorageProvider Proto.Greenfield.Sp.Types.Description@
         * 'Proto.Greenfield.Sp.Tx_Fields.maybe'description' @:: Lens' MsgEditStorageProvider (Prelude.Maybe Proto.Greenfield.Sp.Types.Description)@
         * 'Proto.Greenfield.Sp.Tx_Fields.sealAddress' @:: Lens' MsgEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.approvalAddress' @:: Lens' MsgEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.gcAddress' @:: Lens' MsgEditStorageProvider Data.Text.Text@ -}
data MsgEditStorageProvider
  = MsgEditStorageProvider'_constructor {_MsgEditStorageProvider'spAddress :: !Data.Text.Text,
                                         _MsgEditStorageProvider'endpoint :: !Data.Text.Text,
                                         _MsgEditStorageProvider'description :: !(Prelude.Maybe Proto.Greenfield.Sp.Types.Description),
                                         _MsgEditStorageProvider'sealAddress :: !Data.Text.Text,
                                         _MsgEditStorageProvider'approvalAddress :: !Data.Text.Text,
                                         _MsgEditStorageProvider'gcAddress :: !Data.Text.Text,
                                         _MsgEditStorageProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgEditStorageProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgEditStorageProvider "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditStorageProvider'spAddress
           (\ x__ y__ -> x__ {_MsgEditStorageProvider'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditStorageProvider "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditStorageProvider'endpoint
           (\ x__ y__ -> x__ {_MsgEditStorageProvider'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditStorageProvider "description" Proto.Greenfield.Sp.Types.Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditStorageProvider'description
           (\ x__ y__ -> x__ {_MsgEditStorageProvider'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgEditStorageProvider "maybe'description" (Prelude.Maybe Proto.Greenfield.Sp.Types.Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditStorageProvider'description
           (\ x__ y__ -> x__ {_MsgEditStorageProvider'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditStorageProvider "sealAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditStorageProvider'sealAddress
           (\ x__ y__ -> x__ {_MsgEditStorageProvider'sealAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditStorageProvider "approvalAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditStorageProvider'approvalAddress
           (\ x__ y__ -> x__ {_MsgEditStorageProvider'approvalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditStorageProvider "gcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditStorageProvider'gcAddress
           (\ x__ y__ -> x__ {_MsgEditStorageProvider'gcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgEditStorageProvider where
  messageName _
    = Data.Text.pack "greenfield.sp.MsgEditStorageProvider"
  packedMessageDescriptor _
    = "\n\
      \\SYNMsgEditStorageProvider\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2<\n\
      \\vdescription\CAN\ETX \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescription\DC2;\n\
      \\fseal_address\CAN\EOT \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\DLEapproval_address\CAN\ENQ \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \gc_address\CAN\ACK \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString:\SI\130\231\176*\n\
      \sp_address"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgEditStorageProvider
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor MsgEditStorageProvider
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor MsgEditStorageProvider
        sealAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seal_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sealAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgEditStorageProvider
        approvalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "approval_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"approvalAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgEditStorageProvider
        gcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gc_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gcAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgEditStorageProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, description__field_descriptor),
           (Data.ProtoLens.Tag 4, sealAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, approvalAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, gcAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgEditStorageProvider'_unknownFields
        (\ x__ y__ -> x__ {_MsgEditStorageProvider'_unknownFields = y__})
  defMessage
    = MsgEditStorageProvider'_constructor
        {_MsgEditStorageProvider'spAddress = Data.ProtoLens.fieldDefault,
         _MsgEditStorageProvider'endpoint = Data.ProtoLens.fieldDefault,
         _MsgEditStorageProvider'description = Prelude.Nothing,
         _MsgEditStorageProvider'sealAddress = Data.ProtoLens.fieldDefault,
         _MsgEditStorageProvider'approvalAddress = Data.ProtoLens.fieldDefault,
         _MsgEditStorageProvider'gcAddress = Data.ProtoLens.fieldDefault,
         _MsgEditStorageProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgEditStorageProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgEditStorageProvider
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "sp_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddress") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "seal_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sealAddress") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "approval_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"approvalAddress") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "gc_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gcAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgEditStorageProvider"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddress") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'description") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"sealAddress") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"approvalAddress") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gcAddress") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MsgEditStorageProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgEditStorageProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgEditStorageProvider'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgEditStorageProvider'endpoint x__)
                   (Control.DeepSeq.deepseq
                      (_MsgEditStorageProvider'description x__)
                      (Control.DeepSeq.deepseq
                         (_MsgEditStorageProvider'sealAddress x__)
                         (Control.DeepSeq.deepseq
                            (_MsgEditStorageProvider'approvalAddress x__)
                            (Control.DeepSeq.deepseq
                               (_MsgEditStorageProvider'gcAddress x__) ()))))))
{- | Fields :
      -}
data MsgEditStorageProviderResponse
  = MsgEditStorageProviderResponse'_constructor {_MsgEditStorageProviderResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgEditStorageProviderResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgEditStorageProviderResponse where
  messageName _
    = Data.Text.pack "greenfield.sp.MsgEditStorageProviderResponse"
  packedMessageDescriptor _
    = "\n\
      \\RSMsgEditStorageProviderResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgEditStorageProviderResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgEditStorageProviderResponse'_unknownFields = y__})
  defMessage
    = MsgEditStorageProviderResponse'_constructor
        {_MsgEditStorageProviderResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgEditStorageProviderResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgEditStorageProviderResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgEditStorageProviderResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgEditStorageProviderResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgEditStorageProviderResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Greenfield.Sp.Params.Params@
         * 'Proto.Greenfield.Sp.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Greenfield.Sp.Params.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Greenfield.Sp.Params.Params),
                                  _MsgUpdateParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateParams "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'authority
           (\ x__ y__ -> x__ {_MsgUpdateParams'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Greenfield.Sp.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Greenfield.Sp.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _ = Data.Text.pack "greenfield.sp.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC23\n\
      \\ACKparams\CAN\STX \SOH(\v2\NAK.greenfield.sp.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Params.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParams'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParams'_unknownFields = y__})
  defMessage
    = MsgUpdateParams'_constructor
        {_MsgUpdateParams'authority = Data.ProtoLens.fieldDefault,
         _MsgUpdateParams'params = Prelude.Nothing,
         _MsgUpdateParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParams
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParams
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgUpdateParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateParams'authority x__)
                (Control.DeepSeq.deepseq (_MsgUpdateParams'params x__) ()))
{- | Fields :
      -}
data MsgUpdateParamsResponse
  = MsgUpdateParamsResponse'_constructor {_MsgUpdateParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateParamsResponse where
  messageName _
    = Data.Text.pack "greenfield.sp.MsgUpdateParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgUpdateParamsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParamsResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateParamsResponse'_constructor
        {_MsgUpdateParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParamsResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParamsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParamsResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Tx_Fields.spAddress' @:: Lens' MsgUpdateSpStoragePrice Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.readPrice' @:: Lens' MsgUpdateSpStoragePrice Data.Text.Text@
         * 'Proto.Greenfield.Sp.Tx_Fields.freeReadQuota' @:: Lens' MsgUpdateSpStoragePrice Data.Word.Word64@
         * 'Proto.Greenfield.Sp.Tx_Fields.storePrice' @:: Lens' MsgUpdateSpStoragePrice Data.Text.Text@ -}
data MsgUpdateSpStoragePrice
  = MsgUpdateSpStoragePrice'_constructor {_MsgUpdateSpStoragePrice'spAddress :: !Data.Text.Text,
                                          _MsgUpdateSpStoragePrice'readPrice :: !Data.Text.Text,
                                          _MsgUpdateSpStoragePrice'freeReadQuota :: !Data.Word.Word64,
                                          _MsgUpdateSpStoragePrice'storePrice :: !Data.Text.Text,
                                          _MsgUpdateSpStoragePrice'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateSpStoragePrice where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateSpStoragePrice "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateSpStoragePrice'spAddress
           (\ x__ y__ -> x__ {_MsgUpdateSpStoragePrice'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateSpStoragePrice "readPrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateSpStoragePrice'readPrice
           (\ x__ y__ -> x__ {_MsgUpdateSpStoragePrice'readPrice = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateSpStoragePrice "freeReadQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateSpStoragePrice'freeReadQuota
           (\ x__ y__ -> x__ {_MsgUpdateSpStoragePrice'freeReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateSpStoragePrice "storePrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateSpStoragePrice'storePrice
           (\ x__ y__ -> x__ {_MsgUpdateSpStoragePrice'storePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateSpStoragePrice where
  messageName _
    = Data.Text.pack "greenfield.sp.MsgUpdateSpStoragePrice"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgUpdateSpStoragePrice\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2[\n\
      \\n\
      \read_price\CAN\STX \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2&\n\
      \\SIfree_read_quota\CAN\ETX \SOH(\EOTR\rfreeReadQuota\DC2]\n\
      \\vstore_price\CAN\EOT \SOH(\tR\n\
      \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec:\SI\130\231\176*\n\
      \sp_address"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateSpStoragePrice
        readPrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readPrice")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateSpStoragePrice
        freeReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free_read_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"freeReadQuota")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateSpStoragePrice
        storePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storePrice")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateSpStoragePrice
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, readPrice__field_descriptor),
           (Data.ProtoLens.Tag 3, freeReadQuota__field_descriptor),
           (Data.ProtoLens.Tag 4, storePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateSpStoragePrice'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateSpStoragePrice'_unknownFields = y__})
  defMessage
    = MsgUpdateSpStoragePrice'_constructor
        {_MsgUpdateSpStoragePrice'spAddress = Data.ProtoLens.fieldDefault,
         _MsgUpdateSpStoragePrice'readPrice = Data.ProtoLens.fieldDefault,
         _MsgUpdateSpStoragePrice'freeReadQuota = Data.ProtoLens.fieldDefault,
         _MsgUpdateSpStoragePrice'storePrice = Data.ProtoLens.fieldDefault,
         _MsgUpdateSpStoragePrice'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateSpStoragePrice
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateSpStoragePrice
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "sp_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddress") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "read_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readPrice") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "free_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"freeReadQuota") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "store_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateSpStoragePrice"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddress") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"readPrice") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"freeReadQuota") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"storePrice") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MsgUpdateSpStoragePrice where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateSpStoragePrice'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateSpStoragePrice'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateSpStoragePrice'readPrice x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateSpStoragePrice'freeReadQuota x__)
                      (Control.DeepSeq.deepseq
                         (_MsgUpdateSpStoragePrice'storePrice x__) ()))))
{- | Fields :
      -}
data MsgUpdateSpStoragePriceResponse
  = MsgUpdateSpStoragePriceResponse'_constructor {_MsgUpdateSpStoragePriceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateSpStoragePriceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateSpStoragePriceResponse where
  messageName _
    = Data.Text.pack "greenfield.sp.MsgUpdateSpStoragePriceResponse"
  packedMessageDescriptor _
    = "\n\
      \\USMsgUpdateSpStoragePriceResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateSpStoragePriceResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateSpStoragePriceResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateSpStoragePriceResponse'_constructor
        {_MsgUpdateSpStoragePriceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateSpStoragePriceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateSpStoragePriceResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgUpdateSpStoragePriceResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateSpStoragePriceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateSpStoragePriceResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "greenfield.sp"
  type ServiceMethods Msg = '["createStorageProvider",
                              "deposit",
                              "editStorageProvider",
                              "updateParams",
                              "updateSpStoragePrice"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2q\n\
      \\NAKCreateStorageProvider\DC2'.greenfield.sp.MsgCreateStorageProvider\SUB/.greenfield.sp.MsgCreateStorageProviderResponse\DC2G\n\
      \\aDeposit\DC2\EM.greenfield.sp.MsgDeposit\SUB!.greenfield.sp.MsgDepositResponse\DC2k\n\
      \\DC3EditStorageProvider\DC2%.greenfield.sp.MsgEditStorageProvider\SUB-.greenfield.sp.MsgEditStorageProviderResponse\DC2n\n\
      \\DC4UpdateSpStoragePrice\DC2&.greenfield.sp.MsgUpdateSpStoragePrice\SUB..greenfield.sp.MsgUpdateSpStoragePriceResponse\DC2V\n\
      \\fUpdateParams\DC2\RS.greenfield.sp.MsgUpdateParams\SUB&.greenfield.sp.MsgUpdateParamsResponse"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createStorageProvider" where
  type MethodName Msg "createStorageProvider" = "CreateStorageProvider"
  type MethodInput Msg "createStorageProvider" = MsgCreateStorageProvider
  type MethodOutput Msg "createStorageProvider" = MsgCreateStorageProviderResponse
  type MethodStreamingType Msg "createStorageProvider" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "deposit" where
  type MethodName Msg "deposit" = "Deposit"
  type MethodInput Msg "deposit" = MsgDeposit
  type MethodOutput Msg "deposit" = MsgDepositResponse
  type MethodStreamingType Msg "deposit" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "editStorageProvider" where
  type MethodName Msg "editStorageProvider" = "EditStorageProvider"
  type MethodInput Msg "editStorageProvider" = MsgEditStorageProvider
  type MethodOutput Msg "editStorageProvider" = MsgEditStorageProviderResponse
  type MethodStreamingType Msg "editStorageProvider" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateSpStoragePrice" where
  type MethodName Msg "updateSpStoragePrice" = "UpdateSpStoragePrice"
  type MethodInput Msg "updateSpStoragePrice" = MsgUpdateSpStoragePrice
  type MethodOutput Msg "updateSpStoragePrice" = MsgUpdateSpStoragePriceResponse
  type MethodStreamingType Msg "updateSpStoragePrice" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SYNgreenfield/sp/tx.proto\DC2\rgreenfield.sp\SUB\RScosmos/base/v1beta1/coin.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\SUBgreenfield/sp/params.proto\SUB\EMgreenfield/sp/types.proto\"\146\ACK\n\
    \\CANMsgCreateStorageProvider\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2B\n\
    \\vdescription\CAN\STX \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL\DC27\n\
    \\n\
    \sp_address\CAN\ETX \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
    \\SIfunding_address\CAN\EOT \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
    \\fseal_address\CAN\ENQ \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\DLEapproval_address\CAN\ACK \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \gc_address\CAN\a \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bendpoint\CAN\b \SOH(\tR\bendpoint\DC29\n\
    \\adeposit\CAN\t \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\adepositB\EOT\200\222\US\NUL\DC2[\n\
    \\n\
    \read_price\CAN\n\
    \ \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2&\n\
    \\SIfree_read_quota\CAN\v \SOH(\EOTR\rfreeReadQuota\DC2]\n\
    \\vstore_price\CAN\f \SOH(\tR\n\
    \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec:\f\130\231\176*\acreator\"\"\n\
    \ MsgCreateStorageProviderResponse\"\194\SOH\n\
    \\n\
    \MsgDeposit\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \sp_address\CAN\STX \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
    \\adeposit\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\adepositB\EOT\200\222\US\NUL:\f\130\231\176*\acreator\"\DC4\n\
    \\DC2MsgDepositResponse\"\247\STX\n\
    \\SYNMsgEditStorageProvider\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2<\n\
    \\vdescription\CAN\ETX \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescription\DC2;\n\
    \\fseal_address\CAN\EOT \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\DLEapproval_address\CAN\ENQ \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \gc_address\CAN\ACK \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString:\SI\130\231\176*\n\
    \sp_address\" \n\
    \\RSMsgEditStorageProviderResponse\"\199\STX\n\
    \\ETBMsgUpdateSpStoragePrice\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2[\n\
    \\n\
    \read_price\CAN\STX \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2&\n\
    \\SIfree_read_quota\CAN\ETX \SOH(\EOTR\rfreeReadQuota\DC2]\n\
    \\vstore_price\CAN\EOT \SOH(\tR\n\
    \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec:\SI\130\231\176*\n\
    \sp_address\"!\n\
    \\USMsgUpdateSpStoragePriceResponse\"\142\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC23\n\
    \\ACKparams\CAN\STX \SOH(\v2\NAK.greenfield.sp.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority\"\EM\n\
    \\ETBMsgUpdateParamsResponse2\246\ETX\n\
    \\ETXMsg\DC2q\n\
    \\NAKCreateStorageProvider\DC2'.greenfield.sp.MsgCreateStorageProvider\SUB/.greenfield.sp.MsgCreateStorageProviderResponse\DC2G\n\
    \\aDeposit\DC2\EM.greenfield.sp.MsgDeposit\SUB!.greenfield.sp.MsgDepositResponse\DC2k\n\
    \\DC3EditStorageProvider\DC2%.greenfield.sp.MsgEditStorageProvider\SUB-.greenfield.sp.MsgEditStorageProviderResponse\DC2n\n\
    \\DC4UpdateSpStoragePrice\DC2&.greenfield.sp.MsgUpdateSpStoragePrice\SUB..greenfield.sp.MsgUpdateSpStoragePriceResponse\DC2V\n\
    \\fUpdateParams\DC2\RS.greenfield.sp.MsgUpdateParams\SUB&.greenfield.sp.MsgUpdateParamsResponseB,Z*github.com/bnb-chain/greenfield/x/sp/typesJ\179,\n\
    \\a\DC2\ENQ\NUL\NUL\142\SOH\"\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL!\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL$\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULA\n\
    \H\n\
    \\STX\b\v\DC2\ETX\f\NULA2= this line is used by starport scaffolding # proto/tx/import\n\
    \\n\
    \\188\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\DLE\NUL\FS\SOH\SUB\175\SOH Msg defines the Msg service for creating a new storage provider.\n\
    \ TODO: add a transaction that the Storage Provide claim themself enter short time maintenance to avoid slash\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DLE\b\v\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC1\STXa\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC1\ACK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC1\FS4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC1?_\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DC2\STX7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC2\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC2\SO\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC2#5\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\DC3\STX[\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\DC3\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\DC3\SUB0\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\DC3;Y\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\DC4\STX^\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\DC4\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\DC4\ESC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\DC4=\\\n\
    \\226\SOH\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX\SUB\STXF\SUB\152\SOH UpdateParams defines a governance operation for updating the x/sp module parameters.\n\
    \ The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\": this line is used by starport scaffolding # proto/tx/rpc\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX\SUB\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX\SUB\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX\SUB-D\n\
    \[\n\
    \\STX\EOT\NUL\DC2\EOT\US\NULB\SOH\SUBO MsgCreateStorageProvider defines message for creating a new storage provider.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\US\b \n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX \STX,\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX \STX,\n\
    \(\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX#\STXF\SUB\ESC creator is the msg signer\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX#\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX#\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX#\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX#\SYND\n\
    \K\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX%\STX=\SUB> description defines the description terms for the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX%\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX%\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX%\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX%\RS<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX%\US;\n\
    \j\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX'\STXI\SUB] sp_address defines the address of the sp's operator; It also is the unqiue index key of sp.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX'\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX'\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX'\CANH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX'\EMG\n\
    \e\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX)\STXN\SUBX fund_address is the account address of the storage provider for deposit, remuneration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX)\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX)\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX)\GSM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX)\RSL\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX+\STXK\SUBL seal_address is the account address of the storage provider for sealObject\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX+\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX+\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX+\SUBJ\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\202\214\ENQ\DC2\ETX+\ESCI\n\
    \k\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX-\STXO\SUB^ approval_address is the account address of the storage provider for ack CreateBucket/Object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX-\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX-\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX-\RSN\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\202\214\ENQ\DC2\ETX-\USM\n\
    \f\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX/\STXI\SUBY gc_address defines one of the storage provider's accounts which is used for gc purpose.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX/\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX/\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETX/\CANH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\202\214\ENQ\DC2\ETX/\EMG\n\
    \F\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX1\STX\SYN\SUB9 endpoint is the service address of the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX1\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX1\DC4\NAK\n\
    \/\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX3\STXF\SUB\" deposit define the deposit token\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX3\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX3\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX3%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\ETX3'E\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\233\251\ETX\DC2\ETX3(D\n\
    \6\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT5\STX9\EOT\SUB( read price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX5\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX5\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\b\DC2\EOT5\EM9\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\t\b\202\214\ENQ\DC2\ETX6\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\t\b\235\251\ETX\DC2\ETX7\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\t\b\233\251\ETX\DC2\ETX8\EOT \n\
    \'\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX;\STX\RS\SUB\SUB free read quota, in byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX;\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX;\ESC\GS\n\
    \7\n\
    \\EOT\EOT\NUL\STX\v\DC2\EOT=\STXA\EOT\SUB) store price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX=\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX=\ETB\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\b\DC2\EOT=\SUBA\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\v\b\202\214\ENQ\DC2\ETX>\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\v\b\235\251\ETX\DC2\ETX?\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\v\b\233\251\ETX\DC2\ETX@\EOT \n\
    \b\n\
    \\STX\EOT\SOH\DC2\ETXE\NUL+\SUBW MsgCreateStorageProviderResponse defines the Msg/CreateStorageProvider response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXE\b(\n\
    \H\n\
    \\STX\EOT\STX\DC2\EOTH\NULQ\SOH\SUB< MsgDeposit defines a SDK message for deposit token for sp.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXH\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXI\STX,\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETXI\STX,\n\
    \H\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXL\STXF\SUB; creator is the msg signer, it should be sp's fund address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXL\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXL\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXL\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETXL\SYND\n\
    \7\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXN\STXI\SUB* sp_address is the operator address of sp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXN\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXN\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXN\CANH\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXN\EMG\n\
    \G\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXP\STXF\SUB: deposit is a mount of token which used to deposit for SP\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXP\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXP\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXP%&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETXP'E\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\233\251\ETX\DC2\ETXP(D\n\
    \F\n\
    \\STX\EOT\ETX\DC2\ETXT\NUL\GS\SUB; MsgDepositResponse defines the Msg/Deposit response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXT\b\SUB\n\
    \V\n\
    \\STX\EOT\EOT\DC2\EOTW\NULc\SOH\SUBJ MsgEditStorageProvider defines a SDK message for editing an existing sp.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXW\b\RS\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXX\STX/\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXX\STX/\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXZ\STXI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXZ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXZ\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXZ\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXZ\CANH\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXZ\EMG\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX[\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX[\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX[\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX[\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX\\\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETX\\\STX\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX\\\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX\\\FS\GS\n\
    \Y\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX^\STXK\SUBL seal_address is the account address of the storage provider for sealObject\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX^\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX^\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\b\DC2\ETX^\SUBJ\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ETX\b\202\214\ENQ\DC2\ETX^\ESCI\n\
    \j\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX`\STXO\SUB] approval_address is the account address of the storage provider for ack CreateBucket/Object\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX`\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX`\t\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX`\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\b\DC2\ETX`\RSN\n\
    \\SI\n\
    \\b\EOT\EOT\STX\EOT\b\202\214\ENQ\DC2\ETX`\USM\n\
    \e\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETXb\STXI\SUBX gc_address defines one of the storage provider's accounts which is used for gc purpose\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXb\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXb\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\b\DC2\ETXb\CANH\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ENQ\b\202\214\ENQ\DC2\ETXb\EMG\n\
    \^\n\
    \\STX\EOT\ENQ\DC2\ETXf\NUL)\SUBS MsgEditStorageProviderResponse defines the Msg/EditStorageProvider response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXf\b&\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTh\NUL{\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXh\b\US\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXi\STX/\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETXi\STX/\n\
    \\EM\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXl\STXI\SUB\f sp address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXl\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXl\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXl\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXl\CANH\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\ETXl\EMG\n\
    \6\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOTn\STXr\EOT\SUB( read price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXn\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXn\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOTn\CANr\ETX\n\
    \\SI\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\ETXo\EOT(\n\
    \\SI\n\
    \\b\EOT\ACK\STX\SOH\b\235\251\ETX\DC2\ETXp\EOTE\n\
    \\SI\n\
    \\b\EOT\ACK\STX\SOH\b\233\251\ETX\DC2\ETXq\EOT \n\
    \'\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXt\STX\GS\SUB\SUB free read quota, in byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXt\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXt\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXt\ESC\FS\n\
    \7\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\EOTv\STXz\EOT\SUB) store price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETXv\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXv\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXv\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\b\DC2\EOTv\EMz\ETX\n\
    \\SI\n\
    \\b\EOT\ACK\STX\ETX\b\202\214\ENQ\DC2\ETXw\EOT(\n\
    \\SI\n\
    \\b\EOT\ACK\STX\ETX\b\235\251\ETX\DC2\ETXx\EOTE\n\
    \\SI\n\
    \\b\EOT\ACK\STX\ETX\b\233\251\ETX\DC2\ETXy\EOT \n\
    \\t\n\
    \\STX\EOT\a\DC2\ETX}\NUL*\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX}\b'\n\
    \E\n\
    \\STX\EOT\b\DC2\ACK\128\SOH\NUL\138\SOH\SOH\SUB7 MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\128\SOH\b\ETB\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\129\SOH\STX.\n\
    \\DLE\n\
    \\b\EOT\b\a\240\140\166\ENQ\NUL\DC2\EOT\129\SOH\STX.\n\
    \i\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\132\SOH\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\132\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\132\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\132\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\132\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\132\SOH\CANF\n\
    \f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\137\SOH\STX3\SUBX params defines the x/sp parameters to update.\n\
    \\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\137\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\137\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\137\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\137\SOH\DC42\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\233\251\ETX\DC2\EOT\137\SOH\NAK1\n\
    \n\n\
    \\STX\EOT\t\DC2\EOT\142\SOH\NUL\"\SUBb MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\142\SOH\b\USb\ACKproto3"