{- This file was auto-generated from cosmos/slashing/v1beta1/slashing.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Slashing.V1beta1.Slashing (
        Params(), ValidatorSigningInfo()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.signedBlocksWindow' @:: Lens' Params Data.Int.Int64@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.minSignedPerWindow' @:: Lens' Params Data.ByteString.ByteString@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.downtimeJailDuration' @:: Lens' Params Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.maybe'downtimeJailDuration' @:: Lens' Params (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.slashFractionDoubleSign' @:: Lens' Params Data.ByteString.ByteString@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.slashFractionDowntime' @:: Lens' Params Data.ByteString.ByteString@ -}
data Params
  = Params'_constructor {_Params'signedBlocksWindow :: !Data.Int.Int64,
                         _Params'minSignedPerWindow :: !Data.ByteString.ByteString,
                         _Params'downtimeJailDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Params'slashFractionDoubleSign :: !Data.ByteString.ByteString,
                         _Params'slashFractionDowntime :: !Data.ByteString.ByteString,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "signedBlocksWindow" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'signedBlocksWindow
           (\ x__ y__ -> x__ {_Params'signedBlocksWindow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "minSignedPerWindow" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'minSignedPerWindow
           (\ x__ y__ -> x__ {_Params'minSignedPerWindow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "downtimeJailDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'downtimeJailDuration
           (\ x__ y__ -> x__ {_Params'downtimeJailDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Params "maybe'downtimeJailDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'downtimeJailDuration
           (\ x__ y__ -> x__ {_Params'downtimeJailDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "slashFractionDoubleSign" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'slashFractionDoubleSign
           (\ x__ y__ -> x__ {_Params'slashFractionDoubleSign = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "slashFractionDowntime" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'slashFractionDowntime
           (\ x__ y__ -> x__ {_Params'slashFractionDowntime = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "cosmos.slashing.v1beta1.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC20\n\
      \\DC4signed_blocks_window\CAN\SOH \SOH(\ETXR\DC2signedBlocksWindow\DC2{\n\
      \\NAKmin_signed_per_window\CAN\STX \SOH(\fR\DC2minSignedPerWindowBH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\154\231\176*\DLEcosmos_dec_bytes\168\231\176*\SOH\DC2^\n\
      \\SYNdowntime_jail_duration\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DC4downtimeJailDurationB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2\133\SOH\n\
      \\SUBslash_fraction_double_sign\CAN\EOT \SOH(\fR\ETBslashFractionDoubleSignBH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\154\231\176*\DLEcosmos_dec_bytes\168\231\176*\SOH\DC2\128\SOH\n\
      \\ETBslash_fraction_downtime\CAN\ENQ \SOH(\fR\NAKslashFractionDowntimeBH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\154\231\176*\DLEcosmos_dec_bytes\168\231\176*\SOH:!\138\231\176*\FScosmos-sdk/x/slashing/Params"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signedBlocksWindow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signed_blocks_window"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signedBlocksWindow")) ::
              Data.ProtoLens.FieldDescriptor Params
        minSignedPerWindow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_signed_per_window"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minSignedPerWindow")) ::
              Data.ProtoLens.FieldDescriptor Params
        downtimeJailDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "downtime_jail_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'downtimeJailDuration")) ::
              Data.ProtoLens.FieldDescriptor Params
        slashFractionDoubleSign__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slash_fraction_double_sign"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slashFractionDoubleSign")) ::
              Data.ProtoLens.FieldDescriptor Params
        slashFractionDowntime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slash_fraction_downtime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slashFractionDowntime")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signedBlocksWindow__field_descriptor),
           (Data.ProtoLens.Tag 2, minSignedPerWindow__field_descriptor),
           (Data.ProtoLens.Tag 3, downtimeJailDuration__field_descriptor),
           (Data.ProtoLens.Tag 4, slashFractionDoubleSign__field_descriptor),
           (Data.ProtoLens.Tag 5, slashFractionDowntime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'signedBlocksWindow = Data.ProtoLens.fieldDefault,
         _Params'minSignedPerWindow = Data.ProtoLens.fieldDefault,
         _Params'downtimeJailDuration = Prelude.Nothing,
         _Params'slashFractionDoubleSign = Data.ProtoLens.fieldDefault,
         _Params'slashFractionDowntime = Data.ProtoLens.fieldDefault,
         _Params'_unknownFields = []}
  parseMessage
    = let
        loop :: Params -> Data.ProtoLens.Encoding.Bytes.Parser Params
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
                                       "signed_blocks_window"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"signedBlocksWindow") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "min_signed_per_window"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minSignedPerWindow") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "downtime_jail_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"downtimeJailDuration") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "slash_fraction_double_sign"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"slashFractionDoubleSign") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "slash_fraction_downtime"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"slashFractionDowntime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Params"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"signedBlocksWindow") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"minSignedPerWindow") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'downtimeJailDuration") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"slashFractionDoubleSign") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"slashFractionDowntime") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'signedBlocksWindow x__)
                (Control.DeepSeq.deepseq
                   (_Params'minSignedPerWindow x__)
                   (Control.DeepSeq.deepseq
                      (_Params'downtimeJailDuration x__)
                      (Control.DeepSeq.deepseq
                         (_Params'slashFractionDoubleSign x__)
                         (Control.DeepSeq.deepseq
                            (_Params'slashFractionDowntime x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.address' @:: Lens' ValidatorSigningInfo Data.Text.Text@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.startHeight' @:: Lens' ValidatorSigningInfo Data.Int.Int64@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.indexOffset' @:: Lens' ValidatorSigningInfo Data.Int.Int64@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.jailedUntil' @:: Lens' ValidatorSigningInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.maybe'jailedUntil' @:: Lens' ValidatorSigningInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.tombstoned' @:: Lens' ValidatorSigningInfo Prelude.Bool@
         * 'Proto.Cosmos.Slashing.V1beta1.Slashing_Fields.missedBlocksCounter' @:: Lens' ValidatorSigningInfo Data.Int.Int64@ -}
data ValidatorSigningInfo
  = ValidatorSigningInfo'_constructor {_ValidatorSigningInfo'address :: !Data.Text.Text,
                                       _ValidatorSigningInfo'startHeight :: !Data.Int.Int64,
                                       _ValidatorSigningInfo'indexOffset :: !Data.Int.Int64,
                                       _ValidatorSigningInfo'jailedUntil :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                       _ValidatorSigningInfo'tombstoned :: !Prelude.Bool,
                                       _ValidatorSigningInfo'missedBlocksCounter :: !Data.Int.Int64,
                                       _ValidatorSigningInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorSigningInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorSigningInfo "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSigningInfo'address
           (\ x__ y__ -> x__ {_ValidatorSigningInfo'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSigningInfo "startHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSigningInfo'startHeight
           (\ x__ y__ -> x__ {_ValidatorSigningInfo'startHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSigningInfo "indexOffset" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSigningInfo'indexOffset
           (\ x__ y__ -> x__ {_ValidatorSigningInfo'indexOffset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSigningInfo "jailedUntil" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSigningInfo'jailedUntil
           (\ x__ y__ -> x__ {_ValidatorSigningInfo'jailedUntil = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValidatorSigningInfo "maybe'jailedUntil" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSigningInfo'jailedUntil
           (\ x__ y__ -> x__ {_ValidatorSigningInfo'jailedUntil = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSigningInfo "tombstoned" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSigningInfo'tombstoned
           (\ x__ y__ -> x__ {_ValidatorSigningInfo'tombstoned = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSigningInfo "missedBlocksCounter" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSigningInfo'missedBlocksCounter
           (\ x__ y__
              -> x__ {_ValidatorSigningInfo'missedBlocksCounter = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorSigningInfo where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.ValidatorSigningInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC4ValidatorSigningInfo\DC2;\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB!\210\180-\GScosmos.ConsensusAddressString\DC2!\n\
      \\fstart_height\CAN\STX \SOH(\ETXR\vstartHeight\DC2!\n\
      \\findex_offset\CAN\ETX \SOH(\ETXR\vindexOffset\DC2L\n\
      \\fjailed_until\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vjailedUntilB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2\RS\n\
      \\n\
      \tombstoned\CAN\ENQ \SOH(\bR\n\
      \tombstoned\DC22\n\
      \\NAKmissed_blocks_counter\CAN\ACK \SOH(\ETXR\DC3missedBlocksCounter:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSigningInfo
        startHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startHeight")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSigningInfo
        indexOffset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index_offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"indexOffset")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSigningInfo
        jailedUntil__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "jailed_until"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jailedUntil")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSigningInfo
        tombstoned__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tombstoned"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tombstoned")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSigningInfo
        missedBlocksCounter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "missed_blocks_counter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"missedBlocksCounter")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSigningInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, startHeight__field_descriptor),
           (Data.ProtoLens.Tag 3, indexOffset__field_descriptor),
           (Data.ProtoLens.Tag 4, jailedUntil__field_descriptor),
           (Data.ProtoLens.Tag 5, tombstoned__field_descriptor),
           (Data.ProtoLens.Tag 6, missedBlocksCounter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorSigningInfo'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorSigningInfo'_unknownFields = y__})
  defMessage
    = ValidatorSigningInfo'_constructor
        {_ValidatorSigningInfo'address = Data.ProtoLens.fieldDefault,
         _ValidatorSigningInfo'startHeight = Data.ProtoLens.fieldDefault,
         _ValidatorSigningInfo'indexOffset = Data.ProtoLens.fieldDefault,
         _ValidatorSigningInfo'jailedUntil = Prelude.Nothing,
         _ValidatorSigningInfo'tombstoned = Data.ProtoLens.fieldDefault,
         _ValidatorSigningInfo'missedBlocksCounter = Data.ProtoLens.fieldDefault,
         _ValidatorSigningInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorSigningInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorSigningInfo
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "start_height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startHeight") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index_offset"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"indexOffset") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "jailed_until"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jailedUntil") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tombstoned"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tombstoned") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "missed_blocks_counter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"missedBlocksCounter") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ValidatorSigningInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"startHeight") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"indexOffset") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'jailedUntil") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"tombstoned") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"missedBlocksCounter") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ValidatorSigningInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorSigningInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorSigningInfo'address x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorSigningInfo'startHeight x__)
                   (Control.DeepSeq.deepseq
                      (_ValidatorSigningInfo'indexOffset x__)
                      (Control.DeepSeq.deepseq
                         (_ValidatorSigningInfo'jailedUntil x__)
                         (Control.DeepSeq.deepseq
                            (_ValidatorSigningInfo'tombstoned x__)
                            (Control.DeepSeq.deepseq
                               (_ValidatorSigningInfo'missedBlocksCounter x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&cosmos/slashing/v1beta1/slashing.proto\DC2\ETBcosmos.slashing.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\193\STX\n\
    \\DC4ValidatorSigningInfo\DC2;\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB!\210\180-\GScosmos.ConsensusAddressString\DC2!\n\
    \\fstart_height\CAN\STX \SOH(\ETXR\vstartHeight\DC2!\n\
    \\findex_offset\CAN\ETX \SOH(\ETXR\vindexOffset\DC2L\n\
    \\fjailed_until\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\vjailedUntilB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2\RS\n\
    \\n\
    \tombstoned\CAN\ENQ \SOH(\bR\n\
    \tombstoned\DC22\n\
    \\NAKmissed_blocks_counter\CAN\ACK \SOH(\ETXR\DC3missedBlocksCounter:\EOT\232\160\US\SOH\"\197\EOT\n\
    \\ACKParams\DC20\n\
    \\DC4signed_blocks_window\CAN\SOH \SOH(\ETXR\DC2signedBlocksWindow\DC2{\n\
    \\NAKmin_signed_per_window\CAN\STX \SOH(\fR\DC2minSignedPerWindowBH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\154\231\176*\DLEcosmos_dec_bytes\168\231\176*\SOH\DC2^\n\
    \\SYNdowntime_jail_duration\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DC4downtimeJailDurationB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2\133\SOH\n\
    \\SUBslash_fraction_double_sign\CAN\EOT \SOH(\fR\ETBslashFractionDoubleSignBH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\154\231\176*\DLEcosmos_dec_bytes\168\231\176*\SOH\DC2\128\SOH\n\
    \\ETBslash_fraction_downtime\CAN\ENQ \SOH(\fR\NAKslashFractionDowntimeBH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\154\231\176*\DLEcosmos_dec_bytes\168\231\176*\SOH:!\138\231\176*\FScosmos-sdk/x/slashing/ParamsB3Z-github.com/cosmos/cosmos-sdk/x/slashing/types\168\226\RS\SOHJ\166\DLE\n\
    \\ACK\DC2\EOT\NUL\NULC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL \n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULO\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULO\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL$\n\
    \\v\n\
    \\EOT\b\165\236\ETX\DC2\ETX\EOT\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL\ESC\n\
    \n\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL%\SOH\SUBb ValidatorSigningInfo defines a validator's signing info for monitoring their\n\
    \ liveness activity.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\FS\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SI\STX\"\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\SI\STX\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC1\STXO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC1\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC1\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC1\NAKN\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\DC1\SYNM\n\
    \O\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC3\STX\EM\SUBB Height at which validator was first a candidate OR was un-jailed\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC3\ETB\CAN\n\
    \\236\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ETB\STX\EM\SUB\222\SOH Index which is incremented every time a validator is bonded in a block and\n\
    \ _may_ have signed a pre-commit or not. This in conjunction with the\n\
    \ signed_blocks_window param determines the index in the missed block bitmap.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ETB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ETB\b\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \W\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\EM\STX\GS\EOT\SUBI Timestamp until which the validator is jailed due to liveness downtime.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\EM\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\EM\FS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\EM+,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT\EM-\GS\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\242\251\ETX\DC2\ETX\SUB\EOT!\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\ESC\EOT\"\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\245\140\166\ENQ\DC2\ETX\FS\EOT!\n\
    \\189\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX!\STX\SYN\SUB\175\SOH Whether or not a validator has been tombstoned (killed out of validator\n\
    \ set). It is set once the validator commits an equivocation or for any other\n\
    \ configured misbehavior.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX!\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX!\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX!\DC4\NAK\n\
    \x\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX$\STX\"\SUBk A counter of missed (unsigned) blocks. It is used to avoid unnecessary\n\
    \ reads in the missed block bitmap.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX$\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX$\b\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX$ !\n\
    \O\n\
    \\STX\EOT\SOH\DC2\EOT(\NULC\SOH\SUBC Params represents the parameters used for by the slashing module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX(\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX)\STX7\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX)\STX7\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX+\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX+\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX+\b\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX+ !\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT,\STX1\EOT\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX,\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX,\b\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX, !\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT,\"1\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\235\251\ETX\DC2\ETX-\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX.\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\243\140\166\ENQ\DC2\ETX/\EOT/\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\245\140\166\ENQ\DC2\ETX0\EOT!\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT2\STX6\EOT\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX2\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX2\ESC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX245\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT266\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX3\EOT#\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\245\140\166\ENQ\DC2\ETX4\EOT\"\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\243\251\ETX\DC2\ETX5\EOT\"\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT7\STX<\EOT\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX7\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX7\b\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX7%&\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT7'<\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\235\251\ETX\DC2\ETX8\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\233\251\ETX\DC2\ETX9\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\ETX\b\243\140\166\ENQ\DC2\ETX:\EOT/\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\ETX\b\245\140\166\ENQ\DC2\ETX;\EOT!\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT=\STXB\EOT\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX=\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX=\b\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX=\"#\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\EOT=$B\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\235\251\ETX\DC2\ETX>\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\233\251\ETX\DC2\ETX?\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\EOT\b\243\140\166\ENQ\DC2\ETX@\EOT/\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\EOT\b\245\140\166\ENQ\DC2\ETXA\EOT!b\ACKproto3"