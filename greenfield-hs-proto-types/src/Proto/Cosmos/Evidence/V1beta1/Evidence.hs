{- This file was auto-generated from cosmos/evidence/v1beta1/evidence.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Evidence.V1beta1.Evidence (
        Equivocation()
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
import qualified Proto.Amino.Amino
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Evidence.V1beta1.Evidence_Fields.height' @:: Lens' Equivocation Data.Int.Int64@
         * 'Proto.Cosmos.Evidence.V1beta1.Evidence_Fields.time' @:: Lens' Equivocation Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Evidence.V1beta1.Evidence_Fields.maybe'time' @:: Lens' Equivocation (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Evidence.V1beta1.Evidence_Fields.power' @:: Lens' Equivocation Data.Int.Int64@
         * 'Proto.Cosmos.Evidence.V1beta1.Evidence_Fields.consensusAddress' @:: Lens' Equivocation Data.Text.Text@ -}
data Equivocation
  = Equivocation'_constructor {_Equivocation'height :: !Data.Int.Int64,
                               _Equivocation'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                               _Equivocation'power :: !Data.Int.Int64,
                               _Equivocation'consensusAddress :: !Data.Text.Text,
                               _Equivocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Equivocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Equivocation "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Equivocation'height
           (\ x__ y__ -> x__ {_Equivocation'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Equivocation "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Equivocation'time (\ x__ y__ -> x__ {_Equivocation'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Equivocation "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Equivocation'time (\ x__ y__ -> x__ {_Equivocation'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Equivocation "power" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Equivocation'power (\ x__ y__ -> x__ {_Equivocation'power = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Equivocation "consensusAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Equivocation'consensusAddress
           (\ x__ y__ -> x__ {_Equivocation'consensusAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message Equivocation where
  messageName _
    = Data.Text.pack "cosmos.evidence.v1beta1.Equivocation"
  packedMessageDescriptor _
    = "\n\
      \\fEquivocation\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2=\n\
      \\EOTtime\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2\DC4\n\
      \\ENQpower\CAN\ETX \SOH(\ETXR\ENQpower\DC2E\n\
      \\DC1consensus_address\CAN\EOT \SOH(\tR\DLEconsensusAddressB\CAN\210\180-\DC4cosmos.AddressString:$\136\160\US\NUL\232\160\US\NUL\138\231\176*\ETBcosmos-sdk/Equivocation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Equivocation
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor Equivocation
        power__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"power")) ::
              Data.ProtoLens.FieldDescriptor Equivocation
        consensusAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consensus_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"consensusAddress")) ::
              Data.ProtoLens.FieldDescriptor Equivocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, time__field_descriptor),
           (Data.ProtoLens.Tag 3, power__field_descriptor),
           (Data.ProtoLens.Tag 4, consensusAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Equivocation'_unknownFields
        (\ x__ y__ -> x__ {_Equivocation'_unknownFields = y__})
  defMessage
    = Equivocation'_constructor
        {_Equivocation'height = Data.ProtoLens.fieldDefault,
         _Equivocation'time = Prelude.Nothing,
         _Equivocation'power = Data.ProtoLens.fieldDefault,
         _Equivocation'consensusAddress = Data.ProtoLens.fieldDefault,
         _Equivocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Equivocation -> Data.ProtoLens.Encoding.Bytes.Parser Equivocation
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "power"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"power") y x)
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
                                       "consensus_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consensusAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Equivocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"power") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"consensusAddress") _x
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
instance Control.DeepSeq.NFData Equivocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Equivocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Equivocation'height x__)
                (Control.DeepSeq.deepseq
                   (_Equivocation'time x__)
                   (Control.DeepSeq.deepseq
                      (_Equivocation'power x__)
                      (Control.DeepSeq.deepseq
                         (_Equivocation'consensusAddress x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&cosmos/evidence/v1beta1/evidence.proto\DC2\ETBcosmos.evidence.v1beta1\SUB\DC1amino/amino.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\EMcosmos_proto/cosmos.proto\"\232\SOH\n\
    \\fEquivocation\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2=\n\
    \\EOTtime\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2\DC4\n\
    \\ENQpower\CAN\ETX \SOH(\ETXR\ENQpower\DC2E\n\
    \\DC1consensus_address\CAN\EOT \SOH(\tR\DLEconsensusAddressB\CAN\210\180-\DC4cosmos.AddressString:$\136\160\US\NUL\232\160\US\NUL\138\231\176*\ETBcosmos-sdk/EquivocationB#Z\GScosmossdk.io/x/evidence/types\168\226\RS\SOHJ\191\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL \n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL?\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL$\n\
    \\v\n\
    \\EOT\b\165\236\ETX\DC2\ETX\EOT\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL#\n\
    \q\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL\RS\SOH\SUBe Equivocation implements the Evidence interface and defines evidence of double\n\
    \ signing misbehavior.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STXA\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\SO\STXA\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SI\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\SI\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DLE\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\DLE\STX-\n\
    \1\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\STX\DC3\SUB$ height is the equivocation height.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3\DC1\DC2\n\
    \.\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\SYN\STX\ETB`\SUB  time is the equivocation time.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SYN\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SYN\FS \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SYN#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\ETB\ACK_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\ETB\a#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\ETB%B\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\242\251\ETX\DC2\ETX\ETBD^\n\
    \9\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SUB\STX\DC2\SUB, power is the equivocation validator power.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SUB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SUB\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SUB\DLE\DC1\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\GS\STXP\SUBD consensus_address is the equivocation validator consensus address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\GS\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\GS\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\GS\USO\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\GS Nb\ACKproto3"