{- This file was auto-generated from cosmos/params/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Params.V1beta1.Query (
        Query(..), QueryParamsRequest(), QueryParamsResponse(),
        QuerySubspacesRequest(), QuerySubspacesResponse(), Subspace()
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
import qualified Proto.Cosmos.Params.V1beta1.Params
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.subspace' @:: Lens' QueryParamsRequest Data.Text.Text@
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.key' @:: Lens' QueryParamsRequest Data.Text.Text@ -}
data QueryParamsRequest
  = QueryParamsRequest'_constructor {_QueryParamsRequest'subspace :: !Data.Text.Text,
                                     _QueryParamsRequest'key :: !Data.Text.Text,
                                     _QueryParamsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsRequest "subspace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsRequest'subspace
           (\ x__ y__ -> x__ {_QueryParamsRequest'subspace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryParamsRequest "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsRequest'key
           (\ x__ y__ -> x__ {_QueryParamsRequest'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsRequest where
  messageName _
    = Data.Text.pack "cosmos.params.v1beta1.QueryParamsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryParamsRequest\DC2\SUB\n\
      \\bsubspace\CAN\SOH \SOH(\tR\bsubspace\DC2\DLE\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkey"
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
              Data.ProtoLens.FieldDescriptor QueryParamsRequest
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, subspace__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsRequest'_unknownFields = y__})
  defMessage
    = QueryParamsRequest'_constructor
        {_QueryParamsRequest'subspace = Data.ProtoLens.fieldDefault,
         _QueryParamsRequest'key = Data.ProtoLens.fieldDefault,
         _QueryParamsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryParamsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryParamsRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryParamsRequest"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryParamsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryParamsRequest'subspace x__)
                (Control.DeepSeq.deepseq (_QueryParamsRequest'key x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.param' @:: Lens' QueryParamsResponse Proto.Cosmos.Params.V1beta1.Params.ParamChange@
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.maybe'param' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Params.V1beta1.Params.ParamChange)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'param :: !(Prelude.Maybe Proto.Cosmos.Params.V1beta1.Params.ParamChange),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "param" Proto.Cosmos.Params.V1beta1.Params.ParamChange where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'param
           (\ x__ y__ -> x__ {_QueryParamsResponse'param = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'param" (Prelude.Maybe Proto.Cosmos.Params.V1beta1.Params.ParamChange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'param
           (\ x__ y__ -> x__ {_QueryParamsResponse'param = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.params.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2C\n\
      \\ENQparam\CAN\SOH \SOH(\v2\".cosmos.params.v1beta1.ParamChangeR\ENQparamB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        param__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "param"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Params.V1beta1.Params.ParamChange)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'param")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, param__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsResponse'_unknownFields = y__})
  defMessage
    = QueryParamsResponse'_constructor
        {_QueryParamsResponse'param = Prelude.Nothing,
         _QueryParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryParamsResponse
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
                                       "param"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"param") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryParamsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'param") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryParamsResponse'param x__) ())
{- | Fields :
      -}
data QuerySubspacesRequest
  = QuerySubspacesRequest'_constructor {_QuerySubspacesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySubspacesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QuerySubspacesRequest where
  messageName _
    = Data.Text.pack "cosmos.params.v1beta1.QuerySubspacesRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQuerySubspacesRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySubspacesRequest'_unknownFields
        (\ x__ y__ -> x__ {_QuerySubspacesRequest'_unknownFields = y__})
  defMessage
    = QuerySubspacesRequest'_constructor
        {_QuerySubspacesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySubspacesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySubspacesRequest
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
          (do loop Data.ProtoLens.defMessage) "QuerySubspacesRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QuerySubspacesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySubspacesRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.subspaces' @:: Lens' QuerySubspacesResponse [Subspace]@
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.vec'subspaces' @:: Lens' QuerySubspacesResponse (Data.Vector.Vector Subspace)@ -}
data QuerySubspacesResponse
  = QuerySubspacesResponse'_constructor {_QuerySubspacesResponse'subspaces :: !(Data.Vector.Vector Subspace),
                                         _QuerySubspacesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySubspacesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySubspacesResponse "subspaces" [Subspace] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySubspacesResponse'subspaces
           (\ x__ y__ -> x__ {_QuerySubspacesResponse'subspaces = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QuerySubspacesResponse "vec'subspaces" (Data.Vector.Vector Subspace) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySubspacesResponse'subspaces
           (\ x__ y__ -> x__ {_QuerySubspacesResponse'subspaces = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySubspacesResponse where
  messageName _
    = Data.Text.pack "cosmos.params.v1beta1.QuerySubspacesResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQuerySubspacesResponse\DC2=\n\
      \\tsubspaces\CAN\SOH \ETX(\v2\US.cosmos.params.v1beta1.SubspaceR\tsubspaces"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        subspaces__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subspaces"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Subspace)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"subspaces")) ::
              Data.ProtoLens.FieldDescriptor QuerySubspacesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, subspaces__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySubspacesResponse'_unknownFields
        (\ x__ y__ -> x__ {_QuerySubspacesResponse'_unknownFields = y__})
  defMessage
    = QuerySubspacesResponse'_constructor
        {_QuerySubspacesResponse'subspaces = Data.Vector.Generic.empty,
         _QuerySubspacesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySubspacesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Subspace
             -> Data.ProtoLens.Encoding.Bytes.Parser QuerySubspacesResponse
        loop x mutable'subspaces
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'subspaces <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'subspaces)
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
                              (Data.ProtoLens.Field.field @"vec'subspaces") frozen'subspaces x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "subspaces"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'subspaces y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'subspaces
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'subspaces <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'subspaces)
          "QuerySubspacesResponse"
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
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'subspaces") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QuerySubspacesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySubspacesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySubspacesResponse'subspaces x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.subspace' @:: Lens' Subspace Data.Text.Text@
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.keys' @:: Lens' Subspace [Data.Text.Text]@
         * 'Proto.Cosmos.Params.V1beta1.Query_Fields.vec'keys' @:: Lens' Subspace (Data.Vector.Vector Data.Text.Text)@ -}
data Subspace
  = Subspace'_constructor {_Subspace'subspace :: !Data.Text.Text,
                           _Subspace'keys :: !(Data.Vector.Vector Data.Text.Text),
                           _Subspace'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Subspace where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Subspace "subspace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Subspace'subspace (\ x__ y__ -> x__ {_Subspace'subspace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Subspace "keys" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Subspace'keys (\ x__ y__ -> x__ {_Subspace'keys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Subspace "vec'keys" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Subspace'keys (\ x__ y__ -> x__ {_Subspace'keys = y__}))
        Prelude.id
instance Data.ProtoLens.Message Subspace where
  messageName _ = Data.Text.pack "cosmos.params.v1beta1.Subspace"
  packedMessageDescriptor _
    = "\n\
      \\bSubspace\DC2\SUB\n\
      \\bsubspace\CAN\SOH \SOH(\tR\bsubspace\DC2\DC2\n\
      \\EOTkeys\CAN\STX \ETX(\tR\EOTkeys"
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
              Data.ProtoLens.FieldDescriptor Subspace
        keys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keys"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"keys")) ::
              Data.ProtoLens.FieldDescriptor Subspace
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, subspace__field_descriptor),
           (Data.ProtoLens.Tag 2, keys__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Subspace'_unknownFields
        (\ x__ y__ -> x__ {_Subspace'_unknownFields = y__})
  defMessage
    = Subspace'_constructor
        {_Subspace'subspace = Data.ProtoLens.fieldDefault,
         _Subspace'keys = Data.Vector.Generic.empty,
         _Subspace'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Subspace
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Subspace
        loop x mutable'keys
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'keys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'keys)
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
                              (Data.ProtoLens.Field.field @"vec'keys") frozen'keys x))
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
                                  mutable'keys
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'keys y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'keys
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'keys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'keys)
          "Subspace"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'keys") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Subspace where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Subspace'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Subspace'subspace x__)
                (Control.DeepSeq.deepseq (_Subspace'keys x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.params.v1beta1"
  type ServiceMethods Query = '["params", "subspaces"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\134\SOH\n\
      \\ACKParams\DC2).cosmos.params.v1beta1.QueryParamsRequest\SUB*.cosmos.params.v1beta1.QueryParamsResponse\"%\130\211\228\147\STX\US\DC2\GS/cosmos/params/v1beta1/params\DC2\146\SOH\n\
      \\tSubspaces\DC2,.cosmos.params.v1beta1.QuerySubspacesRequest\SUB-.cosmos.params.v1beta1.QuerySubspacesResponse\"(\130\211\228\147\STX\"\DC2 /cosmos/params/v1beta1/subspaces"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "subspaces" where
  type MethodName Query "subspaces" = "Subspaces"
  type MethodInput Query "subspaces" = QuerySubspacesRequest
  type MethodOutput Query "subspaces" = QuerySubspacesResponse
  type MethodStreamingType Query "subspaces" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!cosmos/params/v1beta1/query.proto\DC2\NAKcosmos.params.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\"cosmos/params/v1beta1/params.proto\SUB\DC1amino/amino.proto\"B\n\
    \\DC2QueryParamsRequest\DC2\SUB\n\
    \\bsubspace\CAN\SOH \SOH(\tR\bsubspace\DC2\DLE\n\
    \\ETXkey\CAN\STX \SOH(\tR\ETXkey\"Z\n\
    \\DC3QueryParamsResponse\DC2C\n\
    \\ENQparam\CAN\SOH \SOH(\v2\".cosmos.params.v1beta1.ParamChangeR\ENQparamB\t\200\222\US\NUL\168\231\176*\SOH\"\ETB\n\
    \\NAKQuerySubspacesRequest\"W\n\
    \\SYNQuerySubspacesResponse\DC2=\n\
    \\tsubspaces\CAN\SOH \ETX(\v2\US.cosmos.params.v1beta1.SubspaceR\tsubspaces\":\n\
    \\bSubspace\DC2\SUB\n\
    \\bsubspace\CAN\SOH \SOH(\tR\bsubspace\DC2\DC2\n\
    \\EOTkeys\CAN\STX \ETX(\tR\EOTkeys2\165\STX\n\
    \\ENQQuery\DC2\134\SOH\n\
    \\ACKParams\DC2).cosmos.params.v1beta1.QueryParamsRequest\SUB*.cosmos.params.v1beta1.QueryParamsResponse\"%\130\211\228\147\STX\US\DC2\GS/cosmos/params/v1beta1/params\DC2\146\SOH\n\
    \\tSubspaces\DC2,.cosmos.params.v1beta1.QuerySubspacesRequest\SUB-.cosmos.params.v1beta1.QuerySubspacesResponse\"(\130\211\228\147\STX\"\DC2 /cosmos/params/v1beta1/subspacesB6Z4github.com/cosmos/cosmos-sdk/x/params/types/proposalJ\231\r\n\
    \\ACK\DC2\EOT\NUL\NUL>\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULK\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULK\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\v\NUL\CAN\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\v\b\r\n\
    \]\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SO\STX\DLE\ETX\SUBO Params queries a specific parameter of a module, given its subspace and\n\
    \ key.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SO\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SO\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SO*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SI\EOTC\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\SI\EOTC\n\
    \t\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\NAK\STX\ETB\ETX\SUBf Subspaces queries for all registered subspaces and all keys for a subspace.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\NAK\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\NAK\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\NAK0F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\SYN\EOTF\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\SYN\EOTF\n\
    \Q\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL!\SOH\SUBE QueryParamsRequest is request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\SUB\n\
    \F\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STX\SYN\SUB9 subspace defines the module to query the parameter for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS\DC4\NAK\n\
    \D\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX\DC1\SUB7 key defines the key of the parameter in the subspace.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX \SI\DLE\n\
    \S\n\
    \\STX\EOT\SOH\DC2\EOT$\NUL'\SOH\SUBG QueryParamsResponse is response type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\ESC\n\
    \3\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX&\STXV\SUB& param defines the queried parameter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX&\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX&\SO\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX&\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX&\CANU\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX&\EM5\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX&7T\n\
    \\155\SOH\n\
    \\STX\EOT\STX\DC2\ETX-\NUL \SUB\143\SOH QuerySubspacesRequest defines a request type for querying for all registered\n\
    \ subspaces and all keys for a subspace.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX-\b\GS\n\
    \\161\SOH\n\
    \\STX\EOT\ETX\DC2\EOT3\NUL5\SOH\SUB\148\SOH QuerySubspacesResponse defines the response types for querying for all\n\
    \ registered subspaces and all keys for a subspace.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX3\b\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX4\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX4\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX4\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX4 !\n\
    \\128\SOH\n\
    \\STX\EOT\EOT\DC2\EOT;\NUL>\SOH\SUBt Subspace defines a parameter subspace name and all the keys that exist for\n\
    \ the subspace.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX;\b\DLE\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX<\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX<\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX<\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX=\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX=\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX=\GS\RSb\ACKproto3"