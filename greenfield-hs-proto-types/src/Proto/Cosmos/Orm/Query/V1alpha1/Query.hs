{- This file was auto-generated from cosmos/orm/query/v1alpha1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Orm.Query.V1alpha1.Query (
        Query(..), GetRequest(), GetResponse(), IndexValue(),
        IndexValue'Value(..), _IndexValue'Uint, _IndexValue'Int,
        _IndexValue'Str, _IndexValue'Bytes, _IndexValue'Enum,
        _IndexValue'Bool, _IndexValue'Timestamp, _IndexValue'Duration,
        ListRequest(), ListRequest'Query(..), _ListRequest'Prefix',
        _ListRequest'Range', ListRequest'Prefix(), ListRequest'Range(),
        ListResponse()
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.messageName' @:: Lens' GetRequest Data.Text.Text@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.index' @:: Lens' GetRequest Data.Text.Text@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.values' @:: Lens' GetRequest [IndexValue]@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.vec'values' @:: Lens' GetRequest (Data.Vector.Vector IndexValue)@ -}
data GetRequest
  = GetRequest'_constructor {_GetRequest'messageName :: !Data.Text.Text,
                             _GetRequest'index :: !Data.Text.Text,
                             _GetRequest'values :: !(Data.Vector.Vector IndexValue),
                             _GetRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetRequest "messageName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetRequest'messageName
           (\ x__ y__ -> x__ {_GetRequest'messageName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetRequest "index" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetRequest'index (\ x__ y__ -> x__ {_GetRequest'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetRequest "values" [IndexValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetRequest'values (\ x__ y__ -> x__ {_GetRequest'values = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetRequest "vec'values" (Data.Vector.Vector IndexValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetRequest'values (\ x__ y__ -> x__ {_GetRequest'values = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetRequest where
  messageName _
    = Data.Text.pack "cosmos.orm.query.v1alpha1.GetRequest"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \GetRequest\DC2!\n\
      \\fmessage_name\CAN\SOH \SOH(\tR\vmessageName\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\tR\ENQindex\DC2=\n\
      \\ACKvalues\CAN\ETX \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ACKvalues"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        messageName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"messageName")) ::
              Data.ProtoLens.FieldDescriptor GetRequest
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor GetRequest
        values__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor IndexValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"values")) ::
              Data.ProtoLens.FieldDescriptor GetRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, messageName__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 3, values__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetRequest'_unknownFields = y__})
  defMessage
    = GetRequest'_constructor
        {_GetRequest'messageName = Data.ProtoLens.fieldDefault,
         _GetRequest'index = Data.ProtoLens.fieldDefault,
         _GetRequest'values = Data.Vector.Generic.empty,
         _GetRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld IndexValue
             -> Data.ProtoLens.Encoding.Bytes.Parser GetRequest
        loop x mutable'values
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'values)
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
                              (Data.ProtoLens.Field.field @"vec'values") frozen'values x))
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
                                       "message_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"messageName") y x)
                                  mutable'values
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
                                       "index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                                  mutable'values
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'values y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'values
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'values)
          "GetRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"messageName") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'values") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData GetRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetRequest'messageName x__)
                (Control.DeepSeq.deepseq
                   (_GetRequest'index x__)
                   (Control.DeepSeq.deepseq (_GetRequest'values x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.result' @:: Lens' GetResponse Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'result' @:: Lens' GetResponse (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data GetResponse
  = GetResponse'_constructor {_GetResponse'result :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                              _GetResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetResponse "result" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetResponse'result (\ x__ y__ -> x__ {_GetResponse'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetResponse "maybe'result" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetResponse'result (\ x__ y__ -> x__ {_GetResponse'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetResponse where
  messageName _
    = Data.Text.pack "cosmos.orm.query.v1alpha1.GetResponse"
  packedMessageDescriptor _
    = "\n\
      \\vGetResponse\DC2,\n\
      \\ACKresult\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor GetResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetResponse'_unknownFields = y__})
  defMessage
    = GetResponse'_constructor
        {_GetResponse'result = Prelude.Nothing,
         _GetResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetResponse -> Data.ProtoLens.Encoding.Bytes.Parser GetResponse
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
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
instance Control.DeepSeq.NFData GetResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetResponse'result x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'value' @:: Lens' IndexValue (Prelude.Maybe IndexValue'Value)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'uint' @:: Lens' IndexValue (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.uint' @:: Lens' IndexValue Data.Word.Word64@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'int' @:: Lens' IndexValue (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.int' @:: Lens' IndexValue Data.Int.Int64@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'str' @:: Lens' IndexValue (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.str' @:: Lens' IndexValue Data.Text.Text@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'bytes' @:: Lens' IndexValue (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.bytes' @:: Lens' IndexValue Data.ByteString.ByteString@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'enum' @:: Lens' IndexValue (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.enum' @:: Lens' IndexValue Data.Text.Text@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'bool' @:: Lens' IndexValue (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.bool' @:: Lens' IndexValue Prelude.Bool@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'timestamp' @:: Lens' IndexValue (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.timestamp' @:: Lens' IndexValue Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'duration' @:: Lens' IndexValue (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.duration' @:: Lens' IndexValue Proto.Google.Protobuf.Duration.Duration@ -}
data IndexValue
  = IndexValue'_constructor {_IndexValue'value :: !(Prelude.Maybe IndexValue'Value),
                             _IndexValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IndexValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data IndexValue'Value
  = IndexValue'Uint !Data.Word.Word64 |
    IndexValue'Int !Data.Int.Int64 |
    IndexValue'Str !Data.Text.Text |
    IndexValue'Bytes !Data.ByteString.ByteString |
    IndexValue'Enum !Data.Text.Text |
    IndexValue'Bool !Prelude.Bool |
    IndexValue'Timestamp !Proto.Google.Protobuf.Timestamp.Timestamp |
    IndexValue'Duration !Proto.Google.Protobuf.Duration.Duration
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField IndexValue "maybe'value" (Prelude.Maybe IndexValue'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IndexValue "maybe'uint" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Uint x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Uint y__))
instance Data.ProtoLens.Field.HasField IndexValue "uint" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Uint x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Uint y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField IndexValue "maybe'int" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Int x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Int y__))
instance Data.ProtoLens.Field.HasField IndexValue "int" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Int x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Int y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField IndexValue "maybe'str" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Str x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Str y__))
instance Data.ProtoLens.Field.HasField IndexValue "str" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Str x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Str y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField IndexValue "maybe'bytes" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Bytes x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Bytes y__))
instance Data.ProtoLens.Field.HasField IndexValue "bytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Bytes x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Bytes y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField IndexValue "maybe'enum" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Enum x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Enum y__))
instance Data.ProtoLens.Field.HasField IndexValue "enum" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Enum x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Enum y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField IndexValue "maybe'bool" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Bool x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Bool y__))
instance Data.ProtoLens.Field.HasField IndexValue "bool" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Bool x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Bool y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField IndexValue "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Timestamp x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Timestamp y__))
instance Data.ProtoLens.Field.HasField IndexValue "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Timestamp x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Timestamp y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField IndexValue "maybe'duration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (IndexValue'Duration x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap IndexValue'Duration y__))
instance Data.ProtoLens.Field.HasField IndexValue "duration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexValue'value (\ x__ y__ -> x__ {_IndexValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (IndexValue'Duration x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap IndexValue'Duration y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message IndexValue where
  messageName _
    = Data.Text.pack "cosmos.orm.query.v1alpha1.IndexValue"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \IndexValue\DC2\DC4\n\
      \\EOTuint\CAN\SOH \SOH(\EOTH\NULR\EOTuint\DC2\DC2\n\
      \\ETXint\CAN\STX \SOH(\ETXH\NULR\ETXint\DC2\DC2\n\
      \\ETXstr\CAN\ETX \SOH(\tH\NULR\ETXstr\DC2\SYN\n\
      \\ENQbytes\CAN\EOT \SOH(\fH\NULR\ENQbytes\DC2\DC4\n\
      \\EOTenum\CAN\ENQ \SOH(\tH\NULR\EOTenum\DC2\DC4\n\
      \\EOTbool\CAN\ACK \SOH(\bH\NULR\EOTbool\DC2:\n\
      \\ttimestamp\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\ttimestamp\DC27\n\
      \\bduration\CAN\b \SOH(\v2\EM.google.protobuf.DurationH\NULR\bdurationB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        uint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uint")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
        int__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'int")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
        str__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "str"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'str")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
        enum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enum")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
        bool__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bool")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
        duration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'duration")) ::
              Data.ProtoLens.FieldDescriptor IndexValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, uint__field_descriptor),
           (Data.ProtoLens.Tag 2, int__field_descriptor),
           (Data.ProtoLens.Tag 3, str__field_descriptor),
           (Data.ProtoLens.Tag 4, bytes__field_descriptor),
           (Data.ProtoLens.Tag 5, enum__field_descriptor),
           (Data.ProtoLens.Tag 6, bool__field_descriptor),
           (Data.ProtoLens.Tag 7, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 8, duration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IndexValue'_unknownFields
        (\ x__ y__ -> x__ {_IndexValue'_unknownFields = y__})
  defMessage
    = IndexValue'_constructor
        {_IndexValue'value = Prelude.Nothing,
         _IndexValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IndexValue -> Data.ProtoLens.Encoding.Bytes.Parser IndexValue
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "uint"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uint") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"int") y x)
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
                                       "str"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"str") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
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
                                       "enum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enum") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bool") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "duration"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"duration") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IndexValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (IndexValue'Uint v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                (Prelude.Just (IndexValue'Int v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (IndexValue'Str v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (IndexValue'Bytes v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (IndexValue'Enum v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (IndexValue'Bool v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (IndexValue'Timestamp v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (IndexValue'Duration v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData IndexValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IndexValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_IndexValue'value x__) ())
instance Control.DeepSeq.NFData IndexValue'Value where
  rnf (IndexValue'Uint x__) = Control.DeepSeq.rnf x__
  rnf (IndexValue'Int x__) = Control.DeepSeq.rnf x__
  rnf (IndexValue'Str x__) = Control.DeepSeq.rnf x__
  rnf (IndexValue'Bytes x__) = Control.DeepSeq.rnf x__
  rnf (IndexValue'Enum x__) = Control.DeepSeq.rnf x__
  rnf (IndexValue'Bool x__) = Control.DeepSeq.rnf x__
  rnf (IndexValue'Timestamp x__) = Control.DeepSeq.rnf x__
  rnf (IndexValue'Duration x__) = Control.DeepSeq.rnf x__
_IndexValue'Uint ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Data.Word.Word64
_IndexValue'Uint
  = Data.ProtoLens.Prism.prism'
      IndexValue'Uint
      (\ p__
         -> case p__ of
              (IndexValue'Uint p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_IndexValue'Int ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Data.Int.Int64
_IndexValue'Int
  = Data.ProtoLens.Prism.prism'
      IndexValue'Int
      (\ p__
         -> case p__ of
              (IndexValue'Int p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_IndexValue'Str ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Data.Text.Text
_IndexValue'Str
  = Data.ProtoLens.Prism.prism'
      IndexValue'Str
      (\ p__
         -> case p__ of
              (IndexValue'Str p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_IndexValue'Bytes ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Data.ByteString.ByteString
_IndexValue'Bytes
  = Data.ProtoLens.Prism.prism'
      IndexValue'Bytes
      (\ p__
         -> case p__ of
              (IndexValue'Bytes p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_IndexValue'Enum ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Data.Text.Text
_IndexValue'Enum
  = Data.ProtoLens.Prism.prism'
      IndexValue'Enum
      (\ p__
         -> case p__ of
              (IndexValue'Enum p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_IndexValue'Bool ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Prelude.Bool
_IndexValue'Bool
  = Data.ProtoLens.Prism.prism'
      IndexValue'Bool
      (\ p__
         -> case p__ of
              (IndexValue'Bool p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_IndexValue'Timestamp ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Proto.Google.Protobuf.Timestamp.Timestamp
_IndexValue'Timestamp
  = Data.ProtoLens.Prism.prism'
      IndexValue'Timestamp
      (\ p__
         -> case p__ of
              (IndexValue'Timestamp p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_IndexValue'Duration ::
  Data.ProtoLens.Prism.Prism' IndexValue'Value Proto.Google.Protobuf.Duration.Duration
_IndexValue'Duration
  = Data.ProtoLens.Prism.prism'
      IndexValue'Duration
      (\ p__
         -> case p__ of
              (IndexValue'Duration p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.messageName' @:: Lens' ListRequest Data.Text.Text@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.index' @:: Lens' ListRequest Data.Text.Text@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.pagination' @:: Lens' ListRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'pagination' @:: Lens' ListRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'query' @:: Lens' ListRequest (Prelude.Maybe ListRequest'Query)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'prefix' @:: Lens' ListRequest (Prelude.Maybe ListRequest'Prefix)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.prefix' @:: Lens' ListRequest ListRequest'Prefix@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'range' @:: Lens' ListRequest (Prelude.Maybe ListRequest'Range)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.range' @:: Lens' ListRequest ListRequest'Range@ -}
data ListRequest
  = ListRequest'_constructor {_ListRequest'messageName :: !Data.Text.Text,
                              _ListRequest'index :: !Data.Text.Text,
                              _ListRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                              _ListRequest'query :: !(Prelude.Maybe ListRequest'Query),
                              _ListRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ListRequest'Query
  = ListRequest'Prefix' !ListRequest'Prefix |
    ListRequest'Range' !ListRequest'Range
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ListRequest "messageName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'messageName
           (\ x__ y__ -> x__ {_ListRequest'messageName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListRequest "index" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'index (\ x__ y__ -> x__ {_ListRequest'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'pagination
           (\ x__ y__ -> x__ {_ListRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'pagination
           (\ x__ y__ -> x__ {_ListRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListRequest "maybe'query" (Prelude.Maybe ListRequest'Query) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'query (\ x__ y__ -> x__ {_ListRequest'query = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListRequest "maybe'prefix" (Prelude.Maybe ListRequest'Prefix) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'query (\ x__ y__ -> x__ {_ListRequest'query = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListRequest'Prefix' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ListRequest'Prefix' y__))
instance Data.ProtoLens.Field.HasField ListRequest "prefix" ListRequest'Prefix where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'query (\ x__ y__ -> x__ {_ListRequest'query = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListRequest'Prefix' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ListRequest'Prefix' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ListRequest "maybe'range" (Prelude.Maybe ListRequest'Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'query (\ x__ y__ -> x__ {_ListRequest'query = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ListRequest'Range' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ListRequest'Range' y__))
instance Data.ProtoLens.Field.HasField ListRequest "range" ListRequest'Range where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'query (\ x__ y__ -> x__ {_ListRequest'query = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ListRequest'Range' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ListRequest'Range' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ListRequest where
  messageName _
    = Data.Text.pack "cosmos.orm.query.v1alpha1.ListRequest"
  packedMessageDescriptor _
    = "\n\
      \\vListRequest\DC2!\n\
      \\fmessage_name\CAN\SOH \SOH(\tR\vmessageName\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\tR\ENQindex\DC2G\n\
      \\ACKprefix\CAN\ETX \SOH(\v2-.cosmos.orm.query.v1alpha1.ListRequest.PrefixH\NULR\ACKprefix\DC2D\n\
      \\ENQrange\CAN\EOT \SOH(\v2,.cosmos.orm.query.v1alpha1.ListRequest.RangeH\NULR\ENQrange\DC2F\n\
      \\n\
      \pagination\CAN\ENQ \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination\SUBG\n\
      \\ACKPrefix\DC2=\n\
      \\ACKvalues\CAN\SOH \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ACKvalues\SUB}\n\
      \\ENQRange\DC2;\n\
      \\ENQstart\CAN\SOH \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ENQstart\DC27\n\
      \\ETXend\CAN\STX \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ETXendB\a\n\
      \\ENQquery"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        messageName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"messageName")) ::
              Data.ProtoLens.FieldDescriptor ListRequest
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor ListRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor ListRequest
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListRequest'Prefix)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefix")) ::
              Data.ProtoLens.FieldDescriptor ListRequest
        range__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "range"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListRequest'Range)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'range")) ::
              Data.ProtoLens.FieldDescriptor ListRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, messageName__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 5, pagination__field_descriptor),
           (Data.ProtoLens.Tag 3, prefix__field_descriptor),
           (Data.ProtoLens.Tag 4, range__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListRequest'_unknownFields
        (\ x__ y__ -> x__ {_ListRequest'_unknownFields = y__})
  defMessage
    = ListRequest'_constructor
        {_ListRequest'messageName = Data.ProtoLens.fieldDefault,
         _ListRequest'index = Data.ProtoLens.fieldDefault,
         _ListRequest'pagination = Prelude.Nothing,
         _ListRequest'query = Prelude.Nothing,
         _ListRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListRequest -> Data.ProtoLens.Encoding.Bytes.Parser ListRequest
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
                                       "message_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"messageName") y x)
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
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "prefix"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "range"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"range") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"messageName") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
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
                          (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'query") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (ListRequest'Prefix' v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (ListRequest'Range' v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ListRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListRequest'messageName x__)
                (Control.DeepSeq.deepseq
                   (_ListRequest'index x__)
                   (Control.DeepSeq.deepseq
                      (_ListRequest'pagination x__)
                      (Control.DeepSeq.deepseq (_ListRequest'query x__) ()))))
instance Control.DeepSeq.NFData ListRequest'Query where
  rnf (ListRequest'Prefix' x__) = Control.DeepSeq.rnf x__
  rnf (ListRequest'Range' x__) = Control.DeepSeq.rnf x__
_ListRequest'Prefix' ::
  Data.ProtoLens.Prism.Prism' ListRequest'Query ListRequest'Prefix
_ListRequest'Prefix'
  = Data.ProtoLens.Prism.prism'
      ListRequest'Prefix'
      (\ p__
         -> case p__ of
              (ListRequest'Prefix' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ListRequest'Range' ::
  Data.ProtoLens.Prism.Prism' ListRequest'Query ListRequest'Range
_ListRequest'Range'
  = Data.ProtoLens.Prism.prism'
      ListRequest'Range'
      (\ p__
         -> case p__ of
              (ListRequest'Range' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.values' @:: Lens' ListRequest'Prefix [IndexValue]@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.vec'values' @:: Lens' ListRequest'Prefix (Data.Vector.Vector IndexValue)@ -}
data ListRequest'Prefix
  = ListRequest'Prefix'_constructor {_ListRequest'Prefix'values :: !(Data.Vector.Vector IndexValue),
                                     _ListRequest'Prefix'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListRequest'Prefix where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListRequest'Prefix "values" [IndexValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'Prefix'values
           (\ x__ y__ -> x__ {_ListRequest'Prefix'values = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListRequest'Prefix "vec'values" (Data.Vector.Vector IndexValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'Prefix'values
           (\ x__ y__ -> x__ {_ListRequest'Prefix'values = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListRequest'Prefix where
  messageName _
    = Data.Text.pack "cosmos.orm.query.v1alpha1.ListRequest.Prefix"
  packedMessageDescriptor _
    = "\n\
      \\ACKPrefix\DC2=\n\
      \\ACKvalues\CAN\SOH \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ACKvalues"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        values__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor IndexValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"values")) ::
              Data.ProtoLens.FieldDescriptor ListRequest'Prefix
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, values__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListRequest'Prefix'_unknownFields
        (\ x__ y__ -> x__ {_ListRequest'Prefix'_unknownFields = y__})
  defMessage
    = ListRequest'Prefix'_constructor
        {_ListRequest'Prefix'values = Data.Vector.Generic.empty,
         _ListRequest'Prefix'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListRequest'Prefix
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld IndexValue
             -> Data.ProtoLens.Encoding.Bytes.Parser ListRequest'Prefix
        loop x mutable'values
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'values)
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
                              (Data.ProtoLens.Field.field @"vec'values") frozen'values x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'values y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'values
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'values)
          "Prefix"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'values") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ListRequest'Prefix where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListRequest'Prefix'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ListRequest'Prefix'values x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.start' @:: Lens' ListRequest'Range [IndexValue]@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.vec'start' @:: Lens' ListRequest'Range (Data.Vector.Vector IndexValue)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.end' @:: Lens' ListRequest'Range [IndexValue]@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.vec'end' @:: Lens' ListRequest'Range (Data.Vector.Vector IndexValue)@ -}
data ListRequest'Range
  = ListRequest'Range'_constructor {_ListRequest'Range'start :: !(Data.Vector.Vector IndexValue),
                                    _ListRequest'Range'end :: !(Data.Vector.Vector IndexValue),
                                    _ListRequest'Range'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListRequest'Range where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListRequest'Range "start" [IndexValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'Range'start
           (\ x__ y__ -> x__ {_ListRequest'Range'start = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListRequest'Range "vec'start" (Data.Vector.Vector IndexValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'Range'start
           (\ x__ y__ -> x__ {_ListRequest'Range'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListRequest'Range "end" [IndexValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'Range'end
           (\ x__ y__ -> x__ {_ListRequest'Range'end = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListRequest'Range "vec'end" (Data.Vector.Vector IndexValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListRequest'Range'end
           (\ x__ y__ -> x__ {_ListRequest'Range'end = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListRequest'Range where
  messageName _
    = Data.Text.pack "cosmos.orm.query.v1alpha1.ListRequest.Range"
  packedMessageDescriptor _
    = "\n\
      \\ENQRange\DC2;\n\
      \\ENQstart\CAN\SOH \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ENQstart\DC27\n\
      \\ETXend\CAN\STX \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ETXend"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor IndexValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"start")) ::
              Data.ProtoLens.FieldDescriptor ListRequest'Range
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor IndexValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"end")) ::
              Data.ProtoLens.FieldDescriptor ListRequest'Range
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, end__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListRequest'Range'_unknownFields
        (\ x__ y__ -> x__ {_ListRequest'Range'_unknownFields = y__})
  defMessage
    = ListRequest'Range'_constructor
        {_ListRequest'Range'start = Data.Vector.Generic.empty,
         _ListRequest'Range'end = Data.Vector.Generic.empty,
         _ListRequest'Range'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListRequest'Range
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld IndexValue
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld IndexValue
                -> Data.ProtoLens.Encoding.Bytes.Parser ListRequest'Range
        loop x mutable'end mutable'start
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'end <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'end)
                      frozen'start <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'start)
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
                              (Data.ProtoLens.Field.field @"vec'end") frozen'end
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'start") frozen'start x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "start"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'start y)
                                loop x mutable'end v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "end"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'end y)
                                loop x v mutable'start
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'end mutable'start
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'end <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'start <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'end mutable'start)
          "Range"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'start") _x))
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
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'end") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ListRequest'Range where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListRequest'Range'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListRequest'Range'start x__)
                (Control.DeepSeq.deepseq (_ListRequest'Range'end x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.results' @:: Lens' ListResponse [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.vec'results' @:: Lens' ListResponse (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.pagination' @:: Lens' ListResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Orm.Query.V1alpha1.Query_Fields.maybe'pagination' @:: Lens' ListResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data ListResponse
  = ListResponse'_constructor {_ListResponse'results :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                               _ListResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                               _ListResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListResponse "results" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListResponse'results
           (\ x__ y__ -> x__ {_ListResponse'results = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListResponse "vec'results" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListResponse'results
           (\ x__ y__ -> x__ {_ListResponse'results = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListResponse'pagination
           (\ x__ y__ -> x__ {_ListResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListResponse'pagination
           (\ x__ y__ -> x__ {_ListResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListResponse where
  messageName _
    = Data.Text.pack "cosmos.orm.query.v1alpha1.ListResponse"
  packedMessageDescriptor _
    = "\n\
      \\fListResponse\DC2.\n\
      \\aresults\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\aresults\DC2G\n\
      \\n\
      \pagination\CAN\ENQ \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        results__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "results"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"results")) ::
              Data.ProtoLens.FieldDescriptor ListResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor ListResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, results__field_descriptor),
           (Data.ProtoLens.Tag 5, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListResponse'_unknownFields
        (\ x__ y__ -> x__ {_ListResponse'_unknownFields = y__})
  defMessage
    = ListResponse'_constructor
        {_ListResponse'results = Data.Vector.Generic.empty,
         _ListResponse'pagination = Prelude.Nothing,
         _ListResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser ListResponse
        loop x mutable'results
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'results)
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
                              (Data.ProtoLens.Field.field @"vec'results") frozen'results x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "results"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'results y)
                                loop x v
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'results
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'results
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'results)
          "ListResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'results") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ListResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListResponse'results x__)
                (Control.DeepSeq.deepseq (_ListResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.orm.query.v1alpha1"
  type ServiceMethods Query = '["get", "list"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2T\n\
      \\ETXGet\DC2%.cosmos.orm.query.v1alpha1.GetRequest\SUB&.cosmos.orm.query.v1alpha1.GetResponse\DC2W\n\
      \\EOTList\DC2&.cosmos.orm.query.v1alpha1.ListRequest\SUB'.cosmos.orm.query.v1alpha1.ListResponse"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "get" where
  type MethodName Query "get" = "Get"
  type MethodInput Query "get" = GetRequest
  type MethodOutput Query "get" = GetResponse
  type MethodStreamingType Query "get" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "list" where
  type MethodName Query "list" = "List"
  type MethodInput Query "list" = ListRequest
  type MethodOutput Query "list" = ListResponse
  type MethodStreamingType Query "list" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%cosmos/orm/query/v1alpha1/query.proto\DC2\EMcosmos.orm.query.v1alpha1\SUB\USgoogle/protobuf/timestamp.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\EMgoogle/protobuf/any.proto\SUB*cosmos/base/query/v1beta1/pagination.proto\"\132\SOH\n\
    \\n\
    \GetRequest\DC2!\n\
    \\fmessage_name\CAN\SOH \SOH(\tR\vmessageName\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\tR\ENQindex\DC2=\n\
    \\ACKvalues\CAN\ETX \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ACKvalues\";\n\
    \\vGetResponse\DC2,\n\
    \\ACKresult\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\ACKresult\"\238\ETX\n\
    \\vListRequest\DC2!\n\
    \\fmessage_name\CAN\SOH \SOH(\tR\vmessageName\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\tR\ENQindex\DC2G\n\
    \\ACKprefix\CAN\ETX \SOH(\v2-.cosmos.orm.query.v1alpha1.ListRequest.PrefixH\NULR\ACKprefix\DC2D\n\
    \\ENQrange\CAN\EOT \SOH(\v2,.cosmos.orm.query.v1alpha1.ListRequest.RangeH\NULR\ENQrange\DC2F\n\
    \\n\
    \pagination\CAN\ENQ \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\SUBG\n\
    \\ACKPrefix\DC2=\n\
    \\ACKvalues\CAN\SOH \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ACKvalues\SUB}\n\
    \\ENQRange\DC2;\n\
    \\ENQstart\CAN\SOH \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ENQstart\DC27\n\
    \\ETXend\CAN\STX \ETX(\v2%.cosmos.orm.query.v1alpha1.IndexValueR\ETXendB\a\n\
    \\ENQquery\"\135\SOH\n\
    \\fListResponse\DC2.\n\
    \\aresults\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\aresults\DC2G\n\
    \\n\
    \pagination\CAN\ENQ \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\140\STX\n\
    \\n\
    \IndexValue\DC2\DC4\n\
    \\EOTuint\CAN\SOH \SOH(\EOTH\NULR\EOTuint\DC2\DC2\n\
    \\ETXint\CAN\STX \SOH(\ETXH\NULR\ETXint\DC2\DC2\n\
    \\ETXstr\CAN\ETX \SOH(\tH\NULR\ETXstr\DC2\SYN\n\
    \\ENQbytes\CAN\EOT \SOH(\fH\NULR\ENQbytes\DC2\DC4\n\
    \\EOTenum\CAN\ENQ \SOH(\tH\NULR\EOTenum\DC2\DC4\n\
    \\EOTbool\CAN\ACK \SOH(\bH\NULR\EOTbool\DC2:\n\
    \\ttimestamp\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\ttimestamp\DC27\n\
    \\bduration\CAN\b \SOH(\v2\EM.google.protobuf.DurationH\NULR\bdurationB\a\n\
    \\ENQvalue2\182\SOH\n\
    \\ENQQuery\DC2T\n\
    \\ETXGet\DC2%.cosmos.orm.query.v1alpha1.GetRequest\SUB&.cosmos.orm.query.v1alpha1.GetResponse\DC2W\n\
    \\EOTList\DC2&.cosmos.orm.query.v1alpha1.ListRequest\SUB'.cosmos.orm.query.v1alpha1.ListResponseJ\180\"\n\
    \\a\DC2\ENQ\NUL\NUL\130\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL4\n\
    \D\n\
    \\STX\ACK\NUL\DC2\EOT\n\
    \\NUL\DC1\SOH\SUB8 Query is a generic gRPC service for querying ORM data.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\n\
    \\b\r\n\
    \@\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\r\STX,\SUB3 Get queries an ORM table against an unique index.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\r\ACK\t\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\r\n\
    \\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\r\US*\n\
    \:\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DLE\STX/\SUB- List queries an ORM table against an index.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DLE\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DLE\v\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DLE!-\n\
    \7\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL!\SOH\SUB+ GetRequest is the Query/Get request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC2\n\
    \_\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX\SUB\SUBR message_name is the fully-qualified message name of the ORM table being queried.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\CAN\EM\n\
    \\185\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ESC\STX\DC3\SUB\171\SOH index is the index fields expression used in orm definitions. If it\n\
    \ is empty, the table's primary key is assumed. If it is non-empty, it must\n\
    \ refer to an unique index.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC\DC1\DC2\n\
    \\221\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX \STX!\SUB\207\SOH values are the values of the fields corresponding to the requested index.\n\
    \ There must be as many values provided as there are fields in the index and\n\
    \ these values must correspond to the index field types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX \v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX \SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX \US \n\
    \9\n\
    \\STX\EOT\SOH\DC2\EOT$\NUL)\SOH\SUB- GetResponse is the Query/Get response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\DC3\n\
    \}\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX(\STX!\SUBp result is the result of the get query. If no value is found, the gRPC\n\
    \ status code NOT_FOUND will be returned.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX(\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX(\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX(\US \n\
    \9\n\
    \\STX\EOT\STX\DC2\EOT,\NULW\SOH\SUB- ListRequest is the Query/List request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX,\b\DC3\n\
    \_\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX.\STX\SUB\SUBR message_name is the fully-qualified message name of the ORM table being queried.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX.\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX.\CAN\EM\n\
    \\129\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX2\STX\DC3\SUBt index is the index fields expression used in orm definitions. If it\n\
    \ is empty, the table's primary key is assumed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX2\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX2\DC1\DC2\n\
    \\176\SOH\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOT7\STX>\ETX\SUB\161\SOH query is the query expression corresponding to the provided index. If\n\
    \ neither prefix nor range is specified, the query will list all the fields\n\
    \ in the index.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETX7\b\r\n\
    \-\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX:\EOT\SYN\SUB  prefix defines a prefix query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX:\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX:\DC4\NAK\n\
    \+\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX=\EOT\DC4\SUB\RS range defines a range query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX=\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX=\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX=\DC2\DC3\n\
    \4\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXA\STX7\SUB' pagination is the pagination request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETXA\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXA(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXA56\n\
    \A\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\EOTD\STXI\ETX\SUB3 Prefix specifies the arguments to a prefix query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\ETXD\n\
    \\DLE\n\
    \\173\SOH\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\ETXH\EOT#\SUB\157\SOH values specifies the index values for the prefix query.\n\
    \ It is valid to special a partial prefix with fewer values than\n\
    \ the number of fields in the index.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\EOT\DC2\ETXH\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ACK\DC2\ETXH\r\ETB\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\ETXH\CAN\RS\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\ETXH!\"\n\
    \?\n\
    \\EOT\EOT\STX\ETX\SOH\DC2\EOTL\STXV\ETX\SUB1 Range specifies the arguments to a range query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\SOH\SOH\DC2\ETXL\n\
    \\SI\n\
    \\158\SOH\n\
    \\ACK\EOT\STX\ETX\SOH\STX\NUL\DC2\ETXP\EOT\"\SUB\142\SOH start specifies the starting index values for the range query.\n\
    \ It is valid to provide fewer values than the number of fields in the\n\
    \ index.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\EOT\DC2\ETXP\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ACK\DC2\ETXP\r\ETB\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\SOH\DC2\ETXP\CAN\GS\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\NUL\ETX\DC2\ETXP !\n\
    \\164\SOH\n\
    \\ACK\EOT\STX\ETX\SOH\STX\SOH\DC2\ETXU\EOT \SUB\148\SOH end specifies the inclusive ending index values for the range query.\n\
    \ It is valid to provide fewer values than the number of fields in the\n\
    \ index.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\EOT\DC2\ETXU\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ACK\DC2\ETXU\r\ETB\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\SOH\DC2\ETXU\CAN\ESC\n\
    \\SO\n\
    \\a\EOT\STX\ETX\SOH\STX\SOH\ETX\DC2\ETXU\RS\US\n\
    \;\n\
    \\STX\EOT\ETX\DC2\EOTZ\NULa\SOH\SUB/ ListResponse is the Query/List response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXZ\b\DC4\n\
    \4\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX]\STX+\SUB' results are the results of the query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX]\v\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX]\US&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX])*\n\
    \5\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX`\STX8\SUB( pagination is the pagination response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX`\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX`)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX`67\n\
    \U\n\
    \\STX\EOT\EOT\DC2\ENQd\NUL\130\SOH\SOH\SUBH IndexValue represents the value of a field in an ORM index expression.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXd\b\DC2\n\
    \0\n\
    \\EOT\EOT\EOT\b\NUL\DC2\ENQg\STX\129\SOH\ETX\SUB! value specifies the index value\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\b\NUL\SOH\DC2\ETXg\b\r\n\
    \^\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXj\EOT\DC4\SUBQ uint specifies a value for an uint32, fixed32, uint64, or fixed64\n\
    \ index field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXj\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXj\v\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXj\DC2\DC3\n\
    \_\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXn\EOT\DC2\SUBR int64 specifies a value for an int32, sfixed32, int64, or sfixed64\n\
    \ index field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXn\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXn\n\
    \\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXn\DLE\DC1\n\
    \>\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXq\EOT\DC3\SUB1 str specifies a value for a string index field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXq\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXq\v\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXq\DC1\DC2\n\
    \?\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXt\EOT\DC4\SUB2 bytes specifies a value for a bytes index field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETXt\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXt\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXt\DC2\DC3\n\
    \>\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETXw\EOT\DC4\SUB1 enum specifies a value for an enum index field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETXw\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXw\v\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXw\DC2\DC3\n\
    \=\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETXz\EOT\DC2\SUB0 bool specifies a value for a bool index field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETXz\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXz\t\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXz\DLE\DC1\n\
    \G\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETX}\EOT,\SUB: timestamp specifies a value for a timestamp index field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\ETX}\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETX}\RS'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETX}*+\n\
    \F\n\
    \\EOT\EOT\EOT\STX\a\DC2\EOT\128\SOH\EOT*\SUB8 duration specifies a value for a duration index field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ACK\DC2\EOT\128\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\EOT\128\SOH\GS%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\EOT\128\SOH()b\ACKproto3"