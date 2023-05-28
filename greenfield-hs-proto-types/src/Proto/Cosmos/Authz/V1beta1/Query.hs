{- This file was auto-generated from cosmos/authz/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Authz.V1beta1.Query (
        Query(..), QueryGranteeGrantsRequest(),
        QueryGranteeGrantsResponse(), QueryGranterGrantsRequest(),
        QueryGranterGrantsResponse(), QueryGrantsRequest(),
        QueryGrantsResponse()
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
import qualified Proto.Cosmos.Authz.V1beta1.Authz
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.grantee' @:: Lens' QueryGranteeGrantsRequest Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.pagination' @:: Lens' QueryGranteeGrantsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryGranteeGrantsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGranteeGrantsRequest
  = QueryGranteeGrantsRequest'_constructor {_QueryGranteeGrantsRequest'grantee :: !Data.Text.Text,
                                            _QueryGranteeGrantsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                            _QueryGranteeGrantsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGranteeGrantsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGranteeGrantsRequest "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranteeGrantsRequest'grantee
           (\ x__ y__ -> x__ {_QueryGranteeGrantsRequest'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGranteeGrantsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranteeGrantsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGranteeGrantsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGranteeGrantsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranteeGrantsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGranteeGrantsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGranteeGrantsRequest where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.QueryGranteeGrantsRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryGranteeGrantsRequest\DC22\n\
      \\agrantee\CAN\SOH \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor QueryGranteeGrantsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGranteeGrantsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grantee__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGranteeGrantsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGranteeGrantsRequest'_unknownFields = y__})
  defMessage
    = QueryGranteeGrantsRequest'_constructor
        {_QueryGranteeGrantsRequest'grantee = Data.ProtoLens.fieldDefault,
         _QueryGranteeGrantsRequest'pagination = Prelude.Nothing,
         _QueryGranteeGrantsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGranteeGrantsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGranteeGrantsRequest
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage) "QueryGranteeGrantsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
instance Control.DeepSeq.NFData QueryGranteeGrantsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGranteeGrantsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGranteeGrantsRequest'grantee x__)
                (Control.DeepSeq.deepseq
                   (_QueryGranteeGrantsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.grants' @:: Lens' QueryGranteeGrantsResponse [Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization]@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.vec'grants' @:: Lens' QueryGranteeGrantsResponse (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization)@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.pagination' @:: Lens' QueryGranteeGrantsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryGranteeGrantsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGranteeGrantsResponse
  = QueryGranteeGrantsResponse'_constructor {_QueryGranteeGrantsResponse'grants :: !(Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization),
                                             _QueryGranteeGrantsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                             _QueryGranteeGrantsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGranteeGrantsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGranteeGrantsResponse "grants" [Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranteeGrantsResponse'grants
           (\ x__ y__ -> x__ {_QueryGranteeGrantsResponse'grants = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGranteeGrantsResponse "vec'grants" (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranteeGrantsResponse'grants
           (\ x__ y__ -> x__ {_QueryGranteeGrantsResponse'grants = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGranteeGrantsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranteeGrantsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGranteeGrantsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGranteeGrantsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranteeGrantsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGranteeGrantsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGranteeGrantsResponse where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.QueryGranteeGrantsResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryGranteeGrantsResponse\DC2@\n\
      \\ACKgrants\CAN\SOH \ETX(\v2(.cosmos.authz.v1beta1.GrantAuthorizationR\ACKgrants\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grants__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grants"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"grants")) ::
              Data.ProtoLens.FieldDescriptor QueryGranteeGrantsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGranteeGrantsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grants__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGranteeGrantsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGranteeGrantsResponse'_unknownFields = y__})
  defMessage
    = QueryGranteeGrantsResponse'_constructor
        {_QueryGranteeGrantsResponse'grants = Data.Vector.Generic.empty,
         _QueryGranteeGrantsResponse'pagination = Prelude.Nothing,
         _QueryGranteeGrantsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGranteeGrantsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGranteeGrantsResponse
        loop x mutable'grants
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'grants <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'grants)
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
                              (Data.ProtoLens.Field.field @"vec'grants") frozen'grants x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "grants"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'grants y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'grants
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'grants
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'grants <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'grants)
          "QueryGranteeGrantsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'grants") _x))
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
instance Control.DeepSeq.NFData QueryGranteeGrantsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGranteeGrantsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGranteeGrantsResponse'grants x__)
                (Control.DeepSeq.deepseq
                   (_QueryGranteeGrantsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.granter' @:: Lens' QueryGranterGrantsRequest Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.pagination' @:: Lens' QueryGranterGrantsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryGranterGrantsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGranterGrantsRequest
  = QueryGranterGrantsRequest'_constructor {_QueryGranterGrantsRequest'granter :: !Data.Text.Text,
                                            _QueryGranterGrantsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                            _QueryGranterGrantsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGranterGrantsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGranterGrantsRequest "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranterGrantsRequest'granter
           (\ x__ y__ -> x__ {_QueryGranterGrantsRequest'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGranterGrantsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranterGrantsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGranterGrantsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGranterGrantsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranterGrantsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGranterGrantsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGranterGrantsRequest where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.QueryGranterGrantsRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryGranterGrantsRequest\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor QueryGranterGrantsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGranterGrantsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGranterGrantsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGranterGrantsRequest'_unknownFields = y__})
  defMessage
    = QueryGranterGrantsRequest'_constructor
        {_QueryGranterGrantsRequest'granter = Data.ProtoLens.fieldDefault,
         _QueryGranterGrantsRequest'pagination = Prelude.Nothing,
         _QueryGranterGrantsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGranterGrantsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGranterGrantsRequest
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage) "QueryGranterGrantsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
instance Control.DeepSeq.NFData QueryGranterGrantsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGranterGrantsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGranterGrantsRequest'granter x__)
                (Control.DeepSeq.deepseq
                   (_QueryGranterGrantsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.grants' @:: Lens' QueryGranterGrantsResponse [Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization]@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.vec'grants' @:: Lens' QueryGranterGrantsResponse (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization)@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.pagination' @:: Lens' QueryGranterGrantsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryGranterGrantsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGranterGrantsResponse
  = QueryGranterGrantsResponse'_constructor {_QueryGranterGrantsResponse'grants :: !(Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization),
                                             _QueryGranterGrantsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                             _QueryGranterGrantsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGranterGrantsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGranterGrantsResponse "grants" [Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranterGrantsResponse'grants
           (\ x__ y__ -> x__ {_QueryGranterGrantsResponse'grants = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGranterGrantsResponse "vec'grants" (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranterGrantsResponse'grants
           (\ x__ y__ -> x__ {_QueryGranterGrantsResponse'grants = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGranterGrantsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranterGrantsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGranterGrantsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGranterGrantsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGranterGrantsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGranterGrantsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGranterGrantsResponse where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.QueryGranterGrantsResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryGranterGrantsResponse\DC2@\n\
      \\ACKgrants\CAN\SOH \ETX(\v2(.cosmos.authz.v1beta1.GrantAuthorizationR\ACKgrants\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grants__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grants"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"grants")) ::
              Data.ProtoLens.FieldDescriptor QueryGranterGrantsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGranterGrantsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grants__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGranterGrantsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGranterGrantsResponse'_unknownFields = y__})
  defMessage
    = QueryGranterGrantsResponse'_constructor
        {_QueryGranterGrantsResponse'grants = Data.Vector.Generic.empty,
         _QueryGranterGrantsResponse'pagination = Prelude.Nothing,
         _QueryGranterGrantsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGranterGrantsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGranterGrantsResponse
        loop x mutable'grants
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'grants <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'grants)
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
                              (Data.ProtoLens.Field.field @"vec'grants") frozen'grants x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "grants"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'grants y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'grants
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'grants
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'grants <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'grants)
          "QueryGranterGrantsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'grants") _x))
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
instance Control.DeepSeq.NFData QueryGranterGrantsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGranterGrantsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGranterGrantsResponse'grants x__)
                (Control.DeepSeq.deepseq
                   (_QueryGranterGrantsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.granter' @:: Lens' QueryGrantsRequest Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.grantee' @:: Lens' QueryGrantsRequest Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.msgTypeUrl' @:: Lens' QueryGrantsRequest Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.pagination' @:: Lens' QueryGrantsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryGrantsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGrantsRequest
  = QueryGrantsRequest'_constructor {_QueryGrantsRequest'granter :: !Data.Text.Text,
                                     _QueryGrantsRequest'grantee :: !Data.Text.Text,
                                     _QueryGrantsRequest'msgTypeUrl :: !Data.Text.Text,
                                     _QueryGrantsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                     _QueryGrantsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGrantsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGrantsRequest "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsRequest'granter
           (\ x__ y__ -> x__ {_QueryGrantsRequest'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGrantsRequest "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsRequest'grantee
           (\ x__ y__ -> x__ {_QueryGrantsRequest'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGrantsRequest "msgTypeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsRequest'msgTypeUrl
           (\ x__ y__ -> x__ {_QueryGrantsRequest'msgTypeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGrantsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGrantsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGrantsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGrantsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGrantsRequest where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.QueryGrantsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryGrantsRequest\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2 \n\
      \\fmsg_type_url\CAN\ETX \SOH(\tR\n\
      \msgTypeUrl\DC2F\n\
      \\n\
      \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor QueryGrantsRequest
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor QueryGrantsRequest
        msgTypeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"msgTypeUrl")) ::
              Data.ProtoLens.FieldDescriptor QueryGrantsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGrantsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor),
           (Data.ProtoLens.Tag 3, msgTypeUrl__field_descriptor),
           (Data.ProtoLens.Tag 4, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGrantsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryGrantsRequest'_unknownFields = y__})
  defMessage
    = QueryGrantsRequest'_constructor
        {_QueryGrantsRequest'granter = Data.ProtoLens.fieldDefault,
         _QueryGrantsRequest'grantee = Data.ProtoLens.fieldDefault,
         _QueryGrantsRequest'msgTypeUrl = Data.ProtoLens.fieldDefault,
         _QueryGrantsRequest'pagination = Prelude.Nothing,
         _QueryGrantsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGrantsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGrantsRequest
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
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
                                       "msg_type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"msgTypeUrl") y x)
                        34
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
          (do loop Data.ProtoLens.defMessage) "QueryGrantsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"msgTypeUrl") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData QueryGrantsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGrantsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGrantsRequest'granter x__)
                (Control.DeepSeq.deepseq
                   (_QueryGrantsRequest'grantee x__)
                   (Control.DeepSeq.deepseq
                      (_QueryGrantsRequest'msgTypeUrl x__)
                      (Control.DeepSeq.deepseq
                         (_QueryGrantsRequest'pagination x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.grants' @:: Lens' QueryGrantsResponse [Proto.Cosmos.Authz.V1beta1.Authz.Grant]@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.vec'grants' @:: Lens' QueryGrantsResponse (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.Grant)@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.pagination' @:: Lens' QueryGrantsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Authz.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryGrantsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGrantsResponse
  = QueryGrantsResponse'_constructor {_QueryGrantsResponse'grants :: !(Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.Grant),
                                      _QueryGrantsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                      _QueryGrantsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGrantsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGrantsResponse "grants" [Proto.Cosmos.Authz.V1beta1.Authz.Grant] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsResponse'grants
           (\ x__ y__ -> x__ {_QueryGrantsResponse'grants = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGrantsResponse "vec'grants" (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.Grant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsResponse'grants
           (\ x__ y__ -> x__ {_QueryGrantsResponse'grants = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGrantsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGrantsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGrantsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGrantsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGrantsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGrantsResponse where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.QueryGrantsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryGrantsResponse\DC23\n\
      \\ACKgrants\CAN\SOH \ETX(\v2\ESC.cosmos.authz.v1beta1.GrantR\ACKgrants\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grants__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grants"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Authz.V1beta1.Authz.Grant)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"grants")) ::
              Data.ProtoLens.FieldDescriptor QueryGrantsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGrantsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grants__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGrantsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryGrantsResponse'_unknownFields = y__})
  defMessage
    = QueryGrantsResponse'_constructor
        {_QueryGrantsResponse'grants = Data.Vector.Generic.empty,
         _QueryGrantsResponse'pagination = Prelude.Nothing,
         _QueryGrantsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGrantsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Authz.V1beta1.Authz.Grant
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGrantsResponse
        loop x mutable'grants
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'grants <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'grants)
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
                              (Data.ProtoLens.Field.field @"vec'grants") frozen'grants x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "grants"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'grants y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'grants
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'grants
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'grants <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'grants)
          "QueryGrantsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'grants") _x))
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
instance Control.DeepSeq.NFData QueryGrantsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGrantsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGrantsResponse'grants x__)
                (Control.DeepSeq.deepseq (_QueryGrantsResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.authz.v1beta1"
  type ServiceMethods Query = '["granteeGrants",
                                "granterGrants",
                                "grants"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\131\SOH\n\
      \\ACKGrants\DC2(.cosmos.authz.v1beta1.QueryGrantsRequest\SUB).cosmos.authz.v1beta1.QueryGrantsResponse\"$\130\211\228\147\STX\RS\DC2\FS/cosmos/authz/v1beta1/grants\DC2\170\SOH\n\
      \\rGranterGrants\DC2/.cosmos.authz.v1beta1.QueryGranterGrantsRequest\SUB0.cosmos.authz.v1beta1.QueryGranterGrantsResponse\"6\130\211\228\147\STX0\DC2./cosmos/authz/v1beta1/grants/granter/{granter}\DC2\170\SOH\n\
      \\rGranteeGrants\DC2/.cosmos.authz.v1beta1.QueryGranteeGrantsRequest\SUB0.cosmos.authz.v1beta1.QueryGranteeGrantsResponse\"6\130\211\228\147\STX0\DC2./cosmos/authz/v1beta1/grants/grantee/{grantee}"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "grants" where
  type MethodName Query "grants" = "Grants"
  type MethodInput Query "grants" = QueryGrantsRequest
  type MethodOutput Query "grants" = QueryGrantsResponse
  type MethodStreamingType Query "grants" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "granterGrants" where
  type MethodName Query "granterGrants" = "GranterGrants"
  type MethodInput Query "granterGrants" = QueryGranterGrantsRequest
  type MethodOutput Query "granterGrants" = QueryGranterGrantsResponse
  type MethodStreamingType Query "granterGrants" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "granteeGrants" where
  type MethodName Query "granteeGrants" = "GranteeGrants"
  type MethodInput Query "granteeGrants" = QueryGranteeGrantsRequest
  type MethodOutput Query "granteeGrants" = QueryGranteeGrantsResponse
  type MethodStreamingType Query "granteeGrants" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/authz/v1beta1/query.proto\DC2\DC4cosmos.authz.v1beta1\SUB\FSgoogle/api/annotations.proto\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB cosmos/authz/v1beta1/authz.proto\SUB\EMcosmos_proto/cosmos.proto\"\230\SOH\n\
    \\DC2QueryGrantsRequest\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2 \n\
    \\fmsg_type_url\CAN\ETX \SOH(\tR\n\
    \msgTypeUrl\DC2F\n\
    \\n\
    \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\147\SOH\n\
    \\DC3QueryGrantsResponse\DC23\n\
    \\ACKgrants\CAN\SOH \ETX(\v2\ESC.cosmos.authz.v1beta1.GrantR\ACKgrants\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\151\SOH\n\
    \\EMQueryGranterGrantsRequest\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\167\SOH\n\
    \\SUBQueryGranterGrantsResponse\DC2@\n\
    \\ACKgrants\CAN\SOH \ETX(\v2(.cosmos.authz.v1beta1.GrantAuthorizationR\ACKgrants\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\151\SOH\n\
    \\EMQueryGranteeGrantsRequest\DC22\n\
    \\agrantee\CAN\SOH \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\167\SOH\n\
    \\SUBQueryGranteeGrantsResponse\DC2@\n\
    \\ACKgrants\CAN\SOH \ETX(\v2(.cosmos.authz.v1beta1.GrantAuthorizationR\ACKgrants\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\231\ETX\n\
    \\ENQQuery\DC2\131\SOH\n\
    \\ACKGrants\DC2(.cosmos.authz.v1beta1.QueryGrantsRequest\SUB).cosmos.authz.v1beta1.QueryGrantsResponse\"$\130\211\228\147\STX\RS\DC2\FS/cosmos/authz/v1beta1/grants\DC2\170\SOH\n\
    \\rGranterGrants\DC2/.cosmos.authz.v1beta1.QueryGranterGrantsRequest\SUB0.cosmos.authz.v1beta1.QueryGranterGrantsResponse\"6\130\211\228\147\STX0\DC2./cosmos/authz/v1beta1/grants/granter/{granter}\DC2\170\SOH\n\
    \\rGranteeGrants\DC2/.cosmos.authz.v1beta1.QueryGranteeGrantsRequest\SUB0.cosmos.authz.v1beta1.QueryGranteeGrantsResponse\"6\130\211\228\147\STX0\DC2./cosmos/authz/v1beta1/grants/grantee/{grantee}B&Z$github.com/cosmos/cosmos-sdk/x/authzJ\216\SYN\n\
    \\ACK\DC2\EOT\SOH\NULQ\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL*\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL;\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NUL;\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\f\NUL\US\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\f\b\r\n\
    \W\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SO\STX\DLE\ETX\SUBI Returns list of `Authorization`, granted to the grantee by the granter.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SO\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SO\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SO*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SI\EOTB\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\SI\EOTB\n\
    \p\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\NAK\STX\ETB\ETX\SUBb GranterGrants returns list of `GrantAuthorization`, granted by granter.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\NAK\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\NAK\DC4-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\NAK8R\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\SYN\EOTT\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\SYN\EOTT\n\
    \i\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\FS\STX\RS\ETX\SUB[ GranteeGrants returns a list of `GrantAuthorization` by grantee.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\FS\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\FS\DC4-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\FS8R\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\GS\EOTT\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\GS\EOTT\n\
    \U\n\
    \\STX\EOT\NUL\DC2\EOT\"\NUL)\SOH\SUBI QueryGrantsRequest is the request type for the Query/Grants RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\"\b\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX#\STXF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX#\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX#\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX#\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX#\SYND\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\STXF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX$\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX$\SYND\n\
    \`\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX&\STX\SUB\SUBS Optional, msg_type_url, when set, will query only grants matching given msg type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX&\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX&\CAN\EM\n\
    \@\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX(\STX7\SUB3 pagination defines an pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX(\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX((2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX(56\n\
    \_\n\
    \\STX\EOT\SOH\DC2\EOT,\NUL1\SOH\SUBS QueryGrantsResponse is the response type for the Query/Authorizations RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX,\b\ESC\n\
    \Q\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX.\STX\FS\SUBD authorizations is a list of grants granted for grantee by granter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX.\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX.\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX.\SUB\ESC\n\
    \A\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX0\STX8\SUB4 pagination defines an pagination for the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX0\STX(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX0)3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX067\n\
    \c\n\
    \\STX\EOT\STX\DC2\EOT4\NUL9\SOH\SUBW QueryGranterGrantsRequest is the request type for the Query/GranterGrants RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX4\b!\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX5\STXF\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX5\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX5\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX5\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX5\SYND\n\
    \@\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX8\STX7\SUB3 pagination defines an pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX8\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX8(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX856\n\
    \e\n\
    \\STX\EOT\ETX\DC2\EOT<\NULA\SOH\SUBY QueryGranterGrantsResponse is the response type for the Query/GranterGrants RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX<\b\"\n\
    \A\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX>\STX)\SUB4 grants is a list of grants granted by the granter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX>\v\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX>\RS$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX>'(\n\
    \A\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX@\STX8\SUB4 pagination defines an pagination for the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX@\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX@)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX@67\n\
    \b\n\
    \\STX\EOT\EOT\DC2\EOTD\NULI\SOH\SUBV QueryGranteeGrantsRequest is the request type for the Query/IssuedGrants RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXD\b!\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXE\STXF\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXE\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXE\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXE\NAKE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXE\SYND\n\
    \@\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXH\STX7\SUB3 pagination defines an pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXH\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXH(2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXH56\n\
    \e\n\
    \\STX\EOT\ENQ\DC2\EOTL\NULQ\SOH\SUBY QueryGranteeGrantsResponse is the response type for the Query/GranteeGrants RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXL\b\"\n\
    \A\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXN\STX)\SUB4 grants is a list of grants granted to the grantee.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXN\v\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXN\RS$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXN'(\n\
    \A\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXP\STX8\SUB4 pagination defines an pagination for the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETXP\STX(\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXP)3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXP67b\ACKproto3"