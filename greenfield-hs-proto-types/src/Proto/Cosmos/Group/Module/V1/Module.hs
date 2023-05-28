{- This file was auto-generated from cosmos/group/module/v1/module.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.Module.V1.Module (
        Module()
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
import qualified Proto.Cosmos.App.V1alpha1.Module
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Duration
{- | Fields :
     
         * 'Proto.Cosmos.Group.Module.V1.Module_Fields.maxExecutionPeriod' @:: Lens' Module Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Group.Module.V1.Module_Fields.maybe'maxExecutionPeriod' @:: Lens' Module (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Group.Module.V1.Module_Fields.maxMetadataLen' @:: Lens' Module Data.Word.Word64@ -}
data Module
  = Module'_constructor {_Module'maxExecutionPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Module'maxMetadataLen :: !Data.Word.Word64,
                         _Module'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Module where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Module "maxExecutionPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'maxExecutionPeriod
           (\ x__ y__ -> x__ {_Module'maxExecutionPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Module "maybe'maxExecutionPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'maxExecutionPeriod
           (\ x__ y__ -> x__ {_Module'maxExecutionPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "maxMetadataLen" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'maxMetadataLen
           (\ x__ y__ -> x__ {_Module'maxMetadataLen = y__}))
        Prelude.id
instance Data.ProtoLens.Message Module where
  messageName _ = Data.Text.pack "cosmos.group.module.v1.Module"
  packedMessageDescriptor _
    = "\n\
      \\ACKModule\DC2Z\n\
      \\DC4max_execution_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\DC2maxExecutionPeriodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2(\n\
      \\DLEmax_metadata_len\CAN\STX \SOH(\EOTR\SOmaxMetadataLen:,\186\192\150\218\SOH&\n\
      \$github.com/cosmos/cosmos-sdk/x/group"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxExecutionPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_execution_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxExecutionPeriod")) ::
              Data.ProtoLens.FieldDescriptor Module
        maxMetadataLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_metadata_len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxMetadataLen")) ::
              Data.ProtoLens.FieldDescriptor Module
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxExecutionPeriod__field_descriptor),
           (Data.ProtoLens.Tag 2, maxMetadataLen__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Module'_unknownFields
        (\ x__ y__ -> x__ {_Module'_unknownFields = y__})
  defMessage
    = Module'_constructor
        {_Module'maxExecutionPeriod = Prelude.Nothing,
         _Module'maxMetadataLen = Data.ProtoLens.fieldDefault,
         _Module'_unknownFields = []}
  parseMessage
    = let
        loop :: Module -> Data.ProtoLens.Encoding.Bytes.Parser Module
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
                                       "max_execution_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxExecutionPeriod") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_metadata_len"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxMetadataLen") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Module"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxExecutionPeriod") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"maxMetadataLen") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Module where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Module'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Module'maxExecutionPeriod x__)
                (Control.DeepSeq.deepseq (_Module'maxMetadataLen x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#cosmos/group/module/v1/module.proto\DC2\SYNcosmos.group.module.v1\SUB cosmos/app/v1alpha1/module.proto\SUB\DC4gogoproto/gogo.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\DC1amino/amino.proto\"\188\SOH\n\
    \\ACKModule\DC2Z\n\
    \\DC4max_execution_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\DC2maxExecutionPeriodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2(\n\
    \\DLEmax_metadata_len\CAN\STX \SOH(\EOTR\SOmaxMetadataLen:,\186\192\150\218\SOH&\n\
    \$github.com/cosmos/cosmos-sdk/x/groupJ\149\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\ETB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL\ESC\n\
    \>\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\ETB\SOH\SUB2 Module is the config object of the group module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\v\STX\r\EOT\n\
    \\SI\n\
    \\a\EOT\NUL\a\135\232\162\ESC\DC2\EOT\v\STX\r\EOT\n\
    \\158\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\DC1\STX\DC2d\SUB\143\SOH max_execution_period defines the max duration after a proposal's voting period ends that members can send a MsgExec\n\
    \ to execute the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC1\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC1\ESC/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC123\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC2\ACKc\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\243\251\ETX\DC2\ETX\DC2\a%\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\DC2'C\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\DC2Eb\n\
    \\169\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SYN\STX\RS\SUB\155\SOH max_metadata_len defines the max length of the metadata bytes field for various entities within the group module.\n\
    \ Defaults to 255 if not explicitly set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SYN\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SYN\FS\GSb\ACKproto3"