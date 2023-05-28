{- This file was auto-generated from greenfield/sp/authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Authz (
        DepositAuthorization()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Authz_Fields.maxDeposit' @:: Lens' DepositAuthorization Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Sp.Authz_Fields.maybe'maxDeposit' @:: Lens' DepositAuthorization (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Greenfield.Sp.Authz_Fields.spAddress' @:: Lens' DepositAuthorization Data.Text.Text@ -}
data DepositAuthorization
  = DepositAuthorization'_constructor {_DepositAuthorization'maxDeposit :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                       _DepositAuthorization'spAddress :: !Data.Text.Text,
                                       _DepositAuthorization'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DepositAuthorization where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DepositAuthorization "maxDeposit" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DepositAuthorization'maxDeposit
           (\ x__ y__ -> x__ {_DepositAuthorization'maxDeposit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DepositAuthorization "maybe'maxDeposit" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DepositAuthorization'maxDeposit
           (\ x__ y__ -> x__ {_DepositAuthorization'maxDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DepositAuthorization "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DepositAuthorization'spAddress
           (\ x__ y__ -> x__ {_DepositAuthorization'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message DepositAuthorization where
  messageName _ = Data.Text.pack "greenfield.sp.DepositAuthorization"
  packedMessageDescriptor _
    = "\n\
      \\DC4DepositAuthorization\DC2:\n\
      \\vmax_deposit\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\n\
      \maxDeposit\DC27\n\
      \\n\
      \sp_address\CAN\STX \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxDeposit")) ::
              Data.ProtoLens.FieldDescriptor DepositAuthorization
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor DepositAuthorization
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxDeposit__field_descriptor),
           (Data.ProtoLens.Tag 2, spAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DepositAuthorization'_unknownFields
        (\ x__ y__ -> x__ {_DepositAuthorization'_unknownFields = y__})
  defMessage
    = DepositAuthorization'_constructor
        {_DepositAuthorization'maxDeposit = Prelude.Nothing,
         _DepositAuthorization'spAddress = Data.ProtoLens.fieldDefault,
         _DepositAuthorization'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DepositAuthorization
          -> Data.ProtoLens.Encoding.Bytes.Parser DepositAuthorization
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_deposit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxDeposit") y x)
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DepositAuthorization"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxDeposit") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DepositAuthorization where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DepositAuthorization'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DepositAuthorization'maxDeposit x__)
                (Control.DeepSeq.deepseq (_DepositAuthorization'spAddress x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\EMgreenfield/sp/authz.proto\DC2\rgreenfield.sp\SUB\RScosmos/base/v1beta1/coin.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\139\SOH\n\
    \\DC4DepositAuthorization\DC2:\n\
    \\vmax_deposit\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\n\
    \maxDeposit\DC27\n\
    \\n\
    \sp_address\CAN\STX \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressStringB,Z*github.com/bnb-chain/greenfield/x/sp/typesJ\159\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\DC1\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULA\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULA\n\
    \H\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\DC1\SOH\SUB< DepositAuthorization defines authorization for sp deposit.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\FS\n\
    \\185\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STX+\SUB\171\SOH max_deposit specifies the maximum amount of tokens can be deposit to a storage provider. If it is\n\
    \ empty, there is no spend limit and any amount of coins can be deposit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\r\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\ESC&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r)*\n\
    \F\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\STXI\SUB9 sp_address is the operator address of storage provider.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DLE\CANH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\DLE\EMGb\ACKproto3"