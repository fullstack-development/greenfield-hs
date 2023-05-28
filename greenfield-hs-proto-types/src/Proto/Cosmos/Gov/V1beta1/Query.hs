{- This file was auto-generated from cosmos/gov/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1beta1.Query (
        Query(..), QueryDepositRequest(), QueryDepositResponse(),
        QueryDepositsRequest(), QueryDepositsResponse(),
        QueryParamsRequest(), QueryParamsResponse(),
        QueryProposalRequest(), QueryProposalResponse(),
        QueryProposalsRequest(), QueryProposalsResponse(),
        QueryTallyResultRequest(), QueryTallyResultResponse(),
        QueryVoteRequest(), QueryVoteResponse(), QueryVotesRequest(),
        QueryVotesResponse()
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Gov.V1beta1.Gov
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposalId' @:: Lens' QueryDepositRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.depositor' @:: Lens' QueryDepositRequest Data.Text.Text@ -}
data QueryDepositRequest
  = QueryDepositRequest'_constructor {_QueryDepositRequest'proposalId :: !Data.Word.Word64,
                                      _QueryDepositRequest'depositor :: !Data.Text.Text,
                                      _QueryDepositRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDepositRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDepositRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositRequest'proposalId
           (\ x__ y__ -> x__ {_QueryDepositRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDepositRequest "depositor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositRequest'depositor
           (\ x__ y__ -> x__ {_QueryDepositRequest'depositor = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDepositRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryDepositRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryDepositRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC26\n\
      \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor QueryDepositRequest
        depositor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depositor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"depositor")) ::
              Data.ProtoLens.FieldDescriptor QueryDepositRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, depositor__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDepositRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryDepositRequest'_unknownFields = y__})
  defMessage
    = QueryDepositRequest'_constructor
        {_QueryDepositRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryDepositRequest'depositor = Data.ProtoLens.fieldDefault,
         _QueryDepositRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDepositRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDepositRequest
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
                                       "depositor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"depositor") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDepositRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"depositor") _x
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
instance Control.DeepSeq.NFData QueryDepositRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDepositRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDepositRequest'proposalId x__)
                (Control.DeepSeq.deepseq (_QueryDepositRequest'depositor x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.deposit' @:: Lens' QueryDepositResponse Proto.Cosmos.Gov.V1beta1.Gov.Deposit@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'deposit' @:: Lens' QueryDepositResponse (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Deposit)@ -}
data QueryDepositResponse
  = QueryDepositResponse'_constructor {_QueryDepositResponse'deposit :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Deposit),
                                       _QueryDepositResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDepositResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDepositResponse "deposit" Proto.Cosmos.Gov.V1beta1.Gov.Deposit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositResponse'deposit
           (\ x__ y__ -> x__ {_QueryDepositResponse'deposit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDepositResponse "maybe'deposit" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Deposit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositResponse'deposit
           (\ x__ y__ -> x__ {_QueryDepositResponse'deposit = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDepositResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryDepositResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryDepositResponse\DC2@\n\
      \\adeposit\CAN\SOH \SOH(\v2\ESC.cosmos.gov.v1beta1.DepositR\adepositB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        deposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Deposit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deposit")) ::
              Data.ProtoLens.FieldDescriptor QueryDepositResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, deposit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDepositResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryDepositResponse'_unknownFields = y__})
  defMessage
    = QueryDepositResponse'_constructor
        {_QueryDepositResponse'deposit = Prelude.Nothing,
         _QueryDepositResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDepositResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDepositResponse
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
                                       "deposit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"deposit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDepositResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'deposit") _x
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
instance Control.DeepSeq.NFData QueryDepositResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDepositResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryDepositResponse'deposit x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposalId' @:: Lens' QueryDepositsRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.pagination' @:: Lens' QueryDepositsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDepositsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryDepositsRequest
  = QueryDepositsRequest'_constructor {_QueryDepositsRequest'proposalId :: !Data.Word.Word64,
                                       _QueryDepositsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                       _QueryDepositsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDepositsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDepositsRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsRequest'proposalId
           (\ x__ y__ -> x__ {_QueryDepositsRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDepositsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsRequest'pagination
           (\ x__ y__ -> x__ {_QueryDepositsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDepositsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsRequest'pagination
           (\ x__ y__ -> x__ {_QueryDepositsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDepositsRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryDepositsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryDepositsRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor QueryDepositsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDepositsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDepositsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryDepositsRequest'_unknownFields = y__})
  defMessage
    = QueryDepositsRequest'_constructor
        {_QueryDepositsRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryDepositsRequest'pagination = Prelude.Nothing,
         _QueryDepositsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDepositsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDepositsRequest
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
          (do loop Data.ProtoLens.defMessage) "QueryDepositsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
instance Control.DeepSeq.NFData QueryDepositsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDepositsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDepositsRequest'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_QueryDepositsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.deposits' @:: Lens' QueryDepositsResponse [Proto.Cosmos.Gov.V1beta1.Gov.Deposit]@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.vec'deposits' @:: Lens' QueryDepositsResponse (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Deposit)@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.pagination' @:: Lens' QueryDepositsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDepositsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryDepositsResponse
  = QueryDepositsResponse'_constructor {_QueryDepositsResponse'deposits :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Deposit),
                                        _QueryDepositsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                        _QueryDepositsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDepositsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDepositsResponse "deposits" [Proto.Cosmos.Gov.V1beta1.Gov.Deposit] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsResponse'deposits
           (\ x__ y__ -> x__ {_QueryDepositsResponse'deposits = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDepositsResponse "vec'deposits" (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Deposit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsResponse'deposits
           (\ x__ y__ -> x__ {_QueryDepositsResponse'deposits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDepositsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsResponse'pagination
           (\ x__ y__ -> x__ {_QueryDepositsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDepositsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsResponse'pagination
           (\ x__ y__ -> x__ {_QueryDepositsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDepositsResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryDepositsResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryDepositsResponse\DC2B\n\
      \\bdeposits\CAN\SOH \ETX(\v2\ESC.cosmos.gov.v1beta1.DepositR\bdepositsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        deposits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Deposit)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"deposits")) ::
              Data.ProtoLens.FieldDescriptor QueryDepositsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDepositsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, deposits__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDepositsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryDepositsResponse'_unknownFields = y__})
  defMessage
    = QueryDepositsResponse'_constructor
        {_QueryDepositsResponse'deposits = Data.Vector.Generic.empty,
         _QueryDepositsResponse'pagination = Prelude.Nothing,
         _QueryDepositsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDepositsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1beta1.Gov.Deposit
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryDepositsResponse
        loop x mutable'deposits
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'deposits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'deposits)
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
                              (Data.ProtoLens.Field.field @"vec'deposits") frozen'deposits x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "deposits"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'deposits y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'deposits
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'deposits
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'deposits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'deposits)
          "QueryDepositsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'deposits") _x))
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
instance Control.DeepSeq.NFData QueryDepositsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDepositsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDepositsResponse'deposits x__)
                (Control.DeepSeq.deepseq
                   (_QueryDepositsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.paramsType' @:: Lens' QueryParamsRequest Data.Text.Text@ -}
data QueryParamsRequest
  = QueryParamsRequest'_constructor {_QueryParamsRequest'paramsType :: !Data.Text.Text,
                                     _QueryParamsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsRequest "paramsType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsRequest'paramsType
           (\ x__ y__ -> x__ {_QueryParamsRequest'paramsType = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryParamsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryParamsRequest\DC2\US\n\
      \\vparams_type\CAN\SOH \SOH(\tR\n\
      \paramsType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        paramsType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paramsType")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, paramsType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsRequest'_unknownFields = y__})
  defMessage
    = QueryParamsRequest'_constructor
        {_QueryParamsRequest'paramsType = Data.ProtoLens.fieldDefault,
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
                                       "params_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"paramsType") y x)
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
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"paramsType") _x
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
instance Control.DeepSeq.NFData QueryParamsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryParamsRequest'paramsType x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.votingParams' @:: Lens' QueryParamsResponse Proto.Cosmos.Gov.V1beta1.Gov.VotingParams@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'votingParams' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.VotingParams)@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.depositParams' @:: Lens' QueryParamsResponse Proto.Cosmos.Gov.V1beta1.Gov.DepositParams@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'depositParams' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.DepositParams)@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.tallyParams' @:: Lens' QueryParamsResponse Proto.Cosmos.Gov.V1beta1.Gov.TallyParams@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'tallyParams' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyParams)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'votingParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.VotingParams),
                                      _QueryParamsResponse'depositParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.DepositParams),
                                      _QueryParamsResponse'tallyParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyParams),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "votingParams" Proto.Cosmos.Gov.V1beta1.Gov.VotingParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'votingParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'votingParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'votingParams" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.VotingParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'votingParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'votingParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryParamsResponse "depositParams" Proto.Cosmos.Gov.V1beta1.Gov.DepositParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'depositParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'depositParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'depositParams" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.DepositParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'depositParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'depositParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryParamsResponse "tallyParams" Proto.Cosmos.Gov.V1beta1.Gov.TallyParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'tallyParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'tallyParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'tallyParams" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'tallyParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'tallyParams = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2P\n\
      \\rvoting_params\CAN\SOH \SOH(\v2 .cosmos.gov.v1beta1.VotingParamsR\fvotingParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2S\n\
      \\SOdeposit_params\CAN\STX \SOH(\v2!.cosmos.gov.v1beta1.DepositParamsR\rdepositParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2M\n\
      \\ftally_params\CAN\ETX \SOH(\v2\US.cosmos.gov.v1beta1.TallyParamsR\vtallyParamsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        votingParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.VotingParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingParams")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
        depositParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.DepositParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depositParams")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
        tallyParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.TallyParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tallyParams")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, votingParams__field_descriptor),
           (Data.ProtoLens.Tag 2, depositParams__field_descriptor),
           (Data.ProtoLens.Tag 3, tallyParams__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsResponse'_unknownFields = y__})
  defMessage
    = QueryParamsResponse'_constructor
        {_QueryParamsResponse'votingParams = Prelude.Nothing,
         _QueryParamsResponse'depositParams = Prelude.Nothing,
         _QueryParamsResponse'tallyParams = Prelude.Nothing,
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
                                       "voting_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingParams") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deposit_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"depositParams") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tally_params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tallyParams") y x)
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
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'votingParams") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'depositParams") _x
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
                          (Data.ProtoLens.Field.field @"maybe'tallyParams") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData QueryParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryParamsResponse'votingParams x__)
                (Control.DeepSeq.deepseq
                   (_QueryParamsResponse'depositParams x__)
                   (Control.DeepSeq.deepseq
                      (_QueryParamsResponse'tallyParams x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposalId' @:: Lens' QueryProposalRequest Data.Word.Word64@ -}
data QueryProposalRequest
  = QueryProposalRequest'_constructor {_QueryProposalRequest'proposalId :: !Data.Word.Word64,
                                       _QueryProposalRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalRequest'proposalId
           (\ x__ y__ -> x__ {_QueryProposalRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryProposalRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryProposalRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryProposalRequest'_unknownFields = y__})
  defMessage
    = QueryProposalRequest'_constructor
        {_QueryProposalRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryProposalRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalRequest
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryProposalRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryProposalRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryProposalRequest'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposal' @:: Lens' QueryProposalResponse Proto.Cosmos.Gov.V1beta1.Gov.Proposal@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'proposal' @:: Lens' QueryProposalResponse (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Proposal)@ -}
data QueryProposalResponse
  = QueryProposalResponse'_constructor {_QueryProposalResponse'proposal :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Proposal),
                                        _QueryProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalResponse "proposal" Proto.Cosmos.Gov.V1beta1.Gov.Proposal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalResponse'proposal
           (\ x__ y__ -> x__ {_QueryProposalResponse'proposal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryProposalResponse "maybe'proposal" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalResponse'proposal
           (\ x__ y__ -> x__ {_QueryProposalResponse'proposal = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryProposalResponse\DC2C\n\
      \\bproposal\CAN\SOH \SOH(\v2\FS.cosmos.gov.v1beta1.ProposalR\bproposalB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Proposal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proposal")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryProposalResponse'_unknownFields = y__})
  defMessage
    = QueryProposalResponse'_constructor
        {_QueryProposalResponse'proposal = Prelude.Nothing,
         _QueryProposalResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalResponse
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
                                       "proposal"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposal") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryProposalResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proposal") _x
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
instance Control.DeepSeq.NFData QueryProposalResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryProposalResponse'proposal x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposalStatus' @:: Lens' QueryProposalsRequest Proto.Cosmos.Gov.V1beta1.Gov.ProposalStatus@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.voter' @:: Lens' QueryProposalsRequest Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.depositor' @:: Lens' QueryProposalsRequest Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.pagination' @:: Lens' QueryProposalsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryProposalsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryProposalsRequest
  = QueryProposalsRequest'_constructor {_QueryProposalsRequest'proposalStatus :: !Proto.Cosmos.Gov.V1beta1.Gov.ProposalStatus,
                                        _QueryProposalsRequest'voter :: !Data.Text.Text,
                                        _QueryProposalsRequest'depositor :: !Data.Text.Text,
                                        _QueryProposalsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                        _QueryProposalsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalsRequest "proposalStatus" Proto.Cosmos.Gov.V1beta1.Gov.ProposalStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsRequest'proposalStatus
           (\ x__ y__ -> x__ {_QueryProposalsRequest'proposalStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryProposalsRequest "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsRequest'voter
           (\ x__ y__ -> x__ {_QueryProposalsRequest'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryProposalsRequest "depositor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsRequest'depositor
           (\ x__ y__ -> x__ {_QueryProposalsRequest'depositor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryProposalsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsRequest'pagination
           (\ x__ y__ -> x__ {_QueryProposalsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryProposalsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsRequest'pagination
           (\ x__ y__ -> x__ {_QueryProposalsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalsRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryProposalsRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryProposalsRequest\DC2K\n\
      \\SIproposal_status\CAN\SOH \SOH(\SO2\".cosmos.gov.v1beta1.ProposalStatusR\SOproposalStatus\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
      \\tdepositor\CAN\ETX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.ProposalStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalStatus")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsRequest
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsRequest
        depositor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depositor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"depositor")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalStatus__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, depositor__field_descriptor),
           (Data.ProtoLens.Tag 4, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryProposalsRequest'_unknownFields = y__})
  defMessage
    = QueryProposalsRequest'_constructor
        {_QueryProposalsRequest'proposalStatus = Data.ProtoLens.fieldDefault,
         _QueryProposalsRequest'voter = Data.ProtoLens.fieldDefault,
         _QueryProposalsRequest'depositor = Data.ProtoLens.fieldDefault,
         _QueryProposalsRequest'pagination = Prelude.Nothing,
         _QueryProposalsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalsRequest
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
                                       "proposal_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposalStatus") y x)
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
                                       "voter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"voter") y x)
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
                                       "depositor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"depositor") y x)
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
          (do loop Data.ProtoLens.defMessage) "QueryProposalsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"proposalStatus") _x
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"voter") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"depositor") _x
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
instance Control.DeepSeq.NFData QueryProposalsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryProposalsRequest'proposalStatus x__)
                (Control.DeepSeq.deepseq
                   (_QueryProposalsRequest'voter x__)
                   (Control.DeepSeq.deepseq
                      (_QueryProposalsRequest'depositor x__)
                      (Control.DeepSeq.deepseq
                         (_QueryProposalsRequest'pagination x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposals' @:: Lens' QueryProposalsResponse [Proto.Cosmos.Gov.V1beta1.Gov.Proposal]@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.vec'proposals' @:: Lens' QueryProposalsResponse (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Proposal)@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.pagination' @:: Lens' QueryProposalsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryProposalsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryProposalsResponse
  = QueryProposalsResponse'_constructor {_QueryProposalsResponse'proposals :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Proposal),
                                         _QueryProposalsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                         _QueryProposalsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalsResponse "proposals" [Proto.Cosmos.Gov.V1beta1.Gov.Proposal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsResponse'proposals
           (\ x__ y__ -> x__ {_QueryProposalsResponse'proposals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryProposalsResponse "vec'proposals" (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsResponse'proposals
           (\ x__ y__ -> x__ {_QueryProposalsResponse'proposals = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryProposalsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsResponse'pagination
           (\ x__ y__ -> x__ {_QueryProposalsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryProposalsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsResponse'pagination
           (\ x__ y__ -> x__ {_QueryProposalsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalsResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryProposalsResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryProposalsResponse\DC2E\n\
      \\tproposals\CAN\SOH \ETX(\v2\FS.cosmos.gov.v1beta1.ProposalR\tproposalsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposals__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposals"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Proposal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"proposals")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposals__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryProposalsResponse'_unknownFields = y__})
  defMessage
    = QueryProposalsResponse'_constructor
        {_QueryProposalsResponse'proposals = Data.Vector.Generic.empty,
         _QueryProposalsResponse'pagination = Prelude.Nothing,
         _QueryProposalsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1beta1.Gov.Proposal
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalsResponse
        loop x mutable'proposals
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'proposals)
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
                              (Data.ProtoLens.Field.field @"vec'proposals") frozen'proposals x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "proposals"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'proposals y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'proposals
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'proposals
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'proposals)
          "QueryProposalsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'proposals") _x))
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
instance Control.DeepSeq.NFData QueryProposalsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryProposalsResponse'proposals x__)
                (Control.DeepSeq.deepseq
                   (_QueryProposalsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposalId' @:: Lens' QueryTallyResultRequest Data.Word.Word64@ -}
data QueryTallyResultRequest
  = QueryTallyResultRequest'_constructor {_QueryTallyResultRequest'proposalId :: !Data.Word.Word64,
                                          _QueryTallyResultRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryTallyResultRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryTallyResultRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultRequest'proposalId
           (\ x__ y__ -> x__ {_QueryTallyResultRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryTallyResultRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryTallyResultRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryTallyResultRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor QueryTallyResultRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryTallyResultRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryTallyResultRequest'_unknownFields = y__})
  defMessage
    = QueryTallyResultRequest'_constructor
        {_QueryTallyResultRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryTallyResultRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryTallyResultRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryTallyResultRequest
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryTallyResultRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryTallyResultRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryTallyResultRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryTallyResultRequest'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.tally' @:: Lens' QueryTallyResultResponse Proto.Cosmos.Gov.V1beta1.Gov.TallyResult@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'tally' @:: Lens' QueryTallyResultResponse (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyResult)@ -}
data QueryTallyResultResponse
  = QueryTallyResultResponse'_constructor {_QueryTallyResultResponse'tally :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyResult),
                                           _QueryTallyResultResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryTallyResultResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryTallyResultResponse "tally" Proto.Cosmos.Gov.V1beta1.Gov.TallyResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultResponse'tally
           (\ x__ y__ -> x__ {_QueryTallyResultResponse'tally = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryTallyResultResponse "maybe'tally" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultResponse'tally
           (\ x__ y__ -> x__ {_QueryTallyResultResponse'tally = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryTallyResultResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryTallyResultResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryTallyResultResponse\DC2@\n\
      \\ENQtally\CAN\SOH \SOH(\v2\US.cosmos.gov.v1beta1.TallyResultR\ENQtallyB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tally__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.TallyResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tally")) ::
              Data.ProtoLens.FieldDescriptor QueryTallyResultResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tally__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryTallyResultResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryTallyResultResponse'_unknownFields = y__})
  defMessage
    = QueryTallyResultResponse'_constructor
        {_QueryTallyResultResponse'tally = Prelude.Nothing,
         _QueryTallyResultResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryTallyResultResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryTallyResultResponse
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
                                       "tally"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tally") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryTallyResultResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tally") _x
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
instance Control.DeepSeq.NFData QueryTallyResultResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryTallyResultResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryTallyResultResponse'tally x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposalId' @:: Lens' QueryVoteRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.voter' @:: Lens' QueryVoteRequest Data.Text.Text@ -}
data QueryVoteRequest
  = QueryVoteRequest'_constructor {_QueryVoteRequest'proposalId :: !Data.Word.Word64,
                                   _QueryVoteRequest'voter :: !Data.Text.Text,
                                   _QueryVoteRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVoteRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVoteRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteRequest'proposalId
           (\ x__ y__ -> x__ {_QueryVoteRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVoteRequest "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteRequest'voter
           (\ x__ y__ -> x__ {_QueryVoteRequest'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVoteRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryVoteRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEQueryVoteRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor QueryVoteRequest
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor QueryVoteRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVoteRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryVoteRequest'_unknownFields = y__})
  defMessage
    = QueryVoteRequest'_constructor
        {_QueryVoteRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryVoteRequest'voter = Data.ProtoLens.fieldDefault,
         _QueryVoteRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVoteRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVoteRequest
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
                                       "voter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"voter") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryVoteRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"voter") _x
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
instance Control.DeepSeq.NFData QueryVoteRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVoteRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVoteRequest'proposalId x__)
                (Control.DeepSeq.deepseq (_QueryVoteRequest'voter x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.vote' @:: Lens' QueryVoteResponse Proto.Cosmos.Gov.V1beta1.Gov.Vote@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'vote' @:: Lens' QueryVoteResponse (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Vote)@ -}
data QueryVoteResponse
  = QueryVoteResponse'_constructor {_QueryVoteResponse'vote :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Vote),
                                    _QueryVoteResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVoteResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVoteResponse "vote" Proto.Cosmos.Gov.V1beta1.Gov.Vote where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteResponse'vote
           (\ x__ y__ -> x__ {_QueryVoteResponse'vote = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVoteResponse "maybe'vote" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteResponse'vote
           (\ x__ y__ -> x__ {_QueryVoteResponse'vote = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVoteResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryVoteResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1QueryVoteResponse\DC27\n\
      \\EOTvote\CAN\SOH \SOH(\v2\CAN.cosmos.gov.v1beta1.VoteR\EOTvoteB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vote__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Vote)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vote")) ::
              Data.ProtoLens.FieldDescriptor QueryVoteResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, vote__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVoteResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryVoteResponse'_unknownFields = y__})
  defMessage
    = QueryVoteResponse'_constructor
        {_QueryVoteResponse'vote = Prelude.Nothing,
         _QueryVoteResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVoteResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVoteResponse
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
                                       "vote"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vote") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryVoteResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vote") _x
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
instance Control.DeepSeq.NFData QueryVoteResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVoteResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryVoteResponse'vote x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.proposalId' @:: Lens' QueryVotesRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.pagination' @:: Lens' QueryVotesRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryVotesRequest
  = QueryVotesRequest'_constructor {_QueryVotesRequest'proposalId :: !Data.Word.Word64,
                                    _QueryVotesRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                    _QueryVotesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVotesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVotesRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesRequest'proposalId
           (\ x__ y__ -> x__ {_QueryVotesRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVotesRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesRequest'pagination
           (\ x__ y__ -> x__ {_QueryVotesRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVotesRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesRequest'pagination
           (\ x__ y__ -> x__ {_QueryVotesRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVotesRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryVotesRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1QueryVotesRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVotesRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryVotesRequest'_unknownFields = y__})
  defMessage
    = QueryVotesRequest'_constructor
        {_QueryVotesRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryVotesRequest'pagination = Prelude.Nothing,
         _QueryVotesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVotesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVotesRequest
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
          (do loop Data.ProtoLens.defMessage) "QueryVotesRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
instance Control.DeepSeq.NFData QueryVotesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVotesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVotesRequest'proposalId x__)
                (Control.DeepSeq.deepseq (_QueryVotesRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.votes' @:: Lens' QueryVotesResponse [Proto.Cosmos.Gov.V1beta1.Gov.Vote]@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.vec'votes' @:: Lens' QueryVotesResponse (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Vote)@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.pagination' @:: Lens' QueryVotesResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Gov.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryVotesResponse
  = QueryVotesResponse'_constructor {_QueryVotesResponse'votes :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Vote),
                                     _QueryVotesResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                     _QueryVotesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVotesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVotesResponse "votes" [Proto.Cosmos.Gov.V1beta1.Gov.Vote] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesResponse'votes
           (\ x__ y__ -> x__ {_QueryVotesResponse'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryVotesResponse "vec'votes" (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesResponse'votes
           (\ x__ y__ -> x__ {_QueryVotesResponse'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVotesResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesResponse'pagination
           (\ x__ y__ -> x__ {_QueryVotesResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVotesResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesResponse'pagination
           (\ x__ y__ -> x__ {_QueryVotesResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVotesResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.QueryVotesResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryVotesResponse\DC29\n\
      \\ENQvotes\CAN\SOH \ETX(\v2\CAN.cosmos.gov.v1beta1.VoteR\ENQvotesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Vote)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, votes__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVotesResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryVotesResponse'_unknownFields = y__})
  defMessage
    = QueryVotesResponse'_constructor
        {_QueryVotesResponse'votes = Data.Vector.Generic.empty,
         _QueryVotesResponse'pagination = Prelude.Nothing,
         _QueryVotesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVotesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1beta1.Gov.Vote
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryVotesResponse
        loop x mutable'votes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'votes)
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
                              (Data.ProtoLens.Field.field @"vec'votes") frozen'votes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "votes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'votes y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'votes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'votes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'votes)
          "QueryVotesResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'votes") _x))
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
instance Control.DeepSeq.NFData QueryVotesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVotesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVotesResponse'votes x__)
                (Control.DeepSeq.deepseq (_QueryVotesResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.gov.v1beta1"
  type ServiceMethods Query = '["deposit",
                                "deposits",
                                "params",
                                "proposal",
                                "proposals",
                                "tallyResult",
                                "vote",
                                "votes"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\148\SOH\n\
      \\bProposal\DC2(.cosmos.gov.v1beta1.QueryProposalRequest\SUB).cosmos.gov.v1beta1.QueryProposalResponse\"3\130\211\228\147\STX-\DC2+/cosmos/gov/v1beta1/proposals/{proposal_id}\DC2\137\SOH\n\
      \\tProposals\DC2).cosmos.gov.v1beta1.QueryProposalsRequest\SUB*.cosmos.gov.v1beta1.QueryProposalsResponse\"%\130\211\228\147\STX\US\DC2\GS/cosmos/gov/v1beta1/proposals\DC2\150\SOH\n\
      \\EOTVote\DC2$.cosmos.gov.v1beta1.QueryVoteRequest\SUB%.cosmos.gov.v1beta1.QueryVoteResponse\"A\130\211\228\147\STX;\DC29/cosmos/gov/v1beta1/proposals/{proposal_id}/votes/{voter}\DC2\145\SOH\n\
      \\ENQVotes\DC2%.cosmos.gov.v1beta1.QueryVotesRequest\SUB&.cosmos.gov.v1beta1.QueryVotesResponse\"9\130\211\228\147\STX3\DC21/cosmos/gov/v1beta1/proposals/{proposal_id}/votes\DC2\139\SOH\n\
      \\ACKParams\DC2&.cosmos.gov.v1beta1.QueryParamsRequest\SUB'.cosmos.gov.v1beta1.QueryParamsResponse\"0\130\211\228\147\STX*\DC2(/cosmos/gov/v1beta1/params/{params_type}\DC2\166\SOH\n\
      \\aDeposit\DC2'.cosmos.gov.v1beta1.QueryDepositRequest\SUB(.cosmos.gov.v1beta1.QueryDepositResponse\"H\130\211\228\147\STXB\DC2@/cosmos/gov/v1beta1/proposals/{proposal_id}/deposits/{depositor}\DC2\157\SOH\n\
      \\bDeposits\DC2(.cosmos.gov.v1beta1.QueryDepositsRequest\SUB).cosmos.gov.v1beta1.QueryDepositsResponse\"<\130\211\228\147\STX6\DC24/cosmos/gov/v1beta1/proposals/{proposal_id}/deposits\DC2\163\SOH\n\
      \\vTallyResult\DC2+.cosmos.gov.v1beta1.QueryTallyResultRequest\SUB,.cosmos.gov.v1beta1.QueryTallyResultResponse\"9\130\211\228\147\STX3\DC21/cosmos/gov/v1beta1/proposals/{proposal_id}/tally"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "proposal" where
  type MethodName Query "proposal" = "Proposal"
  type MethodInput Query "proposal" = QueryProposalRequest
  type MethodOutput Query "proposal" = QueryProposalResponse
  type MethodStreamingType Query "proposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "proposals" where
  type MethodName Query "proposals" = "Proposals"
  type MethodInput Query "proposals" = QueryProposalsRequest
  type MethodOutput Query "proposals" = QueryProposalsResponse
  type MethodStreamingType Query "proposals" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "vote" where
  type MethodName Query "vote" = "Vote"
  type MethodInput Query "vote" = QueryVoteRequest
  type MethodOutput Query "vote" = QueryVoteResponse
  type MethodStreamingType Query "vote" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "votes" where
  type MethodName Query "votes" = "Votes"
  type MethodInput Query "votes" = QueryVotesRequest
  type MethodOutput Query "votes" = QueryVotesResponse
  type MethodStreamingType Query "votes" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "deposit" where
  type MethodName Query "deposit" = "Deposit"
  type MethodInput Query "deposit" = QueryDepositRequest
  type MethodOutput Query "deposit" = QueryDepositResponse
  type MethodStreamingType Query "deposit" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "deposits" where
  type MethodName Query "deposits" = "Deposits"
  type MethodInput Query "deposits" = QueryDepositsRequest
  type MethodOutput Query "deposits" = QueryDepositsResponse
  type MethodStreamingType Query "deposits" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "tallyResult" where
  type MethodName Query "tallyResult" = "TallyResult"
  type MethodInput Query "tallyResult" = QueryTallyResultRequest
  type MethodOutput Query "tallyResult" = QueryTallyResultResponse
  type MethodStreamingType Query "tallyResult" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/gov/v1beta1/query.proto\DC2\DC2cosmos.gov.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\FScosmos/gov/v1beta1/gov.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"7\n\
    \\DC4QueryProposalRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"\\\n\
    \\NAKQueryProposalResponse\DC2C\n\
    \\bproposal\CAN\SOH \SOH(\v2\FS.cosmos.gov.v1beta1.ProposalR\bproposalB\t\200\222\US\NUL\168\231\176*\SOH\"\158\STX\n\
    \\NAKQueryProposalsRequest\DC2K\n\
    \\SIproposal_status\CAN\SOH \SOH(\SO2\".cosmos.gov.v1beta1.ProposalStatusR\SOproposalStatus\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
    \\tdepositor\CAN\ETX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\b\136\160\US\NUL\232\160\US\NUL\"\168\SOH\n\
    \\SYNQueryProposalsResponse\DC2E\n\
    \\tproposals\CAN\SOH \ETX(\v2\FS.cosmos.gov.v1beta1.ProposalR\tproposalsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"m\n\
    \\DLEQueryVoteRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"L\n\
    \\DC1QueryVoteResponse\DC27\n\
    \\EOTvote\CAN\SOH \SOH(\v2\CAN.cosmos.gov.v1beta1.VoteR\EOTvoteB\t\200\222\US\NUL\168\231\176*\SOH\"|\n\
    \\DC1QueryVotesRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\152\SOH\n\
    \\DC2QueryVotesResponse\DC29\n\
    \\ENQvotes\CAN\SOH \ETX(\v2\CAN.cosmos.gov.v1beta1.VoteR\ENQvotesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"5\n\
    \\DC2QueryParamsRequest\DC2\US\n\
    \\vparams_type\CAN\SOH \SOH(\tR\n\
    \paramsType\"\139\STX\n\
    \\DC3QueryParamsResponse\DC2P\n\
    \\rvoting_params\CAN\SOH \SOH(\v2 .cosmos.gov.v1beta1.VotingParamsR\fvotingParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2S\n\
    \\SOdeposit_params\CAN\STX \SOH(\v2!.cosmos.gov.v1beta1.DepositParamsR\rdepositParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2M\n\
    \\ftally_params\CAN\ETX \SOH(\v2\US.cosmos.gov.v1beta1.TallyParamsR\vtallyParamsB\t\200\222\US\NUL\168\231\176*\SOH\"x\n\
    \\DC3QueryDepositRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC26\n\
    \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"X\n\
    \\DC4QueryDepositResponse\DC2@\n\
    \\adeposit\CAN\SOH \SOH(\v2\ESC.cosmos.gov.v1beta1.DepositR\adepositB\t\200\222\US\NUL\168\231\176*\SOH\"\DEL\n\
    \\DC4QueryDepositsRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\164\SOH\n\
    \\NAKQueryDepositsResponse\DC2B\n\
    \\bdeposits\CAN\SOH \ETX(\v2\ESC.cosmos.gov.v1beta1.DepositR\bdepositsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\":\n\
    \\ETBQueryTallyResultRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"\\\n\
    \\CANQueryTallyResultResponse\DC2@\n\
    \\ENQtally\CAN\SOH \SOH(\v2\US.cosmos.gov.v1beta1.TallyResultR\ENQtallyB\t\200\222\US\NUL\168\231\176*\SOH2\212\t\n\
    \\ENQQuery\DC2\148\SOH\n\
    \\bProposal\DC2(.cosmos.gov.v1beta1.QueryProposalRequest\SUB).cosmos.gov.v1beta1.QueryProposalResponse\"3\130\211\228\147\STX-\DC2+/cosmos/gov/v1beta1/proposals/{proposal_id}\DC2\137\SOH\n\
    \\tProposals\DC2).cosmos.gov.v1beta1.QueryProposalsRequest\SUB*.cosmos.gov.v1beta1.QueryProposalsResponse\"%\130\211\228\147\STX\US\DC2\GS/cosmos/gov/v1beta1/proposals\DC2\150\SOH\n\
    \\EOTVote\DC2$.cosmos.gov.v1beta1.QueryVoteRequest\SUB%.cosmos.gov.v1beta1.QueryVoteResponse\"A\130\211\228\147\STX;\DC29/cosmos/gov/v1beta1/proposals/{proposal_id}/votes/{voter}\DC2\145\SOH\n\
    \\ENQVotes\DC2%.cosmos.gov.v1beta1.QueryVotesRequest\SUB&.cosmos.gov.v1beta1.QueryVotesResponse\"9\130\211\228\147\STX3\DC21/cosmos/gov/v1beta1/proposals/{proposal_id}/votes\DC2\139\SOH\n\
    \\ACKParams\DC2&.cosmos.gov.v1beta1.QueryParamsRequest\SUB'.cosmos.gov.v1beta1.QueryParamsResponse\"0\130\211\228\147\STX*\DC2(/cosmos/gov/v1beta1/params/{params_type}\DC2\166\SOH\n\
    \\aDeposit\DC2'.cosmos.gov.v1beta1.QueryDepositRequest\SUB(.cosmos.gov.v1beta1.QueryDepositResponse\"H\130\211\228\147\STXB\DC2@/cosmos/gov/v1beta1/proposals/{proposal_id}/deposits/{depositor}\DC2\157\SOH\n\
    \\bDeposits\DC2(.cosmos.gov.v1beta1.QueryDepositsRequest\SUB).cosmos.gov.v1beta1.QueryDepositsResponse\"<\130\211\228\147\STX6\DC24/cosmos/gov/v1beta1/proposals/{proposal_id}/deposits\DC2\163\SOH\n\
    \\vTallyResult\DC2+.cosmos.gov.v1beta1.QueryTallyResultRequest\SUB,.cosmos.gov.v1beta1.QueryTallyResultResponse\"9\130\211\228\147\STX3\DC21/cosmos/gov/v1beta1/proposals/{proposal_id}/tallyB2Z0github.com/cosmos/cosmos-sdk/x/gov/types/v1beta1J\175\&6\n\
    \\a\DC2\ENQ\NUL\NUL\193\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULG\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NULG\n\
    \C\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL5\SOH\SUB7 Query defines the gRPC querier service for gov module\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\r\n\
    \F\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SI\STX\DC1\ETX\SUB8 Proposal queries proposal details based on ProposalID.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SI\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SI\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SI.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DLE\EOTQ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DLE\EOTQ\n\
    \F\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC4\STX\SYN\ETX\SUB8 Proposals queries all proposals based on given status.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC4\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC4\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC40F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\NAK\EOTC\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\NAK\EOTC\n\
    \N\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\EM\STX\ESC\ETX\SUB@ Vote queries voted information based on proposalID, voterAddr.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\EM\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\EM\v\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\EM&7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\SUB\EOT_\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\SUB\EOT_\n\
    \8\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT\RS\STX \ETX\SUB* Votes queries votes of a given proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\RS\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\RS\f\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\RS(:\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX\US\EOTW\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX\US\EOTW\n\
    \@\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT#\STX%\ETX\SUB2 Params queries all parameters of the gov module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX#\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX#\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX#*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX$\EOTN\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX$\EOTN\n\
    \Y\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT(\STX*\ETX\SUBK Deposit queries single deposit information based proposalID, depositAddr.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX(\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX(\SO!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX(,@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX)\EOTf\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX)\EOTf\n\
    \C\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT-\STX/\ETX\SUB5 Deposits queries all deposits of a single proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX-\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX-\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX-.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX.\EOTZ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX.\EOTZ\n\
    \A\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT2\STX4\ETX\SUB3 TallyResult queries the tally of a proposal vote.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX2\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX2\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX24L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETX3\EOTW\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\ETX3\EOTW\n\
    \Y\n\
    \\STX\EOT\NUL\DC2\EOT8\NUL;\SOH\SUBM QueryProposalRequest is the request type for the Query/Proposal RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX8\b\FS\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX:\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX:\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX:\ETB\CAN\n\
    \[\n\
    \\STX\EOT\SOH\DC2\EOT>\NUL@\SOH\SUBO QueryProposalResponse is the response type for the Query/Proposal RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX>\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX?\STXV\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX?\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX?\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX?\CANU\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX?\EM5\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX?7T\n\
    \[\n\
    \\STX\EOT\STX\DC2\EOTC\NULR\SOH\SUBO QueryProposalsRequest is the request type for the Query/Proposals RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXC\b\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXD\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETXD\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXE\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETXE\STX-\n\
    \C\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXH\STX%\SUB6 proposal_status defines the status of the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXH\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXH\DC1 \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXH#$\n\
    \A\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXK\STXD\SUB4 voter defines the voter address for the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXK\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXK\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXK\DC3C\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXK\DC4B\n\
    \J\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXN\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXN\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXN\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETXN\ETBG\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\202\214\ENQ\DC2\ETXN\CANF\n\
    \I\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXQ\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXQ\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXQ(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXQ56\n\
    \^\n\
    \\STX\EOT\ETX\DC2\EOTV\NUL\\\SOH\SUBR QueryProposalsResponse is the response type for the Query/Proposals RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXV\b\RS\n\
    \H\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXX\STX`\SUB; proposals defines all the requested governance proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXX\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXX\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXX !\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXX\"_\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETXX#?\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\NUL\b\245\140\166\ENQ\DC2\ETXXA^\n\
    \A\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX[\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX[\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX[)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX[67\n\
    \Q\n\
    \\STX\EOT\EOT\DC2\EOT_\NULh\SOH\SUBE QueryVoteRequest is the request type for the Query/Vote RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX_\b\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETX`\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETX`\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXa\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\ETXa\STX-\n\
    \A\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXd\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXd\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXd\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXd\ETB\CAN\n\
    \A\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXg\STXD\SUB4 voter defines the voter address for the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXg\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXg\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXg\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXg\DC3C\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXg\DC4B\n\
    \S\n\
    \\STX\EOT\ENQ\DC2\EOTk\NULn\SOH\SUBG QueryVoteResponse is the response type for the Query/Vote RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXk\b\EM\n\
    \-\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXm\STXN\SUB  vote defines the queried vote.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXm\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXm\a\v\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXm\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETXm\DLEM\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\ETXm\DC1-\n\
    \\DLE\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\ETXm/L\n\
    \S\n\
    \\STX\EOT\ACK\DC2\EOTq\NULw\SOH\SUBG QueryVotesRequest is the request type for the Query/Votes RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXq\b\EM\n\
    \A\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXs\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXs\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXs\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXs\ETB\CAN\n\
    \I\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXv\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXv\STX'\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXv(2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXv56\n\
    \V\n\
    \\STX\EOT\a\DC2\ENQz\NUL\128\SOH\SOH\SUBI QueryVotesResponse is the response type for the Query/Votes RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXz\b\SUB\n\
    \/\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX|\STXX\SUB\" votes defines the queried votes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX|\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETX|\v\SI\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX|\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX|\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\ETX|\SUBW\n\
    \\SI\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\ETX|\ESC7\n\
    \\DLE\n\
    \\t\EOT\a\STX\NUL\b\245\140\166\ENQ\DC2\ETX|9V\n\
    \A\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX\DEL\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETX\DEL\STX(\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX\DEL)3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX\DEL67\n\
    \W\n\
    \\STX\EOT\b\DC2\ACK\131\SOH\NUL\135\SOH\SOH\SUBI QueryParamsRequest is the request type for the Query/Params RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\131\SOH\b\SUB\n\
    \t\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\134\SOH\STX\EM\SUBf params_type defines which parameters to query for, can be one of \"voting\",\n\
    \ \"tallying\" or \"deposit\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\134\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\134\SOH\ETB\CAN\n\
    \Y\n\
    \\STX\EOT\t\DC2\ACK\138\SOH\NUL\145\SOH\SOH\SUBK QueryParamsResponse is the response type for the Query/Params RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\138\SOH\b\ESC\n\
    \G\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\140\SOH\STX_\SUB9 voting_params defines the parameters related to voting.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\140\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\140\SOH\SI\FS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\140\SOH\US \n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\140\SOH!^\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\EOT\140\SOH\">\n\
    \\DC1\n\
    \\t\EOT\t\STX\NUL\b\245\140\166\ENQ\DC2\EOT\140\SOH@]\n\
    \I\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\142\SOH\STXa\SUB; deposit_params defines the parameters related to deposit.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\142\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\142\SOH\DLE\RS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\142\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\b\DC2\EOT\142\SOH#`\n\
    \\DLE\n\
    \\b\EOT\t\STX\SOH\b\233\251\ETX\DC2\EOT\142\SOH$@\n\
    \\DC1\n\
    \\t\EOT\t\STX\SOH\b\245\140\166\ENQ\DC2\EOT\142\SOHB_\n\
    \E\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\144\SOH\STX]\SUB7 tally_params defines the parameters related to tally.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ACK\DC2\EOT\144\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\144\SOH\SO\SUB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\144\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\b\DC2\EOT\144\SOH\US\\\n\
    \\DLE\n\
    \\b\EOT\t\STX\STX\b\233\251\ETX\DC2\EOT\144\SOH <\n\
    \\DC1\n\
    \\t\EOT\t\STX\STX\b\245\140\166\ENQ\DC2\EOT\144\SOH>[\n\
    \Y\n\
    \\STX\EOT\n\
    \\DC2\ACK\148\SOH\NUL\157\SOH\SOH\SUBK QueryDepositRequest is the request type for the Query/Deposit RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\148\SOH\b\ESC\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\149\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\129\244\ETX\DC2\EOT\149\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\150\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\141\244\ETX\DC2\EOT\150\SOH\STX-\n\
    \B\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\153\SOH\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\153\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\153\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\153\SOH\ETB\CAN\n\
    \K\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\156\SOH\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\156\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\156\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\156\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\156\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\156\SOH\CANF\n\
    \[\n\
    \\STX\EOT\v\DC2\ACK\160\SOH\NUL\163\SOH\SOH\SUBM QueryDepositResponse is the response type for the Query/Deposit RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\160\SOH\b\FS\n\
    \6\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\162\SOH\STXT\SUB( deposit defines the requested deposit.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\162\SOH\STX\t\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\162\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\162\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\EOT\162\SOH\SYNS\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\233\251\ETX\DC2\EOT\162\SOH\ETB3\n\
    \\DC1\n\
    \\t\EOT\v\STX\NUL\b\245\140\166\ENQ\DC2\EOT\162\SOH5R\n\
    \[\n\
    \\STX\EOT\f\DC2\ACK\166\SOH\NUL\172\SOH\SOH\SUBM QueryDepositsRequest is the request type for the Query/Deposits RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\166\SOH\b\FS\n\
    \B\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\168\SOH\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\168\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\168\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\168\SOH\ETB\CAN\n\
    \J\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\171\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\171\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\171\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\171\SOH56\n\
    \]\n\
    \\STX\EOT\r\DC2\ACK\175\SOH\NUL\181\SOH\SOH\SUBO QueryDepositsResponse is the response type for the Query/Deposits RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\175\SOH\b\GS\n\
    \8\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\177\SOH\STX^\SUB* deposits defines the requested deposits.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\EOT\177\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\177\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\177\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\177\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\177\SOH ]\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\233\251\ETX\DC2\EOT\177\SOH!=\n\
    \\DC1\n\
    \\t\EOT\r\STX\NUL\b\245\140\166\ENQ\DC2\EOT\177\SOH?\\\n\
    \B\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\180\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\180\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\180\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\180\SOH67\n\
    \[\n\
    \\STX\EOT\SO\DC2\ACK\184\SOH\NUL\187\SOH\SOH\SUBM QueryTallyResultRequest is the request type for the Query/Tally RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\184\SOH\b\US\n\
    \B\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\186\SOH\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\186\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\186\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\186\SOH\ETB\CAN\n\
    \]\n\
    \\STX\EOT\SI\DC2\ACK\190\SOH\NUL\193\SOH\SOH\SUBO QueryTallyResultResponse is the response type for the Query/Tally RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\190\SOH\b \n\
    \2\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\192\SOH\STXV\SUB$ tally defines the requested tally.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\192\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\192\SOH\SO\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\192\SOH\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\b\DC2\EOT\192\SOH\CANU\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\233\251\ETX\DC2\EOT\192\SOH\EM5\n\
    \\DC1\n\
    \\t\EOT\SI\STX\NUL\b\245\140\166\ENQ\DC2\EOT\192\SOH7Tb\ACKproto3"