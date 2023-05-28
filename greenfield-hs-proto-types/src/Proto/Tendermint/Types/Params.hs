{- This file was auto-generated from tendermint/types/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Params (
        ABCIParams(), BlockParams(), ConsensusParams(), EvidenceParams(),
        HashedParams(), ValidatorParams(), VersionParams()
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
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Duration
{- | Fields :
     
         * 'Proto.Tendermint.Types.Params_Fields.voteExtensionsEnableHeight' @:: Lens' ABCIParams Data.Int.Int64@ -}
data ABCIParams
  = ABCIParams'_constructor {_ABCIParams'voteExtensionsEnableHeight :: !Data.Int.Int64,
                             _ABCIParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ABCIParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ABCIParams "voteExtensionsEnableHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIParams'voteExtensionsEnableHeight
           (\ x__ y__ -> x__ {_ABCIParams'voteExtensionsEnableHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message ABCIParams where
  messageName _ = Data.Text.pack "tendermint.types.ABCIParams"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ABCIParams\DC2A\n\
      \\GSvote_extensions_enable_height\CAN\SOH \SOH(\ETXR\SUBvoteExtensionsEnableHeight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        voteExtensionsEnableHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_extensions_enable_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"voteExtensionsEnableHeight")) ::
              Data.ProtoLens.FieldDescriptor ABCIParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            voteExtensionsEnableHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ABCIParams'_unknownFields
        (\ x__ y__ -> x__ {_ABCIParams'_unknownFields = y__})
  defMessage
    = ABCIParams'_constructor
        {_ABCIParams'voteExtensionsEnableHeight = Data.ProtoLens.fieldDefault,
         _ABCIParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ABCIParams -> Data.ProtoLens.Encoding.Bytes.Parser ABCIParams
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
                                       "vote_extensions_enable_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"voteExtensionsEnableHeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ABCIParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"voteExtensionsEnableHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ABCIParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ABCIParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ABCIParams'voteExtensionsEnableHeight x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Types.Params_Fields.maxBytes' @:: Lens' BlockParams Data.Int.Int64@
         * 'Proto.Tendermint.Types.Params_Fields.maxGas' @:: Lens' BlockParams Data.Int.Int64@ -}
data BlockParams
  = BlockParams'_constructor {_BlockParams'maxBytes :: !Data.Int.Int64,
                              _BlockParams'maxGas :: !Data.Int.Int64,
                              _BlockParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockParams "maxBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockParams'maxBytes
           (\ x__ y__ -> x__ {_BlockParams'maxBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockParams "maxGas" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockParams'maxGas (\ x__ y__ -> x__ {_BlockParams'maxGas = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockParams where
  messageName _ = Data.Text.pack "tendermint.types.BlockParams"
  packedMessageDescriptor _
    = "\n\
      \\vBlockParams\DC2\ESC\n\
      \\tmax_bytes\CAN\SOH \SOH(\ETXR\bmaxBytes\DC2\ETB\n\
      \\amax_gas\CAN\STX \SOH(\ETXR\ACKmaxGasJ\EOT\b\ETX\DLE\EOT"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxBytes")) ::
              Data.ProtoLens.FieldDescriptor BlockParams
        maxGas__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_gas"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"maxGas")) ::
              Data.ProtoLens.FieldDescriptor BlockParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, maxGas__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockParams'_unknownFields
        (\ x__ y__ -> x__ {_BlockParams'_unknownFields = y__})
  defMessage
    = BlockParams'_constructor
        {_BlockParams'maxBytes = Data.ProtoLens.fieldDefault,
         _BlockParams'maxGas = Data.ProtoLens.fieldDefault,
         _BlockParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockParams -> Data.ProtoLens.Encoding.Bytes.Parser BlockParams
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
                                       "max_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxBytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_gas"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"maxGas") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"maxBytes") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"maxGas") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData BlockParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockParams'maxBytes x__)
                (Control.DeepSeq.deepseq (_BlockParams'maxGas x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Params_Fields.block' @:: Lens' ConsensusParams BlockParams@
         * 'Proto.Tendermint.Types.Params_Fields.maybe'block' @:: Lens' ConsensusParams (Prelude.Maybe BlockParams)@
         * 'Proto.Tendermint.Types.Params_Fields.evidence' @:: Lens' ConsensusParams EvidenceParams@
         * 'Proto.Tendermint.Types.Params_Fields.maybe'evidence' @:: Lens' ConsensusParams (Prelude.Maybe EvidenceParams)@
         * 'Proto.Tendermint.Types.Params_Fields.validator' @:: Lens' ConsensusParams ValidatorParams@
         * 'Proto.Tendermint.Types.Params_Fields.maybe'validator' @:: Lens' ConsensusParams (Prelude.Maybe ValidatorParams)@
         * 'Proto.Tendermint.Types.Params_Fields.version' @:: Lens' ConsensusParams VersionParams@
         * 'Proto.Tendermint.Types.Params_Fields.maybe'version' @:: Lens' ConsensusParams (Prelude.Maybe VersionParams)@
         * 'Proto.Tendermint.Types.Params_Fields.abci' @:: Lens' ConsensusParams ABCIParams@
         * 'Proto.Tendermint.Types.Params_Fields.maybe'abci' @:: Lens' ConsensusParams (Prelude.Maybe ABCIParams)@ -}
data ConsensusParams
  = ConsensusParams'_constructor {_ConsensusParams'block :: !(Prelude.Maybe BlockParams),
                                  _ConsensusParams'evidence :: !(Prelude.Maybe EvidenceParams),
                                  _ConsensusParams'validator :: !(Prelude.Maybe ValidatorParams),
                                  _ConsensusParams'version :: !(Prelude.Maybe VersionParams),
                                  _ConsensusParams'abci :: !(Prelude.Maybe ABCIParams),
                                  _ConsensusParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConsensusParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConsensusParams "block" BlockParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'block
           (\ x__ y__ -> x__ {_ConsensusParams'block = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConsensusParams "maybe'block" (Prelude.Maybe BlockParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'block
           (\ x__ y__ -> x__ {_ConsensusParams'block = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConsensusParams "evidence" EvidenceParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'evidence
           (\ x__ y__ -> x__ {_ConsensusParams'evidence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConsensusParams "maybe'evidence" (Prelude.Maybe EvidenceParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'evidence
           (\ x__ y__ -> x__ {_ConsensusParams'evidence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConsensusParams "validator" ValidatorParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'validator
           (\ x__ y__ -> x__ {_ConsensusParams'validator = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConsensusParams "maybe'validator" (Prelude.Maybe ValidatorParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'validator
           (\ x__ y__ -> x__ {_ConsensusParams'validator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConsensusParams "version" VersionParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'version
           (\ x__ y__ -> x__ {_ConsensusParams'version = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConsensusParams "maybe'version" (Prelude.Maybe VersionParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'version
           (\ x__ y__ -> x__ {_ConsensusParams'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConsensusParams "abci" ABCIParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'abci
           (\ x__ y__ -> x__ {_ConsensusParams'abci = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConsensusParams "maybe'abci" (Prelude.Maybe ABCIParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConsensusParams'abci
           (\ x__ y__ -> x__ {_ConsensusParams'abci = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConsensusParams where
  messageName _ = Data.Text.pack "tendermint.types.ConsensusParams"
  packedMessageDescriptor _
    = "\n\
      \\SIConsensusParams\DC23\n\
      \\ENQblock\CAN\SOH \SOH(\v2\GS.tendermint.types.BlockParamsR\ENQblock\DC2<\n\
      \\bevidence\CAN\STX \SOH(\v2 .tendermint.types.EvidenceParamsR\bevidence\DC2?\n\
      \\tvalidator\CAN\ETX \SOH(\v2!.tendermint.types.ValidatorParamsR\tvalidator\DC29\n\
      \\aversion\CAN\EOT \SOH(\v2\US.tendermint.types.VersionParamsR\aversion\DC20\n\
      \\EOTabci\CAN\ENQ \SOH(\v2\FS.tendermint.types.ABCIParamsR\EOTabci"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'block")) ::
              Data.ProtoLens.FieldDescriptor ConsensusParams
        evidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EvidenceParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'evidence")) ::
              Data.ProtoLens.FieldDescriptor ConsensusParams
        validator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validator")) ::
              Data.ProtoLens.FieldDescriptor ConsensusParams
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VersionParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'version")) ::
              Data.ProtoLens.FieldDescriptor ConsensusParams
        abci__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abci"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ABCIParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'abci")) ::
              Data.ProtoLens.FieldDescriptor ConsensusParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, block__field_descriptor),
           (Data.ProtoLens.Tag 2, evidence__field_descriptor),
           (Data.ProtoLens.Tag 3, validator__field_descriptor),
           (Data.ProtoLens.Tag 4, version__field_descriptor),
           (Data.ProtoLens.Tag 5, abci__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConsensusParams'_unknownFields
        (\ x__ y__ -> x__ {_ConsensusParams'_unknownFields = y__})
  defMessage
    = ConsensusParams'_constructor
        {_ConsensusParams'block = Prelude.Nothing,
         _ConsensusParams'evidence = Prelude.Nothing,
         _ConsensusParams'validator = Prelude.Nothing,
         _ConsensusParams'version = Prelude.Nothing,
         _ConsensusParams'abci = Prelude.Nothing,
         _ConsensusParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConsensusParams
          -> Data.ProtoLens.Encoding.Bytes.Parser ConsensusParams
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
                                       "block"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "evidence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"evidence") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validator") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "abci"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"abci") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConsensusParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'block") _x
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'evidence") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'validator") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'version") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'abci") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ConsensusParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConsensusParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConsensusParams'block x__)
                (Control.DeepSeq.deepseq
                   (_ConsensusParams'evidence x__)
                   (Control.DeepSeq.deepseq
                      (_ConsensusParams'validator x__)
                      (Control.DeepSeq.deepseq
                         (_ConsensusParams'version x__)
                         (Control.DeepSeq.deepseq (_ConsensusParams'abci x__) ())))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Params_Fields.maxAgeNumBlocks' @:: Lens' EvidenceParams Data.Int.Int64@
         * 'Proto.Tendermint.Types.Params_Fields.maxAgeDuration' @:: Lens' EvidenceParams Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Tendermint.Types.Params_Fields.maybe'maxAgeDuration' @:: Lens' EvidenceParams (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Tendermint.Types.Params_Fields.maxBytes' @:: Lens' EvidenceParams Data.Int.Int64@ -}
data EvidenceParams
  = EvidenceParams'_constructor {_EvidenceParams'maxAgeNumBlocks :: !Data.Int.Int64,
                                 _EvidenceParams'maxAgeDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _EvidenceParams'maxBytes :: !Data.Int.Int64,
                                 _EvidenceParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EvidenceParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EvidenceParams "maxAgeNumBlocks" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EvidenceParams'maxAgeNumBlocks
           (\ x__ y__ -> x__ {_EvidenceParams'maxAgeNumBlocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EvidenceParams "maxAgeDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EvidenceParams'maxAgeDuration
           (\ x__ y__ -> x__ {_EvidenceParams'maxAgeDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EvidenceParams "maybe'maxAgeDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EvidenceParams'maxAgeDuration
           (\ x__ y__ -> x__ {_EvidenceParams'maxAgeDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EvidenceParams "maxBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EvidenceParams'maxBytes
           (\ x__ y__ -> x__ {_EvidenceParams'maxBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message EvidenceParams where
  messageName _ = Data.Text.pack "tendermint.types.EvidenceParams"
  packedMessageDescriptor _
    = "\n\
      \\SOEvidenceParams\DC2+\n\
      \\DC2max_age_num_blocks\CAN\SOH \SOH(\ETXR\SImaxAgeNumBlocks\DC2M\n\
      \\DLEmax_age_duration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SOmaxAgeDurationB\b\200\222\US\NUL\152\223\US\SOH\DC2\ESC\n\
      \\tmax_bytes\CAN\ETX \SOH(\ETXR\bmaxBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxAgeNumBlocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_age_num_blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxAgeNumBlocks")) ::
              Data.ProtoLens.FieldDescriptor EvidenceParams
        maxAgeDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_age_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxAgeDuration")) ::
              Data.ProtoLens.FieldDescriptor EvidenceParams
        maxBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxBytes")) ::
              Data.ProtoLens.FieldDescriptor EvidenceParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxAgeNumBlocks__field_descriptor),
           (Data.ProtoLens.Tag 2, maxAgeDuration__field_descriptor),
           (Data.ProtoLens.Tag 3, maxBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EvidenceParams'_unknownFields
        (\ x__ y__ -> x__ {_EvidenceParams'_unknownFields = y__})
  defMessage
    = EvidenceParams'_constructor
        {_EvidenceParams'maxAgeNumBlocks = Data.ProtoLens.fieldDefault,
         _EvidenceParams'maxAgeDuration = Prelude.Nothing,
         _EvidenceParams'maxBytes = Data.ProtoLens.fieldDefault,
         _EvidenceParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EvidenceParams
          -> Data.ProtoLens.Encoding.Bytes.Parser EvidenceParams
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
                                       "max_age_num_blocks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxAgeNumBlocks") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_age_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxAgeDuration") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EvidenceParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"maxAgeNumBlocks") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxAgeDuration") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"maxBytes") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EvidenceParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EvidenceParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EvidenceParams'maxAgeNumBlocks x__)
                (Control.DeepSeq.deepseq
                   (_EvidenceParams'maxAgeDuration x__)
                   (Control.DeepSeq.deepseq (_EvidenceParams'maxBytes x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Params_Fields.blockMaxBytes' @:: Lens' HashedParams Data.Int.Int64@
         * 'Proto.Tendermint.Types.Params_Fields.blockMaxGas' @:: Lens' HashedParams Data.Int.Int64@ -}
data HashedParams
  = HashedParams'_constructor {_HashedParams'blockMaxBytes :: !Data.Int.Int64,
                               _HashedParams'blockMaxGas :: !Data.Int.Int64,
                               _HashedParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HashedParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HashedParams "blockMaxBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HashedParams'blockMaxBytes
           (\ x__ y__ -> x__ {_HashedParams'blockMaxBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HashedParams "blockMaxGas" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HashedParams'blockMaxGas
           (\ x__ y__ -> x__ {_HashedParams'blockMaxGas = y__}))
        Prelude.id
instance Data.ProtoLens.Message HashedParams where
  messageName _ = Data.Text.pack "tendermint.types.HashedParams"
  packedMessageDescriptor _
    = "\n\
      \\fHashedParams\DC2&\n\
      \\SIblock_max_bytes\CAN\SOH \SOH(\ETXR\rblockMaxBytes\DC2\"\n\
      \\rblock_max_gas\CAN\STX \SOH(\ETXR\vblockMaxGas"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockMaxBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_max_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockMaxBytes")) ::
              Data.ProtoLens.FieldDescriptor HashedParams
        blockMaxGas__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_max_gas"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockMaxGas")) ::
              Data.ProtoLens.FieldDescriptor HashedParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockMaxBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, blockMaxGas__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HashedParams'_unknownFields
        (\ x__ y__ -> x__ {_HashedParams'_unknownFields = y__})
  defMessage
    = HashedParams'_constructor
        {_HashedParams'blockMaxBytes = Data.ProtoLens.fieldDefault,
         _HashedParams'blockMaxGas = Data.ProtoLens.fieldDefault,
         _HashedParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HashedParams -> Data.ProtoLens.Encoding.Bytes.Parser HashedParams
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
                                       "block_max_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"blockMaxBytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "block_max_gas"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockMaxGas") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HashedParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"blockMaxBytes") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"blockMaxGas") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HashedParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HashedParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HashedParams'blockMaxBytes x__)
                (Control.DeepSeq.deepseq (_HashedParams'blockMaxGas x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Params_Fields.pubKeyTypes' @:: Lens' ValidatorParams [Data.Text.Text]@
         * 'Proto.Tendermint.Types.Params_Fields.vec'pubKeyTypes' @:: Lens' ValidatorParams (Data.Vector.Vector Data.Text.Text)@ -}
data ValidatorParams
  = ValidatorParams'_constructor {_ValidatorParams'pubKeyTypes :: !(Data.Vector.Vector Data.Text.Text),
                                  _ValidatorParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorParams "pubKeyTypes" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorParams'pubKeyTypes
           (\ x__ y__ -> x__ {_ValidatorParams'pubKeyTypes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorParams "vec'pubKeyTypes" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorParams'pubKeyTypes
           (\ x__ y__ -> x__ {_ValidatorParams'pubKeyTypes = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorParams where
  messageName _ = Data.Text.pack "tendermint.types.ValidatorParams"
  packedMessageDescriptor _
    = "\n\
      \\SIValidatorParams\DC2\"\n\
      \\rpub_key_types\CAN\SOH \ETX(\tR\vpubKeyTypes:\b\184\160\US\SOH\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pubKeyTypes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pub_key_types"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"pubKeyTypes")) ::
              Data.ProtoLens.FieldDescriptor ValidatorParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pubKeyTypes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorParams'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorParams'_unknownFields = y__})
  defMessage
    = ValidatorParams'_constructor
        {_ValidatorParams'pubKeyTypes = Data.Vector.Generic.empty,
         _ValidatorParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorParams
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorParams
        loop x mutable'pubKeyTypes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pubKeyTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'pubKeyTypes)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'pubKeyTypes") frozen'pubKeyTypes
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "pub_key_types"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'pubKeyTypes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pubKeyTypes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pubKeyTypes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pubKeyTypes)
          "ValidatorParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'pubKeyTypes") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValidatorParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorParams'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ValidatorParams'pubKeyTypes x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Types.Params_Fields.app' @:: Lens' VersionParams Data.Word.Word64@ -}
data VersionParams
  = VersionParams'_constructor {_VersionParams'app :: !Data.Word.Word64,
                                _VersionParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VersionParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VersionParams "app" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionParams'app (\ x__ y__ -> x__ {_VersionParams'app = y__}))
        Prelude.id
instance Data.ProtoLens.Message VersionParams where
  messageName _ = Data.Text.pack "tendermint.types.VersionParams"
  packedMessageDescriptor _
    = "\n\
      \\rVersionParams\DC2\DLE\n\
      \\ETXapp\CAN\SOH \SOH(\EOTR\ETXapp:\b\184\160\US\SOH\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        app__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"app")) ::
              Data.ProtoLens.FieldDescriptor VersionParams
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, app__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VersionParams'_unknownFields
        (\ x__ y__ -> x__ {_VersionParams'_unknownFields = y__})
  defMessage
    = VersionParams'_constructor
        {_VersionParams'app = Data.ProtoLens.fieldDefault,
         _VersionParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VersionParams -> Data.ProtoLens.Encoding.Bytes.Parser VersionParams
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"app") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VersionParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"app") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData VersionParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VersionParams'_unknownFields x__)
             (Control.DeepSeq.deepseq (_VersionParams'app x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GStendermint/types/params.proto\DC2\DLEtendermint.types\SUB\DC4gogoproto/gogo.proto\SUB\RSgoogle/protobuf/duration.proto\"\178\STX\n\
    \\SIConsensusParams\DC23\n\
    \\ENQblock\CAN\SOH \SOH(\v2\GS.tendermint.types.BlockParamsR\ENQblock\DC2<\n\
    \\bevidence\CAN\STX \SOH(\v2 .tendermint.types.EvidenceParamsR\bevidence\DC2?\n\
    \\tvalidator\CAN\ETX \SOH(\v2!.tendermint.types.ValidatorParamsR\tvalidator\DC29\n\
    \\aversion\CAN\EOT \SOH(\v2\US.tendermint.types.VersionParamsR\aversion\DC20\n\
    \\EOTabci\CAN\ENQ \SOH(\v2\FS.tendermint.types.ABCIParamsR\EOTabci\"I\n\
    \\vBlockParams\DC2\ESC\n\
    \\tmax_bytes\CAN\SOH \SOH(\ETXR\bmaxBytes\DC2\ETB\n\
    \\amax_gas\CAN\STX \SOH(\ETXR\ACKmaxGasJ\EOT\b\ETX\DLE\EOT\"\169\SOH\n\
    \\SOEvidenceParams\DC2+\n\
    \\DC2max_age_num_blocks\CAN\SOH \SOH(\ETXR\SImaxAgeNumBlocks\DC2M\n\
    \\DLEmax_age_duration\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\SOmaxAgeDurationB\b\200\222\US\NUL\152\223\US\SOH\DC2\ESC\n\
    \\tmax_bytes\CAN\ETX \SOH(\ETXR\bmaxBytes\"?\n\
    \\SIValidatorParams\DC2\"\n\
    \\rpub_key_types\CAN\SOH \ETX(\tR\vpubKeyTypes:\b\184\160\US\SOH\232\160\US\SOH\"+\n\
    \\rVersionParams\DC2\DLE\n\
    \\ETXapp\CAN\SOH \SOH(\EOTR\ETXapp:\b\184\160\US\SOH\232\160\US\SOH\"Z\n\
    \\fHashedParams\DC2&\n\
    \\SIblock_max_bytes\CAN\SOH \SOH(\ETXR\rblockMaxBytes\DC2\"\n\
    \\rblock_max_gas\CAN\STX \SOH(\ETXR\vblockMaxGas\"O\n\
    \\n\
    \ABCIParams\DC2A\n\
    \\GSvote_extensions_enable_height\CAN\SOH \SOH(\ETXR\SUBvoteExtensionsEnableHeightB9Z3github.com/cometbft/cometbft/proto/tendermint/types\168\226\RS\SOHJ\178\EM\n\
    \\ACK\DC2\EOT\NUL\NUL[\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\EM\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL$\n\
    \\v\n\
    \\EOT\b\165\236\ETX\DC2\ETX\b\NUL$\n\
    \l\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\DC2\SOH\SUB` ConsensusParams contains consensus critical parameters that determine the\n\
    \ validity of blocks.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\r\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SO\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SI\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\SI\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SI\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SI\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DLE\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\DLE\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DLE\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DLE\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\DC1\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\DC1\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\DC1\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\DC1\RS\US\n\
    \<\n\
    \\STX\EOT\SOH\DC2\EOT\NAK\NUL\RS\SOH\SUB0 BlockParams contains limits on the block size.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\NAK\b\DC3\n\
    \F\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\CAN\STX\SYN\SUB9 Max block size, in bytes.\n\
    \ Note: must be greater than 0\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\CAN\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\CAN\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\CAN\DC4\NAK\n\
    \G\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\ESC\STX\DC4\SUB: Max gas per block.\n\
    \ Note: must be greater or equal to -1\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\ESC\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\ESC\b\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\ESC\DC2\DC3\n\
    \S\n\
    \\ETX\EOT\SOH\t\DC2\ETX\GS\STX\r\"G was TimeIotaMs see https://github.com/tendermint/tendermint/pull/5792\n\
    \\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETX\GS\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETX\GS\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETX\GS\v\f\n\
    \M\n\
    \\STX\EOT\STX\DC2\EOT!\NUL4\SOH\SUBA EvidenceParams determine how we handle evidence of malfeasance.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\SYN\n\
    \\131\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX&\STX\US\SUBv Max age of evidence, in blocks.\n\
    \\n\
    \ The basic formula for calculating this is: MaxAgeDuration / {average block\n\
    \ time}.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX&\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX&\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX&\GS\RS\n\
    \\163\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT-\STX.E\SUB\148\STX Max age of evidence, in time.\n\
    \\n\
    \ It should correspond with an app's \"unbonding period\" or other similar\n\
    \ mechanism for handling [Nothing-At-Stake\n\
    \ attacks](https://github.com/ethereum/wiki/wiki/Proof-of-Stake-FAQ#what-is-the-nothing-at-stake-problem-and-how-can-it-be-fixed).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX-\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX-\ESC+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX-./\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX.\ACKD\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX.\a#\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\243\251\ETX\DC2\ETX.%C\n\
    \\193\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX3\STX\SYN\SUB\179\SOH This sets the maximum size of total evidence in bytes that can be committed in a single block.\n\
    \ and should fall comfortably under the max block bytes.\n\
    \ Default is 1048576 or 1MB\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX3\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX3\DC4\NAK\n\
    \\128\SOH\n\
    \\STX\EOT\ETX\DC2\EOT8\NUL=\SOH\SUBt ValidatorParams restrict the public key types validators can use.\n\
    \ NOTE: uses ABCI pubkey naming, not Amino names.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX8\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX9\STX%\n\
    \\r\n\
    \\ACK\EOT\ETX\a\135\244\ETX\DC2\ETX9\STX%\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX:\STX%\n\
    \\r\n\
    \\ACK\EOT\ETX\a\141\244\ETX\DC2\ETX:\STX%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX<\STX$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX<\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX<\"#\n\
    \B\n\
    \\STX\EOT\EOT\DC2\EOT@\NULE\SOH\SUB6 VersionParams contains the ABCI application version.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX@\b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXA\STX%\n\
    \\r\n\
    \\ACK\EOT\EOT\a\135\244\ETX\DC2\ETXA\STX%\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXB\STX%\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETXB\STX%\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXD\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXD\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXD\t\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXD\SI\DLE\n\
    \h\n\
    \\STX\EOT\ENQ\DC2\EOTJ\NULM\SOH\SUB\\ HashedParams is a subset of ConsensusParams.\n\
    \\n\
    \ It is hashed into the Header.ConsensusHash.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXJ\b\DC4\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXK\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXK\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXK\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXK\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXL\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXL\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXL\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXL\SUB\ESC\n\
    \b\n\
    \\STX\EOT\ACK\DC2\EOTP\NUL[\SOH\SUBV ABCIParams configure functionality specific to the Application Blockchain Interface.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXP\b\DC2\n\
    \\217\EOT\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXZ\STX*\SUB\203\EOT vote_extensions_enable_height configures the first height during which\n\
    \ vote extensions will be enabled. During this specified height, and for all\n\
    \ subsequent heights, precommit messages that do not contain valid extension data\n\
    \ will be considered invalid. Prior to this height, vote extensions will not\n\
    \ be used or accepted by validators on the network.\n\
    \\n\
    \ Once enabled, vote extensions will be created by the application in ExtendVote,\n\
    \ passed to the application for validation in VerifyVoteExtension and given\n\
    \ to the application to use when proposing a block during PrepareProposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXZ\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXZ\b%\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXZ()b\ACKproto3"