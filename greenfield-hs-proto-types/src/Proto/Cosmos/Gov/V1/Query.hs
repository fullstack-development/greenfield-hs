{- This file was auto-generated from cosmos/gov/v1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1.Query (
        Query(..), QueryConstitutionRequest(), QueryConstitutionResponse(),
        QueryDepositRequest(), QueryDepositResponse(),
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Gov.V1.Gov
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Google.Api.Annotations
{- | Fields :
      -}
data QueryConstitutionRequest
  = QueryConstitutionRequest'_constructor {_QueryConstitutionRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryConstitutionRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryConstitutionRequest where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.QueryConstitutionRequest"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryConstitutionRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryConstitutionRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryConstitutionRequest'_unknownFields = y__})
  defMessage
    = QueryConstitutionRequest'_constructor
        {_QueryConstitutionRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryConstitutionRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryConstitutionRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryConstitutionRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryConstitutionRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryConstitutionRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.constitution' @:: Lens' QueryConstitutionResponse Data.Text.Text@ -}
data QueryConstitutionResponse
  = QueryConstitutionResponse'_constructor {_QueryConstitutionResponse'constitution :: !Data.Text.Text,
                                            _QueryConstitutionResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryConstitutionResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryConstitutionResponse "constitution" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryConstitutionResponse'constitution
           (\ x__ y__ -> x__ {_QueryConstitutionResponse'constitution = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryConstitutionResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.QueryConstitutionResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryConstitutionResponse\DC2\"\n\
      \\fconstitution\CAN\SOH \SOH(\tR\fconstitution"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        constitution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "constitution"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"constitution")) ::
              Data.ProtoLens.FieldDescriptor QueryConstitutionResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, constitution__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryConstitutionResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryConstitutionResponse'_unknownFields = y__})
  defMessage
    = QueryConstitutionResponse'_constructor
        {_QueryConstitutionResponse'constitution = Data.ProtoLens.fieldDefault,
         _QueryConstitutionResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryConstitutionResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryConstitutionResponse
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
                                       "constitution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"constitution") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryConstitutionResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"constitution") _x
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
instance Control.DeepSeq.NFData QueryConstitutionResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryConstitutionResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryConstitutionResponse'constitution x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposalId' @:: Lens' QueryDepositRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.depositor' @:: Lens' QueryDepositRequest Data.Text.Text@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryDepositRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryDepositRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC26\n\
      \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString"
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.deposit' @:: Lens' QueryDepositResponse Proto.Cosmos.Gov.V1.Gov.Deposit@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'deposit' @:: Lens' QueryDepositResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Deposit)@ -}
data QueryDepositResponse
  = QueryDepositResponse'_constructor {_QueryDepositResponse'deposit :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Deposit),
                                       _QueryDepositResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDepositResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDepositResponse "deposit" Proto.Cosmos.Gov.V1.Gov.Deposit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositResponse'deposit
           (\ x__ y__ -> x__ {_QueryDepositResponse'deposit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDepositResponse "maybe'deposit" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Deposit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositResponse'deposit
           (\ x__ y__ -> x__ {_QueryDepositResponse'deposit = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDepositResponse where
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryDepositResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryDepositResponse\DC20\n\
      \\adeposit\CAN\SOH \SOH(\v2\SYN.cosmos.gov.v1.DepositR\adeposit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        deposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Deposit)
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposalId' @:: Lens' QueryDepositsRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.pagination' @:: Lens' QueryDepositsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'pagination' @:: Lens' QueryDepositsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryDepositsRequest"
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.deposits' @:: Lens' QueryDepositsResponse [Proto.Cosmos.Gov.V1.Gov.Deposit]@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.vec'deposits' @:: Lens' QueryDepositsResponse (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Deposit)@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.pagination' @:: Lens' QueryDepositsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'pagination' @:: Lens' QueryDepositsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryDepositsResponse
  = QueryDepositsResponse'_constructor {_QueryDepositsResponse'deposits :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Deposit),
                                        _QueryDepositsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                        _QueryDepositsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDepositsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDepositsResponse "deposits" [Proto.Cosmos.Gov.V1.Gov.Deposit] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDepositsResponse'deposits
           (\ x__ y__ -> x__ {_QueryDepositsResponse'deposits = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDepositsResponse "vec'deposits" (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Deposit) where
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
    = Data.Text.pack "cosmos.gov.v1.QueryDepositsResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryDepositsResponse\DC22\n\
      \\bdeposits\CAN\SOH \ETX(\v2\SYN.cosmos.gov.v1.DepositR\bdeposits\DC2G\n\
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Deposit)
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
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1.Gov.Deposit
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.paramsType' @:: Lens' QueryParamsRequest Data.Text.Text@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryParamsRequest"
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.votingParams' @:: Lens' QueryParamsResponse Proto.Cosmos.Gov.V1.Gov.VotingParams@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'votingParams' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.VotingParams)@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.depositParams' @:: Lens' QueryParamsResponse Proto.Cosmos.Gov.V1.Gov.DepositParams@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'depositParams' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.DepositParams)@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.tallyParams' @:: Lens' QueryParamsResponse Proto.Cosmos.Gov.V1.Gov.TallyParams@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'tallyParams' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyParams)@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Cosmos.Gov.V1.Gov.Params@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'votingParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.VotingParams),
                                      _QueryParamsResponse'depositParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.DepositParams),
                                      _QueryParamsResponse'tallyParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyParams),
                                      _QueryParamsResponse'params :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "votingParams" Proto.Cosmos.Gov.V1.Gov.VotingParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'votingParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'votingParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'votingParams" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.VotingParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'votingParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'votingParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryParamsResponse "depositParams" Proto.Cosmos.Gov.V1.Gov.DepositParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'depositParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'depositParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'depositParams" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.DepositParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'depositParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'depositParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryParamsResponse "tallyParams" Proto.Cosmos.Gov.V1.Gov.TallyParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'tallyParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'tallyParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'tallyParams" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'tallyParams
           (\ x__ y__ -> x__ {_QueryParamsResponse'tallyParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Cosmos.Gov.V1.Gov.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2D\n\
      \\rvoting_params\CAN\SOH \SOH(\v2\ESC.cosmos.gov.v1.VotingParamsR\fvotingParamsB\STX\CAN\SOH\DC2G\n\
      \\SOdeposit_params\CAN\STX \SOH(\v2\FS.cosmos.gov.v1.DepositParamsR\rdepositParamsB\STX\CAN\SOH\DC2A\n\
      \\ftally_params\CAN\ETX \SOH(\v2\SUB.cosmos.gov.v1.TallyParamsR\vtallyParamsB\STX\CAN\SOH\DC2-\n\
      \\ACKparams\CAN\EOT \SOH(\v2\NAK.cosmos.gov.v1.ParamsR\ACKparams"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        votingParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.VotingParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingParams")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
        depositParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.DepositParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depositParams")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
        tallyParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.TallyParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tallyParams")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, votingParams__field_descriptor),
           (Data.ProtoLens.Tag 2, depositParams__field_descriptor),
           (Data.ProtoLens.Tag 3, tallyParams__field_descriptor),
           (Data.ProtoLens.Tag 4, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsResponse'_unknownFields = y__})
  defMessage
    = QueryParamsResponse'_constructor
        {_QueryParamsResponse'votingParams = Prelude.Nothing,
         _QueryParamsResponse'depositParams = Prelude.Nothing,
         _QueryParamsResponse'tallyParams = Prelude.Nothing,
         _QueryParamsResponse'params = Prelude.Nothing,
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
                        34
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
                      (_QueryParamsResponse'tallyParams x__)
                      (Control.DeepSeq.deepseq (_QueryParamsResponse'params x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposalId' @:: Lens' QueryProposalRequest Data.Word.Word64@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryProposalRequest"
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposal' @:: Lens' QueryProposalResponse Proto.Cosmos.Gov.V1.Gov.Proposal@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'proposal' @:: Lens' QueryProposalResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Proposal)@ -}
data QueryProposalResponse
  = QueryProposalResponse'_constructor {_QueryProposalResponse'proposal :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Proposal),
                                        _QueryProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalResponse "proposal" Proto.Cosmos.Gov.V1.Gov.Proposal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalResponse'proposal
           (\ x__ y__ -> x__ {_QueryProposalResponse'proposal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryProposalResponse "maybe'proposal" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalResponse'proposal
           (\ x__ y__ -> x__ {_QueryProposalResponse'proposal = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.QueryProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryProposalResponse\DC23\n\
      \\bproposal\CAN\SOH \SOH(\v2\ETB.cosmos.gov.v1.ProposalR\bproposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Proposal)
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposalStatus' @:: Lens' QueryProposalsRequest Proto.Cosmos.Gov.V1.Gov.ProposalStatus@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.voter' @:: Lens' QueryProposalsRequest Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.depositor' @:: Lens' QueryProposalsRequest Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.pagination' @:: Lens' QueryProposalsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'pagination' @:: Lens' QueryProposalsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryProposalsRequest
  = QueryProposalsRequest'_constructor {_QueryProposalsRequest'proposalStatus :: !Proto.Cosmos.Gov.V1.Gov.ProposalStatus,
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
instance Data.ProtoLens.Field.HasField QueryProposalsRequest "proposalStatus" Proto.Cosmos.Gov.V1.Gov.ProposalStatus where
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
    = Data.Text.pack "cosmos.gov.v1.QueryProposalsRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryProposalsRequest\DC2F\n\
      \\SIproposal_status\CAN\SOH \SOH(\SO2\GS.cosmos.gov.v1.ProposalStatusR\SOproposalStatus\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
      \\tdepositor\CAN\ETX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.ProposalStatus)
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposals' @:: Lens' QueryProposalsResponse [Proto.Cosmos.Gov.V1.Gov.Proposal]@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.vec'proposals' @:: Lens' QueryProposalsResponse (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Proposal)@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.pagination' @:: Lens' QueryProposalsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'pagination' @:: Lens' QueryProposalsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryProposalsResponse
  = QueryProposalsResponse'_constructor {_QueryProposalsResponse'proposals :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Proposal),
                                         _QueryProposalsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                         _QueryProposalsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalsResponse "proposals" [Proto.Cosmos.Gov.V1.Gov.Proposal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsResponse'proposals
           (\ x__ y__ -> x__ {_QueryProposalsResponse'proposals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryProposalsResponse "vec'proposals" (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Proposal) where
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
    = Data.Text.pack "cosmos.gov.v1.QueryProposalsResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryProposalsResponse\DC25\n\
      \\tproposals\CAN\SOH \ETX(\v2\ETB.cosmos.gov.v1.ProposalR\tproposals\DC2G\n\
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Proposal)
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
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1.Gov.Proposal
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposalId' @:: Lens' QueryTallyResultRequest Data.Word.Word64@ -}
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
    = Data.Text.pack "cosmos.gov.v1.QueryTallyResultRequest"
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.tally' @:: Lens' QueryTallyResultResponse Proto.Cosmos.Gov.V1.Gov.TallyResult@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'tally' @:: Lens' QueryTallyResultResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyResult)@ -}
data QueryTallyResultResponse
  = QueryTallyResultResponse'_constructor {_QueryTallyResultResponse'tally :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyResult),
                                           _QueryTallyResultResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryTallyResultResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryTallyResultResponse "tally" Proto.Cosmos.Gov.V1.Gov.TallyResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultResponse'tally
           (\ x__ y__ -> x__ {_QueryTallyResultResponse'tally = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryTallyResultResponse "maybe'tally" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultResponse'tally
           (\ x__ y__ -> x__ {_QueryTallyResultResponse'tally = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryTallyResultResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.QueryTallyResultResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryTallyResultResponse\DC20\n\
      \\ENQtally\CAN\SOH \SOH(\v2\SUB.cosmos.gov.v1.TallyResultR\ENQtally"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tally__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.TallyResult)
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposalId' @:: Lens' QueryVoteRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.voter' @:: Lens' QueryVoteRequest Data.Text.Text@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryVoteRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEQueryVoteRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString"
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.vote' @:: Lens' QueryVoteResponse Proto.Cosmos.Gov.V1.Gov.Vote@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'vote' @:: Lens' QueryVoteResponse (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Vote)@ -}
data QueryVoteResponse
  = QueryVoteResponse'_constructor {_QueryVoteResponse'vote :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Vote),
                                    _QueryVoteResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVoteResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVoteResponse "vote" Proto.Cosmos.Gov.V1.Gov.Vote where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteResponse'vote
           (\ x__ y__ -> x__ {_QueryVoteResponse'vote = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVoteResponse "maybe'vote" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteResponse'vote
           (\ x__ y__ -> x__ {_QueryVoteResponse'vote = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVoteResponse where
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryVoteResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1QueryVoteResponse\DC2'\n\
      \\EOTvote\CAN\SOH \SOH(\v2\DC3.cosmos.gov.v1.VoteR\EOTvote"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vote__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Vote)
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.proposalId' @:: Lens' QueryVotesRequest Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.pagination' @:: Lens' QueryVotesRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryVotesRequest"
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
     
         * 'Proto.Cosmos.Gov.V1.Query_Fields.votes' @:: Lens' QueryVotesResponse [Proto.Cosmos.Gov.V1.Gov.Vote]@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.vec'votes' @:: Lens' QueryVotesResponse (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Vote)@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.pagination' @:: Lens' QueryVotesResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Gov.V1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryVotesResponse
  = QueryVotesResponse'_constructor {_QueryVotesResponse'votes :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Vote),
                                     _QueryVotesResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                     _QueryVotesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVotesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVotesResponse "votes" [Proto.Cosmos.Gov.V1.Gov.Vote] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesResponse'votes
           (\ x__ y__ -> x__ {_QueryVotesResponse'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryVotesResponse "vec'votes" (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Vote) where
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
  messageName _ = Data.Text.pack "cosmos.gov.v1.QueryVotesResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryVotesResponse\DC2)\n\
      \\ENQvotes\CAN\SOH \ETX(\v2\DC3.cosmos.gov.v1.VoteR\ENQvotes\DC2G\n\
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Vote)
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
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1.Gov.Vote
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
  type ServicePackage Query = "cosmos.gov.v1"
  type ServiceMethods Query = '["constitution",
                                "deposit",
                                "deposits",
                                "params",
                                "proposal",
                                "proposals",
                                "tallyResult",
                                "vote",
                                "votes"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\134\SOH\n\
      \\fConstitution\DC2'.cosmos.gov.v1.QueryConstitutionRequest\SUB(.cosmos.gov.v1.QueryConstitutionResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/gov/v1/constitution\DC2\133\SOH\n\
      \\bProposal\DC2#.cosmos.gov.v1.QueryProposalRequest\SUB$.cosmos.gov.v1.QueryProposalResponse\".\130\211\228\147\STX(\DC2&/cosmos/gov/v1/proposals/{proposal_id}\DC2z\n\
      \\tProposals\DC2$.cosmos.gov.v1.QueryProposalsRequest\SUB%.cosmos.gov.v1.QueryProposalsResponse\" \130\211\228\147\STX\SUB\DC2\CAN/cosmos/gov/v1/proposals\DC2\135\SOH\n\
      \\EOTVote\DC2\US.cosmos.gov.v1.QueryVoteRequest\SUB .cosmos.gov.v1.QueryVoteResponse\"<\130\211\228\147\STX6\DC24/cosmos/gov/v1/proposals/{proposal_id}/votes/{voter}\DC2\130\SOH\n\
      \\ENQVotes\DC2 .cosmos.gov.v1.QueryVotesRequest\SUB!.cosmos.gov.v1.QueryVotesResponse\"4\130\211\228\147\STX.\DC2,/cosmos/gov/v1/proposals/{proposal_id}/votes\DC2|\n\
      \\ACKParams\DC2!.cosmos.gov.v1.QueryParamsRequest\SUB\".cosmos.gov.v1.QueryParamsResponse\"+\130\211\228\147\STX%\DC2#/cosmos/gov/v1/params/{params_type}\DC2\151\SOH\n\
      \\aDeposit\DC2\".cosmos.gov.v1.QueryDepositRequest\SUB#.cosmos.gov.v1.QueryDepositResponse\"C\130\211\228\147\STX=\DC2;/cosmos/gov/v1/proposals/{proposal_id}/deposits/{depositor}\DC2\142\SOH\n\
      \\bDeposits\DC2#.cosmos.gov.v1.QueryDepositsRequest\SUB$.cosmos.gov.v1.QueryDepositsResponse\"7\130\211\228\147\STX1\DC2//cosmos/gov/v1/proposals/{proposal_id}/deposits\DC2\148\SOH\n\
      \\vTallyResult\DC2&.cosmos.gov.v1.QueryTallyResultRequest\SUB'.cosmos.gov.v1.QueryTallyResultResponse\"4\130\211\228\147\STX.\DC2,/cosmos/gov/v1/proposals/{proposal_id}/tally"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "constitution" where
  type MethodName Query "constitution" = "Constitution"
  type MethodInput Query "constitution" = QueryConstitutionRequest
  type MethodOutput Query "constitution" = QueryConstitutionResponse
  type MethodStreamingType Query "constitution" = 'Data.ProtoLens.Service.Types.NonStreaming
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
    \\EMcosmos/gov/v1/query.proto\DC2\rcosmos.gov.v1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\FSgoogle/api/annotations.proto\SUB\ETBcosmos/gov/v1/gov.proto\SUB\EMcosmos_proto/cosmos.proto\"\SUB\n\
    \\CANQueryConstitutionRequest\"?\n\
    \\EMQueryConstitutionResponse\DC2\"\n\
    \\fconstitution\CAN\SOH \SOH(\tR\fconstitution\"7\n\
    \\DC4QueryProposalRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"L\n\
    \\NAKQueryProposalResponse\DC23\n\
    \\bproposal\CAN\SOH \SOH(\v2\ETB.cosmos.gov.v1.ProposalR\bproposal\"\143\STX\n\
    \\NAKQueryProposalsRequest\DC2F\n\
    \\SIproposal_status\CAN\SOH \SOH(\SO2\GS.cosmos.gov.v1.ProposalStatusR\SOproposalStatus\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
    \\tdepositor\CAN\ETX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\152\SOH\n\
    \\SYNQueryProposalsResponse\DC25\n\
    \\tproposals\CAN\SOH \ETX(\v2\ETB.cosmos.gov.v1.ProposalR\tproposals\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"c\n\
    \\DLEQueryVoteRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\"<\n\
    \\DC1QueryVoteResponse\DC2'\n\
    \\EOTvote\CAN\SOH \SOH(\v2\DC3.cosmos.gov.v1.VoteR\EOTvote\"|\n\
    \\DC1QueryVotesRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\136\SOH\n\
    \\DC2QueryVotesResponse\DC2)\n\
    \\ENQvotes\CAN\SOH \ETX(\v2\DC3.cosmos.gov.v1.VoteR\ENQvotes\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"5\n\
    \\DC2QueryParamsRequest\DC2\US\n\
    \\vparams_type\CAN\SOH \SOH(\tR\n\
    \paramsType\"\150\STX\n\
    \\DC3QueryParamsResponse\DC2D\n\
    \\rvoting_params\CAN\SOH \SOH(\v2\ESC.cosmos.gov.v1.VotingParamsR\fvotingParamsB\STX\CAN\SOH\DC2G\n\
    \\SOdeposit_params\CAN\STX \SOH(\v2\FS.cosmos.gov.v1.DepositParamsR\rdepositParamsB\STX\CAN\SOH\DC2A\n\
    \\ftally_params\CAN\ETX \SOH(\v2\SUB.cosmos.gov.v1.TallyParamsR\vtallyParamsB\STX\CAN\SOH\DC2-\n\
    \\ACKparams\CAN\EOT \SOH(\v2\NAK.cosmos.gov.v1.ParamsR\ACKparams\"n\n\
    \\DC3QueryDepositRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC26\n\
    \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\"H\n\
    \\DC4QueryDepositResponse\DC20\n\
    \\adeposit\CAN\SOH \SOH(\v2\SYN.cosmos.gov.v1.DepositR\adeposit\"\DEL\n\
    \\DC4QueryDepositsRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\148\SOH\n\
    \\NAKQueryDepositsResponse\DC22\n\
    \\bdeposits\CAN\SOH \ETX(\v2\SYN.cosmos.gov.v1.DepositR\bdeposits\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\":\n\
    \\ETBQueryTallyResultRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"L\n\
    \\CANQueryTallyResultResponse\DC20\n\
    \\ENQtally\CAN\SOH \SOH(\v2\SUB.cosmos.gov.v1.TallyResultR\ENQtally2\227\t\n\
    \\ENQQuery\DC2\134\SOH\n\
    \\fConstitution\DC2'.cosmos.gov.v1.QueryConstitutionRequest\SUB(.cosmos.gov.v1.QueryConstitutionResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/gov/v1/constitution\DC2\133\SOH\n\
    \\bProposal\DC2#.cosmos.gov.v1.QueryProposalRequest\SUB$.cosmos.gov.v1.QueryProposalResponse\".\130\211\228\147\STX(\DC2&/cosmos/gov/v1/proposals/{proposal_id}\DC2z\n\
    \\tProposals\DC2$.cosmos.gov.v1.QueryProposalsRequest\SUB%.cosmos.gov.v1.QueryProposalsResponse\" \130\211\228\147\STX\SUB\DC2\CAN/cosmos/gov/v1/proposals\DC2\135\SOH\n\
    \\EOTVote\DC2\US.cosmos.gov.v1.QueryVoteRequest\SUB .cosmos.gov.v1.QueryVoteResponse\"<\130\211\228\147\STX6\DC24/cosmos/gov/v1/proposals/{proposal_id}/votes/{voter}\DC2\130\SOH\n\
    \\ENQVotes\DC2 .cosmos.gov.v1.QueryVotesRequest\SUB!.cosmos.gov.v1.QueryVotesResponse\"4\130\211\228\147\STX.\DC2,/cosmos/gov/v1/proposals/{proposal_id}/votes\DC2|\n\
    \\ACKParams\DC2!.cosmos.gov.v1.QueryParamsRequest\SUB\".cosmos.gov.v1.QueryParamsResponse\"+\130\211\228\147\STX%\DC2#/cosmos/gov/v1/params/{params_type}\DC2\151\SOH\n\
    \\aDeposit\DC2\".cosmos.gov.v1.QueryDepositRequest\SUB#.cosmos.gov.v1.QueryDepositResponse\"C\130\211\228\147\STX=\DC2;/cosmos/gov/v1/proposals/{proposal_id}/deposits/{depositor}\DC2\142\SOH\n\
    \\bDeposits\DC2#.cosmos.gov.v1.QueryDepositsRequest\SUB$.cosmos.gov.v1.QueryDepositsResponse\"7\130\211\228\147\STX1\DC2//cosmos/gov/v1/proposals/{proposal_id}/deposits\DC2\148\SOH\n\
    \\vTallyResult\DC2&.cosmos.gov.v1.QueryTallyResultRequest\SUB'.cosmos.gov.v1.QueryTallyResultResponse\"4\130\211\228\147\STX.\DC2,/cosmos/gov/v1/proposals/{proposal_id}/tallyB-Z+github.com/cosmos/cosmos-sdk/x/gov/types/v1J\219\&7\n\
    \\a\DC2\ENQ\STX\NUL\205\SOH\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\STX\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ETX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULB\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NULB\n\
    \C\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL:\SOH\SUB7 Query defines the gRPC querier service for gov module\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\r\n\
    \>\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SI\STX\DC1\ETX\SUB0 Constitution queries the chain's constitution.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SI\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SI\DC3+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SI6O\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DLE\EOTA\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DLE\EOTA\n\
    \F\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC4\STX\SYN\ETX\SUB8 Proposal queries proposal details based on ProposalID.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC4\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC4\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC4.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\NAK\EOTL\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\NAK\EOTL\n\
    \F\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\EM\STX\ESC\ETX\SUB8 Proposals queries all proposals based on given status.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\EM\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\EM\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\EM0F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\SUB\EOT>\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\SUB\EOT>\n\
    \N\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT\RS\STX \ETX\SUB@ Vote queries voted information based on proposalID, voterAddr.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\RS\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\RS\v\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\RS&7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX\US\EOTZ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX\US\EOTZ\n\
    \8\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT#\STX%\ETX\SUB* Votes queries votes of a given proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX#\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX#\f\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX#(:\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX$\EOTR\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX$\EOTR\n\
    \@\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT(\STX*\ETX\SUB2 Params queries all parameters of the gov module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX(\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX(\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX(*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX)\EOTI\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX)\EOTI\n\
    \Y\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT-\STX/\ETX\SUBK Deposit queries single deposit information based proposalID, depositAddr.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX-\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX-\SO!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX-,@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX.\EOTa\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX.\EOTa\n\
    \C\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT2\STX4\ETX\SUB5 Deposits queries all deposits of a single proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX2\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX2\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX2.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETX3\EOTU\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\ETX3\EOTU\n\
    \A\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOT7\STX9\ETX\SUB3 TallyResult queries the tally of a proposal vote.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX7\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX7\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX74L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETX8\EOTR\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\ETX8\EOTR\n\
    \_\n\
    \\STX\EOT\NUL\DC2\ETX=\NUL#\SUBT QueryConstitutionRequest is the request type for the Query/Constitution RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX=\b \n\
    \b\n\
    \\STX\EOT\SOH\DC2\EOT@\NULB\SOH\SUBV QueryConstitutionResponse is the response type for the Query/Constitution RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX@\b!\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXA\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXA\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXA\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXA\CAN\EM\n\
    \Y\n\
    \\STX\EOT\STX\DC2\EOTE\NULH\SOH\SUBM QueryProposalRequest is the request type for the Query/Proposal RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXE\b\FS\n\
    \A\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXG\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXG\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXG\ETB\CAN\n\
    \[\n\
    \\STX\EOT\ETX\DC2\EOTK\NULN\SOH\SUBO QueryProposalResponse is the response type for the Query/Proposal RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXK\b\GS\n\
    \=\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXM\STX\CAN\SUB0 proposal is the requested governance proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXM\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXM\SYN\ETB\n\
    \[\n\
    \\STX\EOT\EOT\DC2\EOTQ\NUL]\SOH\SUBO QueryProposalsRequest is the request type for the Query/Proposals RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXQ\b\GS\n\
    \C\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXS\STX%\SUB6 proposal_status defines the status of the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXS\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXS\DC1 \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXS#$\n\
    \A\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXV\STXD\SUB4 voter defines the voter address for the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXV\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXV\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXV\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXV\DC3C\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXV\DC4B\n\
    \J\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXY\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXY\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXY\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\ETXY\ETBG\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\202\214\ENQ\DC2\ETXY\CANF\n\
    \I\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX\\\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETX\\\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX\\(2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX\\56\n\
    \^\n\
    \\STX\EOT\ENQ\DC2\EOTa\NULg\SOH\SUBR QueryProposalsResponse is the response type for the Query/Proposals RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXa\b\RS\n\
    \H\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXc\STX\"\SUB; proposals defines all the requested governance proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETXc\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXc\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXc\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXc !\n\
    \A\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXf\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETXf\STX(\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXf)3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXf67\n\
    \Q\n\
    \\STX\EOT\ACK\DC2\EOTj\NULp\SOH\SUBE QueryVoteRequest is the request type for the Query/Vote RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXj\b\CAN\n\
    \A\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXl\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXl\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXl\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXl\ETB\CAN\n\
    \A\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXo\STXD\SUB4 voter defines the voter address for the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXo\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXo\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXo\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\ETXo\DC3C\n\
    \\SI\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\ETXo\DC4B\n\
    \S\n\
    \\STX\EOT\a\DC2\EOTs\NULv\SOH\SUBG QueryVoteResponse is the response type for the Query/Vote RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXs\b\EM\n\
    \-\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXu\STX\DLE\SUB  vote defines the queried vote.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXu\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXu\a\v\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXu\SO\SI\n\
    \S\n\
    \\STX\EOT\b\DC2\EOTy\NUL\DEL\SOH\SUBG QueryVotesRequest is the request type for the Query/Votes RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXy\b\EM\n\
    \A\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX{\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX{\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX{\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX{\ETB\CAN\n\
    \I\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX~\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\ETX~\STX'\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX~(2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX~56\n\
    \W\n\
    \\STX\EOT\t\DC2\ACK\130\SOH\NUL\136\SOH\SOH\SUBI QueryVotesResponse is the response type for the Query/Votes RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\130\SOH\b\SUB\n\
    \0\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\132\SOH\STX\SUB\SUB\" votes defines the queried votes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\132\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\132\SOH\DLE\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\132\SOH\CAN\EM\n\
    \B\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\135\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\135\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\135\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\135\SOH67\n\
    \W\n\
    \\STX\EOT\n\
    \\DC2\ACK\139\SOH\NUL\143\SOH\SOH\SUBI QueryParamsRequest is the request type for the Query/Params RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\139\SOH\b\SUB\n\
    \t\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\142\SOH\STX\EM\SUBf params_type defines which parameters to query for, can be one of \"voting\",\n\
    \ \"tallying\" or \"deposit\".\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\142\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\142\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\142\SOH\ETB\CAN\n\
    \Y\n\
    \\STX\EOT\v\DC2\ACK\146\SOH\NUL\160\SOH\SOH\SUBK QueryParamsResponse is the response type for the Query/Params RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\146\SOH\b\ESC\n\
    \t\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\149\SOH\STX5\SUBf Deprecated: Prefer to use `params` instead.\n\
    \ voting_params defines the parameters related to voting.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\149\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\149\SOH\SI\FS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\149\SOH\US \n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\EOT\149\SOH!4\n\
    \\SO\n\
    \\ACK\EOT\v\STX\NUL\b\ETX\DC2\EOT\149\SOH\"3\n\
    \v\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\152\SOH\STX7\SUBh Deprecated: Prefer to use `params` instead.\n\
    \ deposit_params defines the parameters related to deposit.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ACK\DC2\EOT\152\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\152\SOH\DLE\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\152\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\b\DC2\EOT\152\SOH#6\n\
    \\SO\n\
    \\ACK\EOT\v\STX\SOH\b\ETX\DC2\EOT\152\SOH$5\n\
    \r\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\155\SOH\STX3\SUBd Deprecated: Prefer to use `params` instead.\n\
    \ tally_params defines the parameters related to tally.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\155\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\155\SOH\SO\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\155\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\b\DC2\EOT\155\SOH\US2\n\
    \\SO\n\
    \\ACK\EOT\v\STX\STX\b\ETX\DC2\EOT\155\SOH 1\n\
    \[\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\159\SOH\STX\DC4\SUBM params defines all the paramaters of x/gov module.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ACK\DC2\EOT\159\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\159\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\159\SOH\DC2\DC3\n\
    \Y\n\
    \\STX\EOT\f\DC2\ACK\163\SOH\NUL\169\SOH\SOH\SUBK QueryDepositRequest is the request type for the Query/Deposit RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\163\SOH\b\ESC\n\
    \B\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\165\SOH\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\165\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\165\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\165\SOH\ETB\CAN\n\
    \K\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\168\SOH\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\168\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\168\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\168\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\b\DC2\EOT\168\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\f\STX\SOH\b\202\214\ENQ\DC2\EOT\168\SOH\CANF\n\
    \[\n\
    \\STX\EOT\r\DC2\ACK\172\SOH\NUL\175\SOH\SOH\SUBM QueryDepositResponse is the response type for the Query/Deposit RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\172\SOH\b\FS\n\
    \6\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\174\SOH\STX\SYN\SUB( deposit defines the requested deposit.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\174\SOH\STX\t\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\174\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\174\SOH\DC4\NAK\n\
    \[\n\
    \\STX\EOT\SO\DC2\ACK\178\SOH\NUL\184\SOH\SOH\SUBM QueryDepositsRequest is the request type for the Query/Deposits RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\178\SOH\b\FS\n\
    \B\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\180\SOH\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\180\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\180\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\180\SOH\ETB\CAN\n\
    \J\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\183\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\183\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\183\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\183\SOH56\n\
    \]\n\
    \\STX\EOT\SI\DC2\ACK\187\SOH\NUL\193\SOH\SOH\SUBO QueryDepositsResponse is the response type for the Query/Deposits RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\187\SOH\b\GS\n\
    \8\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\189\SOH\STX \SUB* deposits defines the requested deposits.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\EOT\189\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\189\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\189\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\189\SOH\RS\US\n\
    \B\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\192\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\192\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\192\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\192\SOH67\n\
    \[\n\
    \\STX\EOT\DLE\DC2\ACK\196\SOH\NUL\199\SOH\SOH\SUBM QueryTallyResultRequest is the request type for the Query/Tally RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\196\SOH\b\US\n\
    \B\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\198\SOH\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\198\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\198\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\198\SOH\ETB\CAN\n\
    \]\n\
    \\STX\EOT\DC1\DC2\ACK\202\SOH\NUL\205\SOH\SOH\SUBO QueryTallyResultResponse is the response type for the Query/Tally RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\202\SOH\b \n\
    \2\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\204\SOH\STX\CAN\SUB$ tally defines the requested tally.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\204\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\204\SOH\SO\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\204\SOH\SYN\ETBb\ACKproto3"