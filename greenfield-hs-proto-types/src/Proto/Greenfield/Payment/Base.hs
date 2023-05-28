{- This file was auto-generated from greenfield/payment/base.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.Base (
        OutFlow(), StreamAccountStatus(..), StreamAccountStatus(),
        StreamAccountStatus'UnrecognizedValue
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Base_Fields.toAddress' @:: Lens' OutFlow Data.Text.Text@
         * 'Proto.Greenfield.Payment.Base_Fields.rate' @:: Lens' OutFlow Data.Text.Text@ -}
data OutFlow
  = OutFlow'_constructor {_OutFlow'toAddress :: !Data.Text.Text,
                          _OutFlow'rate :: !Data.Text.Text,
                          _OutFlow'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutFlow where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OutFlow "toAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutFlow'toAddress (\ x__ y__ -> x__ {_OutFlow'toAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutFlow "rate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutFlow'rate (\ x__ y__ -> x__ {_OutFlow'rate = y__}))
        Prelude.id
instance Data.ProtoLens.Message OutFlow where
  messageName _ = Data.Text.pack "greenfield.payment.OutFlow"
  packedMessageDescriptor _
    = "\n\
      \\aOutFlow\DC27\n\
      \\n\
      \to_address\CAN\SOH \SOH(\tR\ttoAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2P\n\
      \\EOTrate\CAN\STX \SOH(\tR\EOTrateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        toAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"toAddress")) ::
              Data.ProtoLens.FieldDescriptor OutFlow
        rate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rate")) ::
              Data.ProtoLens.FieldDescriptor OutFlow
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, toAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, rate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutFlow'_unknownFields
        (\ x__ y__ -> x__ {_OutFlow'_unknownFields = y__})
  defMessage
    = OutFlow'_constructor
        {_OutFlow'toAddress = Data.ProtoLens.fieldDefault,
         _OutFlow'rate = Data.ProtoLens.fieldDefault,
         _OutFlow'_unknownFields = []}
  parseMessage
    = let
        loop :: OutFlow -> Data.ProtoLens.Encoding.Bytes.Parser OutFlow
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
                                       "to_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"toAddress") y x)
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
                                       "rate"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutFlow"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"toAddress") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rate") _x
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
instance Control.DeepSeq.NFData OutFlow where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutFlow'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OutFlow'toAddress x__)
                (Control.DeepSeq.deepseq (_OutFlow'rate x__) ()))
newtype StreamAccountStatus'UnrecognizedValue
  = StreamAccountStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data StreamAccountStatus
  = STREAM_ACCOUNT_STATUS_ACTIVE |
    STREAM_ACCOUNT_STATUS_FROZEN |
    StreamAccountStatus'Unrecognized !StreamAccountStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum StreamAccountStatus where
  maybeToEnum 0 = Prelude.Just STREAM_ACCOUNT_STATUS_ACTIVE
  maybeToEnum 1 = Prelude.Just STREAM_ACCOUNT_STATUS_FROZEN
  maybeToEnum k
    = Prelude.Just
        (StreamAccountStatus'Unrecognized
           (StreamAccountStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum STREAM_ACCOUNT_STATUS_ACTIVE
    = "STREAM_ACCOUNT_STATUS_ACTIVE"
  showEnum STREAM_ACCOUNT_STATUS_FROZEN
    = "STREAM_ACCOUNT_STATUS_FROZEN"
  showEnum
    (StreamAccountStatus'Unrecognized (StreamAccountStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "STREAM_ACCOUNT_STATUS_ACTIVE"
    = Prelude.Just STREAM_ACCOUNT_STATUS_ACTIVE
    | (Prelude.==) k "STREAM_ACCOUNT_STATUS_FROZEN"
    = Prelude.Just STREAM_ACCOUNT_STATUS_FROZEN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded StreamAccountStatus where
  minBound = STREAM_ACCOUNT_STATUS_ACTIVE
  maxBound = STREAM_ACCOUNT_STATUS_FROZEN
instance Prelude.Enum StreamAccountStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum StreamAccountStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum STREAM_ACCOUNT_STATUS_ACTIVE = 0
  fromEnum STREAM_ACCOUNT_STATUS_FROZEN = 1
  fromEnum
    (StreamAccountStatus'Unrecognized (StreamAccountStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ STREAM_ACCOUNT_STATUS_FROZEN
    = Prelude.error
        "StreamAccountStatus.succ: bad argument STREAM_ACCOUNT_STATUS_FROZEN. This value would be out of bounds."
  succ STREAM_ACCOUNT_STATUS_ACTIVE = STREAM_ACCOUNT_STATUS_FROZEN
  succ (StreamAccountStatus'Unrecognized _)
    = Prelude.error
        "StreamAccountStatus.succ: bad argument: unrecognized value"
  pred STREAM_ACCOUNT_STATUS_ACTIVE
    = Prelude.error
        "StreamAccountStatus.pred: bad argument STREAM_ACCOUNT_STATUS_ACTIVE. This value would be out of bounds."
  pred STREAM_ACCOUNT_STATUS_FROZEN = STREAM_ACCOUNT_STATUS_ACTIVE
  pred (StreamAccountStatus'Unrecognized _)
    = Prelude.error
        "StreamAccountStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault StreamAccountStatus where
  fieldDefault = STREAM_ACCOUNT_STATUS_ACTIVE
instance Control.DeepSeq.NFData StreamAccountStatus where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GSgreenfield/payment/base.proto\DC2\DC2greenfield.payment\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\148\SOH\n\
    \\aOutFlow\DC27\n\
    \\n\
    \to_address\CAN\SOH \SOH(\tR\ttoAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2P\n\
    \\EOTrate\CAN\STX \SOH(\tR\EOTrateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int*_\n\
    \\DC3StreamAccountStatus\DC2 \n\
    \\FSSTREAM_ACCOUNT_STATUS_ACTIVE\DLE\NUL\DC2 \n\
    \\FSSTREAM_ACCOUNT_STATUS_FROZEN\DLE\SOH\SUB\EOT\136\163\RS\NULB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\227\a\n\
    \\ACK\DC2\EOT\NUL\NUL\US\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULF\n\
    \v\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\DC3\SOH\SUBj OutFlow defines the accumulative outflow stream rate in BNB\n\
    \ from a stream account to a Storage Provider\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\SI\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STXI\SUBL stream account address who receives the flow, usually SP(service provider)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\f\CANH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\f\EMG\n\
    \\EM\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\SO\STX\DC2\EOT\SUB\v flow rate\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\SO\DC2\DC2\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\SI\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\DLE\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC1\EOT \n\
    \H\n\
    \\STX\ENQ\NUL\DC2\EOT\SYN\NUL\US\SOH\SUB< StreamAccountStatus defines the status of a stream account\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\SYN\ENQ\CAN\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\ETB\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\ETB\STX1\n\
    \Z\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\SUB\STX#\SUBM STREAM_ACCOUNT_STATUS_ACTIVE defines the active status of a stream account.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\SUB\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\SUB!\"\n\
    \\229\SOH\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\RS\STX#\SUB\215\SOH STREAM_ACCOUNT_STATUS_FROZEN defines the frozen status of a stream account.\n\
    \ A frozen stream account cannot be used as payment address for buckets.\n\
    \ It can be unfrozen by depositing more BNB to the stream account.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\RS\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\RS!\"b\ACKproto3"