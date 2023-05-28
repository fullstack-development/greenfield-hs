{- This file was auto-generated from cosmos/feegrant/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Feegrant.V1beta1.Query (
        Query(..), QueryAllowanceRequest(), QueryAllowanceResponse(),
        QueryAllowancesByGranterRequest(),
        QueryAllowancesByGranterResponse(), QueryAllowancesRequest(),
        QueryAllowancesResponse()
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
import qualified Proto.Cosmos.Feegrant.V1beta1.Feegrant
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.granter' @:: Lens' QueryAllowanceRequest Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.grantee' @:: Lens' QueryAllowanceRequest Data.Text.Text@ -}
data QueryAllowanceRequest
  = QueryAllowanceRequest'_constructor {_QueryAllowanceRequest'granter :: !Data.Text.Text,
                                        _QueryAllowanceRequest'grantee :: !Data.Text.Text,
                                        _QueryAllowanceRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllowanceRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllowanceRequest "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowanceRequest'granter
           (\ x__ y__ -> x__ {_QueryAllowanceRequest'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllowanceRequest "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowanceRequest'grantee
           (\ x__ y__ -> x__ {_QueryAllowanceRequest'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllowanceRequest where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.QueryAllowanceRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryAllowanceRequest\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor QueryAllowanceRequest
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowanceRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllowanceRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllowanceRequest'_unknownFields = y__})
  defMessage
    = QueryAllowanceRequest'_constructor
        {_QueryAllowanceRequest'granter = Data.ProtoLens.fieldDefault,
         _QueryAllowanceRequest'grantee = Data.ProtoLens.fieldDefault,
         _QueryAllowanceRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllowanceRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllowanceRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAllowanceRequest"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryAllowanceRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllowanceRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllowanceRequest'granter x__)
                (Control.DeepSeq.deepseq (_QueryAllowanceRequest'grantee x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.allowance' @:: Lens' QueryAllowanceResponse Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.maybe'allowance' @:: Lens' QueryAllowanceResponse (Prelude.Maybe Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant)@ -}
data QueryAllowanceResponse
  = QueryAllowanceResponse'_constructor {_QueryAllowanceResponse'allowance :: !(Prelude.Maybe Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant),
                                         _QueryAllowanceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllowanceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllowanceResponse "allowance" Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowanceResponse'allowance
           (\ x__ y__ -> x__ {_QueryAllowanceResponse'allowance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllowanceResponse "maybe'allowance" (Prelude.Maybe Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowanceResponse'allowance
           (\ x__ y__ -> x__ {_QueryAllowanceResponse'allowance = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllowanceResponse where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.QueryAllowanceResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryAllowanceResponse\DC2<\n\
      \\tallowance\CAN\SOH \SOH(\v2\RS.cosmos.feegrant.v1beta1.GrantR\tallowance"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowance")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowanceResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllowanceResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllowanceResponse'_unknownFields = y__})
  defMessage
    = QueryAllowanceResponse'_constructor
        {_QueryAllowanceResponse'allowance = Prelude.Nothing,
         _QueryAllowanceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllowanceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllowanceResponse
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
                                       "allowance"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allowance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAllowanceResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'allowance") _x
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
instance Control.DeepSeq.NFData QueryAllowanceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllowanceResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllowanceResponse'allowance x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.granter' @:: Lens' QueryAllowancesByGranterRequest Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllowancesByGranterRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllowancesByGranterRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAllowancesByGranterRequest
  = QueryAllowancesByGranterRequest'_constructor {_QueryAllowancesByGranterRequest'granter :: !Data.Text.Text,
                                                  _QueryAllowancesByGranterRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                  _QueryAllowancesByGranterRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllowancesByGranterRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllowancesByGranterRequest "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesByGranterRequest'granter
           (\ x__ y__
              -> x__ {_QueryAllowancesByGranterRequest'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllowancesByGranterRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesByGranterRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllowancesByGranterRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllowancesByGranterRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesByGranterRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllowancesByGranterRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllowancesByGranterRequest where
  messageName _
    = Data.Text.pack
        "cosmos.feegrant.v1beta1.QueryAllowancesByGranterRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryAllowancesByGranterRequest\DC22\n\
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
              Data.ProtoLens.FieldDescriptor QueryAllowancesByGranterRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowancesByGranterRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllowancesByGranterRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllowancesByGranterRequest'_unknownFields = y__})
  defMessage
    = QueryAllowancesByGranterRequest'_constructor
        {_QueryAllowancesByGranterRequest'granter = Data.ProtoLens.fieldDefault,
         _QueryAllowancesByGranterRequest'pagination = Prelude.Nothing,
         _QueryAllowancesByGranterRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllowancesByGranterRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllowancesByGranterRequest
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
          (do loop Data.ProtoLens.defMessage)
          "QueryAllowancesByGranterRequest"
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
instance Control.DeepSeq.NFData QueryAllowancesByGranterRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllowancesByGranterRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllowancesByGranterRequest'granter x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllowancesByGranterRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.allowances' @:: Lens' QueryAllowancesByGranterResponse [Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant]@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.vec'allowances' @:: Lens' QueryAllowancesByGranterResponse (Data.Vector.Vector Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllowancesByGranterResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllowancesByGranterResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllowancesByGranterResponse
  = QueryAllowancesByGranterResponse'_constructor {_QueryAllowancesByGranterResponse'allowances :: !(Data.Vector.Vector Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant),
                                                   _QueryAllowancesByGranterResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                   _QueryAllowancesByGranterResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllowancesByGranterResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllowancesByGranterResponse "allowances" [Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesByGranterResponse'allowances
           (\ x__ y__
              -> x__ {_QueryAllowancesByGranterResponse'allowances = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllowancesByGranterResponse "vec'allowances" (Data.Vector.Vector Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesByGranterResponse'allowances
           (\ x__ y__
              -> x__ {_QueryAllowancesByGranterResponse'allowances = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllowancesByGranterResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesByGranterResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllowancesByGranterResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllowancesByGranterResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesByGranterResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllowancesByGranterResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllowancesByGranterResponse where
  messageName _
    = Data.Text.pack
        "cosmos.feegrant.v1beta1.QueryAllowancesByGranterResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryAllowancesByGranterResponse\DC2>\n\
      \\n\
      \allowances\CAN\SOH \ETX(\v2\RS.cosmos.feegrant.v1beta1.GrantR\n\
      \allowances\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowances__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowances"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"allowances")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowancesByGranterResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowancesByGranterResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowances__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllowancesByGranterResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllowancesByGranterResponse'_unknownFields = y__})
  defMessage
    = QueryAllowancesByGranterResponse'_constructor
        {_QueryAllowancesByGranterResponse'allowances = Data.Vector.Generic.empty,
         _QueryAllowancesByGranterResponse'pagination = Prelude.Nothing,
         _QueryAllowancesByGranterResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllowancesByGranterResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllowancesByGranterResponse
        loop x mutable'allowances
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'allowances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'allowances)
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
                              (Data.ProtoLens.Field.field @"vec'allowances") frozen'allowances
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
                                        "allowances"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'allowances y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'allowances
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'allowances
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'allowances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'allowances)
          "QueryAllowancesByGranterResponse"
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
                   (Data.ProtoLens.Field.field @"vec'allowances") _x))
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
instance Control.DeepSeq.NFData QueryAllowancesByGranterResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllowancesByGranterResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllowancesByGranterResponse'allowances x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllowancesByGranterResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.grantee' @:: Lens' QueryAllowancesRequest Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllowancesRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllowancesRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAllowancesRequest
  = QueryAllowancesRequest'_constructor {_QueryAllowancesRequest'grantee :: !Data.Text.Text,
                                         _QueryAllowancesRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                         _QueryAllowancesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllowancesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllowancesRequest "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesRequest'grantee
           (\ x__ y__ -> x__ {_QueryAllowancesRequest'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllowancesRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllowancesRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllowancesRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllowancesRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllowancesRequest where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.QueryAllowancesRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryAllowancesRequest\DC22\n\
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
              Data.ProtoLens.FieldDescriptor QueryAllowancesRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowancesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grantee__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllowancesRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllowancesRequest'_unknownFields = y__})
  defMessage
    = QueryAllowancesRequest'_constructor
        {_QueryAllowancesRequest'grantee = Data.ProtoLens.fieldDefault,
         _QueryAllowancesRequest'pagination = Prelude.Nothing,
         _QueryAllowancesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllowancesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllowancesRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAllowancesRequest"
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
instance Control.DeepSeq.NFData QueryAllowancesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllowancesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllowancesRequest'grantee x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllowancesRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.allowances' @:: Lens' QueryAllowancesResponse [Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant]@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.vec'allowances' @:: Lens' QueryAllowancesResponse (Data.Vector.Vector Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllowancesResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Feegrant.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllowancesResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllowancesResponse
  = QueryAllowancesResponse'_constructor {_QueryAllowancesResponse'allowances :: !(Data.Vector.Vector Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant),
                                          _QueryAllowancesResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                          _QueryAllowancesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllowancesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllowancesResponse "allowances" [Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesResponse'allowances
           (\ x__ y__ -> x__ {_QueryAllowancesResponse'allowances = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllowancesResponse "vec'allowances" (Data.Vector.Vector Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesResponse'allowances
           (\ x__ y__ -> x__ {_QueryAllowancesResponse'allowances = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllowancesResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesResponse'pagination
           (\ x__ y__ -> x__ {_QueryAllowancesResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllowancesResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllowancesResponse'pagination
           (\ x__ y__ -> x__ {_QueryAllowancesResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllowancesResponse where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.QueryAllowancesResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryAllowancesResponse\DC2>\n\
      \\n\
      \allowances\CAN\SOH \ETX(\v2\RS.cosmos.feegrant.v1beta1.GrantR\n\
      \allowances\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowances__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowances"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"allowances")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowancesResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllowancesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowances__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllowancesResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllowancesResponse'_unknownFields = y__})
  defMessage
    = QueryAllowancesResponse'_constructor
        {_QueryAllowancesResponse'allowances = Data.Vector.Generic.empty,
         _QueryAllowancesResponse'pagination = Prelude.Nothing,
         _QueryAllowancesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllowancesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Feegrant.V1beta1.Feegrant.Grant
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllowancesResponse
        loop x mutable'allowances
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'allowances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'allowances)
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
                              (Data.ProtoLens.Field.field @"vec'allowances") frozen'allowances
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
                                        "allowances"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'allowances y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'allowances
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'allowances
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'allowances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'allowances)
          "QueryAllowancesResponse"
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
                   (Data.ProtoLens.Field.field @"vec'allowances") _x))
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
instance Control.DeepSeq.NFData QueryAllowancesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllowancesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllowancesResponse'allowances x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllowancesResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.feegrant.v1beta1"
  type ServiceMethods Query = '["allowance",
                                "allowances",
                                "allowancesByGranter"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\172\SOH\n\
      \\tAllowance\DC2..cosmos.feegrant.v1beta1.QueryAllowanceRequest\SUB/.cosmos.feegrant.v1beta1.QueryAllowanceResponse\">\130\211\228\147\STX8\DC26/cosmos/feegrant/v1beta1/allowance/{granter}/{grantee}\DC2\166\SOH\n\
      \\n\
      \Allowances\DC2/.cosmos.feegrant.v1beta1.QueryAllowancesRequest\SUB0.cosmos.feegrant.v1beta1.QueryAllowancesResponse\"5\130\211\228\147\STX/\DC2-/cosmos/feegrant/v1beta1/allowances/{grantee}\DC2\189\SOH\n\
      \\DC3AllowancesByGranter\DC28.cosmos.feegrant.v1beta1.QueryAllowancesByGranterRequest\SUB9.cosmos.feegrant.v1beta1.QueryAllowancesByGranterResponse\"1\130\211\228\147\STX+\DC2)/cosmos/feegrant/v1beta1/issued/{granter}"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "allowance" where
  type MethodName Query "allowance" = "Allowance"
  type MethodInput Query "allowance" = QueryAllowanceRequest
  type MethodOutput Query "allowance" = QueryAllowanceResponse
  type MethodStreamingType Query "allowance" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "allowances" where
  type MethodName Query "allowances" = "Allowances"
  type MethodInput Query "allowances" = QueryAllowancesRequest
  type MethodOutput Query "allowances" = QueryAllowancesResponse
  type MethodStreamingType Query "allowances" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "allowancesByGranter" where
  type MethodName Query "allowancesByGranter" = "AllowancesByGranter"
  type MethodInput Query "allowancesByGranter" = QueryAllowancesByGranterRequest
  type MethodOutput Query "allowancesByGranter" = QueryAllowancesByGranterResponse
  type MethodStreamingType Query "allowancesByGranter" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#cosmos/feegrant/v1beta1/query.proto\DC2\ETBcosmos.feegrant.v1beta1\SUB&cosmos/feegrant/v1beta1/feegrant.proto\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\FSgoogle/api/annotations.proto\SUB\EMcosmos_proto/cosmos.proto\"\DEL\n\
    \\NAKQueryAllowanceRequest\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\"V\n\
    \\SYNQueryAllowanceResponse\DC2<\n\
    \\tallowance\CAN\SOH \SOH(\v2\RS.cosmos.feegrant.v1beta1.GrantR\tallowance\"\148\SOH\n\
    \\SYNQueryAllowancesRequest\DC22\n\
    \\agrantee\CAN\SOH \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\162\SOH\n\
    \\ETBQueryAllowancesResponse\DC2>\n\
    \\n\
    \allowances\CAN\SOH \ETX(\v2\RS.cosmos.feegrant.v1beta1.GrantR\n\
    \allowances\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\157\SOH\n\
    \\USQueryAllowancesByGranterRequest\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\171\SOH\n\
    \ QueryAllowancesByGranterResponse\DC2>\n\
    \\n\
    \allowances\CAN\SOH \ETX(\v2\RS.cosmos.feegrant.v1beta1.GrantR\n\
    \allowances\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\159\EOT\n\
    \\ENQQuery\DC2\172\SOH\n\
    \\tAllowance\DC2..cosmos.feegrant.v1beta1.QueryAllowanceRequest\SUB/.cosmos.feegrant.v1beta1.QueryAllowanceResponse\">\130\211\228\147\STX8\DC26/cosmos/feegrant/v1beta1/allowance/{granter}/{grantee}\DC2\166\SOH\n\
    \\n\
    \Allowances\DC2/.cosmos.feegrant.v1beta1.QueryAllowancesRequest\SUB0.cosmos.feegrant.v1beta1.QueryAllowancesResponse\"5\130\211\228\147\STX/\DC2-/cosmos/feegrant/v1beta1/allowances/{grantee}\DC2\189\SOH\n\
    \\DC3AllowancesByGranter\DC28.cosmos.feegrant.v1beta1.QueryAllowancesByGranterRequest\SUB9.cosmos.feegrant.v1beta1.QueryAllowancesByGranterResponse\"1\130\211\228\147\STX+\DC2)/cosmos/feegrant/v1beta1/issued/{granter}B\EMZ\ETBcosmossdk.io/x/feegrantJ\141\NAK\n\
    \\ACK\DC2\EOT\SOH\NULS\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL0\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL.\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NUL.\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\f\NUL\RS\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\f\b\r\n\
    \L\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SI\STX\DC1\ETX\SUB> Allowance returns fee granted to the grantee by the granter.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SI\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SI\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SI0F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DLE\EOT\\\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DLE\EOT\\\n\
    \>\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC4\STX\SYN\ETX\SUB0 Allowances returns all the grants for address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC4\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC4\DC1'\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC42I\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\NAK\EOTS\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\NAK\EOTS\n\
    \g\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\ESC\STX\GS\ETX\SUBY AllowancesByGranter returns all the grants given by an address\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\ESC\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\ESC\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\ESCDd\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\FS\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\FS\EOTO\n\
    \[\n\
    \\STX\EOT\NUL\DC2\EOT!\NUL'\SOH\SUBO QueryAllowanceRequest is the request type for the Query/Allowance RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX!\b\GS\n\
    \W\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX#\STXF\SUBJ granter is the address of the user granting an allowance of their funds.\n\
    \\n\
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
    \e\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX&\STXF\SUBX grantee is the address of the user being granted an allowance of another user's funds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX&\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX&\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX&\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX&\SYND\n\
    \]\n\
    \\STX\EOT\SOH\DC2\EOT*\NUL-\SOH\SUBQ QueryAllowanceResponse is the response type for the Query/Allowance RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX*\b\RS\n\
    \G\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX,\STX.\SUB: allowance is a allowance granted for grantee by granter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX,\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX, )\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX,,-\n\
    \]\n\
    \\STX\EOT\STX\DC2\EOT0\NUL5\SOH\SUBQ QueryAllowancesRequest is the request type for the Query/Allowances RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX0\b\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX1\STXF\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX1\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX1\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX1\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX1\SYND\n\
    \@\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX4\STX7\SUB3 pagination defines an pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX4\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX4(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX456\n\
    \_\n\
    \\STX\EOT\ETX\DC2\EOT8\NUL>\SOH\SUBS QueryAllowancesResponse is the response type for the Query/Allowances RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX8\b\US\n\
    \I\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX:\STX8\SUB< allowances are allowance's granted for grantee by granter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX:\v(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX:)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX:67\n\
    \A\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX=\STX8\SUB4 pagination defines an pagination for the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX=\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX=)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX=67\n\
    \\136\SOH\n\
    \\STX\EOT\EOT\DC2\EOTC\NULH\SOH\SUB| QueryAllowancesByGranterRequest is the request type for the Query/AllowancesByGranter RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXC\b'\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXD\STXF\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXD\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXD\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXD\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXD\NAKE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXD\SYND\n\
    \@\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXG\STX7\SUB3 pagination defines an pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXG\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXG(2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXG56\n\
    \\138\SOH\n\
    \\STX\EOT\ENQ\DC2\EOTM\NULS\SOH\SUB~ QueryAllowancesByGranterResponse is the response type for the Query/AllowancesByGranter RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXM\b(\n\
    \?\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXO\STX8\SUB2 allowances that have been issued by the granter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXO\v(\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXO)3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXO67\n\
    \A\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXR\STX8\SUB4 pagination defines an pagination for the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETXR\STX(\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXR)3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXR67b\ACKproto3"