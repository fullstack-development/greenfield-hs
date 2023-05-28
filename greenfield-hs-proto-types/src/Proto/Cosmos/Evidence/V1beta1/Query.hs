{- This file was auto-generated from cosmos/evidence/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Evidence.V1beta1.Query (
        Query(..), QueryAllEvidenceRequest(), QueryAllEvidenceResponse(),
        QueryEvidenceRequest(), QueryEvidenceResponse()
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
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllEvidenceRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllEvidenceRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAllEvidenceRequest
  = QueryAllEvidenceRequest'_constructor {_QueryAllEvidenceRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                          _QueryAllEvidenceRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllEvidenceRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllEvidenceRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllEvidenceRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllEvidenceRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllEvidenceRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllEvidenceRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllEvidenceRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllEvidenceRequest where
  messageName _
    = Data.Text.pack "cosmos.evidence.v1beta1.QueryAllEvidenceRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryAllEvidenceRequest\DC2F\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllEvidenceRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllEvidenceRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllEvidenceRequest'_unknownFields = y__})
  defMessage
    = QueryAllEvidenceRequest'_constructor
        {_QueryAllEvidenceRequest'pagination = Prelude.Nothing,
         _QueryAllEvidenceRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllEvidenceRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllEvidenceRequest
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
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAllEvidenceRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryAllEvidenceRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllEvidenceRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllEvidenceRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.evidence' @:: Lens' QueryAllEvidenceResponse [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.vec'evidence' @:: Lens' QueryAllEvidenceResponse (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllEvidenceResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllEvidenceResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllEvidenceResponse
  = QueryAllEvidenceResponse'_constructor {_QueryAllEvidenceResponse'evidence :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                           _QueryAllEvidenceResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                           _QueryAllEvidenceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllEvidenceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllEvidenceResponse "evidence" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllEvidenceResponse'evidence
           (\ x__ y__ -> x__ {_QueryAllEvidenceResponse'evidence = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllEvidenceResponse "vec'evidence" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllEvidenceResponse'evidence
           (\ x__ y__ -> x__ {_QueryAllEvidenceResponse'evidence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllEvidenceResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllEvidenceResponse'pagination
           (\ x__ y__ -> x__ {_QueryAllEvidenceResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllEvidenceResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllEvidenceResponse'pagination
           (\ x__ y__ -> x__ {_QueryAllEvidenceResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllEvidenceResponse where
  messageName _
    = Data.Text.pack "cosmos.evidence.v1beta1.QueryAllEvidenceResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryAllEvidenceResponse\DC20\n\
      \\bevidence\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\bevidence\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        evidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"evidence")) ::
              Data.ProtoLens.FieldDescriptor QueryAllEvidenceResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllEvidenceResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, evidence__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllEvidenceResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllEvidenceResponse'_unknownFields = y__})
  defMessage
    = QueryAllEvidenceResponse'_constructor
        {_QueryAllEvidenceResponse'evidence = Data.Vector.Generic.empty,
         _QueryAllEvidenceResponse'pagination = Prelude.Nothing,
         _QueryAllEvidenceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllEvidenceResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllEvidenceResponse
        loop x mutable'evidence
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'evidence <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'evidence)
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
                              (Data.ProtoLens.Field.field @"vec'evidence") frozen'evidence x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "evidence"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'evidence y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'evidence
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'evidence
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'evidence <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'evidence)
          "QueryAllEvidenceResponse"
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
                   (Data.ProtoLens.Field.field @"vec'evidence") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryAllEvidenceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllEvidenceResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllEvidenceResponse'evidence x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllEvidenceResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.evidenceHash' @:: Lens' QueryEvidenceRequest Data.ByteString.ByteString@
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.hash' @:: Lens' QueryEvidenceRequest Data.Text.Text@ -}
data QueryEvidenceRequest
  = QueryEvidenceRequest'_constructor {_QueryEvidenceRequest'evidenceHash :: !Data.ByteString.ByteString,
                                       _QueryEvidenceRequest'hash :: !Data.Text.Text,
                                       _QueryEvidenceRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryEvidenceRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryEvidenceRequest "evidenceHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryEvidenceRequest'evidenceHash
           (\ x__ y__ -> x__ {_QueryEvidenceRequest'evidenceHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryEvidenceRequest "hash" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryEvidenceRequest'hash
           (\ x__ y__ -> x__ {_QueryEvidenceRequest'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryEvidenceRequest where
  messageName _
    = Data.Text.pack "cosmos.evidence.v1beta1.QueryEvidenceRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryEvidenceRequest\DC2'\n\
      \\revidence_hash\CAN\SOH \SOH(\fR\fevidenceHashB\STX\CAN\SOH\DC2\DC2\n\
      \\EOThash\CAN\STX \SOH(\tR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        evidenceHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"evidenceHash")) ::
              Data.ProtoLens.FieldDescriptor QueryEvidenceRequest
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor QueryEvidenceRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, evidenceHash__field_descriptor),
           (Data.ProtoLens.Tag 2, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryEvidenceRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryEvidenceRequest'_unknownFields = y__})
  defMessage
    = QueryEvidenceRequest'_constructor
        {_QueryEvidenceRequest'evidenceHash = Data.ProtoLens.fieldDefault,
         _QueryEvidenceRequest'hash = Data.ProtoLens.fieldDefault,
         _QueryEvidenceRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryEvidenceRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryEvidenceRequest
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "evidence_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"evidenceHash") y x)
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
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryEvidenceRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"evidenceHash") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
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
instance Control.DeepSeq.NFData QueryEvidenceRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryEvidenceRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryEvidenceRequest'evidenceHash x__)
                (Control.DeepSeq.deepseq (_QueryEvidenceRequest'hash x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.evidence' @:: Lens' QueryEvidenceResponse Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Evidence.V1beta1.Query_Fields.maybe'evidence' @:: Lens' QueryEvidenceResponse (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data QueryEvidenceResponse
  = QueryEvidenceResponse'_constructor {_QueryEvidenceResponse'evidence :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                        _QueryEvidenceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryEvidenceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryEvidenceResponse "evidence" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryEvidenceResponse'evidence
           (\ x__ y__ -> x__ {_QueryEvidenceResponse'evidence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryEvidenceResponse "maybe'evidence" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryEvidenceResponse'evidence
           (\ x__ y__ -> x__ {_QueryEvidenceResponse'evidence = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryEvidenceResponse where
  messageName _
    = Data.Text.pack "cosmos.evidence.v1beta1.QueryEvidenceResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryEvidenceResponse\DC20\n\
      \\bevidence\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\bevidence"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        evidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'evidence")) ::
              Data.ProtoLens.FieldDescriptor QueryEvidenceResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, evidence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryEvidenceResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryEvidenceResponse'_unknownFields = y__})
  defMessage
    = QueryEvidenceResponse'_constructor
        {_QueryEvidenceResponse'evidence = Prelude.Nothing,
         _QueryEvidenceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryEvidenceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryEvidenceResponse
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
                                       "evidence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"evidence") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryEvidenceResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'evidence") _x
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
instance Control.DeepSeq.NFData QueryEvidenceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryEvidenceResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryEvidenceResponse'evidence x__) ())
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.evidence.v1beta1"
  type ServiceMethods Query = '["allEvidence", "evidence"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\155\SOH\n\
      \\bEvidence\DC2-.cosmos.evidence.v1beta1.QueryEvidenceRequest\SUB..cosmos.evidence.v1beta1.QueryEvidenceResponse\"0\130\211\228\147\STX*\DC2(/cosmos/evidence/v1beta1/evidence/{hash}\DC2\157\SOH\n\
      \\vAllEvidence\DC20.cosmos.evidence.v1beta1.QueryAllEvidenceRequest\SUB1.cosmos.evidence.v1beta1.QueryAllEvidenceResponse\")\130\211\228\147\STX#\DC2!/cosmos/evidence/v1beta1/evidence"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "evidence" where
  type MethodName Query "evidence" = "Evidence"
  type MethodInput Query "evidence" = QueryEvidenceRequest
  type MethodOutput Query "evidence" = QueryEvidenceResponse
  type MethodStreamingType Query "evidence" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "allEvidence" where
  type MethodName Query "allEvidence" = "AllEvidence"
  type MethodInput Query "allEvidence" = QueryAllEvidenceRequest
  type MethodOutput Query "allEvidence" = QueryAllEvidenceResponse
  type MethodStreamingType Query "allEvidence" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#cosmos/evidence/v1beta1/query.proto\DC2\ETBcosmos.evidence.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\EMgoogle/protobuf/any.proto\SUB\FSgoogle/api/annotations.proto\"S\n\
    \\DC4QueryEvidenceRequest\DC2'\n\
    \\revidence_hash\CAN\SOH \SOH(\fR\fevidenceHashB\STX\CAN\SOH\DC2\DC2\n\
    \\EOThash\CAN\STX \SOH(\tR\EOThash\"I\n\
    \\NAKQueryEvidenceResponse\DC20\n\
    \\bevidence\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\bevidence\"a\n\
    \\ETBQueryAllEvidenceRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\149\SOH\n\
    \\CANQueryAllEvidenceResponse\DC20\n\
    \\bevidence\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\bevidence\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\197\STX\n\
    \\ENQQuery\DC2\155\SOH\n\
    \\bEvidence\DC2-.cosmos.evidence.v1beta1.QueryEvidenceRequest\SUB..cosmos.evidence.v1beta1.QueryEvidenceResponse\"0\130\211\228\147\STX*\DC2(/cosmos/evidence/v1beta1/evidence/{hash}\DC2\157\SOH\n\
    \\vAllEvidence\DC20.cosmos.evidence.v1beta1.QueryAllEvidenceRequest\SUB1.cosmos.evidence.v1beta1.QueryAllEvidenceResponse\")\130\211\228\147\STX#\DC2!/cosmos/evidence/v1beta1/evidenceB\USZ\GScosmossdk.io/x/evidence/typesJ\205\f\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL4\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NUL4\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\n\
    \\NUL\DC4\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\n\
    \\b\r\n\
    \A\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\f\STX\SO\ETX\SUB3 Evidence queries evidence based on evidence hash.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\f\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\f\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\f.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\r\EOTN\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\r\EOTN\n\
    \1\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC1\STX\DC3\ETX\SUB# AllEvidence queries all evidence.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC1\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC1\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC14L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\DC2\EOTG\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\DC2\EOTG\n\
    \Y\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL \SOH\SUBM QueryEvidenceRequest is the request type for the Query/Evidence RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\FS\n\
    \~\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX.\SUBq evidence_hash defines the hash of the requested evidence.\n\
    \ Deprecated: Use hash, a HEX encoded string, instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\SUB-\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\NUL\b\ETX\DC2\ETX\SUB\ESC,\n\
    \a\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\STX\DC2\SUBT hash defines the evidence hash of the requested evidence.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US\DLE\DC1\n\
    \[\n\
    \\STX\EOT\SOH\DC2\EOT#\NUL&\SOH\SUBO QueryEvidenceResponse is the response type for the Query/Evidence RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX#\b\GS\n\
    \7\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX%\STX#\SUB* evidence returns the requested evidence.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX%\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX%\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX%!\"\n\
    \]\n\
    \\STX\EOT\STX\DC2\EOT*\NUL-\SOH\SUBQ QueryEvidenceRequest is the request type for the Query/AllEvidence RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX*\b\US\n\
    \I\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX,\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX,\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX,(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX,56\n\
    \b\n\
    \\STX\EOT\ETX\DC2\EOT1\NUL7\SOH\SUBV QueryAllEvidenceResponse is the response type for the Query/AllEvidence RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX1\b \n\
    \.\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX3\STX,\SUB! evidence returns all evidences.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX3\v\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX3\US'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX3*+\n\
    \A\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX6\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX6\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX6)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX667b\ACKproto3"