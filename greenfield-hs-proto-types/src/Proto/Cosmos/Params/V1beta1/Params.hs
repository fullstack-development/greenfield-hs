{- This file was auto-generated from cosmos/params/v1beta1/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Params.V1beta1.Params (
        ParamChange(), ParameterChangeProposal()
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
{- | Fields :
     
         * 'Proto.Cosmos.Params.V1beta1.Params_Fields.subspace' @:: Lens' ParamChange Data.Text.Text@
         * 'Proto.Cosmos.Params.V1beta1.Params_Fields.key' @:: Lens' ParamChange Data.Text.Text@
         * 'Proto.Cosmos.Params.V1beta1.Params_Fields.value' @:: Lens' ParamChange Data.Text.Text@ -}
data ParamChange
  = ParamChange'_constructor {_ParamChange'subspace :: !Data.Text.Text,
                              _ParamChange'key :: !Data.Text.Text,
                              _ParamChange'value :: !Data.Text.Text,
                              _ParamChange'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ParamChange where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ParamChange "subspace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParamChange'subspace
           (\ x__ y__ -> x__ {_ParamChange'subspace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ParamChange "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParamChange'key (\ x__ y__ -> x__ {_ParamChange'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ParamChange "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParamChange'value (\ x__ y__ -> x__ {_ParamChange'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ParamChange where
  messageName _ = Data.Text.pack "cosmos.params.v1beta1.ParamChange"
  packedMessageDescriptor _
    = "\n\
      \\vParamChange\DC2\SUB\n\
      \\bsubspace\CAN\SOH \SOH(\tR\bsubspace\DC2\DLE\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\ETX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        subspace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subspace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"subspace")) ::
              Data.ProtoLens.FieldDescriptor ParamChange
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ParamChange
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ParamChange
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, subspace__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor),
           (Data.ProtoLens.Tag 3, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ParamChange'_unknownFields
        (\ x__ y__ -> x__ {_ParamChange'_unknownFields = y__})
  defMessage
    = ParamChange'_constructor
        {_ParamChange'subspace = Data.ProtoLens.fieldDefault,
         _ParamChange'key = Data.ProtoLens.fieldDefault,
         _ParamChange'value = Data.ProtoLens.fieldDefault,
         _ParamChange'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ParamChange -> Data.ProtoLens.Encoding.Bytes.Parser ParamChange
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
                                       "subspace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"subspace") y x)
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ParamChange"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"subspace") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ParamChange where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ParamChange'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ParamChange'subspace x__)
                (Control.DeepSeq.deepseq
                   (_ParamChange'key x__)
                   (Control.DeepSeq.deepseq (_ParamChange'value x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Params.V1beta1.Params_Fields.title' @:: Lens' ParameterChangeProposal Data.Text.Text@
         * 'Proto.Cosmos.Params.V1beta1.Params_Fields.description' @:: Lens' ParameterChangeProposal Data.Text.Text@
         * 'Proto.Cosmos.Params.V1beta1.Params_Fields.changes' @:: Lens' ParameterChangeProposal [ParamChange]@
         * 'Proto.Cosmos.Params.V1beta1.Params_Fields.vec'changes' @:: Lens' ParameterChangeProposal (Data.Vector.Vector ParamChange)@ -}
data ParameterChangeProposal
  = ParameterChangeProposal'_constructor {_ParameterChangeProposal'title :: !Data.Text.Text,
                                          _ParameterChangeProposal'description :: !Data.Text.Text,
                                          _ParameterChangeProposal'changes :: !(Data.Vector.Vector ParamChange),
                                          _ParameterChangeProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ParameterChangeProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ParameterChangeProposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParameterChangeProposal'title
           (\ x__ y__ -> x__ {_ParameterChangeProposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ParameterChangeProposal "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParameterChangeProposal'description
           (\ x__ y__ -> x__ {_ParameterChangeProposal'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ParameterChangeProposal "changes" [ParamChange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParameterChangeProposal'changes
           (\ x__ y__ -> x__ {_ParameterChangeProposal'changes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ParameterChangeProposal "vec'changes" (Data.Vector.Vector ParamChange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParameterChangeProposal'changes
           (\ x__ y__ -> x__ {_ParameterChangeProposal'changes = y__}))
        Prelude.id
instance Data.ProtoLens.Message ParameterChangeProposal where
  messageName _
    = Data.Text.pack "cosmos.params.v1beta1.ParameterChangeProposal"
  packedMessageDescriptor _
    = "\n\
      \\ETBParameterChangeProposal\DC2\DC4\n\
      \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2G\n\
      \\achanges\CAN\ETX \ETX(\v2\".cosmos.params.v1beta1.ParamChangeR\achangesB\t\200\222\US\NUL\168\231\176*\SOH:I\136\160\US\NUL\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*\"cosmos-sdk/ParameterChangeProposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor ParameterChangeProposal
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor ParameterChangeProposal
        changes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "changes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ParamChange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"changes")) ::
              Data.ProtoLens.FieldDescriptor ParameterChangeProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, title__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, changes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ParameterChangeProposal'_unknownFields
        (\ x__ y__ -> x__ {_ParameterChangeProposal'_unknownFields = y__})
  defMessage
    = ParameterChangeProposal'_constructor
        {_ParameterChangeProposal'title = Data.ProtoLens.fieldDefault,
         _ParameterChangeProposal'description = Data.ProtoLens.fieldDefault,
         _ParameterChangeProposal'changes = Data.Vector.Generic.empty,
         _ParameterChangeProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ParameterChangeProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ParamChange
             -> Data.ProtoLens.Encoding.Bytes.Parser ParameterChangeProposal
        loop x mutable'changes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'changes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'changes)
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
                              (Data.ProtoLens.Field.field @"vec'changes") frozen'changes x))
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
                                       "title"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
                                  mutable'changes
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'changes
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "changes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'changes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'changes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'changes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'changes)
          "ParameterChangeProposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"title") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'changes") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ParameterChangeProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ParameterChangeProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ParameterChangeProposal'title x__)
                (Control.DeepSeq.deepseq
                   (_ParameterChangeProposal'description x__)
                   (Control.DeepSeq.deepseq
                      (_ParameterChangeProposal'changes x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"cosmos/params/v1beta1/params.proto\DC2\NAKcosmos.params.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\229\SOH\n\
    \\ETBParameterChangeProposal\DC2\DC4\n\
    \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2G\n\
    \\achanges\CAN\ETX \ETX(\v2\".cosmos.params.v1beta1.ParamChangeR\achangesB\t\200\222\US\NUL\168\231\176*\SOH:I\136\160\US\NUL\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*\"cosmos-sdk/ParameterChangeProposal\"Q\n\
    \\vParamChange\DC2\SUB\n\
    \\bsubspace\CAN\SOH \SOH(\tR\bsubspace\DC2\DLE\n\
    \\ETXkey\CAN\STX \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\ETX \SOH(\tR\ENQvalueB:Z4github.com/cosmos/cosmos-sdk/x/params/types/proposal\168\226\RS\SOHJ\161\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULV\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL$\n\
    \\v\n\
    \\EOT\b\165\236\ETX\DC2\ETX\EOT\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL\ESC\n\
    \Z\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\DC3\SOH\SUBN ParameterChangeProposal defines a proposal to change one or more parameters.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\US\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\f\STX5\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\f\STX5\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\r\STXL\n\
    \\SO\n\
    \\a\EOT\NUL\a\201\214\ENQ\NUL\DC2\ETX\r\STXL\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STXT\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\SO\STXT\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\ETB\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE%&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC1\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1\ETB\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC1%&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC2\STXe\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DC2\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC2\ETB\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC2%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\DC2'd\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\DC2(D\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX\DC2Fc\n\
    \f\n\
    \\STX\EOT\SOH\DC2\EOT\ETB\NUL\ESC\SOH\SUBZ ParamChange defines an individual parameter change, for use in\n\
    \ ParameterChangeProposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ETB\b\DC3\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\CAN\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\CAN\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\CAN\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\EM\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\EM\t\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\EM\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SUB\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SUB\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SUB\DC4\NAKb\ACKproto3"