{- This file was auto-generated from greenfield/payment/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.Query (
        Query(..), QueryAllAutoSettleRecordRequest(),
        QueryAllAutoSettleRecordResponse(),
        QueryAllPaymentAccountCountRequest(),
        QueryAllPaymentAccountCountResponse(),
        QueryAllPaymentAccountRequest(), QueryAllPaymentAccountResponse(),
        QueryAllStreamRecordRequest(), QueryAllStreamRecordResponse(),
        QueryDynamicBalanceRequest(), QueryDynamicBalanceResponse(),
        QueryGetPaymentAccountCountRequest(),
        QueryGetPaymentAccountCountResponse(),
        QueryGetPaymentAccountRequest(), QueryGetPaymentAccountResponse(),
        QueryGetPaymentAccountsByOwnerRequest(),
        QueryGetPaymentAccountsByOwnerResponse(),
        QueryGetStreamRecordRequest(), QueryGetStreamRecordResponse(),
        QueryParamsRequest(), QueryParamsResponse()
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
import qualified Proto.Greenfield.Payment.AutoSettleRecord
import qualified Proto.Greenfield.Payment.Params
import qualified Proto.Greenfield.Payment.PaymentAccount
import qualified Proto.Greenfield.Payment.PaymentAccountCount
import qualified Proto.Greenfield.Payment.StreamRecord
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllAutoSettleRecordRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllAutoSettleRecordRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAllAutoSettleRecordRequest
  = QueryAllAutoSettleRecordRequest'_constructor {_QueryAllAutoSettleRecordRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                  _QueryAllAutoSettleRecordRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllAutoSettleRecordRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllAutoSettleRecordRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllAutoSettleRecordRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllAutoSettleRecordRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllAutoSettleRecordRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllAutoSettleRecordRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllAutoSettleRecordRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllAutoSettleRecordRequest where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryAllAutoSettleRecordRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryAllAutoSettleRecordRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryAllAutoSettleRecordRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllAutoSettleRecordRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllAutoSettleRecordRequest'_unknownFields = y__})
  defMessage
    = QueryAllAutoSettleRecordRequest'_constructor
        {_QueryAllAutoSettleRecordRequest'pagination = Prelude.Nothing,
         _QueryAllAutoSettleRecordRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllAutoSettleRecordRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllAutoSettleRecordRequest
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
          (do loop Data.ProtoLens.defMessage)
          "QueryAllAutoSettleRecordRequest"
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
instance Control.DeepSeq.NFData QueryAllAutoSettleRecordRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllAutoSettleRecordRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllAutoSettleRecordRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.autoSettleRecord' @:: Lens' QueryAllAutoSettleRecordResponse [Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord]@
         * 'Proto.Greenfield.Payment.Query_Fields.vec'autoSettleRecord' @:: Lens' QueryAllAutoSettleRecordResponse (Data.Vector.Vector Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord)@
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllAutoSettleRecordResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllAutoSettleRecordResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllAutoSettleRecordResponse
  = QueryAllAutoSettleRecordResponse'_constructor {_QueryAllAutoSettleRecordResponse'autoSettleRecord :: !(Data.Vector.Vector Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord),
                                                   _QueryAllAutoSettleRecordResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                   _QueryAllAutoSettleRecordResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllAutoSettleRecordResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllAutoSettleRecordResponse "autoSettleRecord" [Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllAutoSettleRecordResponse'autoSettleRecord
           (\ x__ y__
              -> x__ {_QueryAllAutoSettleRecordResponse'autoSettleRecord = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllAutoSettleRecordResponse "vec'autoSettleRecord" (Data.Vector.Vector Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllAutoSettleRecordResponse'autoSettleRecord
           (\ x__ y__
              -> x__ {_QueryAllAutoSettleRecordResponse'autoSettleRecord = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllAutoSettleRecordResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllAutoSettleRecordResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllAutoSettleRecordResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllAutoSettleRecordResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllAutoSettleRecordResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllAutoSettleRecordResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllAutoSettleRecordResponse where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryAllAutoSettleRecordResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryAllAutoSettleRecordResponse\DC2X\n\
      \\DC2auto_settle_record\CAN\SOH \ETX(\v2$.greenfield.payment.AutoSettleRecordR\DLEautoSettleRecordB\EOT\200\222\US\NUL\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        autoSettleRecord__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auto_settle_record"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"autoSettleRecord")) ::
              Data.ProtoLens.FieldDescriptor QueryAllAutoSettleRecordResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllAutoSettleRecordResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, autoSettleRecord__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllAutoSettleRecordResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllAutoSettleRecordResponse'_unknownFields = y__})
  defMessage
    = QueryAllAutoSettleRecordResponse'_constructor
        {_QueryAllAutoSettleRecordResponse'autoSettleRecord = Data.Vector.Generic.empty,
         _QueryAllAutoSettleRecordResponse'pagination = Prelude.Nothing,
         _QueryAllAutoSettleRecordResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllAutoSettleRecordResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllAutoSettleRecordResponse
        loop x mutable'autoSettleRecord
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'autoSettleRecord <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'autoSettleRecord)
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
                              (Data.ProtoLens.Field.field @"vec'autoSettleRecord")
                              frozen'autoSettleRecord x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "auto_settle_record"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'autoSettleRecord y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'autoSettleRecord
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'autoSettleRecord
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'autoSettleRecord <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'autoSettleRecord)
          "QueryAllAutoSettleRecordResponse"
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
                   (Data.ProtoLens.Field.field @"vec'autoSettleRecord") _x))
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
instance Control.DeepSeq.NFData QueryAllAutoSettleRecordResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllAutoSettleRecordResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllAutoSettleRecordResponse'autoSettleRecord x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllAutoSettleRecordResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllPaymentAccountCountRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllPaymentAccountCountRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAllPaymentAccountCountRequest
  = QueryAllPaymentAccountCountRequest'_constructor {_QueryAllPaymentAccountCountRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                     _QueryAllPaymentAccountCountRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllPaymentAccountCountRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountCountRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountCountRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountCountRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountCountRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountCountRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountCountRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllPaymentAccountCountRequest where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryAllPaymentAccountCountRequest"
  packedMessageDescriptor _
    = "\n\
      \\"QueryAllPaymentAccountCountRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryAllPaymentAccountCountRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllPaymentAccountCountRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllPaymentAccountCountRequest'_unknownFields = y__})
  defMessage
    = QueryAllPaymentAccountCountRequest'_constructor
        {_QueryAllPaymentAccountCountRequest'pagination = Prelude.Nothing,
         _QueryAllPaymentAccountCountRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllPaymentAccountCountRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllPaymentAccountCountRequest
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
          (do loop Data.ProtoLens.defMessage)
          "QueryAllPaymentAccountCountRequest"
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
instance Control.DeepSeq.NFData QueryAllPaymentAccountCountRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllPaymentAccountCountRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllPaymentAccountCountRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.paymentAccountCount' @:: Lens' QueryAllPaymentAccountCountResponse [Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount]@
         * 'Proto.Greenfield.Payment.Query_Fields.vec'paymentAccountCount' @:: Lens' QueryAllPaymentAccountCountResponse (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount)@
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllPaymentAccountCountResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllPaymentAccountCountResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllPaymentAccountCountResponse
  = QueryAllPaymentAccountCountResponse'_constructor {_QueryAllPaymentAccountCountResponse'paymentAccountCount :: !(Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount),
                                                      _QueryAllPaymentAccountCountResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                      _QueryAllPaymentAccountCountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllPaymentAccountCountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountCountResponse "paymentAccountCount" [Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountCountResponse'paymentAccountCount
           (\ x__ y__
              -> x__
                   {_QueryAllPaymentAccountCountResponse'paymentAccountCount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountCountResponse "vec'paymentAccountCount" (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountCountResponse'paymentAccountCount
           (\ x__ y__
              -> x__
                   {_QueryAllPaymentAccountCountResponse'paymentAccountCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountCountResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountCountResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountCountResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountCountResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountCountResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountCountResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllPaymentAccountCountResponse where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryAllPaymentAccountCountResponse"
  packedMessageDescriptor _
    = "\n\
      \#QueryAllPaymentAccountCountResponse\DC2a\n\
      \\NAKpayment_account_count\CAN\SOH \ETX(\v2'.greenfield.payment.PaymentAccountCountR\DC3paymentAccountCountB\EOT\200\222\US\NUL\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        paymentAccountCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_account_count"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"paymentAccountCount")) ::
              Data.ProtoLens.FieldDescriptor QueryAllPaymentAccountCountResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllPaymentAccountCountResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, paymentAccountCount__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllPaymentAccountCountResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllPaymentAccountCountResponse'_unknownFields = y__})
  defMessage
    = QueryAllPaymentAccountCountResponse'_constructor
        {_QueryAllPaymentAccountCountResponse'paymentAccountCount = Data.Vector.Generic.empty,
         _QueryAllPaymentAccountCountResponse'pagination = Prelude.Nothing,
         _QueryAllPaymentAccountCountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllPaymentAccountCountResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllPaymentAccountCountResponse
        loop x mutable'paymentAccountCount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'paymentAccountCount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'paymentAccountCount)
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
                              (Data.ProtoLens.Field.field @"vec'paymentAccountCount")
                              frozen'paymentAccountCount x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "payment_account_count"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'paymentAccountCount y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'paymentAccountCount
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'paymentAccountCount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'paymentAccountCount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'paymentAccountCount)
          "QueryAllPaymentAccountCountResponse"
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
                   (Data.ProtoLens.Field.field @"vec'paymentAccountCount") _x))
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
instance Control.DeepSeq.NFData QueryAllPaymentAccountCountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllPaymentAccountCountResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllPaymentAccountCountResponse'paymentAccountCount x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllPaymentAccountCountResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllPaymentAccountRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllPaymentAccountRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAllPaymentAccountRequest
  = QueryAllPaymentAccountRequest'_constructor {_QueryAllPaymentAccountRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                _QueryAllPaymentAccountRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllPaymentAccountRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountRequest'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllPaymentAccountRequest where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryAllPaymentAccountRequest"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryAllPaymentAccountRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryAllPaymentAccountRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllPaymentAccountRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllPaymentAccountRequest'_unknownFields = y__})
  defMessage
    = QueryAllPaymentAccountRequest'_constructor
        {_QueryAllPaymentAccountRequest'pagination = Prelude.Nothing,
         _QueryAllPaymentAccountRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllPaymentAccountRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllPaymentAccountRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAllPaymentAccountRequest"
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
instance Control.DeepSeq.NFData QueryAllPaymentAccountRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllPaymentAccountRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllPaymentAccountRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.paymentAccount' @:: Lens' QueryAllPaymentAccountResponse [Proto.Greenfield.Payment.PaymentAccount.PaymentAccount]@
         * 'Proto.Greenfield.Payment.Query_Fields.vec'paymentAccount' @:: Lens' QueryAllPaymentAccountResponse (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccount.PaymentAccount)@
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllPaymentAccountResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllPaymentAccountResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllPaymentAccountResponse
  = QueryAllPaymentAccountResponse'_constructor {_QueryAllPaymentAccountResponse'paymentAccount :: !(Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccount.PaymentAccount),
                                                 _QueryAllPaymentAccountResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                 _QueryAllPaymentAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllPaymentAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountResponse "paymentAccount" [Proto.Greenfield.Payment.PaymentAccount.PaymentAccount] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountResponse'paymentAccount
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountResponse'paymentAccount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountResponse "vec'paymentAccount" (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccount.PaymentAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountResponse'paymentAccount
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountResponse'paymentAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllPaymentAccountResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllPaymentAccountResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllPaymentAccountResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllPaymentAccountResponse where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryAllPaymentAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \\RSQueryAllPaymentAccountResponse\DC2Q\n\
      \\SIpayment_account\CAN\SOH \ETX(\v2\".greenfield.payment.PaymentAccountR\SOpaymentAccountB\EOT\200\222\US\NUL\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        paymentAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.PaymentAccount.PaymentAccount)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"paymentAccount")) ::
              Data.ProtoLens.FieldDescriptor QueryAllPaymentAccountResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllPaymentAccountResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, paymentAccount__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllPaymentAccountResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllPaymentAccountResponse'_unknownFields = y__})
  defMessage
    = QueryAllPaymentAccountResponse'_constructor
        {_QueryAllPaymentAccountResponse'paymentAccount = Data.Vector.Generic.empty,
         _QueryAllPaymentAccountResponse'pagination = Prelude.Nothing,
         _QueryAllPaymentAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllPaymentAccountResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.PaymentAccount.PaymentAccount
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllPaymentAccountResponse
        loop x mutable'paymentAccount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'paymentAccount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'paymentAccount)
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
                              (Data.ProtoLens.Field.field @"vec'paymentAccount")
                              frozen'paymentAccount x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "payment_account"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'paymentAccount y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'paymentAccount
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'paymentAccount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'paymentAccount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'paymentAccount)
          "QueryAllPaymentAccountResponse"
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
                   (Data.ProtoLens.Field.field @"vec'paymentAccount") _x))
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
instance Control.DeepSeq.NFData QueryAllPaymentAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllPaymentAccountResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllPaymentAccountResponse'paymentAccount x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllPaymentAccountResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllStreamRecordRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllStreamRecordRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAllStreamRecordRequest
  = QueryAllStreamRecordRequest'_constructor {_QueryAllStreamRecordRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                              _QueryAllStreamRecordRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllStreamRecordRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllStreamRecordRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllStreamRecordRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllStreamRecordRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllStreamRecordRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllStreamRecordRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllStreamRecordRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllStreamRecordRequest where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryAllStreamRecordRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryAllStreamRecordRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryAllStreamRecordRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllStreamRecordRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllStreamRecordRequest'_unknownFields = y__})
  defMessage
    = QueryAllStreamRecordRequest'_constructor
        {_QueryAllStreamRecordRequest'pagination = Prelude.Nothing,
         _QueryAllStreamRecordRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllStreamRecordRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllStreamRecordRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAllStreamRecordRequest"
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
instance Control.DeepSeq.NFData QueryAllStreamRecordRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllStreamRecordRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllStreamRecordRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.streamRecord' @:: Lens' QueryAllStreamRecordResponse [Proto.Greenfield.Payment.StreamRecord.StreamRecord]@
         * 'Proto.Greenfield.Payment.Query_Fields.vec'streamRecord' @:: Lens' QueryAllStreamRecordResponse (Data.Vector.Vector Proto.Greenfield.Payment.StreamRecord.StreamRecord)@
         * 'Proto.Greenfield.Payment.Query_Fields.pagination' @:: Lens' QueryAllStreamRecordResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'pagination' @:: Lens' QueryAllStreamRecordResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllStreamRecordResponse
  = QueryAllStreamRecordResponse'_constructor {_QueryAllStreamRecordResponse'streamRecord :: !(Data.Vector.Vector Proto.Greenfield.Payment.StreamRecord.StreamRecord),
                                               _QueryAllStreamRecordResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                               _QueryAllStreamRecordResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllStreamRecordResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllStreamRecordResponse "streamRecord" [Proto.Greenfield.Payment.StreamRecord.StreamRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllStreamRecordResponse'streamRecord
           (\ x__ y__
              -> x__ {_QueryAllStreamRecordResponse'streamRecord = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllStreamRecordResponse "vec'streamRecord" (Data.Vector.Vector Proto.Greenfield.Payment.StreamRecord.StreamRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllStreamRecordResponse'streamRecord
           (\ x__ y__
              -> x__ {_QueryAllStreamRecordResponse'streamRecord = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllStreamRecordResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllStreamRecordResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllStreamRecordResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllStreamRecordResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllStreamRecordResponse'pagination
           (\ x__ y__
              -> x__ {_QueryAllStreamRecordResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllStreamRecordResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryAllStreamRecordResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryAllStreamRecordResponse\DC2K\n\
      \\rstream_record\CAN\SOH \ETX(\v2 .greenfield.payment.StreamRecordR\fstreamRecordB\EOT\200\222\US\NUL\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        streamRecord__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_record"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.StreamRecord.StreamRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"streamRecord")) ::
              Data.ProtoLens.FieldDescriptor QueryAllStreamRecordResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllStreamRecordResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamRecord__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllStreamRecordResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAllStreamRecordResponse'_unknownFields = y__})
  defMessage
    = QueryAllStreamRecordResponse'_constructor
        {_QueryAllStreamRecordResponse'streamRecord = Data.Vector.Generic.empty,
         _QueryAllStreamRecordResponse'pagination = Prelude.Nothing,
         _QueryAllStreamRecordResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllStreamRecordResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.StreamRecord.StreamRecord
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllStreamRecordResponse
        loop x mutable'streamRecord
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'streamRecord <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'streamRecord)
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
                              (Data.ProtoLens.Field.field @"vec'streamRecord")
                              frozen'streamRecord x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "stream_record"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'streamRecord y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'streamRecord
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'streamRecord
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'streamRecord <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'streamRecord)
          "QueryAllStreamRecordResponse"
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
                   (Data.ProtoLens.Field.field @"vec'streamRecord") _x))
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
instance Control.DeepSeq.NFData QueryAllStreamRecordResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllStreamRecordResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllStreamRecordResponse'streamRecord x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllStreamRecordResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.account' @:: Lens' QueryDynamicBalanceRequest Data.Text.Text@ -}
data QueryDynamicBalanceRequest
  = QueryDynamicBalanceRequest'_constructor {_QueryDynamicBalanceRequest'account :: !Data.Text.Text,
                                             _QueryDynamicBalanceRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDynamicBalanceRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceRequest "account" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceRequest'account
           (\ x__ y__ -> x__ {_QueryDynamicBalanceRequest'account = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDynamicBalanceRequest where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryDynamicBalanceRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryDynamicBalanceRequest\DC2\CAN\n\
      \\aaccount\CAN\SOH \SOH(\tR\aaccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"account")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, account__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDynamicBalanceRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDynamicBalanceRequest'_unknownFields = y__})
  defMessage
    = QueryDynamicBalanceRequest'_constructor
        {_QueryDynamicBalanceRequest'account = Data.ProtoLens.fieldDefault,
         _QueryDynamicBalanceRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDynamicBalanceRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDynamicBalanceRequest
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
                                       "account"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDynamicBalanceRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"account") _x
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
instance Control.DeepSeq.NFData QueryDynamicBalanceRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDynamicBalanceRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDynamicBalanceRequest'account x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.dynamicBalance' @:: Lens' QueryDynamicBalanceResponse Data.Text.Text@
         * 'Proto.Greenfield.Payment.Query_Fields.streamRecord' @:: Lens' QueryDynamicBalanceResponse Proto.Greenfield.Payment.StreamRecord.StreamRecord@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'streamRecord' @:: Lens' QueryDynamicBalanceResponse (Prelude.Maybe Proto.Greenfield.Payment.StreamRecord.StreamRecord)@
         * 'Proto.Greenfield.Payment.Query_Fields.currentTimestamp' @:: Lens' QueryDynamicBalanceResponse Data.Int.Int64@
         * 'Proto.Greenfield.Payment.Query_Fields.bankBalance' @:: Lens' QueryDynamicBalanceResponse Data.Text.Text@
         * 'Proto.Greenfield.Payment.Query_Fields.availableBalance' @:: Lens' QueryDynamicBalanceResponse Data.Text.Text@
         * 'Proto.Greenfield.Payment.Query_Fields.lockedFee' @:: Lens' QueryDynamicBalanceResponse Data.Text.Text@
         * 'Proto.Greenfield.Payment.Query_Fields.changeRate' @:: Lens' QueryDynamicBalanceResponse Data.Text.Text@ -}
data QueryDynamicBalanceResponse
  = QueryDynamicBalanceResponse'_constructor {_QueryDynamicBalanceResponse'dynamicBalance :: !Data.Text.Text,
                                              _QueryDynamicBalanceResponse'streamRecord :: !(Prelude.Maybe Proto.Greenfield.Payment.StreamRecord.StreamRecord),
                                              _QueryDynamicBalanceResponse'currentTimestamp :: !Data.Int.Int64,
                                              _QueryDynamicBalanceResponse'bankBalance :: !Data.Text.Text,
                                              _QueryDynamicBalanceResponse'availableBalance :: !Data.Text.Text,
                                              _QueryDynamicBalanceResponse'lockedFee :: !Data.Text.Text,
                                              _QueryDynamicBalanceResponse'changeRate :: !Data.Text.Text,
                                              _QueryDynamicBalanceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDynamicBalanceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "dynamicBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'dynamicBalance
           (\ x__ y__
              -> x__ {_QueryDynamicBalanceResponse'dynamicBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "streamRecord" Proto.Greenfield.Payment.StreamRecord.StreamRecord where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'streamRecord
           (\ x__ y__
              -> x__ {_QueryDynamicBalanceResponse'streamRecord = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "maybe'streamRecord" (Prelude.Maybe Proto.Greenfield.Payment.StreamRecord.StreamRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'streamRecord
           (\ x__ y__
              -> x__ {_QueryDynamicBalanceResponse'streamRecord = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "currentTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'currentTimestamp
           (\ x__ y__
              -> x__ {_QueryDynamicBalanceResponse'currentTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "bankBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'bankBalance
           (\ x__ y__
              -> x__ {_QueryDynamicBalanceResponse'bankBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "availableBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'availableBalance
           (\ x__ y__
              -> x__ {_QueryDynamicBalanceResponse'availableBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "lockedFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'lockedFee
           (\ x__ y__ -> x__ {_QueryDynamicBalanceResponse'lockedFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDynamicBalanceResponse "changeRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDynamicBalanceResponse'changeRate
           (\ x__ y__ -> x__ {_QueryDynamicBalanceResponse'changeRate = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDynamicBalanceResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryDynamicBalanceResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryDynamicBalanceResponse\DC2e\n\
      \\SIdynamic_balance\CAN\SOH \SOH(\tR\SOdynamicBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2K\n\
      \\rstream_record\CAN\STX \SOH(\v2 .greenfield.payment.StreamRecordR\fstreamRecordB\EOT\200\222\US\NUL\DC2+\n\
      \\DC1current_timestamp\CAN\ETX \SOH(\ETXR\DLEcurrentTimestamp\DC2_\n\
      \\fbank_balance\CAN\EOT \SOH(\tR\vbankBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2i\n\
      \\DC1available_balance\CAN\ENQ \SOH(\tR\DLEavailableBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2[\n\
      \\n\
      \locked_fee\CAN\ACK \SOH(\tR\tlockedFeeB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2]\n\
      \\vchange_rate\CAN\a \SOH(\tR\n\
      \changeRateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dynamicBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dynamic_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dynamicBalance")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceResponse
        streamRecord__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_record"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.StreamRecord.StreamRecord)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamRecord")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceResponse
        currentTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"currentTimestamp")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceResponse
        bankBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bank_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bankBalance")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceResponse
        availableBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "available_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"availableBalance")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceResponse
        lockedFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locked_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lockedFee")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceResponse
        changeRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "change_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"changeRate")) ::
              Data.ProtoLens.FieldDescriptor QueryDynamicBalanceResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dynamicBalance__field_descriptor),
           (Data.ProtoLens.Tag 2, streamRecord__field_descriptor),
           (Data.ProtoLens.Tag 3, currentTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 4, bankBalance__field_descriptor),
           (Data.ProtoLens.Tag 5, availableBalance__field_descriptor),
           (Data.ProtoLens.Tag 6, lockedFee__field_descriptor),
           (Data.ProtoLens.Tag 7, changeRate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDynamicBalanceResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDynamicBalanceResponse'_unknownFields = y__})
  defMessage
    = QueryDynamicBalanceResponse'_constructor
        {_QueryDynamicBalanceResponse'dynamicBalance = Data.ProtoLens.fieldDefault,
         _QueryDynamicBalanceResponse'streamRecord = Prelude.Nothing,
         _QueryDynamicBalanceResponse'currentTimestamp = Data.ProtoLens.fieldDefault,
         _QueryDynamicBalanceResponse'bankBalance = Data.ProtoLens.fieldDefault,
         _QueryDynamicBalanceResponse'availableBalance = Data.ProtoLens.fieldDefault,
         _QueryDynamicBalanceResponse'lockedFee = Data.ProtoLens.fieldDefault,
         _QueryDynamicBalanceResponse'changeRate = Data.ProtoLens.fieldDefault,
         _QueryDynamicBalanceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDynamicBalanceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDynamicBalanceResponse
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
                                       "dynamic_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dynamicBalance") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stream_record"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamRecord") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "current_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentTimestamp") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bank_balance"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bankBalance") y x)
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
                                       "available_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"availableBalance") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "locked_fee"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lockedFee") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "change_rate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"changeRate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDynamicBalanceResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"dynamicBalance") _x
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
                       (Data.ProtoLens.Field.field @"maybe'streamRecord") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"currentTimestamp") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"bankBalance") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                  (Data.ProtoLens.Field.field @"availableBalance") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"lockedFee") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"changeRate") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData QueryDynamicBalanceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDynamicBalanceResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDynamicBalanceResponse'dynamicBalance x__)
                (Control.DeepSeq.deepseq
                   (_QueryDynamicBalanceResponse'streamRecord x__)
                   (Control.DeepSeq.deepseq
                      (_QueryDynamicBalanceResponse'currentTimestamp x__)
                      (Control.DeepSeq.deepseq
                         (_QueryDynamicBalanceResponse'bankBalance x__)
                         (Control.DeepSeq.deepseq
                            (_QueryDynamicBalanceResponse'availableBalance x__)
                            (Control.DeepSeq.deepseq
                               (_QueryDynamicBalanceResponse'lockedFee x__)
                               (Control.DeepSeq.deepseq
                                  (_QueryDynamicBalanceResponse'changeRate x__) ())))))))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.owner' @:: Lens' QueryGetPaymentAccountCountRequest Data.Text.Text@ -}
data QueryGetPaymentAccountCountRequest
  = QueryGetPaymentAccountCountRequest'_constructor {_QueryGetPaymentAccountCountRequest'owner :: !Data.Text.Text,
                                                     _QueryGetPaymentAccountCountRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetPaymentAccountCountRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountCountRequest "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountCountRequest'owner
           (\ x__ y__
              -> x__ {_QueryGetPaymentAccountCountRequest'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetPaymentAccountCountRequest where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryGetPaymentAccountCountRequest"
  packedMessageDescriptor _
    = "\n\
      \\"QueryGetPaymentAccountCountRequest\DC2\DC4\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQowner"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor QueryGetPaymentAccountCountRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, owner__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetPaymentAccountCountRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGetPaymentAccountCountRequest'_unknownFields = y__})
  defMessage
    = QueryGetPaymentAccountCountRequest'_constructor
        {_QueryGetPaymentAccountCountRequest'owner = Data.ProtoLens.fieldDefault,
         _QueryGetPaymentAccountCountRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetPaymentAccountCountRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetPaymentAccountCountRequest
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetPaymentAccountCountRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
instance Control.DeepSeq.NFData QueryGetPaymentAccountCountRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetPaymentAccountCountRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetPaymentAccountCountRequest'owner x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.paymentAccountCount' @:: Lens' QueryGetPaymentAccountCountResponse Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'paymentAccountCount' @:: Lens' QueryGetPaymentAccountCountResponse (Prelude.Maybe Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount)@ -}
data QueryGetPaymentAccountCountResponse
  = QueryGetPaymentAccountCountResponse'_constructor {_QueryGetPaymentAccountCountResponse'paymentAccountCount :: !(Prelude.Maybe Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount),
                                                      _QueryGetPaymentAccountCountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetPaymentAccountCountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountCountResponse "paymentAccountCount" Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountCountResponse'paymentAccountCount
           (\ x__ y__
              -> x__
                   {_QueryGetPaymentAccountCountResponse'paymentAccountCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountCountResponse "maybe'paymentAccountCount" (Prelude.Maybe Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountCountResponse'paymentAccountCount
           (\ x__ y__
              -> x__
                   {_QueryGetPaymentAccountCountResponse'paymentAccountCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetPaymentAccountCountResponse where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryGetPaymentAccountCountResponse"
  packedMessageDescriptor _
    = "\n\
      \#QueryGetPaymentAccountCountResponse\DC2a\n\
      \\NAKpayment_account_count\CAN\SOH \SOH(\v2'.greenfield.payment.PaymentAccountCountR\DC3paymentAccountCountB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        paymentAccountCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_account_count"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'paymentAccountCount")) ::
              Data.ProtoLens.FieldDescriptor QueryGetPaymentAccountCountResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, paymentAccountCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetPaymentAccountCountResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGetPaymentAccountCountResponse'_unknownFields = y__})
  defMessage
    = QueryGetPaymentAccountCountResponse'_constructor
        {_QueryGetPaymentAccountCountResponse'paymentAccountCount = Prelude.Nothing,
         _QueryGetPaymentAccountCountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetPaymentAccountCountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetPaymentAccountCountResponse
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
                                       "payment_account_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAccountCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetPaymentAccountCountResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'paymentAccountCount") _x
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
instance Control.DeepSeq.NFData QueryGetPaymentAccountCountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetPaymentAccountCountResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetPaymentAccountCountResponse'paymentAccountCount x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.addr' @:: Lens' QueryGetPaymentAccountRequest Data.Text.Text@ -}
data QueryGetPaymentAccountRequest
  = QueryGetPaymentAccountRequest'_constructor {_QueryGetPaymentAccountRequest'addr :: !Data.Text.Text,
                                                _QueryGetPaymentAccountRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetPaymentAccountRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountRequest "addr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountRequest'addr
           (\ x__ y__ -> x__ {_QueryGetPaymentAccountRequest'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetPaymentAccountRequest where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryGetPaymentAccountRequest"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryGetPaymentAccountRequest\DC2\DC2\n\
      \\EOTaddr\CAN\SOH \SOH(\tR\EOTaddr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"addr")) ::
              Data.ProtoLens.FieldDescriptor QueryGetPaymentAccountRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, addr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetPaymentAccountRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGetPaymentAccountRequest'_unknownFields = y__})
  defMessage
    = QueryGetPaymentAccountRequest'_constructor
        {_QueryGetPaymentAccountRequest'addr = Data.ProtoLens.fieldDefault,
         _QueryGetPaymentAccountRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetPaymentAccountRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetPaymentAccountRequest
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
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGetPaymentAccountRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"addr") _x
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
instance Control.DeepSeq.NFData QueryGetPaymentAccountRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetPaymentAccountRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetPaymentAccountRequest'addr x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.paymentAccount' @:: Lens' QueryGetPaymentAccountResponse Proto.Greenfield.Payment.PaymentAccount.PaymentAccount@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'paymentAccount' @:: Lens' QueryGetPaymentAccountResponse (Prelude.Maybe Proto.Greenfield.Payment.PaymentAccount.PaymentAccount)@ -}
data QueryGetPaymentAccountResponse
  = QueryGetPaymentAccountResponse'_constructor {_QueryGetPaymentAccountResponse'paymentAccount :: !(Prelude.Maybe Proto.Greenfield.Payment.PaymentAccount.PaymentAccount),
                                                 _QueryGetPaymentAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetPaymentAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountResponse "paymentAccount" Proto.Greenfield.Payment.PaymentAccount.PaymentAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountResponse'paymentAccount
           (\ x__ y__
              -> x__ {_QueryGetPaymentAccountResponse'paymentAccount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountResponse "maybe'paymentAccount" (Prelude.Maybe Proto.Greenfield.Payment.PaymentAccount.PaymentAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountResponse'paymentAccount
           (\ x__ y__
              -> x__ {_QueryGetPaymentAccountResponse'paymentAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetPaymentAccountResponse where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryGetPaymentAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \\RSQueryGetPaymentAccountResponse\DC2Q\n\
      \\SIpayment_account\CAN\SOH \SOH(\v2\".greenfield.payment.PaymentAccountR\SOpaymentAccountB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        paymentAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.PaymentAccount.PaymentAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'paymentAccount")) ::
              Data.ProtoLens.FieldDescriptor QueryGetPaymentAccountResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, paymentAccount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetPaymentAccountResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGetPaymentAccountResponse'_unknownFields = y__})
  defMessage
    = QueryGetPaymentAccountResponse'_constructor
        {_QueryGetPaymentAccountResponse'paymentAccount = Prelude.Nothing,
         _QueryGetPaymentAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetPaymentAccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetPaymentAccountResponse
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
                                       "payment_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAccount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetPaymentAccountResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'paymentAccount") _x
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
instance Control.DeepSeq.NFData QueryGetPaymentAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetPaymentAccountResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetPaymentAccountResponse'paymentAccount x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.owner' @:: Lens' QueryGetPaymentAccountsByOwnerRequest Data.Text.Text@ -}
data QueryGetPaymentAccountsByOwnerRequest
  = QueryGetPaymentAccountsByOwnerRequest'_constructor {_QueryGetPaymentAccountsByOwnerRequest'owner :: !Data.Text.Text,
                                                        _QueryGetPaymentAccountsByOwnerRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetPaymentAccountsByOwnerRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountsByOwnerRequest "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountsByOwnerRequest'owner
           (\ x__ y__
              -> x__ {_QueryGetPaymentAccountsByOwnerRequest'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetPaymentAccountsByOwnerRequest where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryGetPaymentAccountsByOwnerRequest"
  packedMessageDescriptor _
    = "\n\
      \%QueryGetPaymentAccountsByOwnerRequest\DC2\DC4\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQowner"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor QueryGetPaymentAccountsByOwnerRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, owner__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetPaymentAccountsByOwnerRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryGetPaymentAccountsByOwnerRequest'_unknownFields = y__})
  defMessage
    = QueryGetPaymentAccountsByOwnerRequest'_constructor
        {_QueryGetPaymentAccountsByOwnerRequest'owner = Data.ProtoLens.fieldDefault,
         _QueryGetPaymentAccountsByOwnerRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetPaymentAccountsByOwnerRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetPaymentAccountsByOwnerRequest
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetPaymentAccountsByOwnerRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
instance Control.DeepSeq.NFData QueryGetPaymentAccountsByOwnerRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetPaymentAccountsByOwnerRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetPaymentAccountsByOwnerRequest'owner x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.paymentAccounts' @:: Lens' QueryGetPaymentAccountsByOwnerResponse [Data.Text.Text]@
         * 'Proto.Greenfield.Payment.Query_Fields.vec'paymentAccounts' @:: Lens' QueryGetPaymentAccountsByOwnerResponse (Data.Vector.Vector Data.Text.Text)@ -}
data QueryGetPaymentAccountsByOwnerResponse
  = QueryGetPaymentAccountsByOwnerResponse'_constructor {_QueryGetPaymentAccountsByOwnerResponse'paymentAccounts :: !(Data.Vector.Vector Data.Text.Text),
                                                         _QueryGetPaymentAccountsByOwnerResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetPaymentAccountsByOwnerResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountsByOwnerResponse "paymentAccounts" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountsByOwnerResponse'paymentAccounts
           (\ x__ y__
              -> x__
                   {_QueryGetPaymentAccountsByOwnerResponse'paymentAccounts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGetPaymentAccountsByOwnerResponse "vec'paymentAccounts" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetPaymentAccountsByOwnerResponse'paymentAccounts
           (\ x__ y__
              -> x__
                   {_QueryGetPaymentAccountsByOwnerResponse'paymentAccounts = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetPaymentAccountsByOwnerResponse where
  messageName _
    = Data.Text.pack
        "greenfield.payment.QueryGetPaymentAccountsByOwnerResponse"
  packedMessageDescriptor _
    = "\n\
      \&QueryGetPaymentAccountsByOwnerResponse\DC2(\n\
      \\SIpaymentAccounts\CAN\SOH \ETX(\tR\SIpaymentAccounts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        paymentAccounts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "paymentAccounts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"paymentAccounts")) ::
              Data.ProtoLens.FieldDescriptor QueryGetPaymentAccountsByOwnerResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, paymentAccounts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetPaymentAccountsByOwnerResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryGetPaymentAccountsByOwnerResponse'_unknownFields = y__})
  defMessage
    = QueryGetPaymentAccountsByOwnerResponse'_constructor
        {_QueryGetPaymentAccountsByOwnerResponse'paymentAccounts = Data.Vector.Generic.empty,
         _QueryGetPaymentAccountsByOwnerResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetPaymentAccountsByOwnerResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetPaymentAccountsByOwnerResponse
        loop x mutable'paymentAccounts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'paymentAccounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'paymentAccounts)
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
                              (Data.ProtoLens.Field.field @"vec'paymentAccounts")
                              frozen'paymentAccounts x))
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
                                        "paymentAccounts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'paymentAccounts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'paymentAccounts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'paymentAccounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'paymentAccounts)
          "QueryGetPaymentAccountsByOwnerResponse"
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
                   (Data.ProtoLens.Field.field @"vec'paymentAccounts") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryGetPaymentAccountsByOwnerResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetPaymentAccountsByOwnerResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetPaymentAccountsByOwnerResponse'paymentAccounts x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.account' @:: Lens' QueryGetStreamRecordRequest Data.Text.Text@ -}
data QueryGetStreamRecordRequest
  = QueryGetStreamRecordRequest'_constructor {_QueryGetStreamRecordRequest'account :: !Data.Text.Text,
                                              _QueryGetStreamRecordRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetStreamRecordRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetStreamRecordRequest "account" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetStreamRecordRequest'account
           (\ x__ y__ -> x__ {_QueryGetStreamRecordRequest'account = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetStreamRecordRequest where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryGetStreamRecordRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryGetStreamRecordRequest\DC2\CAN\n\
      \\aaccount\CAN\SOH \SOH(\tR\aaccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"account")) ::
              Data.ProtoLens.FieldDescriptor QueryGetStreamRecordRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, account__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetStreamRecordRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGetStreamRecordRequest'_unknownFields = y__})
  defMessage
    = QueryGetStreamRecordRequest'_constructor
        {_QueryGetStreamRecordRequest'account = Data.ProtoLens.fieldDefault,
         _QueryGetStreamRecordRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetStreamRecordRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetStreamRecordRequest
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
                                       "account"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGetStreamRecordRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"account") _x
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
instance Control.DeepSeq.NFData QueryGetStreamRecordRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetStreamRecordRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetStreamRecordRequest'account x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Query_Fields.streamRecord' @:: Lens' QueryGetStreamRecordResponse Proto.Greenfield.Payment.StreamRecord.StreamRecord@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'streamRecord' @:: Lens' QueryGetStreamRecordResponse (Prelude.Maybe Proto.Greenfield.Payment.StreamRecord.StreamRecord)@ -}
data QueryGetStreamRecordResponse
  = QueryGetStreamRecordResponse'_constructor {_QueryGetStreamRecordResponse'streamRecord :: !(Prelude.Maybe Proto.Greenfield.Payment.StreamRecord.StreamRecord),
                                               _QueryGetStreamRecordResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetStreamRecordResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetStreamRecordResponse "streamRecord" Proto.Greenfield.Payment.StreamRecord.StreamRecord where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetStreamRecordResponse'streamRecord
           (\ x__ y__
              -> x__ {_QueryGetStreamRecordResponse'streamRecord = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGetStreamRecordResponse "maybe'streamRecord" (Prelude.Maybe Proto.Greenfield.Payment.StreamRecord.StreamRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetStreamRecordResponse'streamRecord
           (\ x__ y__
              -> x__ {_QueryGetStreamRecordResponse'streamRecord = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetStreamRecordResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryGetStreamRecordResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryGetStreamRecordResponse\DC2K\n\
      \\rstream_record\CAN\SOH \SOH(\v2 .greenfield.payment.StreamRecordR\fstreamRecordB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        streamRecord__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_record"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.StreamRecord.StreamRecord)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamRecord")) ::
              Data.ProtoLens.FieldDescriptor QueryGetStreamRecordResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamRecord__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetStreamRecordResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGetStreamRecordResponse'_unknownFields = y__})
  defMessage
    = QueryGetStreamRecordResponse'_constructor
        {_QueryGetStreamRecordResponse'streamRecord = Prelude.Nothing,
         _QueryGetStreamRecordResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetStreamRecordResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetStreamRecordResponse
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
                                       "stream_record"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"streamRecord") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGetStreamRecordResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'streamRecord") _x
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
instance Control.DeepSeq.NFData QueryGetStreamRecordResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetStreamRecordResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetStreamRecordResponse'streamRecord x__) ())
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
    = Data.Text.pack "greenfield.payment.QueryParamsRequest"
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
     
         * 'Proto.Greenfield.Payment.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Greenfield.Payment.Params.Params@
         * 'Proto.Greenfield.Payment.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Greenfield.Payment.Params.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Greenfield.Payment.Params.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Greenfield.Payment.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Greenfield.Payment.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC28\n\
      \\ACKparams\CAN\SOH \SOH(\v2\SUB.greenfield.payment.ParamsR\ACKparamsB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.Params.Params)
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
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "greenfield.payment"
  type ServiceMethods Query = '["autoSettleRecordAll",
                                "dynamicBalance",
                                "getPaymentAccountsByOwner",
                                "params",
                                "paymentAccount",
                                "paymentAccountAll",
                                "paymentAccountCount",
                                "paymentAccountCountAll",
                                "streamRecord",
                                "streamRecordAll"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2}\n\
      \\ACKParams\DC2&.greenfield.payment.QueryParamsRequest\SUB'.greenfield.payment.QueryParamsResponse\"\"\130\211\228\147\STX\FS\DC2\SUB/greenfield/payment/params\DC2\166\SOH\n\
      \\fStreamRecord\DC2/.greenfield.payment.QueryGetStreamRecordRequest\SUB0.greenfield.payment.QueryGetStreamRecordResponse\"3\130\211\228\147\STX-\DC2+/greenfield/payment/stream_record/{account}\DC2\159\SOH\n\
      \\SIStreamRecordAll\DC2/.greenfield.payment.QueryAllStreamRecordRequest\SUB0.greenfield.payment.QueryAllStreamRecordResponse\")\130\211\228\147\STX#\DC2!/greenfield/payment/stream_record\DC2\193\SOH\n\
      \\DC3PaymentAccountCount\DC26.greenfield.payment.QueryGetPaymentAccountCountRequest\SUB7.greenfield.payment.QueryGetPaymentAccountCountResponse\"9\130\211\228\147\STX3\DC21/greenfield/payment/payment_account_count/{owner}\DC2\188\SOH\n\
      \\SYNPaymentAccountCountAll\DC26.greenfield.payment.QueryAllPaymentAccountCountRequest\SUB7.greenfield.payment.QueryAllPaymentAccountCountResponse\"1\130\211\228\147\STX+\DC2)/greenfield/payment/payment_account_count\DC2\171\SOH\n\
      \\SOPaymentAccount\DC21.greenfield.payment.QueryGetPaymentAccountRequest\SUB2.greenfield.payment.QueryGetPaymentAccountResponse\"2\130\211\228\147\STX,\DC2*/greenfield/payment/payment_account/{addr}\DC2\167\SOH\n\
      \\DC1PaymentAccountAll\DC21.greenfield.payment.QueryAllPaymentAccountRequest\SUB2.greenfield.payment.QueryAllPaymentAccountResponse\"+\130\211\228\147\STX%\DC2#/greenfield/payment/payment_account\DC2\168\SOH\n\
      \\SODynamicBalance\DC2..greenfield.payment.QueryDynamicBalanceRequest\SUB/.greenfield.payment.QueryDynamicBalanceResponse\"5\130\211\228\147\STX/\DC2-/greenfield/payment/dynamic_balance/{account}\DC2\213\SOH\n\
      \\EMGetPaymentAccountsByOwner\DC29.greenfield.payment.QueryGetPaymentAccountsByOwnerRequest\SUB:.greenfield.payment.QueryGetPaymentAccountsByOwnerResponse\"A\130\211\228\147\STX;\DC29/greenfield/payment/get_payment_accounts_by_owner/{owner}\DC2\176\SOH\n\
      \\DC3AutoSettleRecordAll\DC23.greenfield.payment.QueryAllAutoSettleRecordRequest\SUB4.greenfield.payment.QueryAllAutoSettleRecordResponse\".\130\211\228\147\STX(\DC2&/greenfield/payment/auto_settle_record"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "streamRecord" where
  type MethodName Query "streamRecord" = "StreamRecord"
  type MethodInput Query "streamRecord" = QueryGetStreamRecordRequest
  type MethodOutput Query "streamRecord" = QueryGetStreamRecordResponse
  type MethodStreamingType Query "streamRecord" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "streamRecordAll" where
  type MethodName Query "streamRecordAll" = "StreamRecordAll"
  type MethodInput Query "streamRecordAll" = QueryAllStreamRecordRequest
  type MethodOutput Query "streamRecordAll" = QueryAllStreamRecordResponse
  type MethodStreamingType Query "streamRecordAll" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "paymentAccountCount" where
  type MethodName Query "paymentAccountCount" = "PaymentAccountCount"
  type MethodInput Query "paymentAccountCount" = QueryGetPaymentAccountCountRequest
  type MethodOutput Query "paymentAccountCount" = QueryGetPaymentAccountCountResponse
  type MethodStreamingType Query "paymentAccountCount" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "paymentAccountCountAll" where
  type MethodName Query "paymentAccountCountAll" = "PaymentAccountCountAll"
  type MethodInput Query "paymentAccountCountAll" = QueryAllPaymentAccountCountRequest
  type MethodOutput Query "paymentAccountCountAll" = QueryAllPaymentAccountCountResponse
  type MethodStreamingType Query "paymentAccountCountAll" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "paymentAccount" where
  type MethodName Query "paymentAccount" = "PaymentAccount"
  type MethodInput Query "paymentAccount" = QueryGetPaymentAccountRequest
  type MethodOutput Query "paymentAccount" = QueryGetPaymentAccountResponse
  type MethodStreamingType Query "paymentAccount" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "paymentAccountAll" where
  type MethodName Query "paymentAccountAll" = "PaymentAccountAll"
  type MethodInput Query "paymentAccountAll" = QueryAllPaymentAccountRequest
  type MethodOutput Query "paymentAccountAll" = QueryAllPaymentAccountResponse
  type MethodStreamingType Query "paymentAccountAll" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "dynamicBalance" where
  type MethodName Query "dynamicBalance" = "DynamicBalance"
  type MethodInput Query "dynamicBalance" = QueryDynamicBalanceRequest
  type MethodOutput Query "dynamicBalance" = QueryDynamicBalanceResponse
  type MethodStreamingType Query "dynamicBalance" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "getPaymentAccountsByOwner" where
  type MethodName Query "getPaymentAccountsByOwner" = "GetPaymentAccountsByOwner"
  type MethodInput Query "getPaymentAccountsByOwner" = QueryGetPaymentAccountsByOwnerRequest
  type MethodOutput Query "getPaymentAccountsByOwner" = QueryGetPaymentAccountsByOwnerResponse
  type MethodStreamingType Query "getPaymentAccountsByOwner" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "autoSettleRecordAll" where
  type MethodName Query "autoSettleRecordAll" = "AutoSettleRecordAll"
  type MethodInput Query "autoSettleRecordAll" = QueryAllAutoSettleRecordRequest
  type MethodOutput Query "autoSettleRecordAll" = QueryAllAutoSettleRecordResponse
  type MethodStreamingType Query "autoSettleRecordAll" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSgreenfield/payment/query.proto\DC2\DC2greenfield.payment\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB+greenfield/payment/auto_settle_record.proto\SUB\USgreenfield/payment/params.proto\SUB(greenfield/payment/payment_account.proto\SUB.greenfield/payment/payment_account_count.proto\SUB&greenfield/payment/stream_record.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"O\n\
    \\DC3QueryParamsResponse\DC28\n\
    \\ACKparams\CAN\SOH \SOH(\v2\SUB.greenfield.payment.ParamsR\ACKparamsB\EOT\200\222\US\NUL\"7\n\
    \\ESCQueryGetStreamRecordRequest\DC2\CAN\n\
    \\aaccount\CAN\SOH \SOH(\tR\aaccount\"k\n\
    \\FSQueryGetStreamRecordResponse\DC2K\n\
    \\rstream_record\CAN\SOH \SOH(\v2 .greenfield.payment.StreamRecordR\fstreamRecordB\EOT\200\222\US\NUL\"e\n\
    \\ESCQueryAllStreamRecordRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\180\SOH\n\
    \\FSQueryAllStreamRecordResponse\DC2K\n\
    \\rstream_record\CAN\SOH \ETX(\v2 .greenfield.payment.StreamRecordR\fstreamRecordB\EOT\200\222\US\NUL\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\":\n\
    \\"QueryGetPaymentAccountCountRequest\DC2\DC4\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQowner\"\136\SOH\n\
    \#QueryGetPaymentAccountCountResponse\DC2a\n\
    \\NAKpayment_account_count\CAN\SOH \SOH(\v2'.greenfield.payment.PaymentAccountCountR\DC3paymentAccountCountB\EOT\200\222\US\NUL\"l\n\
    \\"QueryAllPaymentAccountCountRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\209\SOH\n\
    \#QueryAllPaymentAccountCountResponse\DC2a\n\
    \\NAKpayment_account_count\CAN\SOH \ETX(\v2'.greenfield.payment.PaymentAccountCountR\DC3paymentAccountCountB\EOT\200\222\US\NUL\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"3\n\
    \\GSQueryGetPaymentAccountRequest\DC2\DC2\n\
    \\EOTaddr\CAN\SOH \SOH(\tR\EOTaddr\"s\n\
    \\RSQueryGetPaymentAccountResponse\DC2Q\n\
    \\SIpayment_account\CAN\SOH \SOH(\v2\".greenfield.payment.PaymentAccountR\SOpaymentAccountB\EOT\200\222\US\NUL\"g\n\
    \\GSQueryAllPaymentAccountRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\188\SOH\n\
    \\RSQueryAllPaymentAccountResponse\DC2Q\n\
    \\SIpayment_account\CAN\SOH \ETX(\v2\".greenfield.payment.PaymentAccountR\SOpaymentAccountB\EOT\200\222\US\NUL\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"6\n\
    \\SUBQueryDynamicBalanceRequest\DC2\CAN\n\
    \\aaccount\CAN\SOH \SOH(\tR\aaccount\"\134\ENQ\n\
    \\ESCQueryDynamicBalanceResponse\DC2e\n\
    \\SIdynamic_balance\CAN\SOH \SOH(\tR\SOdynamicBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2K\n\
    \\rstream_record\CAN\STX \SOH(\v2 .greenfield.payment.StreamRecordR\fstreamRecordB\EOT\200\222\US\NUL\DC2+\n\
    \\DC1current_timestamp\CAN\ETX \SOH(\ETXR\DLEcurrentTimestamp\DC2_\n\
    \\fbank_balance\CAN\EOT \SOH(\tR\vbankBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2i\n\
    \\DC1available_balance\CAN\ENQ \SOH(\tR\DLEavailableBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2[\n\
    \\n\
    \locked_fee\CAN\ACK \SOH(\tR\tlockedFeeB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2]\n\
    \\vchange_rate\CAN\a \SOH(\tR\n\
    \changeRateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\"=\n\
    \%QueryGetPaymentAccountsByOwnerRequest\DC2\DC4\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQowner\"R\n\
    \&QueryGetPaymentAccountsByOwnerResponse\DC2(\n\
    \\SIpaymentAccounts\CAN\SOH \ETX(\tR\SIpaymentAccounts\"i\n\
    \\USQueryAllAutoSettleRecordRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\197\SOH\n\
    \ QueryAllAutoSettleRecordResponse\DC2X\n\
    \\DC2auto_settle_record\CAN\SOH \ETX(\v2$.greenfield.payment.AutoSettleRecordR\DLEautoSettleRecordB\EOT\200\222\US\NUL\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\226\r\n\
    \\ENQQuery\DC2}\n\
    \\ACKParams\DC2&.greenfield.payment.QueryParamsRequest\SUB'.greenfield.payment.QueryParamsResponse\"\"\130\211\228\147\STX\FS\DC2\SUB/greenfield/payment/params\DC2\166\SOH\n\
    \\fStreamRecord\DC2/.greenfield.payment.QueryGetStreamRecordRequest\SUB0.greenfield.payment.QueryGetStreamRecordResponse\"3\130\211\228\147\STX-\DC2+/greenfield/payment/stream_record/{account}\DC2\159\SOH\n\
    \\SIStreamRecordAll\DC2/.greenfield.payment.QueryAllStreamRecordRequest\SUB0.greenfield.payment.QueryAllStreamRecordResponse\")\130\211\228\147\STX#\DC2!/greenfield/payment/stream_record\DC2\193\SOH\n\
    \\DC3PaymentAccountCount\DC26.greenfield.payment.QueryGetPaymentAccountCountRequest\SUB7.greenfield.payment.QueryGetPaymentAccountCountResponse\"9\130\211\228\147\STX3\DC21/greenfield/payment/payment_account_count/{owner}\DC2\188\SOH\n\
    \\SYNPaymentAccountCountAll\DC26.greenfield.payment.QueryAllPaymentAccountCountRequest\SUB7.greenfield.payment.QueryAllPaymentAccountCountResponse\"1\130\211\228\147\STX+\DC2)/greenfield/payment/payment_account_count\DC2\171\SOH\n\
    \\SOPaymentAccount\DC21.greenfield.payment.QueryGetPaymentAccountRequest\SUB2.greenfield.payment.QueryGetPaymentAccountResponse\"2\130\211\228\147\STX,\DC2*/greenfield/payment/payment_account/{addr}\DC2\167\SOH\n\
    \\DC1PaymentAccountAll\DC21.greenfield.payment.QueryAllPaymentAccountRequest\SUB2.greenfield.payment.QueryAllPaymentAccountResponse\"+\130\211\228\147\STX%\DC2#/greenfield/payment/payment_account\DC2\168\SOH\n\
    \\SODynamicBalance\DC2..greenfield.payment.QueryDynamicBalanceRequest\SUB/.greenfield.payment.QueryDynamicBalanceResponse\"5\130\211\228\147\STX/\DC2-/greenfield/payment/dynamic_balance/{account}\DC2\213\SOH\n\
    \\EMGetPaymentAccountsByOwner\DC29.greenfield.payment.QueryGetPaymentAccountsByOwnerRequest\SUB:.greenfield.payment.QueryGetPaymentAccountsByOwnerResponse\"A\130\211\228\147\STX;\DC29/greenfield/payment/get_payment_accounts_by_owner/{owner}\DC2\176\SOH\n\
    \\DC3AutoSettleRecordAll\DC23.greenfield.payment.QueryAllAutoSettleRecordRequest\SUB4.greenfield.payment.QueryAllAutoSettleRecordResponse\".\130\211\228\147\STX(\DC2&/greenfield/payment/auto_settle_recordB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\189'\n\
    \\a\DC2\ENQ\NUL\NUL\187\SOH\SOH\n\
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
    \\STX\ETX\EOT\DC2\ETX\b\NUL5\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL2\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL8\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\f\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \:\n\
    \\STX\b\v\DC2\ETX\DLE\NULF2/ this line is used by starport scaffolding # 1\n\
    \\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\DC3\NULE\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC3\b\r\n\
    \@\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\NAK\STX\ETB\ETX\SUB2 Parameters queries the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\NAK\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\NAK\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\NAK*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SYN\EOT@\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\SYN\EOT@\n\
    \0\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\SUB\STX\FS\ETX\SUB\" Queries a StreamRecord by index.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\SUB\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\SUB\DC3.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\SUB9U\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\ESC\EOTQ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\ESC\EOTQ\n\
    \5\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\US\STX!\ETX\SUB' Queries a list of StreamRecord items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\US\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\US\SYN1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\US<X\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX \EOTG\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX \EOTG\n\
    \7\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT$\STX&\ETX\SUB) Queries a PaymentAccountCount by index.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX$\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX$\SUB<\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX$Gj\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX%\EOTW\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX%\EOTW\n\
    \<\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT)\STX+\ETX\SUB. Queries a list of PaymentAccountCount items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX)\ACK\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX)\GS?\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX)Jm\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX*\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX*\EOTO\n\
    \2\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT.\STX0\ETX\SUB$ Queries a PaymentAccount by index.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX.\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX.\NAK2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX.=[\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX/\EOTP\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX/\EOTP\n\
    \7\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT3\STX5\ETX\SUB) Queries a list of PaymentAccount items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX3\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX3\CAN5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX3@^\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX4\EOTI\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX4\EOTI\n\
    \7\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT8\STX:\ETX\SUB) Queries a list of DynamicBalance items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX8\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX8\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX8:U\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETX9\EOTS\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\ETX9\EOTS\n\
    \B\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOT=\STX?\ETX\SUB4 Queries a list of GetPaymentAccountsByOwner items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX=\ACK\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX= E\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX=Pv\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETX>\EOT_\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\ETX>\EOT_\n\
    \9\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOTB\STXD\ETX\SUB+ Queries a list of AutoSettleRecord items.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETXB\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETXB\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETXBDd\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXC\EOTL\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\t\EOT\176\202\188\"\STX\DC2\ETXC\EOTL\n\
    \P\n\
    \\STX\EOT\NUL\DC2\ETXH\NUL\GS\SUBE QueryParamsRequest is request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXH\b\SUB\n\
    \S\n\
    \\STX\EOT\SOH\DC2\EOTK\NULN\SOH\SUBG QueryParamsResponse is response type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXK\b\ESC\n\
    \>\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXM\STX3\SUB1 params holds all the parameters of this module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXM\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXM\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXM\DC42\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETXM\NAK1\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTP\NULR\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXP\b#\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXQ\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXQ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXQ\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXQ\DC3\DC4\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTT\NULV\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXT\b$\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXU\STX@\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXU\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXU\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXU\US \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXU!?\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETXU\">\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTX\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXX\b#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXY\STX7\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXY\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXY(2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXY56\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT\\\NUL_\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX\\\b$\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX]\STXI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX]\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX]\CAN%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX]()\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETX]*H\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\ETX]+G\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX^\STX8\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX^\STX(\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX^)3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX^67\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTa\NULc\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXa\b*\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXb\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXb\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXb\DC1\DC2\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOTe\NULg\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXe\b+\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXf\STXO\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXf\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXf\SYN+\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXf./\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\ETXf0N\n\
    \\SI\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\ETXf1M\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTi\NULk\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXi\b*\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXj\STX7\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETXj\STX'\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXj(2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXj56\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTm\NULp\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXm\b+\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXn\STXX\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETXn\v\RS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXn\US4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXn78\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\ETXn9W\n\
    \\SI\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\ETXn:V\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXo\STX8\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETXo\STX(\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXo)3\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXo67\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOTr\NULt\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXr\b%\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXs\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXs\STX\b\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXs\t\r\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXs\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOTv\NULx\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXv\b&\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXw\STXD\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\ETXw\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXw\DC1 \n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXw#$\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\ETXw%C\n\
    \\SI\n\
    \\b\EOT\v\STX\NUL\b\233\251\ETX\DC2\ETXw&B\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOTz\NUL|\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXz\b%\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETX{\STX7\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\ETX{\STX'\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETX{(2\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETX{56\n\
    \\v\n\
    \\STX\EOT\r\DC2\ENQ~\NUL\129\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETX~\b&\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETX\DEL\STXM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\ETX\DEL\v\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETX\DEL\SUB)\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETX\DEL,-\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\ETX\DEL.L\n\
    \\SI\n\
    \\b\EOT\r\STX\NUL\b\233\251\ETX\DC2\ETX\DEL/K\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\128\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\128\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\128\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\128\SOH67\n\
    \\f\n\
    \\STX\EOT\SO\DC2\ACK\131\SOH\NUL\133\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\131\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\132\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\132\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\132\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\132\SOH\DC3\DC4\n\
    \\f\n\
    \\STX\EOT\SI\DC2\ACK\135\SOH\NUL\170\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\135\SOH\b#\n\
    \?\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ACK\137\SOH\STX\141\SOH\EOT\SUB/ dynamic balance is static balance + flowDelta\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\137\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\137\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\137\SOH\ESC\FS\n\
    \\SI\n\
    \\ENQ\EOT\SI\STX\NUL\b\DC2\ACK\137\SOH\GS\141\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\202\214\ENQ\DC2\EOT\138\SOH\EOT(\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\235\251\ETX\DC2\EOT\139\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\233\251\ETX\DC2\EOT\140\SOH\EOT \n\
    \g\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\143\SOH\STX@\SUBY the stream record of the given account, if it does not exist, it will be default values\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\143\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\143\SOH\SI\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\143\SOH\US \n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\b\DC2\EOT\143\SOH!?\n\
    \\DLE\n\
    \\b\EOT\SI\STX\SOH\b\233\251\ETX\DC2\EOT\143\SOH\">\n\
    \2\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\145\SOH\STX\RS\SUB$ the timestamp of the current block\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\145\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\145\SOH\b\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\145\SOH\FS\GS\n\
    \D\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ACK\147\SOH\STX\151\SOH\EOT\SUB4 bank_balance is the BNB balance of the bank module\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\147\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\147\SOH\CAN\EM\n\
    \\SI\n\
    \\ENQ\EOT\SI\STX\ETX\b\DC2\ACK\147\SOH\SUB\151\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ETX\b\202\214\ENQ\DC2\EOT\148\SOH\EOT(\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ETX\b\235\251\ETX\DC2\EOT\149\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ETX\b\233\251\ETX\DC2\EOT\150\SOH\EOT \n\
    \D\n\
    \\EOT\EOT\SI\STX\EOT\DC2\ACK\153\SOH\STX\157\SOH\EOT\SUB4 available_balance is bank balance + static balance\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\EOT\153\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\153\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\153\SOH\GS\RS\n\
    \\SI\n\
    \\ENQ\EOT\SI\STX\EOT\b\DC2\ACK\153\SOH\US\157\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\SI\STX\EOT\b\202\214\ENQ\DC2\EOT\154\SOH\EOT(\n\
    \\DLE\n\
    \\b\EOT\SI\STX\EOT\b\235\251\ETX\DC2\EOT\155\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\SI\STX\EOT\b\233\251\ETX\DC2\EOT\156\SOH\EOT \n\
    \?\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\ACK\159\SOH\STX\163\SOH\EOT\SUB/ locked_fee is buffer balance + locked balance\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ENQ\DC2\EOT\159\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\159\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\159\SOH\SYN\ETB\n\
    \\SI\n\
    \\ENQ\EOT\SI\STX\ENQ\b\DC2\ACK\159\SOH\CAN\163\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\202\214\ENQ\DC2\EOT\160\SOH\EOT(\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\235\251\ETX\DC2\EOT\161\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\233\251\ETX\DC2\EOT\162\SOH\EOT \n\
    \F\n\
    \\EOT\EOT\SI\STX\ACK\DC2\ACK\165\SOH\STX\169\SOH\EOT\SUB6 change_rate is the netflow rate of the given account\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ENQ\DC2\EOT\165\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\SOH\DC2\EOT\165\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ETX\DC2\EOT\165\SOH\ETB\CAN\n\
    \\SI\n\
    \\ENQ\EOT\SI\STX\ACK\b\DC2\ACK\165\SOH\EM\169\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ACK\b\202\214\ENQ\DC2\EOT\166\SOH\EOT(\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ACK\b\235\251\ETX\DC2\EOT\167\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ACK\b\233\251\ETX\DC2\EOT\168\SOH\EOT \n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\172\SOH\NUL\174\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\172\SOH\b-\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\173\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\173\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\173\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\173\SOH\DC1\DC2\n\
    \\f\n\
    \\STX\EOT\DC1\DC2\ACK\176\SOH\NUL\178\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\176\SOH\b.\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\177\SOH\STX&\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\EOT\177\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\177\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\177\SOH\DC2!\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\177\SOH$%\n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\180\SOH\NUL\182\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\180\SOH\b'\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\181\SOH\STX7\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\181\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\181\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\181\SOH56\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\184\SOH\NUL\187\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\184\SOH\b(\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\185\SOH\STXR\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\EOT\185\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ACK\DC2\EOT\185\SOH\v\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\185\SOH\FS.\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\185\SOH12\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\b\DC2\EOT\185\SOH3Q\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\233\251\ETX\DC2\EOT\185\SOH4P\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\186\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ACK\DC2\EOT\186\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\186\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\186\SOH67b\ACKproto3"