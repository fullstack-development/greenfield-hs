{- This file was auto-generated from greenfield/storage/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Query (
        Query(..), QueryBucketNFTResponse(), QueryGroupNFTResponse(),
        QueryHeadBucketByIdRequest(), QueryHeadBucketRequest(),
        QueryHeadBucketResponse(), QueryHeadGroupMemberRequest(),
        QueryHeadGroupMemberResponse(), QueryHeadGroupRequest(),
        QueryHeadGroupResponse(), QueryHeadObjectByIdRequest(),
        QueryHeadObjectRequest(), QueryHeadObjectResponse(),
        QueryListBucketsRequest(), QueryListBucketsResponse(),
        QueryListGroupRequest(), QueryListGroupResponse(),
        QueryListObjectsByBucketIdRequest(), QueryListObjectsRequest(),
        QueryListObjectsResponse(), QueryNFTRequest(),
        QueryObjectNFTResponse(), QueryParamsRequest(),
        QueryParamsResponse(), QueryPolicyByIdRequest(),
        QueryPolicyByIdResponse(), QueryPolicyForAccountRequest(),
        QueryPolicyForAccountResponse(), QueryPolicyForGroupRequest(),
        QueryPolicyForGroupResponse(), QueryVerifyPermissionRequest(),
        QueryVerifyPermissionResponse()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Greenfield.Permission.Common
import qualified Proto.Greenfield.Permission.Types
import qualified Proto.Greenfield.Storage.Params
import qualified Proto.Greenfield.Storage.Types
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.metaData' @:: Lens' QueryBucketNFTResponse Proto.Greenfield.Storage.Types.BucketMetaData@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'metaData' @:: Lens' QueryBucketNFTResponse (Prelude.Maybe Proto.Greenfield.Storage.Types.BucketMetaData)@ -}
data QueryBucketNFTResponse
  = QueryBucketNFTResponse'_constructor {_QueryBucketNFTResponse'metaData :: !(Prelude.Maybe Proto.Greenfield.Storage.Types.BucketMetaData),
                                         _QueryBucketNFTResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryBucketNFTResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryBucketNFTResponse "metaData" Proto.Greenfield.Storage.Types.BucketMetaData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBucketNFTResponse'metaData
           (\ x__ y__ -> x__ {_QueryBucketNFTResponse'metaData = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryBucketNFTResponse "maybe'metaData" (Prelude.Maybe Proto.Greenfield.Storage.Types.BucketMetaData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBucketNFTResponse'metaData
           (\ x__ y__ -> x__ {_QueryBucketNFTResponse'metaData = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryBucketNFTResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryBucketNFTResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryBucketNFTResponse\DC2?\n\
      \\tmeta_data\CAN\SOH \SOH(\v2\".greenfield.storage.BucketMetaDataR\bmetaData"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metaData__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "meta_data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.BucketMetaData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metaData")) ::
              Data.ProtoLens.FieldDescriptor QueryBucketNFTResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metaData__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryBucketNFTResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryBucketNFTResponse'_unknownFields = y__})
  defMessage
    = QueryBucketNFTResponse'_constructor
        {_QueryBucketNFTResponse'metaData = Prelude.Nothing,
         _QueryBucketNFTResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryBucketNFTResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryBucketNFTResponse
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
                                       "meta_data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metaData") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryBucketNFTResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metaData") _x
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
instance Control.DeepSeq.NFData QueryBucketNFTResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryBucketNFTResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryBucketNFTResponse'metaData x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.metaData' @:: Lens' QueryGroupNFTResponse Proto.Greenfield.Storage.Types.GroupMetaData@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'metaData' @:: Lens' QueryGroupNFTResponse (Prelude.Maybe Proto.Greenfield.Storage.Types.GroupMetaData)@ -}
data QueryGroupNFTResponse
  = QueryGroupNFTResponse'_constructor {_QueryGroupNFTResponse'metaData :: !(Prelude.Maybe Proto.Greenfield.Storage.Types.GroupMetaData),
                                        _QueryGroupNFTResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupNFTResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupNFTResponse "metaData" Proto.Greenfield.Storage.Types.GroupMetaData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupNFTResponse'metaData
           (\ x__ y__ -> x__ {_QueryGroupNFTResponse'metaData = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupNFTResponse "maybe'metaData" (Prelude.Maybe Proto.Greenfield.Storage.Types.GroupMetaData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupNFTResponse'metaData
           (\ x__ y__ -> x__ {_QueryGroupNFTResponse'metaData = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupNFTResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryGroupNFTResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryGroupNFTResponse\DC2>\n\
      \\tmeta_data\CAN\SOH \SOH(\v2!.greenfield.storage.GroupMetaDataR\bmetaData"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metaData__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "meta_data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.GroupMetaData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metaData")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupNFTResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metaData__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupNFTResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryGroupNFTResponse'_unknownFields = y__})
  defMessage
    = QueryGroupNFTResponse'_constructor
        {_QueryGroupNFTResponse'metaData = Prelude.Nothing,
         _QueryGroupNFTResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupNFTResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupNFTResponse
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
                                       "meta_data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metaData") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGroupNFTResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metaData") _x
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
instance Control.DeepSeq.NFData QueryGroupNFTResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupNFTResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryGroupNFTResponse'metaData x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.bucketId' @:: Lens' QueryHeadBucketByIdRequest Data.Text.Text@ -}
data QueryHeadBucketByIdRequest
  = QueryHeadBucketByIdRequest'_constructor {_QueryHeadBucketByIdRequest'bucketId :: !Data.Text.Text,
                                             _QueryHeadBucketByIdRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadBucketByIdRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadBucketByIdRequest "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadBucketByIdRequest'bucketId
           (\ x__ y__ -> x__ {_QueryHeadBucketByIdRequest'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadBucketByIdRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadBucketByIdRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryHeadBucketByIdRequest\DC2\ESC\n\
      \\tbucket_id\CAN\SOH \SOH(\tR\bbucketId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadBucketByIdRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadBucketByIdRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryHeadBucketByIdRequest'_unknownFields = y__})
  defMessage
    = QueryHeadBucketByIdRequest'_constructor
        {_QueryHeadBucketByIdRequest'bucketId = Data.ProtoLens.fieldDefault,
         _QueryHeadBucketByIdRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadBucketByIdRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadBucketByIdRequest
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
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadBucketByIdRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryHeadBucketByIdRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadBucketByIdRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadBucketByIdRequest'bucketId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.bucketName' @:: Lens' QueryHeadBucketRequest Data.Text.Text@ -}
data QueryHeadBucketRequest
  = QueryHeadBucketRequest'_constructor {_QueryHeadBucketRequest'bucketName :: !Data.Text.Text,
                                         _QueryHeadBucketRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadBucketRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadBucketRequest "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadBucketRequest'bucketName
           (\ x__ y__ -> x__ {_QueryHeadBucketRequest'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadBucketRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadBucketRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryHeadBucketRequest\DC2\US\n\
      \\vbucket_name\CAN\SOH \SOH(\tR\n\
      \bucketName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadBucketRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadBucketRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryHeadBucketRequest'_unknownFields = y__})
  defMessage
    = QueryHeadBucketRequest'_constructor
        {_QueryHeadBucketRequest'bucketName = Data.ProtoLens.fieldDefault,
         _QueryHeadBucketRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadBucketRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadBucketRequest
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadBucketRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryHeadBucketRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadBucketRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadBucketRequest'bucketName x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.bucketInfo' @:: Lens' QueryHeadBucketResponse Proto.Greenfield.Storage.Types.BucketInfo@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'bucketInfo' @:: Lens' QueryHeadBucketResponse (Prelude.Maybe Proto.Greenfield.Storage.Types.BucketInfo)@ -}
data QueryHeadBucketResponse
  = QueryHeadBucketResponse'_constructor {_QueryHeadBucketResponse'bucketInfo :: !(Prelude.Maybe Proto.Greenfield.Storage.Types.BucketInfo),
                                          _QueryHeadBucketResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadBucketResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadBucketResponse "bucketInfo" Proto.Greenfield.Storage.Types.BucketInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadBucketResponse'bucketInfo
           (\ x__ y__ -> x__ {_QueryHeadBucketResponse'bucketInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryHeadBucketResponse "maybe'bucketInfo" (Prelude.Maybe Proto.Greenfield.Storage.Types.BucketInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadBucketResponse'bucketInfo
           (\ x__ y__ -> x__ {_QueryHeadBucketResponse'bucketInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadBucketResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadBucketResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryHeadBucketResponse\DC2?\n\
      \\vbucket_info\CAN\SOH \SOH(\v2\RS.greenfield.storage.BucketInfoR\n\
      \bucketInfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.BucketInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bucketInfo")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadBucketResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadBucketResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryHeadBucketResponse'_unknownFields = y__})
  defMessage
    = QueryHeadBucketResponse'_constructor
        {_QueryHeadBucketResponse'bucketInfo = Prelude.Nothing,
         _QueryHeadBucketResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadBucketResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadBucketResponse
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
                                       "bucket_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadBucketResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bucketInfo") _x
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
instance Control.DeepSeq.NFData QueryHeadBucketResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadBucketResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadBucketResponse'bucketInfo x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.member' @:: Lens' QueryHeadGroupMemberRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.groupOwner' @:: Lens' QueryHeadGroupMemberRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.groupName' @:: Lens' QueryHeadGroupMemberRequest Data.Text.Text@ -}
data QueryHeadGroupMemberRequest
  = QueryHeadGroupMemberRequest'_constructor {_QueryHeadGroupMemberRequest'member :: !Data.Text.Text,
                                              _QueryHeadGroupMemberRequest'groupOwner :: !Data.Text.Text,
                                              _QueryHeadGroupMemberRequest'groupName :: !Data.Text.Text,
                                              _QueryHeadGroupMemberRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadGroupMemberRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadGroupMemberRequest "member" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupMemberRequest'member
           (\ x__ y__ -> x__ {_QueryHeadGroupMemberRequest'member = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryHeadGroupMemberRequest "groupOwner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupMemberRequest'groupOwner
           (\ x__ y__ -> x__ {_QueryHeadGroupMemberRequest'groupOwner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryHeadGroupMemberRequest "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupMemberRequest'groupName
           (\ x__ y__ -> x__ {_QueryHeadGroupMemberRequest'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadGroupMemberRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadGroupMemberRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryHeadGroupMemberRequest\DC20\n\
      \\ACKmember\CAN\SOH \SOH(\tR\ACKmemberB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
      \\vgroup_owner\CAN\STX \SOH(\tR\n\
      \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\ETX \SOH(\tR\tgroupName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        member__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"member")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadGroupMemberRequest
        groupOwner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupOwner")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadGroupMemberRequest
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadGroupMemberRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, member__field_descriptor),
           (Data.ProtoLens.Tag 2, groupOwner__field_descriptor),
           (Data.ProtoLens.Tag 3, groupName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadGroupMemberRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryHeadGroupMemberRequest'_unknownFields = y__})
  defMessage
    = QueryHeadGroupMemberRequest'_constructor
        {_QueryHeadGroupMemberRequest'member = Data.ProtoLens.fieldDefault,
         _QueryHeadGroupMemberRequest'groupOwner = Data.ProtoLens.fieldDefault,
         _QueryHeadGroupMemberRequest'groupName = Data.ProtoLens.fieldDefault,
         _QueryHeadGroupMemberRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadGroupMemberRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadGroupMemberRequest
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
                                       "member"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"member") y x)
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
                                       "group_owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupOwner") y x)
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
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadGroupMemberRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"member") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"groupOwner") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
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
instance Control.DeepSeq.NFData QueryHeadGroupMemberRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadGroupMemberRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadGroupMemberRequest'member x__)
                (Control.DeepSeq.deepseq
                   (_QueryHeadGroupMemberRequest'groupOwner x__)
                   (Control.DeepSeq.deepseq
                      (_QueryHeadGroupMemberRequest'groupName x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.groupMember' @:: Lens' QueryHeadGroupMemberResponse Proto.Greenfield.Permission.Types.GroupMember@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'groupMember' @:: Lens' QueryHeadGroupMemberResponse (Prelude.Maybe Proto.Greenfield.Permission.Types.GroupMember)@ -}
data QueryHeadGroupMemberResponse
  = QueryHeadGroupMemberResponse'_constructor {_QueryHeadGroupMemberResponse'groupMember :: !(Prelude.Maybe Proto.Greenfield.Permission.Types.GroupMember),
                                               _QueryHeadGroupMemberResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadGroupMemberResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadGroupMemberResponse "groupMember" Proto.Greenfield.Permission.Types.GroupMember where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupMemberResponse'groupMember
           (\ x__ y__
              -> x__ {_QueryHeadGroupMemberResponse'groupMember = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryHeadGroupMemberResponse "maybe'groupMember" (Prelude.Maybe Proto.Greenfield.Permission.Types.GroupMember) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupMemberResponse'groupMember
           (\ x__ y__
              -> x__ {_QueryHeadGroupMemberResponse'groupMember = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadGroupMemberResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadGroupMemberResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryHeadGroupMemberResponse\DC2E\n\
      \\fgroup_member\CAN\SOH \SOH(\v2\".greenfield.permission.GroupMemberR\vgroupMember"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupMember__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_member"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Types.GroupMember)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'groupMember")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadGroupMemberResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupMember__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadGroupMemberResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryHeadGroupMemberResponse'_unknownFields = y__})
  defMessage
    = QueryHeadGroupMemberResponse'_constructor
        {_QueryHeadGroupMemberResponse'groupMember = Prelude.Nothing,
         _QueryHeadGroupMemberResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadGroupMemberResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadGroupMemberResponse
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
                                       "group_member"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupMember") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadGroupMemberResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'groupMember") _x
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
instance Control.DeepSeq.NFData QueryHeadGroupMemberResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadGroupMemberResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadGroupMemberResponse'groupMember x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.groupOwner' @:: Lens' QueryHeadGroupRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.groupName' @:: Lens' QueryHeadGroupRequest Data.Text.Text@ -}
data QueryHeadGroupRequest
  = QueryHeadGroupRequest'_constructor {_QueryHeadGroupRequest'groupOwner :: !Data.Text.Text,
                                        _QueryHeadGroupRequest'groupName :: !Data.Text.Text,
                                        _QueryHeadGroupRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadGroupRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadGroupRequest "groupOwner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupRequest'groupOwner
           (\ x__ y__ -> x__ {_QueryHeadGroupRequest'groupOwner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryHeadGroupRequest "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupRequest'groupName
           (\ x__ y__ -> x__ {_QueryHeadGroupRequest'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadGroupRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadGroupRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryHeadGroupRequest\DC29\n\
      \\vgroup_owner\CAN\SOH \SOH(\tR\n\
      \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\STX \SOH(\tR\tgroupName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupOwner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupOwner")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadGroupRequest
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadGroupRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupOwner__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadGroupRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryHeadGroupRequest'_unknownFields = y__})
  defMessage
    = QueryHeadGroupRequest'_constructor
        {_QueryHeadGroupRequest'groupOwner = Data.ProtoLens.fieldDefault,
         _QueryHeadGroupRequest'groupName = Data.ProtoLens.fieldDefault,
         _QueryHeadGroupRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadGroupRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadGroupRequest
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
                                       "group_owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupOwner") y x)
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
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadGroupRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"groupOwner") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
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
instance Control.DeepSeq.NFData QueryHeadGroupRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadGroupRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadGroupRequest'groupOwner x__)
                (Control.DeepSeq.deepseq
                   (_QueryHeadGroupRequest'groupName x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.groupInfo' @:: Lens' QueryHeadGroupResponse Proto.Greenfield.Storage.Types.GroupInfo@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'groupInfo' @:: Lens' QueryHeadGroupResponse (Prelude.Maybe Proto.Greenfield.Storage.Types.GroupInfo)@ -}
data QueryHeadGroupResponse
  = QueryHeadGroupResponse'_constructor {_QueryHeadGroupResponse'groupInfo :: !(Prelude.Maybe Proto.Greenfield.Storage.Types.GroupInfo),
                                         _QueryHeadGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadGroupResponse "groupInfo" Proto.Greenfield.Storage.Types.GroupInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupResponse'groupInfo
           (\ x__ y__ -> x__ {_QueryHeadGroupResponse'groupInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryHeadGroupResponse "maybe'groupInfo" (Prelude.Maybe Proto.Greenfield.Storage.Types.GroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadGroupResponse'groupInfo
           (\ x__ y__ -> x__ {_QueryHeadGroupResponse'groupInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadGroupResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryHeadGroupResponse\DC2<\n\
      \\n\
      \group_info\CAN\SOH \SOH(\v2\GS.greenfield.storage.GroupInfoR\tgroupInfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.GroupInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'groupInfo")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadGroupResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryHeadGroupResponse'_unknownFields = y__})
  defMessage
    = QueryHeadGroupResponse'_constructor
        {_QueryHeadGroupResponse'groupInfo = Prelude.Nothing,
         _QueryHeadGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadGroupResponse
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
                                       "group_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadGroupResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'groupInfo") _x
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
instance Control.DeepSeq.NFData QueryHeadGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadGroupResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadGroupResponse'groupInfo x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.objectId' @:: Lens' QueryHeadObjectByIdRequest Data.Text.Text@ -}
data QueryHeadObjectByIdRequest
  = QueryHeadObjectByIdRequest'_constructor {_QueryHeadObjectByIdRequest'objectId :: !Data.Text.Text,
                                             _QueryHeadObjectByIdRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadObjectByIdRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadObjectByIdRequest "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadObjectByIdRequest'objectId
           (\ x__ y__ -> x__ {_QueryHeadObjectByIdRequest'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadObjectByIdRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadObjectByIdRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryHeadObjectByIdRequest\DC2\ESC\n\
      \\tobject_id\CAN\SOH \SOH(\tR\bobjectId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadObjectByIdRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, objectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadObjectByIdRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryHeadObjectByIdRequest'_unknownFields = y__})
  defMessage
    = QueryHeadObjectByIdRequest'_constructor
        {_QueryHeadObjectByIdRequest'objectId = Data.ProtoLens.fieldDefault,
         _QueryHeadObjectByIdRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadObjectByIdRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadObjectByIdRequest
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
                                       "object_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadObjectByIdRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"objectId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryHeadObjectByIdRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadObjectByIdRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadObjectByIdRequest'objectId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.bucketName' @:: Lens' QueryHeadObjectRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.objectName' @:: Lens' QueryHeadObjectRequest Data.Text.Text@ -}
data QueryHeadObjectRequest
  = QueryHeadObjectRequest'_constructor {_QueryHeadObjectRequest'bucketName :: !Data.Text.Text,
                                         _QueryHeadObjectRequest'objectName :: !Data.Text.Text,
                                         _QueryHeadObjectRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadObjectRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadObjectRequest "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadObjectRequest'bucketName
           (\ x__ y__ -> x__ {_QueryHeadObjectRequest'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryHeadObjectRequest "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadObjectRequest'objectName
           (\ x__ y__ -> x__ {_QueryHeadObjectRequest'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadObjectRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadObjectRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryHeadObjectRequest\DC2\US\n\
      \\vbucket_name\CAN\SOH \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\STX \SOH(\tR\n\
      \objectName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadObjectRequest
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadObjectRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 2, objectName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadObjectRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryHeadObjectRequest'_unknownFields = y__})
  defMessage
    = QueryHeadObjectRequest'_constructor
        {_QueryHeadObjectRequest'bucketName = Data.ProtoLens.fieldDefault,
         _QueryHeadObjectRequest'objectName = Data.ProtoLens.fieldDefault,
         _QueryHeadObjectRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadObjectRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadObjectRequest
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
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
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadObjectRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
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
instance Control.DeepSeq.NFData QueryHeadObjectRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadObjectRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadObjectRequest'bucketName x__)
                (Control.DeepSeq.deepseq
                   (_QueryHeadObjectRequest'objectName x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.objectInfo' @:: Lens' QueryHeadObjectResponse Proto.Greenfield.Storage.Types.ObjectInfo@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'objectInfo' @:: Lens' QueryHeadObjectResponse (Prelude.Maybe Proto.Greenfield.Storage.Types.ObjectInfo)@ -}
data QueryHeadObjectResponse
  = QueryHeadObjectResponse'_constructor {_QueryHeadObjectResponse'objectInfo :: !(Prelude.Maybe Proto.Greenfield.Storage.Types.ObjectInfo),
                                          _QueryHeadObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHeadObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHeadObjectResponse "objectInfo" Proto.Greenfield.Storage.Types.ObjectInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadObjectResponse'objectInfo
           (\ x__ y__ -> x__ {_QueryHeadObjectResponse'objectInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryHeadObjectResponse "maybe'objectInfo" (Prelude.Maybe Proto.Greenfield.Storage.Types.ObjectInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHeadObjectResponse'objectInfo
           (\ x__ y__ -> x__ {_QueryHeadObjectResponse'objectInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHeadObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryHeadObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryHeadObjectResponse\DC2?\n\
      \\vobject_info\CAN\SOH \SOH(\v2\RS.greenfield.storage.ObjectInfoR\n\
      \objectInfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        objectInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.ObjectInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'objectInfo")) ::
              Data.ProtoLens.FieldDescriptor QueryHeadObjectResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, objectInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHeadObjectResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryHeadObjectResponse'_unknownFields = y__})
  defMessage
    = QueryHeadObjectResponse'_constructor
        {_QueryHeadObjectResponse'objectInfo = Prelude.Nothing,
         _QueryHeadObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHeadObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHeadObjectResponse
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
                                       "object_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHeadObjectResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'objectInfo") _x
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
instance Control.DeepSeq.NFData QueryHeadObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHeadObjectResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHeadObjectResponse'objectInfo x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.pagination' @:: Lens' QueryListBucketsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'pagination' @:: Lens' QueryListBucketsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryListBucketsRequest
  = QueryListBucketsRequest'_constructor {_QueryListBucketsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                          _QueryListBucketsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryListBucketsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryListBucketsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListBucketsRequest'pagination
           (\ x__ y__ -> x__ {_QueryListBucketsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryListBucketsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListBucketsRequest'pagination
           (\ x__ y__ -> x__ {_QueryListBucketsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryListBucketsRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryListBucketsRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryListBucketsRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryListBucketsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryListBucketsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryListBucketsRequest'_unknownFields = y__})
  defMessage
    = QueryListBucketsRequest'_constructor
        {_QueryListBucketsRequest'pagination = Prelude.Nothing,
         _QueryListBucketsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryListBucketsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryListBucketsRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryListBucketsRequest"
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
instance Control.DeepSeq.NFData QueryListBucketsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryListBucketsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryListBucketsRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.bucketInfos' @:: Lens' QueryListBucketsResponse [Proto.Greenfield.Storage.Types.BucketInfo]@
         * 'Proto.Greenfield.Storage.Query_Fields.vec'bucketInfos' @:: Lens' QueryListBucketsResponse (Data.Vector.Vector Proto.Greenfield.Storage.Types.BucketInfo)@
         * 'Proto.Greenfield.Storage.Query_Fields.pagination' @:: Lens' QueryListBucketsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'pagination' @:: Lens' QueryListBucketsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryListBucketsResponse
  = QueryListBucketsResponse'_constructor {_QueryListBucketsResponse'bucketInfos :: !(Data.Vector.Vector Proto.Greenfield.Storage.Types.BucketInfo),
                                           _QueryListBucketsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                           _QueryListBucketsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryListBucketsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryListBucketsResponse "bucketInfos" [Proto.Greenfield.Storage.Types.BucketInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListBucketsResponse'bucketInfos
           (\ x__ y__ -> x__ {_QueryListBucketsResponse'bucketInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryListBucketsResponse "vec'bucketInfos" (Data.Vector.Vector Proto.Greenfield.Storage.Types.BucketInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListBucketsResponse'bucketInfos
           (\ x__ y__ -> x__ {_QueryListBucketsResponse'bucketInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryListBucketsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListBucketsResponse'pagination
           (\ x__ y__ -> x__ {_QueryListBucketsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryListBucketsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListBucketsResponse'pagination
           (\ x__ y__ -> x__ {_QueryListBucketsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryListBucketsResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryListBucketsResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryListBucketsResponse\DC2A\n\
      \\fbucket_infos\CAN\SOH \ETX(\v2\RS.greenfield.storage.BucketInfoR\vbucketInfos\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.BucketInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"bucketInfos")) ::
              Data.ProtoLens.FieldDescriptor QueryListBucketsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryListBucketsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketInfos__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryListBucketsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryListBucketsResponse'_unknownFields = y__})
  defMessage
    = QueryListBucketsResponse'_constructor
        {_QueryListBucketsResponse'bucketInfos = Data.Vector.Generic.empty,
         _QueryListBucketsResponse'pagination = Prelude.Nothing,
         _QueryListBucketsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryListBucketsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Storage.Types.BucketInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryListBucketsResponse
        loop x mutable'bucketInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'bucketInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'bucketInfos)
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
                              (Data.ProtoLens.Field.field @"vec'bucketInfos") frozen'bucketInfos
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "bucket_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'bucketInfos y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'bucketInfos
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'bucketInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'bucketInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'bucketInfos)
          "QueryListBucketsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'bucketInfos") _x))
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
instance Control.DeepSeq.NFData QueryListBucketsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryListBucketsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryListBucketsResponse'bucketInfos x__)
                (Control.DeepSeq.deepseq
                   (_QueryListBucketsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.pagination' @:: Lens' QueryListGroupRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'pagination' @:: Lens' QueryListGroupRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@
         * 'Proto.Greenfield.Storage.Query_Fields.groupOwner' @:: Lens' QueryListGroupRequest Data.Text.Text@ -}
data QueryListGroupRequest
  = QueryListGroupRequest'_constructor {_QueryListGroupRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                        _QueryListGroupRequest'groupOwner :: !Data.Text.Text,
                                        _QueryListGroupRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryListGroupRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryListGroupRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListGroupRequest'pagination
           (\ x__ y__ -> x__ {_QueryListGroupRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryListGroupRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListGroupRequest'pagination
           (\ x__ y__ -> x__ {_QueryListGroupRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryListGroupRequest "groupOwner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListGroupRequest'groupOwner
           (\ x__ y__ -> x__ {_QueryListGroupRequest'groupOwner = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryListGroupRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryListGroupRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryListGroupRequest\DC2F\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination\DC29\n\
      \\vgroup_owner\CAN\STX \SOH(\tR\n\
      \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor QueryListGroupRequest
        groupOwner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupOwner")) ::
              Data.ProtoLens.FieldDescriptor QueryListGroupRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor),
           (Data.ProtoLens.Tag 2, groupOwner__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryListGroupRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryListGroupRequest'_unknownFields = y__})
  defMessage
    = QueryListGroupRequest'_constructor
        {_QueryListGroupRequest'pagination = Prelude.Nothing,
         _QueryListGroupRequest'groupOwner = Data.ProtoLens.fieldDefault,
         _QueryListGroupRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryListGroupRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryListGroupRequest
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
                                       "group_owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupOwner") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryListGroupRequest"
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"groupOwner") _x
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
instance Control.DeepSeq.NFData QueryListGroupRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryListGroupRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryListGroupRequest'pagination x__)
                (Control.DeepSeq.deepseq
                   (_QueryListGroupRequest'groupOwner x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.pagination' @:: Lens' QueryListGroupResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'pagination' @:: Lens' QueryListGroupResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@
         * 'Proto.Greenfield.Storage.Query_Fields.groupInfos' @:: Lens' QueryListGroupResponse [Proto.Greenfield.Storage.Types.GroupInfo]@
         * 'Proto.Greenfield.Storage.Query_Fields.vec'groupInfos' @:: Lens' QueryListGroupResponse (Data.Vector.Vector Proto.Greenfield.Storage.Types.GroupInfo)@ -}
data QueryListGroupResponse
  = QueryListGroupResponse'_constructor {_QueryListGroupResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                         _QueryListGroupResponse'groupInfos :: !(Data.Vector.Vector Proto.Greenfield.Storage.Types.GroupInfo),
                                         _QueryListGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryListGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryListGroupResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListGroupResponse'pagination
           (\ x__ y__ -> x__ {_QueryListGroupResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryListGroupResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListGroupResponse'pagination
           (\ x__ y__ -> x__ {_QueryListGroupResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryListGroupResponse "groupInfos" [Proto.Greenfield.Storage.Types.GroupInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListGroupResponse'groupInfos
           (\ x__ y__ -> x__ {_QueryListGroupResponse'groupInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryListGroupResponse "vec'groupInfos" (Data.Vector.Vector Proto.Greenfield.Storage.Types.GroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListGroupResponse'groupInfos
           (\ x__ y__ -> x__ {_QueryListGroupResponse'groupInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryListGroupResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryListGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryListGroupResponse\DC2G\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination\DC2>\n\
      \\vgroup_infos\CAN\STX \ETX(\v2\GS.greenfield.storage.GroupInfoR\n\
      \groupInfos"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryListGroupResponse
        groupInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.GroupInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"groupInfos")) ::
              Data.ProtoLens.FieldDescriptor QueryListGroupResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor),
           (Data.ProtoLens.Tag 2, groupInfos__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryListGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryListGroupResponse'_unknownFields = y__})
  defMessage
    = QueryListGroupResponse'_constructor
        {_QueryListGroupResponse'pagination = Prelude.Nothing,
         _QueryListGroupResponse'groupInfos = Data.Vector.Generic.empty,
         _QueryListGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryListGroupResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Storage.Types.GroupInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryListGroupResponse
        loop x mutable'groupInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'groupInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'groupInfos)
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
                              (Data.ProtoLens.Field.field @"vec'groupInfos") frozen'groupInfos
                              x))
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
                                  mutable'groupInfos
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "group_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'groupInfos y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'groupInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'groupInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'groupInfos)
          "QueryListGroupResponse"
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'groupInfos") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryListGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryListGroupResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryListGroupResponse'pagination x__)
                (Control.DeepSeq.deepseq
                   (_QueryListGroupResponse'groupInfos x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.pagination' @:: Lens' QueryListObjectsByBucketIdRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'pagination' @:: Lens' QueryListObjectsByBucketIdRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@
         * 'Proto.Greenfield.Storage.Query_Fields.bucketId' @:: Lens' QueryListObjectsByBucketIdRequest Data.Text.Text@ -}
data QueryListObjectsByBucketIdRequest
  = QueryListObjectsByBucketIdRequest'_constructor {_QueryListObjectsByBucketIdRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                    _QueryListObjectsByBucketIdRequest'bucketId :: !Data.Text.Text,
                                                    _QueryListObjectsByBucketIdRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryListObjectsByBucketIdRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryListObjectsByBucketIdRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsByBucketIdRequest'pagination
           (\ x__ y__
              -> x__ {_QueryListObjectsByBucketIdRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryListObjectsByBucketIdRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsByBucketIdRequest'pagination
           (\ x__ y__
              -> x__ {_QueryListObjectsByBucketIdRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryListObjectsByBucketIdRequest "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsByBucketIdRequest'bucketId
           (\ x__ y__
              -> x__ {_QueryListObjectsByBucketIdRequest'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryListObjectsByBucketIdRequest where
  messageName _
    = Data.Text.pack
        "greenfield.storage.QueryListObjectsByBucketIdRequest"
  packedMessageDescriptor _
    = "\n\
      \!QueryListObjectsByBucketIdRequest\DC2F\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination\DC2\ESC\n\
      \\tbucket_id\CAN\STX \SOH(\tR\bbucketId"
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
              Data.ProtoLens.FieldDescriptor QueryListObjectsByBucketIdRequest
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor QueryListObjectsByBucketIdRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryListObjectsByBucketIdRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryListObjectsByBucketIdRequest'_unknownFields = y__})
  defMessage
    = QueryListObjectsByBucketIdRequest'_constructor
        {_QueryListObjectsByBucketIdRequest'pagination = Prelude.Nothing,
         _QueryListObjectsByBucketIdRequest'bucketId = Data.ProtoLens.fieldDefault,
         _QueryListObjectsByBucketIdRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryListObjectsByBucketIdRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryListObjectsByBucketIdRequest
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
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryListObjectsByBucketIdRequest"
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
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
instance Control.DeepSeq.NFData QueryListObjectsByBucketIdRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryListObjectsByBucketIdRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryListObjectsByBucketIdRequest'pagination x__)
                (Control.DeepSeq.deepseq
                   (_QueryListObjectsByBucketIdRequest'bucketId x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.pagination' @:: Lens' QueryListObjectsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'pagination' @:: Lens' QueryListObjectsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@
         * 'Proto.Greenfield.Storage.Query_Fields.bucketName' @:: Lens' QueryListObjectsRequest Data.Text.Text@ -}
data QueryListObjectsRequest
  = QueryListObjectsRequest'_constructor {_QueryListObjectsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                          _QueryListObjectsRequest'bucketName :: !Data.Text.Text,
                                          _QueryListObjectsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryListObjectsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryListObjectsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsRequest'pagination
           (\ x__ y__ -> x__ {_QueryListObjectsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryListObjectsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsRequest'pagination
           (\ x__ y__ -> x__ {_QueryListObjectsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryListObjectsRequest "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsRequest'bucketName
           (\ x__ y__ -> x__ {_QueryListObjectsRequest'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryListObjectsRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryListObjectsRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryListObjectsRequest\DC2F\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName"
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
              Data.ProtoLens.FieldDescriptor QueryListObjectsRequest
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor QueryListObjectsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryListObjectsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryListObjectsRequest'_unknownFields = y__})
  defMessage
    = QueryListObjectsRequest'_constructor
        {_QueryListObjectsRequest'pagination = Prelude.Nothing,
         _QueryListObjectsRequest'bucketName = Data.ProtoLens.fieldDefault,
         _QueryListObjectsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryListObjectsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryListObjectsRequest
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryListObjectsRequest"
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
instance Control.DeepSeq.NFData QueryListObjectsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryListObjectsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryListObjectsRequest'pagination x__)
                (Control.DeepSeq.deepseq
                   (_QueryListObjectsRequest'bucketName x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.objectInfos' @:: Lens' QueryListObjectsResponse [Proto.Greenfield.Storage.Types.ObjectInfo]@
         * 'Proto.Greenfield.Storage.Query_Fields.vec'objectInfos' @:: Lens' QueryListObjectsResponse (Data.Vector.Vector Proto.Greenfield.Storage.Types.ObjectInfo)@
         * 'Proto.Greenfield.Storage.Query_Fields.pagination' @:: Lens' QueryListObjectsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'pagination' @:: Lens' QueryListObjectsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryListObjectsResponse
  = QueryListObjectsResponse'_constructor {_QueryListObjectsResponse'objectInfos :: !(Data.Vector.Vector Proto.Greenfield.Storage.Types.ObjectInfo),
                                           _QueryListObjectsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                           _QueryListObjectsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryListObjectsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryListObjectsResponse "objectInfos" [Proto.Greenfield.Storage.Types.ObjectInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsResponse'objectInfos
           (\ x__ y__ -> x__ {_QueryListObjectsResponse'objectInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryListObjectsResponse "vec'objectInfos" (Data.Vector.Vector Proto.Greenfield.Storage.Types.ObjectInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsResponse'objectInfos
           (\ x__ y__ -> x__ {_QueryListObjectsResponse'objectInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryListObjectsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsResponse'pagination
           (\ x__ y__ -> x__ {_QueryListObjectsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryListObjectsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryListObjectsResponse'pagination
           (\ x__ y__ -> x__ {_QueryListObjectsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryListObjectsResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryListObjectsResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryListObjectsResponse\DC2A\n\
      \\fobject_infos\CAN\SOH \ETX(\v2\RS.greenfield.storage.ObjectInfoR\vobjectInfos\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        objectInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.ObjectInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"objectInfos")) ::
              Data.ProtoLens.FieldDescriptor QueryListObjectsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryListObjectsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, objectInfos__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryListObjectsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryListObjectsResponse'_unknownFields = y__})
  defMessage
    = QueryListObjectsResponse'_constructor
        {_QueryListObjectsResponse'objectInfos = Data.Vector.Generic.empty,
         _QueryListObjectsResponse'pagination = Prelude.Nothing,
         _QueryListObjectsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryListObjectsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Storage.Types.ObjectInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryListObjectsResponse
        loop x mutable'objectInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'objectInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'objectInfos)
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
                              (Data.ProtoLens.Field.field @"vec'objectInfos") frozen'objectInfos
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "object_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'objectInfos y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'objectInfos
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'objectInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'objectInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'objectInfos)
          "QueryListObjectsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'objectInfos") _x))
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
instance Control.DeepSeq.NFData QueryListObjectsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryListObjectsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryListObjectsResponse'objectInfos x__)
                (Control.DeepSeq.deepseq
                   (_QueryListObjectsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.tokenId' @:: Lens' QueryNFTRequest Data.Text.Text@ -}
data QueryNFTRequest
  = QueryNFTRequest'_constructor {_QueryNFTRequest'tokenId :: !Data.Text.Text,
                                  _QueryNFTRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryNFTRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryNFTRequest "tokenId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTRequest'tokenId
           (\ x__ y__ -> x__ {_QueryNFTRequest'tokenId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryNFTRequest where
  messageName _ = Data.Text.pack "greenfield.storage.QueryNFTRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIQueryNFTRequest\DC2\EM\n\
      \\btoken_id\CAN\SOH \SOH(\tR\atokenId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tokenId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tokenId")) ::
              Data.ProtoLens.FieldDescriptor QueryNFTRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tokenId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryNFTRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryNFTRequest'_unknownFields = y__})
  defMessage
    = QueryNFTRequest'_constructor
        {_QueryNFTRequest'tokenId = Data.ProtoLens.fieldDefault,
         _QueryNFTRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryNFTRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryNFTRequest
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
                                       "token_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tokenId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryNFTRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tokenId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryNFTRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryNFTRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryNFTRequest'tokenId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.metaData' @:: Lens' QueryObjectNFTResponse Proto.Greenfield.Storage.Types.ObjectMetaData@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'metaData' @:: Lens' QueryObjectNFTResponse (Prelude.Maybe Proto.Greenfield.Storage.Types.ObjectMetaData)@ -}
data QueryObjectNFTResponse
  = QueryObjectNFTResponse'_constructor {_QueryObjectNFTResponse'metaData :: !(Prelude.Maybe Proto.Greenfield.Storage.Types.ObjectMetaData),
                                         _QueryObjectNFTResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryObjectNFTResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryObjectNFTResponse "metaData" Proto.Greenfield.Storage.Types.ObjectMetaData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryObjectNFTResponse'metaData
           (\ x__ y__ -> x__ {_QueryObjectNFTResponse'metaData = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryObjectNFTResponse "maybe'metaData" (Prelude.Maybe Proto.Greenfield.Storage.Types.ObjectMetaData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryObjectNFTResponse'metaData
           (\ x__ y__ -> x__ {_QueryObjectNFTResponse'metaData = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryObjectNFTResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryObjectNFTResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryObjectNFTResponse\DC2?\n\
      \\tmeta_data\CAN\SOH \SOH(\v2\".greenfield.storage.ObjectMetaDataR\bmetaData"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metaData__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "meta_data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.ObjectMetaData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metaData")) ::
              Data.ProtoLens.FieldDescriptor QueryObjectNFTResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metaData__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryObjectNFTResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryObjectNFTResponse'_unknownFields = y__})
  defMessage
    = QueryObjectNFTResponse'_constructor
        {_QueryObjectNFTResponse'metaData = Prelude.Nothing,
         _QueryObjectNFTResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryObjectNFTResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryObjectNFTResponse
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
                                       "meta_data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metaData") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryObjectNFTResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metaData") _x
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
instance Control.DeepSeq.NFData QueryObjectNFTResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryObjectNFTResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryObjectNFTResponse'metaData x__) ())
{- | Fields :
      -}
data QueryParamsRequest
  = QueryParamsRequest'_constructor {_QueryParamsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryParamsRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryParamsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryParamsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsRequest'_unknownFields = y__})
  defMessage
    = QueryParamsRequest'_constructor
        {_QueryParamsRequest'_unknownFields = []}
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
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryParamsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Greenfield.Storage.Params.Params@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Greenfield.Storage.Params.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Greenfield.Storage.Params.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Greenfield.Storage.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Greenfield.Storage.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC28\n\
      \\ACKparams\CAN\SOH \SOH(\v2\SUB.greenfield.storage.ParamsR\ACKparamsB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Params.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsResponse'_unknownFields = y__})
  defMessage
    = QueryParamsResponse'_constructor
        {_QueryParamsResponse'params = Prelude.Nothing,
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
                                       "params"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
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
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
             (Control.DeepSeq.deepseq (_QueryParamsResponse'params x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.policyId' @:: Lens' QueryPolicyByIdRequest Data.Text.Text@ -}
data QueryPolicyByIdRequest
  = QueryPolicyByIdRequest'_constructor {_QueryPolicyByIdRequest'policyId :: !Data.Text.Text,
                                         _QueryPolicyByIdRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPolicyByIdRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryPolicyByIdRequest "policyId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyByIdRequest'policyId
           (\ x__ y__ -> x__ {_QueryPolicyByIdRequest'policyId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryPolicyByIdRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryPolicyByIdRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryPolicyByIdRequest\DC2\ESC\n\
      \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policyId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"policyId")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyByIdRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policyId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPolicyByIdRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryPolicyByIdRequest'_unknownFields = y__})
  defMessage
    = QueryPolicyByIdRequest'_constructor
        {_QueryPolicyByIdRequest'policyId = Data.ProtoLens.fieldDefault,
         _QueryPolicyByIdRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPolicyByIdRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPolicyByIdRequest
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
                                       "policy_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policyId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryPolicyByIdRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"policyId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryPolicyByIdRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPolicyByIdRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryPolicyByIdRequest'policyId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.policy' @:: Lens' QueryPolicyByIdResponse Proto.Greenfield.Permission.Types.Policy@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'policy' @:: Lens' QueryPolicyByIdResponse (Prelude.Maybe Proto.Greenfield.Permission.Types.Policy)@ -}
data QueryPolicyByIdResponse
  = QueryPolicyByIdResponse'_constructor {_QueryPolicyByIdResponse'policy :: !(Prelude.Maybe Proto.Greenfield.Permission.Types.Policy),
                                          _QueryPolicyByIdResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPolicyByIdResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryPolicyByIdResponse "policy" Proto.Greenfield.Permission.Types.Policy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyByIdResponse'policy
           (\ x__ y__ -> x__ {_QueryPolicyByIdResponse'policy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryPolicyByIdResponse "maybe'policy" (Prelude.Maybe Proto.Greenfield.Permission.Types.Policy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyByIdResponse'policy
           (\ x__ y__ -> x__ {_QueryPolicyByIdResponse'policy = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryPolicyByIdResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryPolicyByIdResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryPolicyByIdResponse\DC25\n\
      \\ACKpolicy\CAN\SOH \SOH(\v2\GS.greenfield.permission.PolicyR\ACKpolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Types.Policy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'policy")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyByIdResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPolicyByIdResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryPolicyByIdResponse'_unknownFields = y__})
  defMessage
    = QueryPolicyByIdResponse'_constructor
        {_QueryPolicyByIdResponse'policy = Prelude.Nothing,
         _QueryPolicyByIdResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPolicyByIdResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPolicyByIdResponse
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
                                       "policy"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"policy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryPolicyByIdResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'policy") _x
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
instance Control.DeepSeq.NFData QueryPolicyByIdResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPolicyByIdResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryPolicyByIdResponse'policy x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.resource' @:: Lens' QueryPolicyForAccountRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.principalAddress' @:: Lens' QueryPolicyForAccountRequest Data.Text.Text@ -}
data QueryPolicyForAccountRequest
  = QueryPolicyForAccountRequest'_constructor {_QueryPolicyForAccountRequest'resource :: !Data.Text.Text,
                                               _QueryPolicyForAccountRequest'principalAddress :: !Data.Text.Text,
                                               _QueryPolicyForAccountRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPolicyForAccountRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryPolicyForAccountRequest "resource" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForAccountRequest'resource
           (\ x__ y__ -> x__ {_QueryPolicyForAccountRequest'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryPolicyForAccountRequest "principalAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForAccountRequest'principalAddress
           (\ x__ y__
              -> x__ {_QueryPolicyForAccountRequest'principalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryPolicyForAccountRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryPolicyForAccountRequest"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryPolicyForAccountRequest\DC2\SUB\n\
      \\bresource\CAN\SOH \SOH(\tR\bresource\DC2E\n\
      \\DC1principal_address\CAN\STX \SOH(\tR\DLEprincipalAddressB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resource")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyForAccountRequest
        principalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"principalAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyForAccountRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, resource__field_descriptor),
           (Data.ProtoLens.Tag 2, principalAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPolicyForAccountRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryPolicyForAccountRequest'_unknownFields = y__})
  defMessage
    = QueryPolicyForAccountRequest'_constructor
        {_QueryPolicyForAccountRequest'resource = Data.ProtoLens.fieldDefault,
         _QueryPolicyForAccountRequest'principalAddress = Data.ProtoLens.fieldDefault,
         _QueryPolicyForAccountRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPolicyForAccountRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPolicyForAccountRequest
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
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
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
                                       "principal_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"principalAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryPolicyForAccountRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"resource") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"principalAddress") _x
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
instance Control.DeepSeq.NFData QueryPolicyForAccountRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPolicyForAccountRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryPolicyForAccountRequest'resource x__)
                (Control.DeepSeq.deepseq
                   (_QueryPolicyForAccountRequest'principalAddress x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.policy' @:: Lens' QueryPolicyForAccountResponse Proto.Greenfield.Permission.Types.Policy@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'policy' @:: Lens' QueryPolicyForAccountResponse (Prelude.Maybe Proto.Greenfield.Permission.Types.Policy)@ -}
data QueryPolicyForAccountResponse
  = QueryPolicyForAccountResponse'_constructor {_QueryPolicyForAccountResponse'policy :: !(Prelude.Maybe Proto.Greenfield.Permission.Types.Policy),
                                                _QueryPolicyForAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPolicyForAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryPolicyForAccountResponse "policy" Proto.Greenfield.Permission.Types.Policy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForAccountResponse'policy
           (\ x__ y__ -> x__ {_QueryPolicyForAccountResponse'policy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryPolicyForAccountResponse "maybe'policy" (Prelude.Maybe Proto.Greenfield.Permission.Types.Policy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForAccountResponse'policy
           (\ x__ y__ -> x__ {_QueryPolicyForAccountResponse'policy = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryPolicyForAccountResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryPolicyForAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryPolicyForAccountResponse\DC25\n\
      \\ACKpolicy\CAN\SOH \SOH(\v2\GS.greenfield.permission.PolicyR\ACKpolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Types.Policy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'policy")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyForAccountResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPolicyForAccountResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryPolicyForAccountResponse'_unknownFields = y__})
  defMessage
    = QueryPolicyForAccountResponse'_constructor
        {_QueryPolicyForAccountResponse'policy = Prelude.Nothing,
         _QueryPolicyForAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPolicyForAccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPolicyForAccountResponse
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
                                       "policy"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"policy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryPolicyForAccountResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'policy") _x
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
instance Control.DeepSeq.NFData QueryPolicyForAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPolicyForAccountResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryPolicyForAccountResponse'policy x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.resource' @:: Lens' QueryPolicyForGroupRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.principalGroupId' @:: Lens' QueryPolicyForGroupRequest Data.Text.Text@ -}
data QueryPolicyForGroupRequest
  = QueryPolicyForGroupRequest'_constructor {_QueryPolicyForGroupRequest'resource :: !Data.Text.Text,
                                             _QueryPolicyForGroupRequest'principalGroupId :: !Data.Text.Text,
                                             _QueryPolicyForGroupRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPolicyForGroupRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryPolicyForGroupRequest "resource" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForGroupRequest'resource
           (\ x__ y__ -> x__ {_QueryPolicyForGroupRequest'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryPolicyForGroupRequest "principalGroupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForGroupRequest'principalGroupId
           (\ x__ y__
              -> x__ {_QueryPolicyForGroupRequest'principalGroupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryPolicyForGroupRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryPolicyForGroupRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryPolicyForGroupRequest\DC2\SUB\n\
      \\bresource\CAN\SOH \SOH(\tR\bresource\DC2,\n\
      \\DC2principal_group_id\CAN\STX \SOH(\tR\DLEprincipalGroupId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resource")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyForGroupRequest
        principalGroupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal_group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"principalGroupId")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyForGroupRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, resource__field_descriptor),
           (Data.ProtoLens.Tag 2, principalGroupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPolicyForGroupRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryPolicyForGroupRequest'_unknownFields = y__})
  defMessage
    = QueryPolicyForGroupRequest'_constructor
        {_QueryPolicyForGroupRequest'resource = Data.ProtoLens.fieldDefault,
         _QueryPolicyForGroupRequest'principalGroupId = Data.ProtoLens.fieldDefault,
         _QueryPolicyForGroupRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPolicyForGroupRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPolicyForGroupRequest
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
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
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
                                       "principal_group_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"principalGroupId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryPolicyForGroupRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"resource") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"principalGroupId") _x
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
instance Control.DeepSeq.NFData QueryPolicyForGroupRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPolicyForGroupRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryPolicyForGroupRequest'resource x__)
                (Control.DeepSeq.deepseq
                   (_QueryPolicyForGroupRequest'principalGroupId x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.policy' @:: Lens' QueryPolicyForGroupResponse Proto.Greenfield.Permission.Types.Policy@
         * 'Proto.Greenfield.Storage.Query_Fields.maybe'policy' @:: Lens' QueryPolicyForGroupResponse (Prelude.Maybe Proto.Greenfield.Permission.Types.Policy)@ -}
data QueryPolicyForGroupResponse
  = QueryPolicyForGroupResponse'_constructor {_QueryPolicyForGroupResponse'policy :: !(Prelude.Maybe Proto.Greenfield.Permission.Types.Policy),
                                              _QueryPolicyForGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPolicyForGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryPolicyForGroupResponse "policy" Proto.Greenfield.Permission.Types.Policy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForGroupResponse'policy
           (\ x__ y__ -> x__ {_QueryPolicyForGroupResponse'policy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryPolicyForGroupResponse "maybe'policy" (Prelude.Maybe Proto.Greenfield.Permission.Types.Policy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPolicyForGroupResponse'policy
           (\ x__ y__ -> x__ {_QueryPolicyForGroupResponse'policy = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryPolicyForGroupResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryPolicyForGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryPolicyForGroupResponse\DC25\n\
      \\ACKpolicy\CAN\SOH \SOH(\v2\GS.greenfield.permission.PolicyR\ACKpolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Types.Policy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'policy")) ::
              Data.ProtoLens.FieldDescriptor QueryPolicyForGroupResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPolicyForGroupResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryPolicyForGroupResponse'_unknownFields = y__})
  defMessage
    = QueryPolicyForGroupResponse'_constructor
        {_QueryPolicyForGroupResponse'policy = Prelude.Nothing,
         _QueryPolicyForGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPolicyForGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPolicyForGroupResponse
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
                                       "policy"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"policy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryPolicyForGroupResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'policy") _x
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
instance Control.DeepSeq.NFData QueryPolicyForGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPolicyForGroupResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryPolicyForGroupResponse'policy x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.operator' @:: Lens' QueryVerifyPermissionRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.bucketName' @:: Lens' QueryVerifyPermissionRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.objectName' @:: Lens' QueryVerifyPermissionRequest Data.Text.Text@
         * 'Proto.Greenfield.Storage.Query_Fields.actionType' @:: Lens' QueryVerifyPermissionRequest Proto.Greenfield.Permission.Common.ActionType@ -}
data QueryVerifyPermissionRequest
  = QueryVerifyPermissionRequest'_constructor {_QueryVerifyPermissionRequest'operator :: !Data.Text.Text,
                                               _QueryVerifyPermissionRequest'bucketName :: !Data.Text.Text,
                                               _QueryVerifyPermissionRequest'objectName :: !Data.Text.Text,
                                               _QueryVerifyPermissionRequest'actionType :: !Proto.Greenfield.Permission.Common.ActionType,
                                               _QueryVerifyPermissionRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVerifyPermissionRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVerifyPermissionRequest "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVerifyPermissionRequest'operator
           (\ x__ y__ -> x__ {_QueryVerifyPermissionRequest'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVerifyPermissionRequest "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVerifyPermissionRequest'bucketName
           (\ x__ y__
              -> x__ {_QueryVerifyPermissionRequest'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVerifyPermissionRequest "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVerifyPermissionRequest'objectName
           (\ x__ y__
              -> x__ {_QueryVerifyPermissionRequest'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVerifyPermissionRequest "actionType" Proto.Greenfield.Permission.Common.ActionType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVerifyPermissionRequest'actionType
           (\ x__ y__
              -> x__ {_QueryVerifyPermissionRequest'actionType = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVerifyPermissionRequest where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryVerifyPermissionRequest"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryVerifyPermissionRequest\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC2B\n\
      \\vaction_type\CAN\EOT \SOH(\SO2!.greenfield.permission.ActionTypeR\n\
      \actionType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor QueryVerifyPermissionRequest
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor QueryVerifyPermissionRequest
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor QueryVerifyPermissionRequest
        actionType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.ActionType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"actionType")) ::
              Data.ProtoLens.FieldDescriptor QueryVerifyPermissionRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, actionType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVerifyPermissionRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryVerifyPermissionRequest'_unknownFields = y__})
  defMessage
    = QueryVerifyPermissionRequest'_constructor
        {_QueryVerifyPermissionRequest'operator = Data.ProtoLens.fieldDefault,
         _QueryVerifyPermissionRequest'bucketName = Data.ProtoLens.fieldDefault,
         _QueryVerifyPermissionRequest'objectName = Data.ProtoLens.fieldDefault,
         _QueryVerifyPermissionRequest'actionType = Data.ProtoLens.fieldDefault,
         _QueryVerifyPermissionRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVerifyPermissionRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVerifyPermissionRequest
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
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
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "action_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"actionType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryVerifyPermissionRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"actionType") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData QueryVerifyPermissionRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVerifyPermissionRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVerifyPermissionRequest'operator x__)
                (Control.DeepSeq.deepseq
                   (_QueryVerifyPermissionRequest'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_QueryVerifyPermissionRequest'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_QueryVerifyPermissionRequest'actionType x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Query_Fields.effect' @:: Lens' QueryVerifyPermissionResponse Proto.Greenfield.Permission.Common.Effect@ -}
data QueryVerifyPermissionResponse
  = QueryVerifyPermissionResponse'_constructor {_QueryVerifyPermissionResponse'effect :: !Proto.Greenfield.Permission.Common.Effect,
                                                _QueryVerifyPermissionResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVerifyPermissionResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVerifyPermissionResponse "effect" Proto.Greenfield.Permission.Common.Effect where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVerifyPermissionResponse'effect
           (\ x__ y__ -> x__ {_QueryVerifyPermissionResponse'effect = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVerifyPermissionResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.QueryVerifyPermissionResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryVerifyPermissionResponse\DC25\n\
      \\ACKeffect\CAN\SOH \SOH(\SO2\GS.greenfield.permission.EffectR\ACKeffect"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        effect__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "effect"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Effect)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"effect")) ::
              Data.ProtoLens.FieldDescriptor QueryVerifyPermissionResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, effect__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVerifyPermissionResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryVerifyPermissionResponse'_unknownFields = y__})
  defMessage
    = QueryVerifyPermissionResponse'_constructor
        {_QueryVerifyPermissionResponse'effect = Data.ProtoLens.fieldDefault,
         _QueryVerifyPermissionResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVerifyPermissionResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVerifyPermissionResponse
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "effect"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"effect") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryVerifyPermissionResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"effect") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryVerifyPermissionResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVerifyPermissionResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVerifyPermissionResponse'effect x__) ())
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "greenfield.storage"
  type ServiceMethods Query = '["headBucket",
                                "headBucketById",
                                "headBucketNFT",
                                "headGroup",
                                "headGroupMember",
                                "headGroupNFT",
                                "headObject",
                                "headObjectById",
                                "headObjectNFT",
                                "listBuckets",
                                "listGroup",
                                "listObjects",
                                "listObjectsByBucketId",
                                "params",
                                "queryPolicyById",
                                "queryPolicyForAccount",
                                "queryPolicyForGroup",
                                "verifyPermission"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2}\n\
      \\ACKParams\DC2&.greenfield.storage.QueryParamsRequest\SUB'.greenfield.storage.QueryParamsResponse\"\"\130\211\228\147\STX\FS\DC2\SUB/greenfield/storage/params\DC2\156\SOH\n\
      \\n\
      \HeadBucket\DC2*.greenfield.storage.QueryHeadBucketRequest\SUB+.greenfield.storage.QueryHeadBucketResponse\"5\130\211\228\147\STX/\DC2-/greenfield/storage/head_bucket/{bucket_name}\DC2\168\SOH\n\
      \\SO\&HeadBucketById\DC2..greenfield.storage.QueryHeadBucketByIdRequest\SUB+.greenfield.storage.QueryHeadBucketResponse\"9\130\211\228\147\STX3\DC21/greenfield/storage/head_bucket_by_id/{bucket_id}\DC2\152\SOH\n\
      \\rHeadBucketNFT\DC2#.greenfield.storage.QueryNFTRequest\SUB*.greenfield.storage.QueryBucketNFTResponse\"6\130\211\228\147\STX0\DC2./greenfield/storage/head_bucket_nft/{token_id}\DC2\170\SOH\n\
      \\n\
      \HeadObject\DC2*.greenfield.storage.QueryHeadObjectRequest\SUB+.greenfield.storage.QueryHeadObjectResponse\"C\130\211\228\147\STX=\DC2;/greenfield/storage/head_object/{bucket_name}/{object_name}\DC2\168\SOH\n\
      \\SO\&HeadObjectById\DC2..greenfield.storage.QueryHeadObjectByIdRequest\SUB+.greenfield.storage.QueryHeadObjectResponse\"9\130\211\228\147\STX3\DC21/greenfield/storage/head_object_by_id/{object_id}\DC2\152\SOH\n\
      \\rHeadObjectNFT\DC2#.greenfield.storage.QueryNFTRequest\SUB*.greenfield.storage.QueryObjectNFTResponse\"6\130\211\228\147\STX0\DC2./greenfield/storage/head_object_nft/{token_id}\DC2\146\SOH\n\
      \\vListBuckets\DC2+.greenfield.storage.QueryListBucketsRequest\SUB,.greenfield.storage.QueryListBucketsResponse\"(\130\211\228\147\STX\"\DC2 /greenfield/storage/list_buckets\DC2\160\SOH\n\
      \\vListObjects\DC2+.greenfield.storage.QueryListObjectsRequest\SUB,.greenfield.storage.QueryListObjectsResponse\"6\130\211\228\147\STX0\DC2./greenfield/storage/list_objects/{bucket_name}\DC2\191\SOH\n\
      \\NAKListObjectsByBucketId\DC25.greenfield.storage.QueryListObjectsByBucketIdRequest\SUB,.greenfield.storage.QueryListObjectsResponse\"A\130\211\228\147\STX;\DC29/greenfield/storage/list_objects_by_bucket_id/{bucket_id}\DC2\149\SOH\n\
      \\fHeadGroupNFT\DC2#.greenfield.storage.QueryNFTRequest\SUB).greenfield.storage.QueryGroupNFTResponse\"5\130\211\228\147\STX/\DC2-/greenfield/storage/head_group_nft/{token_id}\DC2\203\SOH\n\
      \\NAKQueryPolicyForAccount\DC20.greenfield.storage.QueryPolicyForAccountRequest\SUB1.greenfield.storage.QueryPolicyForAccountResponse\"M\130\211\228\147\STXG\DC2E/greenfield/storage/policy_for_account/{resource}/{principal_address}\DC2\219\SOH\n\
      \\DLEVerifyPermission\DC20.greenfield.storage.QueryVerifyPermissionRequest\SUB1.greenfield.storage.QueryVerifyPermissionResponse\"b\130\211\228\147\STX\\\DC2Z/greenfield/storage/verify_permission/{operator}/{bucket_name}/{object_name}/{action_type}\DC2\165\SOH\n\
      \\tHeadGroup\DC2).greenfield.storage.QueryHeadGroupRequest\SUB*.greenfield.storage.QueryHeadGroupResponse\"A\130\211\228\147\STX;\DC29/greenfield/storage/head_group/{group_owner}/{group_name}\DC2\152\SOH\n\
      \\tListGroup\DC2).greenfield.storage.QueryListGroupRequest\SUB*.greenfield.storage.QueryListGroupResponse\"4\130\211\228\147\STX.\DC2,/greenfield/storage/list_group/{group_owner}\DC2\163\SOH\n\
      \\SIHeadGroupMember\DC2/.greenfield.storage.QueryHeadGroupMemberRequest\SUB0.greenfield.storage.QueryHeadGroupMemberResponse\"-\130\211\228\147\STX'\DC2%/greenfield/storage/head_group_member\DC2\196\SOH\n\
      \\DC3QueryPolicyForGroup\DC2..greenfield.storage.QueryPolicyForGroupRequest\SUB/.greenfield.storage.QueryPolicyForGroupResponse\"L\130\211\228\147\STXF\DC2D/greenfield/storage/policy_for_group/{resource}/{principal_group_id}\DC2\160\SOH\n\
      \\SIQueryPolicyById\DC2*.greenfield.storage.QueryPolicyByIdRequest\SUB+.greenfield.storage.QueryPolicyByIdResponse\"4\130\211\228\147\STX.\DC2,/greenfield/storage/policy_by_id/{policy_id}"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headBucket" where
  type MethodName Query "headBucket" = "HeadBucket"
  type MethodInput Query "headBucket" = QueryHeadBucketRequest
  type MethodOutput Query "headBucket" = QueryHeadBucketResponse
  type MethodStreamingType Query "headBucket" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headBucketById" where
  type MethodName Query "headBucketById" = "HeadBucketById"
  type MethodInput Query "headBucketById" = QueryHeadBucketByIdRequest
  type MethodOutput Query "headBucketById" = QueryHeadBucketResponse
  type MethodStreamingType Query "headBucketById" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headBucketNFT" where
  type MethodName Query "headBucketNFT" = "HeadBucketNFT"
  type MethodInput Query "headBucketNFT" = QueryNFTRequest
  type MethodOutput Query "headBucketNFT" = QueryBucketNFTResponse
  type MethodStreamingType Query "headBucketNFT" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headObject" where
  type MethodName Query "headObject" = "HeadObject"
  type MethodInput Query "headObject" = QueryHeadObjectRequest
  type MethodOutput Query "headObject" = QueryHeadObjectResponse
  type MethodStreamingType Query "headObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headObjectById" where
  type MethodName Query "headObjectById" = "HeadObjectById"
  type MethodInput Query "headObjectById" = QueryHeadObjectByIdRequest
  type MethodOutput Query "headObjectById" = QueryHeadObjectResponse
  type MethodStreamingType Query "headObjectById" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headObjectNFT" where
  type MethodName Query "headObjectNFT" = "HeadObjectNFT"
  type MethodInput Query "headObjectNFT" = QueryNFTRequest
  type MethodOutput Query "headObjectNFT" = QueryObjectNFTResponse
  type MethodStreamingType Query "headObjectNFT" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "listBuckets" where
  type MethodName Query "listBuckets" = "ListBuckets"
  type MethodInput Query "listBuckets" = QueryListBucketsRequest
  type MethodOutput Query "listBuckets" = QueryListBucketsResponse
  type MethodStreamingType Query "listBuckets" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "listObjects" where
  type MethodName Query "listObjects" = "ListObjects"
  type MethodInput Query "listObjects" = QueryListObjectsRequest
  type MethodOutput Query "listObjects" = QueryListObjectsResponse
  type MethodStreamingType Query "listObjects" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "listObjectsByBucketId" where
  type MethodName Query "listObjectsByBucketId" = "ListObjectsByBucketId"
  type MethodInput Query "listObjectsByBucketId" = QueryListObjectsByBucketIdRequest
  type MethodOutput Query "listObjectsByBucketId" = QueryListObjectsResponse
  type MethodStreamingType Query "listObjectsByBucketId" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headGroupNFT" where
  type MethodName Query "headGroupNFT" = "HeadGroupNFT"
  type MethodInput Query "headGroupNFT" = QueryNFTRequest
  type MethodOutput Query "headGroupNFT" = QueryGroupNFTResponse
  type MethodStreamingType Query "headGroupNFT" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "queryPolicyForAccount" where
  type MethodName Query "queryPolicyForAccount" = "QueryPolicyForAccount"
  type MethodInput Query "queryPolicyForAccount" = QueryPolicyForAccountRequest
  type MethodOutput Query "queryPolicyForAccount" = QueryPolicyForAccountResponse
  type MethodStreamingType Query "queryPolicyForAccount" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "verifyPermission" where
  type MethodName Query "verifyPermission" = "VerifyPermission"
  type MethodInput Query "verifyPermission" = QueryVerifyPermissionRequest
  type MethodOutput Query "verifyPermission" = QueryVerifyPermissionResponse
  type MethodStreamingType Query "verifyPermission" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headGroup" where
  type MethodName Query "headGroup" = "HeadGroup"
  type MethodInput Query "headGroup" = QueryHeadGroupRequest
  type MethodOutput Query "headGroup" = QueryHeadGroupResponse
  type MethodStreamingType Query "headGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "listGroup" where
  type MethodName Query "listGroup" = "ListGroup"
  type MethodInput Query "listGroup" = QueryListGroupRequest
  type MethodOutput Query "listGroup" = QueryListGroupResponse
  type MethodStreamingType Query "listGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "headGroupMember" where
  type MethodName Query "headGroupMember" = "HeadGroupMember"
  type MethodInput Query "headGroupMember" = QueryHeadGroupMemberRequest
  type MethodOutput Query "headGroupMember" = QueryHeadGroupMemberResponse
  type MethodStreamingType Query "headGroupMember" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "queryPolicyForGroup" where
  type MethodName Query "queryPolicyForGroup" = "QueryPolicyForGroup"
  type MethodInput Query "queryPolicyForGroup" = QueryPolicyForGroupRequest
  type MethodOutput Query "queryPolicyForGroup" = QueryPolicyForGroupResponse
  type MethodStreamingType Query "queryPolicyForGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "queryPolicyById" where
  type MethodName Query "queryPolicyById" = "QueryPolicyById"
  type MethodInput Query "queryPolicyById" = QueryPolicyByIdRequest
  type MethodOutput Query "queryPolicyById" = QueryPolicyByIdResponse
  type MethodStreamingType Query "queryPolicyById" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSgreenfield/storage/query.proto\DC2\DC2greenfield.storage\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\"greenfield/permission/common.proto\SUB!greenfield/permission/types.proto\SUB\USgreenfield/storage/params.proto\SUB\RSgreenfield/storage/types.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"O\n\
    \\DC3QueryParamsResponse\DC28\n\
    \\ACKparams\CAN\SOH \SOH(\v2\SUB.greenfield.storage.ParamsR\ACKparamsB\EOT\200\222\US\NUL\"9\n\
    \\SYNQueryHeadBucketRequest\DC2\US\n\
    \\vbucket_name\CAN\SOH \SOH(\tR\n\
    \bucketName\"9\n\
    \\SUBQueryHeadBucketByIdRequest\DC2\ESC\n\
    \\tbucket_id\CAN\SOH \SOH(\tR\bbucketId\"Z\n\
    \\ETBQueryHeadBucketResponse\DC2?\n\
    \\vbucket_info\CAN\SOH \SOH(\v2\RS.greenfield.storage.BucketInfoR\n\
    \bucketInfo\"Z\n\
    \\SYNQueryHeadObjectRequest\DC2\US\n\
    \\vbucket_name\CAN\SOH \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\STX \SOH(\tR\n\
    \objectName\"9\n\
    \\SUBQueryHeadObjectByIdRequest\DC2\ESC\n\
    \\tobject_id\CAN\SOH \SOH(\tR\bobjectId\"Z\n\
    \\ETBQueryHeadObjectResponse\DC2?\n\
    \\vobject_info\CAN\SOH \SOH(\v2\RS.greenfield.storage.ObjectInfoR\n\
    \objectInfo\"a\n\
    \\ETBQueryListBucketsRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\166\SOH\n\
    \\CANQueryListBucketsResponse\DC2A\n\
    \\fbucket_infos\CAN\SOH \ETX(\v2\RS.greenfield.storage.BucketInfoR\vbucketInfos\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\130\SOH\n\
    \\ETBQueryListObjectsRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\"\136\SOH\n\
    \!QueryListObjectsByBucketIdRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\DC2\ESC\n\
    \\tbucket_id\CAN\STX \SOH(\tR\bbucketId\"\166\SOH\n\
    \\CANQueryListObjectsResponse\DC2A\n\
    \\fobject_infos\CAN\SOH \ETX(\v2\RS.greenfield.storage.ObjectInfoR\vobjectInfos\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\",\n\
    \\SIQueryNFTRequest\DC2\EM\n\
    \\btoken_id\CAN\SOH \SOH(\tR\atokenId\"Y\n\
    \\SYNQueryBucketNFTResponse\DC2?\n\
    \\tmeta_data\CAN\SOH \SOH(\v2\".greenfield.storage.BucketMetaDataR\bmetaData\"Y\n\
    \\SYNQueryObjectNFTResponse\DC2?\n\
    \\tmeta_data\CAN\SOH \SOH(\v2\".greenfield.storage.ObjectMetaDataR\bmetaData\"W\n\
    \\NAKQueryGroupNFTResponse\DC2>\n\
    \\tmeta_data\CAN\SOH \SOH(\v2!.greenfield.storage.GroupMetaDataR\bmetaData\"\129\SOH\n\
    \\FSQueryPolicyForAccountRequest\DC2\SUB\n\
    \\bresource\CAN\SOH \SOH(\tR\bresource\DC2E\n\
    \\DC1principal_address\CAN\STX \SOH(\tR\DLEprincipalAddressB\CAN\210\180-\DC4cosmos.AddressString\"V\n\
    \\GSQueryPolicyForAccountResponse\DC25\n\
    \\ACKpolicy\CAN\SOH \SOH(\v2\GS.greenfield.permission.PolicyR\ACKpolicy\"\218\SOH\n\
    \\FSQueryVerifyPermissionRequest\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC2B\n\
    \\vaction_type\CAN\EOT \SOH(\SO2!.greenfield.permission.ActionTypeR\n\
    \actionType\"V\n\
    \\GSQueryVerifyPermissionResponse\DC25\n\
    \\ACKeffect\CAN\SOH \SOH(\SO2\GS.greenfield.permission.EffectR\ACKeffect\"q\n\
    \\NAKQueryHeadGroupRequest\DC29\n\
    \\vgroup_owner\CAN\SOH \SOH(\tR\n\
    \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\STX \SOH(\tR\tgroupName\"V\n\
    \\SYNQueryHeadGroupResponse\DC2<\n\
    \\n\
    \group_info\CAN\SOH \SOH(\v2\GS.greenfield.storage.GroupInfoR\tgroupInfo\"\154\SOH\n\
    \\NAKQueryListGroupRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\DC29\n\
    \\vgroup_owner\CAN\STX \SOH(\tR\n\
    \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\"\161\SOH\n\
    \\SYNQueryListGroupResponse\DC2G\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\DC2>\n\
    \\vgroup_infos\CAN\STX \ETX(\v2\GS.greenfield.storage.GroupInfoR\n\
    \groupInfos\"\169\SOH\n\
    \\ESCQueryHeadGroupMemberRequest\DC20\n\
    \\ACKmember\CAN\SOH \SOH(\tR\ACKmemberB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
    \\vgroup_owner\CAN\STX \SOH(\tR\n\
    \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\ETX \SOH(\tR\tgroupName\"e\n\
    \\FSQueryHeadGroupMemberResponse\DC2E\n\
    \\fgroup_member\CAN\SOH \SOH(\v2\".greenfield.permission.GroupMemberR\vgroupMember\"f\n\
    \\SUBQueryPolicyForGroupRequest\DC2\SUB\n\
    \\bresource\CAN\SOH \SOH(\tR\bresource\DC2,\n\
    \\DC2principal_group_id\CAN\STX \SOH(\tR\DLEprincipalGroupId\"T\n\
    \\ESCQueryPolicyForGroupResponse\DC25\n\
    \\ACKpolicy\CAN\SOH \SOH(\v2\GS.greenfield.permission.PolicyR\ACKpolicy\"5\n\
    \\SYNQueryPolicyByIdRequest\DC2\ESC\n\
    \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyId\"P\n\
    \\ETBQueryPolicyByIdResponse\DC25\n\
    \\ACKpolicy\CAN\SOH \SOH(\v2\GS.greenfield.permission.PolicyR\ACKpolicy2\239\ETB\n\
    \\ENQQuery\DC2}\n\
    \\ACKParams\DC2&.greenfield.storage.QueryParamsRequest\SUB'.greenfield.storage.QueryParamsResponse\"\"\130\211\228\147\STX\FS\DC2\SUB/greenfield/storage/params\DC2\156\SOH\n\
    \\n\
    \HeadBucket\DC2*.greenfield.storage.QueryHeadBucketRequest\SUB+.greenfield.storage.QueryHeadBucketResponse\"5\130\211\228\147\STX/\DC2-/greenfield/storage/head_bucket/{bucket_name}\DC2\168\SOH\n\
    \\SO\&HeadBucketById\DC2..greenfield.storage.QueryHeadBucketByIdRequest\SUB+.greenfield.storage.QueryHeadBucketResponse\"9\130\211\228\147\STX3\DC21/greenfield/storage/head_bucket_by_id/{bucket_id}\DC2\152\SOH\n\
    \\rHeadBucketNFT\DC2#.greenfield.storage.QueryNFTRequest\SUB*.greenfield.storage.QueryBucketNFTResponse\"6\130\211\228\147\STX0\DC2./greenfield/storage/head_bucket_nft/{token_id}\DC2\170\SOH\n\
    \\n\
    \HeadObject\DC2*.greenfield.storage.QueryHeadObjectRequest\SUB+.greenfield.storage.QueryHeadObjectResponse\"C\130\211\228\147\STX=\DC2;/greenfield/storage/head_object/{bucket_name}/{object_name}\DC2\168\SOH\n\
    \\SO\&HeadObjectById\DC2..greenfield.storage.QueryHeadObjectByIdRequest\SUB+.greenfield.storage.QueryHeadObjectResponse\"9\130\211\228\147\STX3\DC21/greenfield/storage/head_object_by_id/{object_id}\DC2\152\SOH\n\
    \\rHeadObjectNFT\DC2#.greenfield.storage.QueryNFTRequest\SUB*.greenfield.storage.QueryObjectNFTResponse\"6\130\211\228\147\STX0\DC2./greenfield/storage/head_object_nft/{token_id}\DC2\146\SOH\n\
    \\vListBuckets\DC2+.greenfield.storage.QueryListBucketsRequest\SUB,.greenfield.storage.QueryListBucketsResponse\"(\130\211\228\147\STX\"\DC2 /greenfield/storage/list_buckets\DC2\160\SOH\n\
    \\vListObjects\DC2+.greenfield.storage.QueryListObjectsRequest\SUB,.greenfield.storage.QueryListObjectsResponse\"6\130\211\228\147\STX0\DC2./greenfield/storage/list_objects/{bucket_name}\DC2\191\SOH\n\
    \\NAKListObjectsByBucketId\DC25.greenfield.storage.QueryListObjectsByBucketIdRequest\SUB,.greenfield.storage.QueryListObjectsResponse\"A\130\211\228\147\STX;\DC29/greenfield/storage/list_objects_by_bucket_id/{bucket_id}\DC2\149\SOH\n\
    \\fHeadGroupNFT\DC2#.greenfield.storage.QueryNFTRequest\SUB).greenfield.storage.QueryGroupNFTResponse\"5\130\211\228\147\STX/\DC2-/greenfield/storage/head_group_nft/{token_id}\DC2\203\SOH\n\
    \\NAKQueryPolicyForAccount\DC20.greenfield.storage.QueryPolicyForAccountRequest\SUB1.greenfield.storage.QueryPolicyForAccountResponse\"M\130\211\228\147\STXG\DC2E/greenfield/storage/policy_for_account/{resource}/{principal_address}\DC2\219\SOH\n\
    \\DLEVerifyPermission\DC20.greenfield.storage.QueryVerifyPermissionRequest\SUB1.greenfield.storage.QueryVerifyPermissionResponse\"b\130\211\228\147\STX\\\DC2Z/greenfield/storage/verify_permission/{operator}/{bucket_name}/{object_name}/{action_type}\DC2\165\SOH\n\
    \\tHeadGroup\DC2).greenfield.storage.QueryHeadGroupRequest\SUB*.greenfield.storage.QueryHeadGroupResponse\"A\130\211\228\147\STX;\DC29/greenfield/storage/head_group/{group_owner}/{group_name}\DC2\152\SOH\n\
    \\tListGroup\DC2).greenfield.storage.QueryListGroupRequest\SUB*.greenfield.storage.QueryListGroupResponse\"4\130\211\228\147\STX.\DC2,/greenfield/storage/list_group/{group_owner}\DC2\163\SOH\n\
    \\SIHeadGroupMember\DC2/.greenfield.storage.QueryHeadGroupMemberRequest\SUB0.greenfield.storage.QueryHeadGroupMemberResponse\"-\130\211\228\147\STX'\DC2%/greenfield/storage/head_group_member\DC2\196\SOH\n\
    \\DC3QueryPolicyForGroup\DC2..greenfield.storage.QueryPolicyForGroupRequest\SUB/.greenfield.storage.QueryPolicyForGroupResponse\"L\130\211\228\147\STXF\DC2D/greenfield/storage/policy_for_group/{resource}/{principal_group_id}\DC2\160\SOH\n\
    \\SIQueryPolicyById\DC2*.greenfield.storage.QueryPolicyByIdRequest\SUB+.greenfield.storage.QueryPolicyByIdResponse\"4\130\211\228\147\STX.\DC2,/greenfield/storage/policy_by_id/{policy_id}B1Z/github.com/bnb-chain/greenfield/x/storage/typesJ\198\&3\n\
    \\a\DC2\ENQ\NUL\NUL\250\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL,\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL)\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \:\n\
    \\STX\b\v\DC2\ETX\SI\NULF2/ this line is used by starport scaffolding # 1\n\
    \\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\DC2\NULn\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC2\b\r\n\
    \@\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DC4\STX\SYN\ETX\SUB2 Parameters queries the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC4\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC4\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC4*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\NAK\EOT@\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\NAK\EOT@\n\
    \3\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\EM\STX\ESC\ETX\SUB% Queries a bucket with specify name.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\EM\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\EM\DC1'\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\EM2I\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\SUB\EOTS\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\SUB\EOTS\n\
    \&\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\RS\STX \ETX\SUB\CAN Queries a bucket by id\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\RS\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\RS\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\RS:Q\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\US\EOTW\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\US\EOTW\n\
    \C\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT#\STX%\ETX\SUB5 Queries a bucket with EIP712 standard metadata info\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX#\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX#\DC4#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX#.D\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX$\EOTT\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX$\EOTT\n\
    \3\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT(\STX*\ETX\SUB% Queries a object with specify name.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX(\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX(\DC1'\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX(2I\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX)\EOTa\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX)\EOTa\n\
    \'\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT-\STX/\ETX\SUB\EM Queries an object by id\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX-\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX-\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX-:Q\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX.\EOTW\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX.\EOTW\n\
    \C\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT2\STX4\ETX\SUB5 Queries a object with EIP712 standard metadata info\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX2\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX2\DC4#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX2.D\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX3\EOTT\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX3\EOTT\n\
    \/\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT7\STX9\ETX\SUB! Queries a list of bucket items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX7\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX7\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX74L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETX8\EOTF\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\ETX8\EOTF\n\
    \@\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOT<\STX>\ETX\SUB2 Queries a list of object items under the bucket.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX<\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX<\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX<4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETX=\EOTT\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\ETX=\EOTT\n\
    \@\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOTA\STXC\ETX\SUB2 Queries a list of object items under the bucket.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETXA\ACK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETXA\FS=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETXAH`\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXB\EOT_\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\t\EOT\176\202\188\"\STX\DC2\ETXB\EOT_\n\
    \B\n\
    \\EOT\ACK\NUL\STX\n\
    \\DC2\EOTF\STXH\ETX\SUB4 Queries a group with EIP712 standard metadata info\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\SOH\DC2\ETXF\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\STX\DC2\ETXF\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\ETX\DC2\ETXF-B\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\EOT\DC2\ETXG\EOTS\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\n\
    \\EOT\176\202\188\"\STX\DC2\ETXG\EOTS\n\
    \C\n\
    \\EOT\ACK\NUL\STX\v\DC2\EOTK\STXM\ETX\SUB5 Queries a policy which grants permission to account\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\SOH\DC2\ETXK\ACK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\STX\DC2\ETXK\FS8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\ETX\DC2\ETXKC`\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\EOT\DC2\ETXL\EOTk\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\v\EOT\176\202\188\"\STX\DC2\ETXL\EOTk\n\
    \9\n\
    \\EOT\ACK\NUL\STX\f\DC2\EOTP\STXR\ETX\SUB+ Queries a list of VerifyPermission items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\SOH\DC2\ETXP\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\STX\DC2\ETXP\ETB3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\ETX\DC2\ETXP>[\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\f\EOT\DC2\EOTQ\EOT\128\SOH\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\f\EOT\176\202\188\"\STX\DC2\EOTQ\EOT\128\SOH\n\
    \=\n\
    \\EOT\ACK\NUL\STX\r\DC2\EOTU\STXW\ETX\SUB/ Queries a group with specify owner and name .\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\SOH\DC2\ETXU\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\STX\DC2\ETXU\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\ETX\DC2\ETXU0F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\EOT\DC2\ETXV\EOT_\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\r\EOT\176\202\188\"\STX\DC2\ETXV\EOT_\n\
    \2\n\
    \\EOT\ACK\NUL\STX\SO\DC2\EOTZ\STX\\\ETX\SUB$ Queries a list of ListGroup items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\SOH\DC2\ETXZ\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\STX\DC2\ETXZ\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\ETX\DC2\ETXZ0F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\EOT\DC2\ETX[\EOTR\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SO\EOT\176\202\188\"\STX\DC2\ETX[\EOTR\n\
    \8\n\
    \\EOT\ACK\NUL\STX\SI\DC2\EOT_\STXa\ETX\SUB* Queries a list of HeadGroupMember items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\SOH\DC2\ETX_\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\STX\DC2\ETX_\SYN1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\ETX\DC2\ETX_<X\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\EOT\DC2\ETX`\EOTK\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SI\EOT\176\202\188\"\STX\DC2\ETX`\EOTK\n\
    \B\n\
    \\EOT\ACK\NUL\STX\DLE\DC2\EOTd\STXf\ETX\SUB4 Queries a policy that grants permission to a group\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DLE\SOH\DC2\ETXd\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DLE\STX\DC2\ETXd\SUB4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DLE\ETX\DC2\ETXd?Z\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DLE\EOT\DC2\ETXe\EOTj\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\DLE\EOT\176\202\188\"\STX\DC2\ETXe\EOTj\n\
    \-\n\
    \\EOT\ACK\NUL\STX\DC1\DC2\EOTi\STXk\ETX\SUB\US Queries a policy by policy id\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC1\SOH\DC2\ETXi\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC1\STX\DC2\ETXi\SYN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC1\ETX\DC2\ETXi7N\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC1\EOT\DC2\ETXj\EOTR\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\DC1\EOT\176\202\188\"\STX\DC2\ETXj\EOTR\n\
    \P\n\
    \\STX\EOT\NUL\DC2\ETXq\NUL\GS\SUBE QueryParamsRequest is request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXq\b\SUB\n\
    \S\n\
    \\STX\EOT\SOH\DC2\EOTt\NULw\SOH\SUBG QueryParamsResponse is response type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXt\b\ESC\n\
    \>\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXv\STX3\SUB1 params holds all the parameters of this module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXv\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXv\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXv\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXv\DC42\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETXv\NAK1\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTy\NUL{\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXy\b\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXz\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXz\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXz\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXz\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT}\NUL\DEL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX}\b\"\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX~\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX~\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX~\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX~\NAK\SYN\n\
    \\f\n\
    \\STX\EOT\EOT\DC2\ACK\129\SOH\NUL\131\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\129\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\130\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\130\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\130\SOH\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\130\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT\ENQ\DC2\ACK\133\SOH\NUL\136\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\133\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\134\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\134\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\134\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\135\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\135\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\135\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\135\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\138\SOH\NUL\140\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\138\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\139\SOH\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\139\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\139\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\139\SOH\NAK\SYN\n\
    \\f\n\
    \\STX\EOT\a\DC2\ACK\142\SOH\NUL\144\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\142\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\143\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\143\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\143\SOH\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\143\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT\b\DC2\ACK\146\SOH\NUL\148\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\146\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\147\SOH\STX7\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\147\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\147\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\147\SOH56\n\
    \\f\n\
    \\STX\EOT\t\DC2\ACK\150\SOH\NUL\153\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\150\SOH\b \n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\151\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\151\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\151\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\151\SOH\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\151\SOH%&\n\
    \\f\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\152\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\152\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\152\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\152\SOH67\n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\155\SOH\NUL\158\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\155\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\156\SOH\STX7\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\156\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\156\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\156\SOH56\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\157\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\157\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\157\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\157\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\v\DC2\ACK\160\SOH\NUL\163\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\160\SOH\b)\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\161\SOH\STX7\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\161\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\161\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\161\SOH56\n\
    \\f\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\162\SOH\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\162\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\162\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\162\SOH\NAK\SYN\n\
    \\f\n\
    \\STX\EOT\f\DC2\ACK\165\SOH\NUL\168\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\165\SOH\b \n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\166\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\EOT\166\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\166\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\166\SOH\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\166\SOH%&\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\167\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\167\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\167\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\167\SOH67\n\
    \\f\n\
    \\STX\EOT\r\DC2\ACK\170\SOH\NUL\172\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\170\SOH\b\ETB\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\171\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\171\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\171\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\171\SOH\DC4\NAK\n\
    \\f\n\
    \\STX\EOT\SO\DC2\ACK\174\SOH\NUL\176\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\174\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\175\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\EOT\175\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\175\SOH\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\175\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\SI\DC2\ACK\178\SOH\NUL\180\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\178\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\179\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\179\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\179\SOH\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\179\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\182\SOH\NUL\184\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\182\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\183\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\EOT\183\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\183\SOH\DLE\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\183\SOH\FS\GS\n\
    \\f\n\
    \\STX\EOT\DC1\DC2\ACK\186\SOH\NUL\189\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\186\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\187\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\187\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\187\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\187\SOH\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\188\SOH\STXP\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\188\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\188\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\188\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\b\DC2\EOT\188\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\SOH\b\202\214\ENQ\DC2\EOT\188\SOH N\n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\191\SOH\NUL\193\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\191\SOH\b%\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\192\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\192\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\192\SOH\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\192\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\195\SOH\NUL\200\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\195\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\196\SOH\STXG\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\196\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\196\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\196\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\b\DC2\EOT\196\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\202\214\ENQ\DC2\EOT\196\SOH\ETBE\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\197\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\197\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\197\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\197\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\198\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\198\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\198\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\198\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\ETX\DC2\EOT\199\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ACK\DC2\EOT\199\SOH\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\SOH\DC2\EOT\199\SOH\CAN#\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ETX\DC2\EOT\199\SOH&'\n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\202\SOH\NUL\204\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\202\SOH\b%\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\203\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\203\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\203\SOH\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\203\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\NAK\DC2\ACK\206\SOH\NUL\209\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\206\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\207\SOH\STXJ\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\207\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\207\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\207\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\b\DC2\EOT\207\SOH\EMI\n\
    \\DLE\n\
    \\b\EOT\NAK\STX\NUL\b\202\214\ENQ\DC2\EOT\207\SOH\SUBH\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\208\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\EOT\208\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\208\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\208\SOH\SYN\ETB\n\
    \\f\n\
    \\STX\EOT\SYN\DC2\ACK\211\SOH\NUL\213\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\211\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\212\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ACK\DC2\EOT\212\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\212\SOH\f\SYN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\212\SOH\EM\SUB\n\
    \\f\n\
    \\STX\EOT\ETB\DC2\ACK\215\SOH\NUL\218\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\215\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\216\SOH\STX7\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ACK\DC2\EOT\216\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\216\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\216\SOH56\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\SOH\DC2\EOT\217\SOH\STXJ\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ENQ\DC2\EOT\217\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\SOH\DC2\EOT\217\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ETX\DC2\EOT\217\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\b\DC2\EOT\217\SOH\EMI\n\
    \\DLE\n\
    \\b\EOT\ETB\STX\SOH\b\202\214\ENQ\DC2\EOT\217\SOH\SUBH\n\
    \\f\n\
    \\STX\EOT\CAN\DC2\ACK\220\SOH\NUL\223\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\220\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\221\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ACK\DC2\EOT\221\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\221\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\221\SOH67\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\222\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\EOT\DC2\EOT\222\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ACK\DC2\EOT\222\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\222\SOH\NAK \n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\222\SOH#$\n\
    \\f\n\
    \\STX\EOT\EM\DC2\ACK\225\SOH\NUL\229\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\225\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\226\SOH\STXE\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\EOT\226\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\226\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\226\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\b\DC2\EOT\226\SOH\DC4D\n\
    \\DLE\n\
    \\b\EOT\EM\STX\NUL\b\202\214\ENQ\DC2\EOT\226\SOH\NAKC\n\
    \\f\n\
    \\EOT\EOT\EM\STX\SOH\DC2\EOT\227\SOH\STXJ\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ENQ\DC2\EOT\227\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\SOH\DC2\EOT\227\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ETX\DC2\EOT\227\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\b\DC2\EOT\227\SOH\EMI\n\
    \\DLE\n\
    \\b\EOT\EM\STX\SOH\b\202\214\ENQ\DC2\EOT\227\SOH\SUBH\n\
    \\f\n\
    \\EOT\EOT\EM\STX\STX\DC2\EOT\228\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ENQ\DC2\EOT\228\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\SOH\DC2\EOT\228\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ETX\DC2\EOT\228\SOH\SYN\ETB\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\231\SOH\NUL\233\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\231\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\232\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ACK\DC2\EOT\232\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\232\SOH\EM%\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\232\SOH()\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\235\SOH\NUL\238\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\235\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\236\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ENQ\DC2\EOT\236\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\236\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\236\SOH\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\SOH\DC2\EOT\237\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ENQ\DC2\EOT\237\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\SOH\DC2\EOT\237\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ETX\DC2\EOT\237\SOH\RS\US\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\240\SOH\NUL\242\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\240\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\241\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ACK\DC2\EOT\241\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\241\SOH\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\241\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\244\SOH\NUL\246\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\244\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\245\SOH\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ENQ\DC2\EOT\245\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\245\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\245\SOH\NAK\SYN\n\
    \\f\n\
    \\STX\EOT\RS\DC2\ACK\248\SOH\NUL\250\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\248\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\249\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ACK\DC2\EOT\249\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\249\SOH\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\249\SOH\GS\RSb\ACKproto3"