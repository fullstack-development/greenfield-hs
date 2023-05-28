{- This file was auto-generated from cosmos/staking/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Query (
        Query(..), QueryDelegationRequest(), QueryDelegationResponse(),
        QueryDelegatorDelegationsRequest(),
        QueryDelegatorDelegationsResponse(),
        QueryDelegatorUnbondingDelegationsRequest(),
        QueryDelegatorUnbondingDelegationsResponse(),
        QueryDelegatorValidatorRequest(),
        QueryDelegatorValidatorResponse(),
        QueryDelegatorValidatorsRequest(),
        QueryDelegatorValidatorsResponse(), QueryHistoricalInfoRequest(),
        QueryHistoricalInfoResponse(), QueryParamsRequest(),
        QueryParamsResponse(), QueryPoolRequest(), QueryPoolResponse(),
        QueryRedelegationsRequest(), QueryRedelegationsResponse(),
        QueryUnbondingDelegationRequest(),
        QueryUnbondingDelegationResponse(),
        QueryValidatorDelegationsRequest(),
        QueryValidatorDelegationsResponse(), QueryValidatorRequest(),
        QueryValidatorResponse(),
        QueryValidatorUnbondingDelegationsRequest(),
        QueryValidatorUnbondingDelegationsResponse(),
        QueryValidatorsRequest(), QueryValidatorsResponse()
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
import qualified Proto.Cosmos.Query.V1.Query
import qualified Proto.Cosmos.Staking.V1beta1.Staking
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegatorAddr' @:: Lens' QueryDelegationRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validatorAddr' @:: Lens' QueryDelegationRequest Data.Text.Text@ -}
data QueryDelegationRequest
  = QueryDelegationRequest'_constructor {_QueryDelegationRequest'delegatorAddr :: !Data.Text.Text,
                                         _QueryDelegationRequest'validatorAddr :: !Data.Text.Text,
                                         _QueryDelegationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegationRequest "delegatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationRequest'delegatorAddr
           (\ x__ y__ -> x__ {_QueryDelegationRequest'delegatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegationRequest "validatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationRequest'validatorAddr
           (\ x__ y__ -> x__ {_QueryDelegationRequest'validatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegationRequest where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryDelegationRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryDelegationRequest\DC2?\n\
      \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2?\n\
      \\SOvalidator_addr\CAN\STX \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationRequest
        validatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegationRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryDelegationRequest'_unknownFields = y__})
  defMessage
    = QueryDelegationRequest'_constructor
        {_QueryDelegationRequest'delegatorAddr = Data.ProtoLens.fieldDefault,
         _QueryDelegationRequest'validatorAddr = Data.ProtoLens.fieldDefault,
         _QueryDelegationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegationRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegationRequest
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
                                       "delegator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddr") y x)
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
                                       "validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDelegationRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddr") _x
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
                         (Data.ProtoLens.Field.field @"validatorAddr") _x
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
instance Control.DeepSeq.NFData QueryDelegationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegationRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegationRequest'delegatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegationRequest'validatorAddr x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegationResponse' @:: Lens' QueryDelegationResponse Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'delegationResponse' @:: Lens' QueryDelegationResponse (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse)@ -}
data QueryDelegationResponse
  = QueryDelegationResponse'_constructor {_QueryDelegationResponse'delegationResponse :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse),
                                          _QueryDelegationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegationResponse "delegationResponse" Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationResponse'delegationResponse
           (\ x__ y__
              -> x__ {_QueryDelegationResponse'delegationResponse = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegationResponse "maybe'delegationResponse" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationResponse'delegationResponse
           (\ x__ y__
              -> x__ {_QueryDelegationResponse'delegationResponse = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegationResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryDelegationResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryDelegationResponse\DC2[\n\
      \\DC3delegation_response\CAN\SOH \SOH(\v2*.cosmos.staking.v1beta1.DelegationResponseR\DC2delegationResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegationResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegation_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delegationResponse")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegationResponse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegationResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryDelegationResponse'_unknownFields = y__})
  defMessage
    = QueryDelegationResponse'_constructor
        {_QueryDelegationResponse'delegationResponse = Prelude.Nothing,
         _QueryDelegationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegationResponse
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
                                       "delegation_response"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegationResponse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDelegationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'delegationResponse") _x
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
instance Control.DeepSeq.NFData QueryDelegationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegationResponse'delegationResponse x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegatorAddr' @:: Lens' QueryDelegatorDelegationsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryDelegatorDelegationsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDelegatorDelegationsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryDelegatorDelegationsRequest
  = QueryDelegatorDelegationsRequest'_constructor {_QueryDelegatorDelegationsRequest'delegatorAddr :: !Data.Text.Text,
                                                   _QueryDelegatorDelegationsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                   _QueryDelegatorDelegationsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorDelegationsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorDelegationsRequest "delegatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorDelegationsRequest'delegatorAddr
           (\ x__ y__
              -> x__ {_QueryDelegatorDelegationsRequest'delegatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegatorDelegationsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorDelegationsRequest'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorDelegationsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegatorDelegationsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorDelegationsRequest'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorDelegationsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorDelegationsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorDelegationsRequest"
  packedMessageDescriptor _
    = "\n\
      \ QueryDelegatorDelegationsRequest\DC2?\n\
      \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorDelegationsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorDelegationsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorDelegationsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorDelegationsRequest'_unknownFields = y__})
  defMessage
    = QueryDelegatorDelegationsRequest'_constructor
        {_QueryDelegatorDelegationsRequest'delegatorAddr = Data.ProtoLens.fieldDefault,
         _QueryDelegatorDelegationsRequest'pagination = Prelude.Nothing,
         _QueryDelegatorDelegationsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorDelegationsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorDelegationsRequest
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
                                       "delegator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddr") y x)
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
          "QueryDelegatorDelegationsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddr") _x
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
instance Control.DeepSeq.NFData QueryDelegatorDelegationsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorDelegationsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorDelegationsRequest'delegatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegatorDelegationsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegationResponses' @:: Lens' QueryDelegatorDelegationsResponse [Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse]@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.vec'delegationResponses' @:: Lens' QueryDelegatorDelegationsResponse (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse)@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryDelegatorDelegationsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDelegatorDelegationsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryDelegatorDelegationsResponse
  = QueryDelegatorDelegationsResponse'_constructor {_QueryDelegatorDelegationsResponse'delegationResponses :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse),
                                                    _QueryDelegatorDelegationsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                    _QueryDelegatorDelegationsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorDelegationsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorDelegationsResponse "delegationResponses" [Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorDelegationsResponse'delegationResponses
           (\ x__ y__
              -> x__
                   {_QueryDelegatorDelegationsResponse'delegationResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDelegatorDelegationsResponse "vec'delegationResponses" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorDelegationsResponse'delegationResponses
           (\ x__ y__
              -> x__
                   {_QueryDelegatorDelegationsResponse'delegationResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegatorDelegationsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorDelegationsResponse'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorDelegationsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegatorDelegationsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorDelegationsResponse'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorDelegationsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorDelegationsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorDelegationsResponse"
  packedMessageDescriptor _
    = "\n\
      \!QueryDelegatorDelegationsResponse\DC2h\n\
      \\DC4delegation_responses\CAN\SOH \ETX(\v2*.cosmos.staking.v1beta1.DelegationResponseR\DC3delegationResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegationResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegation_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delegationResponses")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorDelegationsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorDelegationsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegationResponses__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorDelegationsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorDelegationsResponse'_unknownFields = y__})
  defMessage
    = QueryDelegatorDelegationsResponse'_constructor
        {_QueryDelegatorDelegationsResponse'delegationResponses = Data.Vector.Generic.empty,
         _QueryDelegatorDelegationsResponse'pagination = Prelude.Nothing,
         _QueryDelegatorDelegationsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorDelegationsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorDelegationsResponse
        loop x mutable'delegationResponses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'delegationResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'delegationResponses)
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
                              (Data.ProtoLens.Field.field @"vec'delegationResponses")
                              frozen'delegationResponses x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delegation_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delegationResponses y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'delegationResponses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'delegationResponses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'delegationResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'delegationResponses)
          "QueryDelegatorDelegationsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'delegationResponses") _x))
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
instance Control.DeepSeq.NFData QueryDelegatorDelegationsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorDelegationsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorDelegationsResponse'delegationResponses x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegatorDelegationsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegatorAddr' @:: Lens' QueryDelegatorUnbondingDelegationsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryDelegatorUnbondingDelegationsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDelegatorUnbondingDelegationsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryDelegatorUnbondingDelegationsRequest
  = QueryDelegatorUnbondingDelegationsRequest'_constructor {_QueryDelegatorUnbondingDelegationsRequest'delegatorAddr :: !Data.Text.Text,
                                                            _QueryDelegatorUnbondingDelegationsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                            _QueryDelegatorUnbondingDelegationsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorUnbondingDelegationsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorUnbondingDelegationsRequest "delegatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorUnbondingDelegationsRequest'delegatorAddr
           (\ x__ y__
              -> x__
                   {_QueryDelegatorUnbondingDelegationsRequest'delegatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegatorUnbondingDelegationsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorUnbondingDelegationsRequest'pagination
           (\ x__ y__
              -> x__
                   {_QueryDelegatorUnbondingDelegationsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegatorUnbondingDelegationsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorUnbondingDelegationsRequest'pagination
           (\ x__ y__
              -> x__
                   {_QueryDelegatorUnbondingDelegationsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorUnbondingDelegationsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorUnbondingDelegationsRequest"
  packedMessageDescriptor _
    = "\n\
      \)QueryDelegatorUnbondingDelegationsRequest\DC2?\n\
      \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorUnbondingDelegationsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorUnbondingDelegationsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorUnbondingDelegationsRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryDelegatorUnbondingDelegationsRequest'_unknownFields = y__})
  defMessage
    = QueryDelegatorUnbondingDelegationsRequest'_constructor
        {_QueryDelegatorUnbondingDelegationsRequest'delegatorAddr = Data.ProtoLens.fieldDefault,
         _QueryDelegatorUnbondingDelegationsRequest'pagination = Prelude.Nothing,
         _QueryDelegatorUnbondingDelegationsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorUnbondingDelegationsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorUnbondingDelegationsRequest
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
                                       "delegator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddr") y x)
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
          "QueryDelegatorUnbondingDelegationsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddr") _x
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
instance Control.DeepSeq.NFData QueryDelegatorUnbondingDelegationsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorUnbondingDelegationsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorUnbondingDelegationsRequest'delegatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegatorUnbondingDelegationsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.unbondingResponses' @:: Lens' QueryDelegatorUnbondingDelegationsResponse [Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation]@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.vec'unbondingResponses' @:: Lens' QueryDelegatorUnbondingDelegationsResponse (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryDelegatorUnbondingDelegationsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDelegatorUnbondingDelegationsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryDelegatorUnbondingDelegationsResponse
  = QueryDelegatorUnbondingDelegationsResponse'_constructor {_QueryDelegatorUnbondingDelegationsResponse'unbondingResponses :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation),
                                                             _QueryDelegatorUnbondingDelegationsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                             _QueryDelegatorUnbondingDelegationsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorUnbondingDelegationsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorUnbondingDelegationsResponse "unbondingResponses" [Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorUnbondingDelegationsResponse'unbondingResponses
           (\ x__ y__
              -> x__
                   {_QueryDelegatorUnbondingDelegationsResponse'unbondingResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDelegatorUnbondingDelegationsResponse "vec'unbondingResponses" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorUnbondingDelegationsResponse'unbondingResponses
           (\ x__ y__
              -> x__
                   {_QueryDelegatorUnbondingDelegationsResponse'unbondingResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegatorUnbondingDelegationsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorUnbondingDelegationsResponse'pagination
           (\ x__ y__
              -> x__
                   {_QueryDelegatorUnbondingDelegationsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegatorUnbondingDelegationsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorUnbondingDelegationsResponse'pagination
           (\ x__ y__
              -> x__
                   {_QueryDelegatorUnbondingDelegationsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorUnbondingDelegationsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorUnbondingDelegationsResponse"
  packedMessageDescriptor _
    = "\n\
      \*QueryDelegatorUnbondingDelegationsResponse\DC2g\n\
      \\DC3unbonding_responses\CAN\SOH \ETX(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\DC2unbondingResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        unbondingResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"unbondingResponses")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorUnbondingDelegationsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorUnbondingDelegationsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, unbondingResponses__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorUnbondingDelegationsResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryDelegatorUnbondingDelegationsResponse'_unknownFields = y__})
  defMessage
    = QueryDelegatorUnbondingDelegationsResponse'_constructor
        {_QueryDelegatorUnbondingDelegationsResponse'unbondingResponses = Data.Vector.Generic.empty,
         _QueryDelegatorUnbondingDelegationsResponse'pagination = Prelude.Nothing,
         _QueryDelegatorUnbondingDelegationsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorUnbondingDelegationsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorUnbondingDelegationsResponse
        loop x mutable'unbondingResponses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'unbondingResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'unbondingResponses)
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
                              (Data.ProtoLens.Field.field @"vec'unbondingResponses")
                              frozen'unbondingResponses x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "unbonding_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'unbondingResponses y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'unbondingResponses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'unbondingResponses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'unbondingResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'unbondingResponses)
          "QueryDelegatorUnbondingDelegationsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'unbondingResponses") _x))
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
instance Control.DeepSeq.NFData QueryDelegatorUnbondingDelegationsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorUnbondingDelegationsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorUnbondingDelegationsResponse'unbondingResponses
                   x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegatorUnbondingDelegationsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegatorAddr' @:: Lens' QueryDelegatorValidatorRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validatorAddr' @:: Lens' QueryDelegatorValidatorRequest Data.Text.Text@ -}
data QueryDelegatorValidatorRequest
  = QueryDelegatorValidatorRequest'_constructor {_QueryDelegatorValidatorRequest'delegatorAddr :: !Data.Text.Text,
                                                 _QueryDelegatorValidatorRequest'validatorAddr :: !Data.Text.Text,
                                                 _QueryDelegatorValidatorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorValidatorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorRequest "delegatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorRequest'delegatorAddr
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorRequest'delegatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorRequest "validatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorRequest'validatorAddr
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorRequest'validatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorValidatorRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorValidatorRequest"
  packedMessageDescriptor _
    = "\n\
      \\RSQueryDelegatorValidatorRequest\DC2?\n\
      \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2?\n\
      \\SOvalidator_addr\CAN\STX \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorRequest
        validatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorValidatorRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorValidatorRequest'_unknownFields = y__})
  defMessage
    = QueryDelegatorValidatorRequest'_constructor
        {_QueryDelegatorValidatorRequest'delegatorAddr = Data.ProtoLens.fieldDefault,
         _QueryDelegatorValidatorRequest'validatorAddr = Data.ProtoLens.fieldDefault,
         _QueryDelegatorValidatorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorValidatorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorValidatorRequest
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
                                       "delegator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddr") y x)
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
                                       "validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryDelegatorValidatorRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddr") _x
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
                         (Data.ProtoLens.Field.field @"validatorAddr") _x
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
instance Control.DeepSeq.NFData QueryDelegatorValidatorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorValidatorRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorValidatorRequest'delegatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegatorValidatorRequest'validatorAddr x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validator' @:: Lens' QueryDelegatorValidatorResponse Proto.Cosmos.Staking.V1beta1.Staking.Validator@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'validator' @:: Lens' QueryDelegatorValidatorResponse (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Validator)@ -}
data QueryDelegatorValidatorResponse
  = QueryDelegatorValidatorResponse'_constructor {_QueryDelegatorValidatorResponse'validator :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Validator),
                                                  _QueryDelegatorValidatorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorValidatorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorResponse "validator" Proto.Cosmos.Staking.V1beta1.Staking.Validator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorResponse'validator
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorResponse'validator = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorResponse "maybe'validator" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorResponse'validator
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorResponse'validator = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorValidatorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorValidatorResponse"
  packedMessageDescriptor _
    = "\n\
      \\USQueryDelegatorValidatorResponse\DC2J\n\
      \\tvalidator\CAN\SOH \SOH(\v2!.cosmos.staking.v1beta1.ValidatorR\tvalidatorB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Validator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validator")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validator__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorValidatorResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorValidatorResponse'_unknownFields = y__})
  defMessage
    = QueryDelegatorValidatorResponse'_constructor
        {_QueryDelegatorValidatorResponse'validator = Prelude.Nothing,
         _QueryDelegatorValidatorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorValidatorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorValidatorResponse
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
                                       "validator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validator") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryDelegatorValidatorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'validator") _x
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
instance Control.DeepSeq.NFData QueryDelegatorValidatorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorValidatorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorValidatorResponse'validator x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegatorAddr' @:: Lens' QueryDelegatorValidatorsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryDelegatorValidatorsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDelegatorValidatorsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryDelegatorValidatorsRequest
  = QueryDelegatorValidatorsRequest'_constructor {_QueryDelegatorValidatorsRequest'delegatorAddr :: !Data.Text.Text,
                                                  _QueryDelegatorValidatorsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                  _QueryDelegatorValidatorsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorValidatorsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsRequest "delegatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsRequest'delegatorAddr
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsRequest'delegatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsRequest'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsRequest'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorValidatorsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorValidatorsRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryDelegatorValidatorsRequest\DC2?\n\
      \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorValidatorsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorValidatorsRequest'_unknownFields = y__})
  defMessage
    = QueryDelegatorValidatorsRequest'_constructor
        {_QueryDelegatorValidatorsRequest'delegatorAddr = Data.ProtoLens.fieldDefault,
         _QueryDelegatorValidatorsRequest'pagination = Prelude.Nothing,
         _QueryDelegatorValidatorsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorValidatorsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorValidatorsRequest
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
                                       "delegator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddr") y x)
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
          "QueryDelegatorValidatorsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddr") _x
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
instance Control.DeepSeq.NFData QueryDelegatorValidatorsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorValidatorsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorValidatorsRequest'delegatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegatorValidatorsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validators' @:: Lens' QueryDelegatorValidatorsResponse [Proto.Cosmos.Staking.V1beta1.Staking.Validator]@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.vec'validators' @:: Lens' QueryDelegatorValidatorsResponse (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator)@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryDelegatorValidatorsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDelegatorValidatorsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryDelegatorValidatorsResponse
  = QueryDelegatorValidatorsResponse'_constructor {_QueryDelegatorValidatorsResponse'validators :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator),
                                                   _QueryDelegatorValidatorsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                   _QueryDelegatorValidatorsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorValidatorsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsResponse "validators" [Proto.Cosmos.Staking.V1beta1.Staking.Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsResponse'validators
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsResponse'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsResponse "vec'validators" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsResponse'validators
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsResponse'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsResponse'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsResponse'pagination
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorValidatorsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryDelegatorValidatorsResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryDelegatorValidatorsResponse\DC2L\n\
      \\n\
      \validators\CAN\SOH \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\n\
      \validatorsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validators__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorValidatorsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorValidatorsResponse'_unknownFields = y__})
  defMessage
    = QueryDelegatorValidatorsResponse'_constructor
        {_QueryDelegatorValidatorsResponse'validators = Data.Vector.Generic.empty,
         _QueryDelegatorValidatorsResponse'pagination = Prelude.Nothing,
         _QueryDelegatorValidatorsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorValidatorsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.Validator
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorValidatorsResponse
        loop x mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'validators") frozen'validators
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
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validators)
          "QueryDelegatorValidatorsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'validators") _x))
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
instance Control.DeepSeq.NFData QueryDelegatorValidatorsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorValidatorsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorValidatorsResponse'validators x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegatorValidatorsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.height' @:: Lens' QueryHistoricalInfoRequest Data.Int.Int64@ -}
data QueryHistoricalInfoRequest
  = QueryHistoricalInfoRequest'_constructor {_QueryHistoricalInfoRequest'height :: !Data.Int.Int64,
                                             _QueryHistoricalInfoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHistoricalInfoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHistoricalInfoRequest "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHistoricalInfoRequest'height
           (\ x__ y__ -> x__ {_QueryHistoricalInfoRequest'height = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHistoricalInfoRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryHistoricalInfoRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryHistoricalInfoRequest\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor QueryHistoricalInfoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHistoricalInfoRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryHistoricalInfoRequest'_unknownFields = y__})
  defMessage
    = QueryHistoricalInfoRequest'_constructor
        {_QueryHistoricalInfoRequest'height = Data.ProtoLens.fieldDefault,
         _QueryHistoricalInfoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHistoricalInfoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHistoricalInfoRequest
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHistoricalInfoRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryHistoricalInfoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHistoricalInfoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHistoricalInfoRequest'height x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.hist' @:: Lens' QueryHistoricalInfoResponse Proto.Cosmos.Staking.V1beta1.Staking.HistoricalInfo@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'hist' @:: Lens' QueryHistoricalInfoResponse (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.HistoricalInfo)@ -}
data QueryHistoricalInfoResponse
  = QueryHistoricalInfoResponse'_constructor {_QueryHistoricalInfoResponse'hist :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.HistoricalInfo),
                                              _QueryHistoricalInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryHistoricalInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryHistoricalInfoResponse "hist" Proto.Cosmos.Staking.V1beta1.Staking.HistoricalInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHistoricalInfoResponse'hist
           (\ x__ y__ -> x__ {_QueryHistoricalInfoResponse'hist = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryHistoricalInfoResponse "maybe'hist" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.HistoricalInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryHistoricalInfoResponse'hist
           (\ x__ y__ -> x__ {_QueryHistoricalInfoResponse'hist = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryHistoricalInfoResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryHistoricalInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryHistoricalInfoResponse\DC2:\n\
      \\EOThist\CAN\SOH \SOH(\v2&.cosmos.staking.v1beta1.HistoricalInfoR\EOThist"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hist__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hist"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.HistoricalInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hist")) ::
              Data.ProtoLens.FieldDescriptor QueryHistoricalInfoResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, hist__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryHistoricalInfoResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryHistoricalInfoResponse'_unknownFields = y__})
  defMessage
    = QueryHistoricalInfoResponse'_constructor
        {_QueryHistoricalInfoResponse'hist = Prelude.Nothing,
         _QueryHistoricalInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryHistoricalInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryHistoricalInfoResponse
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
                                       "hist"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hist") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryHistoricalInfoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hist") _x
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
instance Control.DeepSeq.NFData QueryHistoricalInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryHistoricalInfoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryHistoricalInfoResponse'hist x__) ())
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
    = Data.Text.pack "cosmos.staking.v1beta1.QueryParamsRequest"
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
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Cosmos.Staking.V1beta1.Staking.Params@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Cosmos.Staking.V1beta1.Staking.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2A\n\
      \\ACKparams\CAN\SOH \SOH(\v2\RS.cosmos.staking.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Params)
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
      -}
data QueryPoolRequest
  = QueryPoolRequest'_constructor {_QueryPoolRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPoolRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryPoolRequest where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryPoolRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEQueryPoolRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPoolRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryPoolRequest'_unknownFields = y__})
  defMessage
    = QueryPoolRequest'_constructor
        {_QueryPoolRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPoolRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPoolRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryPoolRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryPoolRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPoolRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pool' @:: Lens' QueryPoolResponse Proto.Cosmos.Staking.V1beta1.Staking.Pool@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pool' @:: Lens' QueryPoolResponse (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Pool)@ -}
data QueryPoolResponse
  = QueryPoolResponse'_constructor {_QueryPoolResponse'pool :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Pool),
                                    _QueryPoolResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryPoolResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryPoolResponse "pool" Proto.Cosmos.Staking.V1beta1.Staking.Pool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPoolResponse'pool
           (\ x__ y__ -> x__ {_QueryPoolResponse'pool = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryPoolResponse "maybe'pool" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Pool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryPoolResponse'pool
           (\ x__ y__ -> x__ {_QueryPoolResponse'pool = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryPoolResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryPoolResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1QueryPoolResponse\DC2;\n\
      \\EOTpool\CAN\SOH \SOH(\v2\FS.cosmos.staking.v1beta1.PoolR\EOTpoolB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pool__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Pool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pool")) ::
              Data.ProtoLens.FieldDescriptor QueryPoolResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, pool__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryPoolResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryPoolResponse'_unknownFields = y__})
  defMessage
    = QueryPoolResponse'_constructor
        {_QueryPoolResponse'pool = Prelude.Nothing,
         _QueryPoolResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryPoolResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryPoolResponse
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
                                       "pool"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pool") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryPoolResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pool") _x
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
instance Control.DeepSeq.NFData QueryPoolResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryPoolResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryPoolResponse'pool x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegatorAddr' @:: Lens' QueryRedelegationsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.srcValidatorAddr' @:: Lens' QueryRedelegationsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.dstValidatorAddr' @:: Lens' QueryRedelegationsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryRedelegationsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryRedelegationsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryRedelegationsRequest
  = QueryRedelegationsRequest'_constructor {_QueryRedelegationsRequest'delegatorAddr :: !Data.Text.Text,
                                            _QueryRedelegationsRequest'srcValidatorAddr :: !Data.Text.Text,
                                            _QueryRedelegationsRequest'dstValidatorAddr :: !Data.Text.Text,
                                            _QueryRedelegationsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                            _QueryRedelegationsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryRedelegationsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryRedelegationsRequest "delegatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsRequest'delegatorAddr
           (\ x__ y__
              -> x__ {_QueryRedelegationsRequest'delegatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryRedelegationsRequest "srcValidatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsRequest'srcValidatorAddr
           (\ x__ y__
              -> x__ {_QueryRedelegationsRequest'srcValidatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryRedelegationsRequest "dstValidatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsRequest'dstValidatorAddr
           (\ x__ y__
              -> x__ {_QueryRedelegationsRequest'dstValidatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryRedelegationsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsRequest'pagination
           (\ x__ y__ -> x__ {_QueryRedelegationsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryRedelegationsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsRequest'pagination
           (\ x__ y__ -> x__ {_QueryRedelegationsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryRedelegationsRequest where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryRedelegationsRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryRedelegationsRequest\DC2?\n\
      \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\DC2src_validator_addr\CAN\STX \SOH(\tR\DLEsrcValidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\DC2dst_validator_addr\CAN\ETX \SOH(\tR\DLEdstValidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryRedelegationsRequest
        srcValidatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"srcValidatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryRedelegationsRequest
        dstValidatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dstValidatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryRedelegationsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryRedelegationsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, srcValidatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 3, dstValidatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 4, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryRedelegationsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryRedelegationsRequest'_unknownFields = y__})
  defMessage
    = QueryRedelegationsRequest'_constructor
        {_QueryRedelegationsRequest'delegatorAddr = Data.ProtoLens.fieldDefault,
         _QueryRedelegationsRequest'srcValidatorAddr = Data.ProtoLens.fieldDefault,
         _QueryRedelegationsRequest'dstValidatorAddr = Data.ProtoLens.fieldDefault,
         _QueryRedelegationsRequest'pagination = Prelude.Nothing,
         _QueryRedelegationsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryRedelegationsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryRedelegationsRequest
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
                                       "delegator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddr") y x)
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
                                       "src_validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"srcValidatorAddr") y x)
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
                                       "dst_validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dstValidatorAddr") y x)
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
          (do loop Data.ProtoLens.defMessage) "QueryRedelegationsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddr") _x
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
                         (Data.ProtoLens.Field.field @"srcValidatorAddr") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"dstValidatorAddr") _x
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
instance Control.DeepSeq.NFData QueryRedelegationsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryRedelegationsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryRedelegationsRequest'delegatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryRedelegationsRequest'srcValidatorAddr x__)
                   (Control.DeepSeq.deepseq
                      (_QueryRedelegationsRequest'dstValidatorAddr x__)
                      (Control.DeepSeq.deepseq
                         (_QueryRedelegationsRequest'pagination x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.redelegationResponses' @:: Lens' QueryRedelegationsResponse [Proto.Cosmos.Staking.V1beta1.Staking.RedelegationResponse]@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.vec'redelegationResponses' @:: Lens' QueryRedelegationsResponse (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.RedelegationResponse)@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryRedelegationsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryRedelegationsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryRedelegationsResponse
  = QueryRedelegationsResponse'_constructor {_QueryRedelegationsResponse'redelegationResponses :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.RedelegationResponse),
                                             _QueryRedelegationsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                             _QueryRedelegationsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryRedelegationsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryRedelegationsResponse "redelegationResponses" [Proto.Cosmos.Staking.V1beta1.Staking.RedelegationResponse] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsResponse'redelegationResponses
           (\ x__ y__
              -> x__ {_QueryRedelegationsResponse'redelegationResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryRedelegationsResponse "vec'redelegationResponses" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.RedelegationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsResponse'redelegationResponses
           (\ x__ y__
              -> x__ {_QueryRedelegationsResponse'redelegationResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryRedelegationsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsResponse'pagination
           (\ x__ y__ -> x__ {_QueryRedelegationsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryRedelegationsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryRedelegationsResponse'pagination
           (\ x__ y__ -> x__ {_QueryRedelegationsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryRedelegationsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryRedelegationsResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryRedelegationsResponse\DC2n\n\
      \\SYNredelegation_responses\CAN\SOH \ETX(\v2,.cosmos.staking.v1beta1.RedelegationResponseR\NAKredelegationResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        redelegationResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redelegation_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.RedelegationResponse)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"redelegationResponses")) ::
              Data.ProtoLens.FieldDescriptor QueryRedelegationsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryRedelegationsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, redelegationResponses__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryRedelegationsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryRedelegationsResponse'_unknownFields = y__})
  defMessage
    = QueryRedelegationsResponse'_constructor
        {_QueryRedelegationsResponse'redelegationResponses = Data.Vector.Generic.empty,
         _QueryRedelegationsResponse'pagination = Prelude.Nothing,
         _QueryRedelegationsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryRedelegationsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.RedelegationResponse
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryRedelegationsResponse
        loop x mutable'redelegationResponses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'redelegationResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'redelegationResponses)
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
                              (Data.ProtoLens.Field.field @"vec'redelegationResponses")
                              frozen'redelegationResponses x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "redelegation_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'redelegationResponses y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'redelegationResponses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'redelegationResponses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'redelegationResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'redelegationResponses)
          "QueryRedelegationsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'redelegationResponses") _x))
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
instance Control.DeepSeq.NFData QueryRedelegationsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryRedelegationsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryRedelegationsResponse'redelegationResponses x__)
                (Control.DeepSeq.deepseq
                   (_QueryRedelegationsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegatorAddr' @:: Lens' QueryUnbondingDelegationRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validatorAddr' @:: Lens' QueryUnbondingDelegationRequest Data.Text.Text@ -}
data QueryUnbondingDelegationRequest
  = QueryUnbondingDelegationRequest'_constructor {_QueryUnbondingDelegationRequest'delegatorAddr :: !Data.Text.Text,
                                                  _QueryUnbondingDelegationRequest'validatorAddr :: !Data.Text.Text,
                                                  _QueryUnbondingDelegationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryUnbondingDelegationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryUnbondingDelegationRequest "delegatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryUnbondingDelegationRequest'delegatorAddr
           (\ x__ y__
              -> x__ {_QueryUnbondingDelegationRequest'delegatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryUnbondingDelegationRequest "validatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryUnbondingDelegationRequest'validatorAddr
           (\ x__ y__
              -> x__ {_QueryUnbondingDelegationRequest'validatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryUnbondingDelegationRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryUnbondingDelegationRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryUnbondingDelegationRequest\DC2?\n\
      \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2?\n\
      \\SOvalidator_addr\CAN\STX \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryUnbondingDelegationRequest
        validatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryUnbondingDelegationRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryUnbondingDelegationRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryUnbondingDelegationRequest'_unknownFields = y__})
  defMessage
    = QueryUnbondingDelegationRequest'_constructor
        {_QueryUnbondingDelegationRequest'delegatorAddr = Data.ProtoLens.fieldDefault,
         _QueryUnbondingDelegationRequest'validatorAddr = Data.ProtoLens.fieldDefault,
         _QueryUnbondingDelegationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryUnbondingDelegationRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryUnbondingDelegationRequest
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
                                       "delegator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddr") y x)
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
                                       "validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryUnbondingDelegationRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddr") _x
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
                         (Data.ProtoLens.Field.field @"validatorAddr") _x
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
instance Control.DeepSeq.NFData QueryUnbondingDelegationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryUnbondingDelegationRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryUnbondingDelegationRequest'delegatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryUnbondingDelegationRequest'validatorAddr x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.unbond' @:: Lens' QueryUnbondingDelegationResponse Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'unbond' @:: Lens' QueryUnbondingDelegationResponse (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)@ -}
data QueryUnbondingDelegationResponse
  = QueryUnbondingDelegationResponse'_constructor {_QueryUnbondingDelegationResponse'unbond :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation),
                                                   _QueryUnbondingDelegationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryUnbondingDelegationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryUnbondingDelegationResponse "unbond" Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryUnbondingDelegationResponse'unbond
           (\ x__ y__
              -> x__ {_QueryUnbondingDelegationResponse'unbond = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryUnbondingDelegationResponse "maybe'unbond" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryUnbondingDelegationResponse'unbond
           (\ x__ y__
              -> x__ {_QueryUnbondingDelegationResponse'unbond = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryUnbondingDelegationResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryUnbondingDelegationResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryUnbondingDelegationResponse\DC2N\n\
      \\ACKunbond\CAN\SOH \SOH(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\ACKunbondB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        unbond__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbond"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unbond")) ::
              Data.ProtoLens.FieldDescriptor QueryUnbondingDelegationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, unbond__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryUnbondingDelegationResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryUnbondingDelegationResponse'_unknownFields = y__})
  defMessage
    = QueryUnbondingDelegationResponse'_constructor
        {_QueryUnbondingDelegationResponse'unbond = Prelude.Nothing,
         _QueryUnbondingDelegationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryUnbondingDelegationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryUnbondingDelegationResponse
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
                                       "unbond"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"unbond") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryUnbondingDelegationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'unbond") _x
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
instance Control.DeepSeq.NFData QueryUnbondingDelegationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryUnbondingDelegationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryUnbondingDelegationResponse'unbond x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validatorAddr' @:: Lens' QueryValidatorDelegationsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorDelegationsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorDelegationsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryValidatorDelegationsRequest
  = QueryValidatorDelegationsRequest'_constructor {_QueryValidatorDelegationsRequest'validatorAddr :: !Data.Text.Text,
                                                   _QueryValidatorDelegationsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                   _QueryValidatorDelegationsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorDelegationsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorDelegationsRequest "validatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDelegationsRequest'validatorAddr
           (\ x__ y__
              -> x__ {_QueryValidatorDelegationsRequest'validatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorDelegationsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDelegationsRequest'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorDelegationsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorDelegationsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDelegationsRequest'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorDelegationsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorDelegationsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryValidatorDelegationsRequest"
  packedMessageDescriptor _
    = "\n\
      \ QueryValidatorDelegationsRequest\DC2?\n\
      \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDelegationsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDelegationsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorDelegationsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryValidatorDelegationsRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorDelegationsRequest'_constructor
        {_QueryValidatorDelegationsRequest'validatorAddr = Data.ProtoLens.fieldDefault,
         _QueryValidatorDelegationsRequest'pagination = Prelude.Nothing,
         _QueryValidatorDelegationsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorDelegationsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorDelegationsRequest
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
                                       "validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddr") y x)
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
          "QueryValidatorDelegationsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddr") _x
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
instance Control.DeepSeq.NFData QueryValidatorDelegationsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorDelegationsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorDelegationsRequest'validatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorDelegationsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.delegationResponses' @:: Lens' QueryValidatorDelegationsResponse [Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse]@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.vec'delegationResponses' @:: Lens' QueryValidatorDelegationsResponse (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse)@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorDelegationsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorDelegationsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryValidatorDelegationsResponse
  = QueryValidatorDelegationsResponse'_constructor {_QueryValidatorDelegationsResponse'delegationResponses :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse),
                                                    _QueryValidatorDelegationsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                    _QueryValidatorDelegationsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorDelegationsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorDelegationsResponse "delegationResponses" [Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDelegationsResponse'delegationResponses
           (\ x__ y__
              -> x__
                   {_QueryValidatorDelegationsResponse'delegationResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryValidatorDelegationsResponse "vec'delegationResponses" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDelegationsResponse'delegationResponses
           (\ x__ y__
              -> x__
                   {_QueryValidatorDelegationsResponse'delegationResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorDelegationsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDelegationsResponse'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorDelegationsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorDelegationsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDelegationsResponse'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorDelegationsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorDelegationsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryValidatorDelegationsResponse"
  packedMessageDescriptor _
    = "\n\
      \!QueryValidatorDelegationsResponse\DC2\DEL\n\
      \\DC4delegation_responses\CAN\SOH \ETX(\v2*.cosmos.staking.v1beta1.DelegationResponseR\DC3delegationResponsesB \200\222\US\NUL\170\223\US\DC3DelegationResponses\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegationResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegation_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delegationResponses")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDelegationsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDelegationsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegationResponses__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorDelegationsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryValidatorDelegationsResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorDelegationsResponse'_constructor
        {_QueryValidatorDelegationsResponse'delegationResponses = Data.Vector.Generic.empty,
         _QueryValidatorDelegationsResponse'pagination = Prelude.Nothing,
         _QueryValidatorDelegationsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorDelegationsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.DelegationResponse
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorDelegationsResponse
        loop x mutable'delegationResponses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'delegationResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'delegationResponses)
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
                              (Data.ProtoLens.Field.field @"vec'delegationResponses")
                              frozen'delegationResponses x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delegation_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delegationResponses y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'delegationResponses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'delegationResponses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'delegationResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'delegationResponses)
          "QueryValidatorDelegationsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'delegationResponses") _x))
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
instance Control.DeepSeq.NFData QueryValidatorDelegationsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorDelegationsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorDelegationsResponse'delegationResponses x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorDelegationsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validatorAddr' @:: Lens' QueryValidatorRequest Data.Text.Text@ -}
data QueryValidatorRequest
  = QueryValidatorRequest'_constructor {_QueryValidatorRequest'validatorAddr :: !Data.Text.Text,
                                        _QueryValidatorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorRequest "validatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorRequest'validatorAddr
           (\ x__ y__ -> x__ {_QueryValidatorRequest'validatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorRequest where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryValidatorRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryValidatorRequest\DC2?\n\
      \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryValidatorRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorRequest'_constructor
        {_QueryValidatorRequest'validatorAddr = Data.ProtoLens.fieldDefault,
         _QueryValidatorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorRequest
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
                                       "validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryValidatorRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddr") _x
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
instance Control.DeepSeq.NFData QueryValidatorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorRequest'validatorAddr x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validator' @:: Lens' QueryValidatorResponse Proto.Cosmos.Staking.V1beta1.Staking.Validator@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'validator' @:: Lens' QueryValidatorResponse (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Validator)@ -}
data QueryValidatorResponse
  = QueryValidatorResponse'_constructor {_QueryValidatorResponse'validator :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Validator),
                                         _QueryValidatorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorResponse "validator" Proto.Cosmos.Staking.V1beta1.Staking.Validator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorResponse'validator
           (\ x__ y__ -> x__ {_QueryValidatorResponse'validator = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorResponse "maybe'validator" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorResponse'validator
           (\ x__ y__ -> x__ {_QueryValidatorResponse'validator = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryValidatorResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryValidatorResponse\DC2J\n\
      \\tvalidator\CAN\SOH \SOH(\v2!.cosmos.staking.v1beta1.ValidatorR\tvalidatorB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Validator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validator")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validator__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryValidatorResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorResponse'_constructor
        {_QueryValidatorResponse'validator = Prelude.Nothing,
         _QueryValidatorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorResponse
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
                                       "validator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validator") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryValidatorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'validator") _x
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
instance Control.DeepSeq.NFData QueryValidatorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorResponse'validator x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validatorAddr' @:: Lens' QueryValidatorUnbondingDelegationsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorUnbondingDelegationsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorUnbondingDelegationsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryValidatorUnbondingDelegationsRequest
  = QueryValidatorUnbondingDelegationsRequest'_constructor {_QueryValidatorUnbondingDelegationsRequest'validatorAddr :: !Data.Text.Text,
                                                            _QueryValidatorUnbondingDelegationsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                            _QueryValidatorUnbondingDelegationsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorUnbondingDelegationsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorUnbondingDelegationsRequest "validatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorUnbondingDelegationsRequest'validatorAddr
           (\ x__ y__
              -> x__
                   {_QueryValidatorUnbondingDelegationsRequest'validatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorUnbondingDelegationsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorUnbondingDelegationsRequest'pagination
           (\ x__ y__
              -> x__
                   {_QueryValidatorUnbondingDelegationsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorUnbondingDelegationsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorUnbondingDelegationsRequest'pagination
           (\ x__ y__
              -> x__
                   {_QueryValidatorUnbondingDelegationsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorUnbondingDelegationsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryValidatorUnbondingDelegationsRequest"
  packedMessageDescriptor _
    = "\n\
      \)QueryValidatorUnbondingDelegationsRequest\DC2?\n\
      \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorUnbondingDelegationsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorUnbondingDelegationsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorUnbondingDelegationsRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryValidatorUnbondingDelegationsRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorUnbondingDelegationsRequest'_constructor
        {_QueryValidatorUnbondingDelegationsRequest'validatorAddr = Data.ProtoLens.fieldDefault,
         _QueryValidatorUnbondingDelegationsRequest'pagination = Prelude.Nothing,
         _QueryValidatorUnbondingDelegationsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorUnbondingDelegationsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorUnbondingDelegationsRequest
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
                                       "validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddr") y x)
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
          "QueryValidatorUnbondingDelegationsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddr") _x
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
instance Control.DeepSeq.NFData QueryValidatorUnbondingDelegationsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorUnbondingDelegationsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorUnbondingDelegationsRequest'validatorAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorUnbondingDelegationsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.unbondingResponses' @:: Lens' QueryValidatorUnbondingDelegationsResponse [Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation]@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.vec'unbondingResponses' @:: Lens' QueryValidatorUnbondingDelegationsResponse (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorUnbondingDelegationsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorUnbondingDelegationsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryValidatorUnbondingDelegationsResponse
  = QueryValidatorUnbondingDelegationsResponse'_constructor {_QueryValidatorUnbondingDelegationsResponse'unbondingResponses :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation),
                                                             _QueryValidatorUnbondingDelegationsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                             _QueryValidatorUnbondingDelegationsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorUnbondingDelegationsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorUnbondingDelegationsResponse "unbondingResponses" [Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorUnbondingDelegationsResponse'unbondingResponses
           (\ x__ y__
              -> x__
                   {_QueryValidatorUnbondingDelegationsResponse'unbondingResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryValidatorUnbondingDelegationsResponse "vec'unbondingResponses" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorUnbondingDelegationsResponse'unbondingResponses
           (\ x__ y__
              -> x__
                   {_QueryValidatorUnbondingDelegationsResponse'unbondingResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorUnbondingDelegationsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorUnbondingDelegationsResponse'pagination
           (\ x__ y__
              -> x__
                   {_QueryValidatorUnbondingDelegationsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorUnbondingDelegationsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorUnbondingDelegationsResponse'pagination
           (\ x__ y__
              -> x__
                   {_QueryValidatorUnbondingDelegationsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorUnbondingDelegationsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.QueryValidatorUnbondingDelegationsResponse"
  packedMessageDescriptor _
    = "\n\
      \*QueryValidatorUnbondingDelegationsResponse\DC2g\n\
      \\DC3unbonding_responses\CAN\SOH \ETX(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\DC2unbondingResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        unbondingResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"unbondingResponses")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorUnbondingDelegationsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorUnbondingDelegationsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, unbondingResponses__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorUnbondingDelegationsResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryValidatorUnbondingDelegationsResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorUnbondingDelegationsResponse'_constructor
        {_QueryValidatorUnbondingDelegationsResponse'unbondingResponses = Data.Vector.Generic.empty,
         _QueryValidatorUnbondingDelegationsResponse'pagination = Prelude.Nothing,
         _QueryValidatorUnbondingDelegationsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorUnbondingDelegationsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorUnbondingDelegationsResponse
        loop x mutable'unbondingResponses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'unbondingResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'unbondingResponses)
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
                              (Data.ProtoLens.Field.field @"vec'unbondingResponses")
                              frozen'unbondingResponses x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "unbonding_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'unbondingResponses y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'unbondingResponses
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'unbondingResponses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'unbondingResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'unbondingResponses)
          "QueryValidatorUnbondingDelegationsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'unbondingResponses") _x))
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
instance Control.DeepSeq.NFData QueryValidatorUnbondingDelegationsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorUnbondingDelegationsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorUnbondingDelegationsResponse'unbondingResponses
                   x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorUnbondingDelegationsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.status' @:: Lens' QueryValidatorsRequest Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryValidatorsRequest
  = QueryValidatorsRequest'_constructor {_QueryValidatorsRequest'status :: !Data.Text.Text,
                                         _QueryValidatorsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                         _QueryValidatorsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorsRequest "status" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorsRequest'status
           (\ x__ y__ -> x__ {_QueryValidatorsRequest'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorsRequest'pagination
           (\ x__ y__ -> x__ {_QueryValidatorsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorsRequest'pagination
           (\ x__ y__ -> x__ {_QueryValidatorsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorsRequest where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryValidatorsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryValidatorsRequest\DC2\SYN\n\
      \\ACKstatus\CAN\SOH \SOH(\tR\ACKstatus\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryValidatorsRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorsRequest'_constructor
        {_QueryValidatorsRequest'status = Data.ProtoLens.fieldDefault,
         _QueryValidatorsRequest'pagination = Prelude.Nothing,
         _QueryValidatorsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorsRequest
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
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
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
          (do loop Data.ProtoLens.defMessage) "QueryValidatorsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
instance Control.DeepSeq.NFData QueryValidatorsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorsRequest'status x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.validators' @:: Lens' QueryValidatorsResponse [Proto.Cosmos.Staking.V1beta1.Staking.Validator]@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.vec'validators' @:: Lens' QueryValidatorsResponse (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator)@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Staking.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryValidatorsResponse
  = QueryValidatorsResponse'_constructor {_QueryValidatorsResponse'validators :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator),
                                          _QueryValidatorsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                          _QueryValidatorsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorsResponse "validators" [Proto.Cosmos.Staking.V1beta1.Staking.Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorsResponse'validators
           (\ x__ y__ -> x__ {_QueryValidatorsResponse'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryValidatorsResponse "vec'validators" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorsResponse'validators
           (\ x__ y__ -> x__ {_QueryValidatorsResponse'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorsResponse'pagination
           (\ x__ y__ -> x__ {_QueryValidatorsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorsResponse'pagination
           (\ x__ y__ -> x__ {_QueryValidatorsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorsResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.QueryValidatorsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryValidatorsResponse\DC2L\n\
      \\n\
      \validators\CAN\SOH \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\n\
      \validatorsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validators__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryValidatorsResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorsResponse'_constructor
        {_QueryValidatorsResponse'validators = Data.Vector.Generic.empty,
         _QueryValidatorsResponse'pagination = Prelude.Nothing,
         _QueryValidatorsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.Validator
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorsResponse
        loop x mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'validators") frozen'validators
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
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validators)
          "QueryValidatorsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'validators") _x))
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
instance Control.DeepSeq.NFData QueryValidatorsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorsResponse'validators x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorsResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.staking.v1beta1"
  type ServiceMethods Query = '["delegation",
                                "delegatorDelegations",
                                "delegatorUnbondingDelegations",
                                "delegatorValidator",
                                "delegatorValidators",
                                "historicalInfo",
                                "params",
                                "pool",
                                "redelegations",
                                "unbondingDelegation",
                                "validator",
                                "validatorDelegations",
                                "validatorUnbondingDelegations",
                                "validators"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\158\SOH\n\
      \\n\
      \Validators\DC2..cosmos.staking.v1beta1.QueryValidatorsRequest\SUB/.cosmos.staking.v1beta1.QueryValidatorsResponse\"/\136\231\176*\SOH\130\211\228\147\STX$\DC2\"/cosmos/staking/v1beta1/validators\DC2\172\SOH\n\
      \\tValidator\DC2-.cosmos.staking.v1beta1.QueryValidatorRequest\SUB..cosmos.staking.v1beta1.QueryValidatorResponse\"@\136\231\176*\SOH\130\211\228\147\STX5\DC23/cosmos/staking/v1beta1/validators/{validator_addr}\DC2\217\SOH\n\
      \\DC4ValidatorDelegations\DC28.cosmos.staking.v1beta1.QueryValidatorDelegationsRequest\SUB9.cosmos.staking.v1beta1.QueryValidatorDelegationsResponse\"L\136\231\176*\SOH\130\211\228\147\STXA\DC2?/cosmos/staking/v1beta1/validators/{validator_addr}/delegations\DC2\254\SOH\n\
      \\GSValidatorUnbondingDelegations\DC2A.cosmos.staking.v1beta1.QueryValidatorUnbondingDelegationsRequest\SUBB.cosmos.staking.v1beta1.QueryValidatorUnbondingDelegationsResponse\"V\136\231\176*\SOH\130\211\228\147\STXK\DC2I/cosmos/staking/v1beta1/validators/{validator_addr}/unbonding_delegations\DC2\204\SOH\n\
      \\n\
      \Delegation\DC2..cosmos.staking.v1beta1.QueryDelegationRequest\SUB/.cosmos.staking.v1beta1.QueryDelegationResponse\"]\136\231\176*\SOH\130\211\228\147\STXR\DC2P/cosmos/staking/v1beta1/validators/{validator_addr}/delegations/{delegator_addr}\DC2\252\SOH\n\
      \\DC3UnbondingDelegation\DC27.cosmos.staking.v1beta1.QueryUnbondingDelegationRequest\SUB8.cosmos.staking.v1beta1.QueryUnbondingDelegationResponse\"r\136\231\176*\SOH\130\211\228\147\STXg\DC2e/cosmos/staking/v1beta1/validators/{validator_addr}/delegations/{delegator_addr}/unbonding_delegation\DC2\206\SOH\n\
      \\DC4DelegatorDelegations\DC28.cosmos.staking.v1beta1.QueryDelegatorDelegationsRequest\SUB9.cosmos.staking.v1beta1.QueryDelegatorDelegationsResponse\"A\136\231\176*\SOH\130\211\228\147\STX6\DC24/cosmos/staking/v1beta1/delegations/{delegator_addr}\DC2\254\SOH\n\
      \\GSDelegatorUnbondingDelegations\DC2A.cosmos.staking.v1beta1.QueryDelegatorUnbondingDelegationsRequest\SUBB.cosmos.staking.v1beta1.QueryDelegatorUnbondingDelegationsResponse\"V\136\231\176*\SOH\130\211\228\147\STXK\DC2I/cosmos/staking/v1beta1/delegators/{delegator_addr}/unbonding_delegations\DC2\198\SOH\n\
      \\rRedelegations\DC21.cosmos.staking.v1beta1.QueryRedelegationsRequest\SUB2.cosmos.staking.v1beta1.QueryRedelegationsResponse\"N\136\231\176*\SOH\130\211\228\147\STXC\DC2A/cosmos/staking/v1beta1/delegators/{delegator_addr}/redelegations\DC2\213\SOH\n\
      \\DC3DelegatorValidators\DC27.cosmos.staking.v1beta1.QueryDelegatorValidatorsRequest\SUB8.cosmos.staking.v1beta1.QueryDelegatorValidatorsResponse\"K\136\231\176*\SOH\130\211\228\147\STX@\DC2>/cosmos/staking/v1beta1/delegators/{delegator_addr}/validators\DC2\227\SOH\n\
      \\DC2DelegatorValidator\DC26.cosmos.staking.v1beta1.QueryDelegatorValidatorRequest\SUB7.cosmos.staking.v1beta1.QueryDelegatorValidatorResponse\"\\\136\231\176*\SOH\130\211\228\147\STXQ\DC2O/cosmos/staking/v1beta1/delegators/{delegator_addr}/validators/{validator_addr}\DC2\184\SOH\n\
      \\SO\&HistoricalInfo\DC22.cosmos.staking.v1beta1.QueryHistoricalInfoRequest\SUB3.cosmos.staking.v1beta1.QueryHistoricalInfoResponse\"=\136\231\176*\SOH\130\211\228\147\STX2\DC20/cosmos/staking/v1beta1/historical_info/{height}\DC2\134\SOH\n\
      \\EOTPool\DC2(.cosmos.staking.v1beta1.QueryPoolRequest\SUB).cosmos.staking.v1beta1.QueryPoolResponse\")\136\231\176*\SOH\130\211\228\147\STX\RS\DC2\FS/cosmos/staking/v1beta1/pool\DC2\142\SOH\n\
      \\ACKParams\DC2*.cosmos.staking.v1beta1.QueryParamsRequest\SUB+.cosmos.staking.v1beta1.QueryParamsResponse\"+\136\231\176*\SOH\130\211\228\147\STX \DC2\RS/cosmos/staking/v1beta1/params"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validators" where
  type MethodName Query "validators" = "Validators"
  type MethodInput Query "validators" = QueryValidatorsRequest
  type MethodOutput Query "validators" = QueryValidatorsResponse
  type MethodStreamingType Query "validators" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validator" where
  type MethodName Query "validator" = "Validator"
  type MethodInput Query "validator" = QueryValidatorRequest
  type MethodOutput Query "validator" = QueryValidatorResponse
  type MethodStreamingType Query "validator" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validatorDelegations" where
  type MethodName Query "validatorDelegations" = "ValidatorDelegations"
  type MethodInput Query "validatorDelegations" = QueryValidatorDelegationsRequest
  type MethodOutput Query "validatorDelegations" = QueryValidatorDelegationsResponse
  type MethodStreamingType Query "validatorDelegations" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validatorUnbondingDelegations" where
  type MethodName Query "validatorUnbondingDelegations" = "ValidatorUnbondingDelegations"
  type MethodInput Query "validatorUnbondingDelegations" = QueryValidatorUnbondingDelegationsRequest
  type MethodOutput Query "validatorUnbondingDelegations" = QueryValidatorUnbondingDelegationsResponse
  type MethodStreamingType Query "validatorUnbondingDelegations" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegation" where
  type MethodName Query "delegation" = "Delegation"
  type MethodInput Query "delegation" = QueryDelegationRequest
  type MethodOutput Query "delegation" = QueryDelegationResponse
  type MethodStreamingType Query "delegation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "unbondingDelegation" where
  type MethodName Query "unbondingDelegation" = "UnbondingDelegation"
  type MethodInput Query "unbondingDelegation" = QueryUnbondingDelegationRequest
  type MethodOutput Query "unbondingDelegation" = QueryUnbondingDelegationResponse
  type MethodStreamingType Query "unbondingDelegation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegatorDelegations" where
  type MethodName Query "delegatorDelegations" = "DelegatorDelegations"
  type MethodInput Query "delegatorDelegations" = QueryDelegatorDelegationsRequest
  type MethodOutput Query "delegatorDelegations" = QueryDelegatorDelegationsResponse
  type MethodStreamingType Query "delegatorDelegations" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegatorUnbondingDelegations" where
  type MethodName Query "delegatorUnbondingDelegations" = "DelegatorUnbondingDelegations"
  type MethodInput Query "delegatorUnbondingDelegations" = QueryDelegatorUnbondingDelegationsRequest
  type MethodOutput Query "delegatorUnbondingDelegations" = QueryDelegatorUnbondingDelegationsResponse
  type MethodStreamingType Query "delegatorUnbondingDelegations" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "redelegations" where
  type MethodName Query "redelegations" = "Redelegations"
  type MethodInput Query "redelegations" = QueryRedelegationsRequest
  type MethodOutput Query "redelegations" = QueryRedelegationsResponse
  type MethodStreamingType Query "redelegations" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegatorValidators" where
  type MethodName Query "delegatorValidators" = "DelegatorValidators"
  type MethodInput Query "delegatorValidators" = QueryDelegatorValidatorsRequest
  type MethodOutput Query "delegatorValidators" = QueryDelegatorValidatorsResponse
  type MethodStreamingType Query "delegatorValidators" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegatorValidator" where
  type MethodName Query "delegatorValidator" = "DelegatorValidator"
  type MethodInput Query "delegatorValidator" = QueryDelegatorValidatorRequest
  type MethodOutput Query "delegatorValidator" = QueryDelegatorValidatorResponse
  type MethodStreamingType Query "delegatorValidator" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "historicalInfo" where
  type MethodName Query "historicalInfo" = "HistoricalInfo"
  type MethodInput Query "historicalInfo" = QueryHistoricalInfoRequest
  type MethodOutput Query "historicalInfo" = QueryHistoricalInfoResponse
  type MethodStreamingType Query "historicalInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "pool" where
  type MethodName Query "pool" = "Pool"
  type MethodInput Query "pool" = QueryPoolRequest
  type MethodOutput Query "pool" = QueryPoolResponse
  type MethodStreamingType Query "pool" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"cosmos/staking/v1beta1/query.proto\DC2\SYNcosmos.staking.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB$cosmos/staking/v1beta1/staking.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ESCcosmos/query/v1/query.proto\SUB\DC1amino/amino.proto\"x\n\
    \\SYNQueryValidatorsRequest\DC2\SYN\n\
    \\ACKstatus\CAN\SOH \SOH(\tR\ACKstatus\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\176\SOH\n\
    \\ETBQueryValidatorsResponse\DC2L\n\
    \\n\
    \validators\CAN\SOH \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\n\
    \validatorsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"X\n\
    \\NAKQueryValidatorRequest\DC2?\n\
    \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\"d\n\
    \\SYNQueryValidatorResponse\DC2J\n\
    \\tvalidator\CAN\SOH \SOH(\v2!.cosmos.staking.v1beta1.ValidatorR\tvalidatorB\t\200\222\US\NUL\168\231\176*\SOH\"\171\SOH\n\
    \ QueryValidatorDelegationsRequest\DC2?\n\
    \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\237\SOH\n\
    \!QueryValidatorDelegationsResponse\DC2\DEL\n\
    \\DC4delegation_responses\CAN\SOH \ETX(\v2*.cosmos.staking.v1beta1.DelegationResponseR\DC3delegationResponsesB \200\222\US\NUL\170\223\US\DC3DelegationResponses\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\180\SOH\n\
    \)QueryValidatorUnbondingDelegationsRequest\DC2?\n\
    \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\222\SOH\n\
    \*QueryValidatorUnbondingDelegationsResponse\DC2g\n\
    \\DC3unbonding_responses\CAN\SOH \ETX(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\DC2unbondingResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\164\SOH\n\
    \\SYNQueryDelegationRequest\DC2?\n\
    \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2?\n\
    \\SOvalidator_addr\CAN\STX \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"v\n\
    \\ETBQueryDelegationResponse\DC2[\n\
    \\DC3delegation_response\CAN\SOH \SOH(\v2*.cosmos.staking.v1beta1.DelegationResponseR\DC2delegationResponse\"\173\SOH\n\
    \\USQueryUnbondingDelegationRequest\DC2?\n\
    \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2?\n\
    \\SOvalidator_addr\CAN\STX \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"r\n\
    \ QueryUnbondingDelegationResponse\DC2N\n\
    \\ACKunbond\CAN\SOH \SOH(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\ACKunbondB\t\200\222\US\NUL\168\231\176*\SOH\"\181\SOH\n\
    \ QueryDelegatorDelegationsRequest\DC2?\n\
    \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\b\136\160\US\NUL\232\160\US\NUL\"\214\SOH\n\
    \!QueryDelegatorDelegationsResponse\DC2h\n\
    \\DC4delegation_responses\CAN\SOH \ETX(\v2*.cosmos.staking.v1beta1.DelegationResponseR\DC3delegationResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\190\SOH\n\
    \)QueryDelegatorUnbondingDelegationsRequest\DC2?\n\
    \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\b\136\160\US\NUL\232\160\US\NUL\"\222\SOH\n\
    \*QueryDelegatorUnbondingDelegationsResponse\DC2g\n\
    \\DC3unbonding_responses\CAN\SOH \ETX(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\DC2unbondingResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\190\STX\n\
    \\EMQueryRedelegationsRequest\DC2?\n\
    \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\DC2src_validator_addr\CAN\STX \SOH(\tR\DLEsrcValidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\DC2dst_validator_addr\CAN\ETX \SOH(\tR\DLEdstValidatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\b\136\160\US\NUL\232\160\US\NUL\"\213\SOH\n\
    \\SUBQueryRedelegationsResponse\DC2n\n\
    \\SYNredelegation_responses\CAN\SOH \ETX(\v2,.cosmos.staking.v1beta1.RedelegationResponseR\NAKredelegationResponsesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\180\SOH\n\
    \\USQueryDelegatorValidatorsRequest\DC2?\n\
    \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\b\136\160\US\NUL\232\160\US\NUL\"\185\SOH\n\
    \ QueryDelegatorValidatorsResponse\DC2L\n\
    \\n\
    \validators\CAN\SOH \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\n\
    \validatorsB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\172\SOH\n\
    \\RSQueryDelegatorValidatorRequest\DC2?\n\
    \\SOdelegator_addr\CAN\SOH \SOH(\tR\rdelegatorAddrB\CAN\210\180-\DC4cosmos.AddressString\DC2?\n\
    \\SOvalidator_addr\CAN\STX \SOH(\tR\rvalidatorAddrB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"m\n\
    \\USQueryDelegatorValidatorResponse\DC2J\n\
    \\tvalidator\CAN\SOH \SOH(\v2!.cosmos.staking.v1beta1.ValidatorR\tvalidatorB\t\200\222\US\NUL\168\231\176*\SOH\"4\n\
    \\SUBQueryHistoricalInfoRequest\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\"Y\n\
    \\ESCQueryHistoricalInfoResponse\DC2:\n\
    \\EOThist\CAN\SOH \SOH(\v2&.cosmos.staking.v1beta1.HistoricalInfoR\EOThist\"\DC2\n\
    \\DLEQueryPoolRequest\"P\n\
    \\DC1QueryPoolResponse\DC2;\n\
    \\EOTpool\CAN\SOH \SOH(\v2\FS.cosmos.staking.v1beta1.PoolR\EOTpoolB\t\200\222\US\NUL\168\231\176*\SOH\"\DC4\n\
    \\DC2QueryParamsRequest\"X\n\
    \\DC3QueryParamsResponse\DC2A\n\
    \\ACKparams\CAN\SOH \SOH(\v2\RS.cosmos.staking.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH2\176\SYN\n\
    \\ENQQuery\DC2\158\SOH\n\
    \\n\
    \Validators\DC2..cosmos.staking.v1beta1.QueryValidatorsRequest\SUB/.cosmos.staking.v1beta1.QueryValidatorsResponse\"/\136\231\176*\SOH\130\211\228\147\STX$\DC2\"/cosmos/staking/v1beta1/validators\DC2\172\SOH\n\
    \\tValidator\DC2-.cosmos.staking.v1beta1.QueryValidatorRequest\SUB..cosmos.staking.v1beta1.QueryValidatorResponse\"@\136\231\176*\SOH\130\211\228\147\STX5\DC23/cosmos/staking/v1beta1/validators/{validator_addr}\DC2\217\SOH\n\
    \\DC4ValidatorDelegations\DC28.cosmos.staking.v1beta1.QueryValidatorDelegationsRequest\SUB9.cosmos.staking.v1beta1.QueryValidatorDelegationsResponse\"L\136\231\176*\SOH\130\211\228\147\STXA\DC2?/cosmos/staking/v1beta1/validators/{validator_addr}/delegations\DC2\254\SOH\n\
    \\GSValidatorUnbondingDelegations\DC2A.cosmos.staking.v1beta1.QueryValidatorUnbondingDelegationsRequest\SUBB.cosmos.staking.v1beta1.QueryValidatorUnbondingDelegationsResponse\"V\136\231\176*\SOH\130\211\228\147\STXK\DC2I/cosmos/staking/v1beta1/validators/{validator_addr}/unbonding_delegations\DC2\204\SOH\n\
    \\n\
    \Delegation\DC2..cosmos.staking.v1beta1.QueryDelegationRequest\SUB/.cosmos.staking.v1beta1.QueryDelegationResponse\"]\136\231\176*\SOH\130\211\228\147\STXR\DC2P/cosmos/staking/v1beta1/validators/{validator_addr}/delegations/{delegator_addr}\DC2\252\SOH\n\
    \\DC3UnbondingDelegation\DC27.cosmos.staking.v1beta1.QueryUnbondingDelegationRequest\SUB8.cosmos.staking.v1beta1.QueryUnbondingDelegationResponse\"r\136\231\176*\SOH\130\211\228\147\STXg\DC2e/cosmos/staking/v1beta1/validators/{validator_addr}/delegations/{delegator_addr}/unbonding_delegation\DC2\206\SOH\n\
    \\DC4DelegatorDelegations\DC28.cosmos.staking.v1beta1.QueryDelegatorDelegationsRequest\SUB9.cosmos.staking.v1beta1.QueryDelegatorDelegationsResponse\"A\136\231\176*\SOH\130\211\228\147\STX6\DC24/cosmos/staking/v1beta1/delegations/{delegator_addr}\DC2\254\SOH\n\
    \\GSDelegatorUnbondingDelegations\DC2A.cosmos.staking.v1beta1.QueryDelegatorUnbondingDelegationsRequest\SUBB.cosmos.staking.v1beta1.QueryDelegatorUnbondingDelegationsResponse\"V\136\231\176*\SOH\130\211\228\147\STXK\DC2I/cosmos/staking/v1beta1/delegators/{delegator_addr}/unbonding_delegations\DC2\198\SOH\n\
    \\rRedelegations\DC21.cosmos.staking.v1beta1.QueryRedelegationsRequest\SUB2.cosmos.staking.v1beta1.QueryRedelegationsResponse\"N\136\231\176*\SOH\130\211\228\147\STXC\DC2A/cosmos/staking/v1beta1/delegators/{delegator_addr}/redelegations\DC2\213\SOH\n\
    \\DC3DelegatorValidators\DC27.cosmos.staking.v1beta1.QueryDelegatorValidatorsRequest\SUB8.cosmos.staking.v1beta1.QueryDelegatorValidatorsResponse\"K\136\231\176*\SOH\130\211\228\147\STX@\DC2>/cosmos/staking/v1beta1/delegators/{delegator_addr}/validators\DC2\227\SOH\n\
    \\DC2DelegatorValidator\DC26.cosmos.staking.v1beta1.QueryDelegatorValidatorRequest\SUB7.cosmos.staking.v1beta1.QueryDelegatorValidatorResponse\"\\\136\231\176*\SOH\130\211\228\147\STXQ\DC2O/cosmos/staking/v1beta1/delegators/{delegator_addr}/validators/{validator_addr}\DC2\184\SOH\n\
    \\SO\&HistoricalInfo\DC22.cosmos.staking.v1beta1.QueryHistoricalInfoRequest\SUB3.cosmos.staking.v1beta1.QueryHistoricalInfoResponse\"=\136\231\176*\SOH\130\211\228\147\STX2\DC20/cosmos/staking/v1beta1/historical_info/{height}\DC2\134\SOH\n\
    \\EOTPool\DC2(.cosmos.staking.v1beta1.QueryPoolRequest\SUB).cosmos.staking.v1beta1.QueryPoolResponse\")\136\231\176*\SOH\130\211\228\147\STX\RS\DC2\FS/cosmos/staking/v1beta1/pool\DC2\142\SOH\n\
    \\ACKParams\DC2*.cosmos.staking.v1beta1.QueryParamsRequest\SUB+.cosmos.staking.v1beta1.QueryParamsResponse\"+\136\231\176*\SOH\130\211\228\147\STX \DC2\RS/cosmos/staking/v1beta1/paramsB.Z,github.com/cosmos/cosmos-sdk/x/staking/typesJ\246k\n\
    \\a\DC2\ENQ\NUL\NUL\130\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL%\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\t\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULC\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\v\NULC\n\
    \6\n\
    \\STX\ACK\NUL\DC2\ENQ\SO\NUL\130\SOH\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SO\b\r\n\
    \\205\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DC3\STX\SYN\ETX\SUB\190\SOH Validators queries all validators that match the given status.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\DC1'\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC32I\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC4\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\NUL\EOT\241\140\166\ENQ\DC2\ETX\DC4\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\NAK\EOTV\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\NAK\EOTV\n\
    \M\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\EM\STX\FS\ETX\SUB? Validator queries validator info for given validator address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\EM\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\EM\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\EM0F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\SUB\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\SOH\EOT\241\140\166\ENQ\DC2\ETX\SUB\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\ESC\EOTg\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\ESC\EOTg\n\
    \\206\SOH\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\"\STX%\ETX\SUB\191\SOH ValidatorDelegations queries delegate info for given validator.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\"\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\"\ESC;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\"Fg\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX#\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\STX\EOT\241\140\166\ENQ\DC2\ETX#\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX$\EOTs\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX$\EOTs\n\
    \\218\SOH\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT+\STX0\ETX\SUB\203\SOH ValidatorUnbondingDelegations queries unbonding delegations of a validator.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX+\ACK#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX+$M\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX,\SI9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX-\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ETX\EOT\241\140\166\ENQ\DC2\ETX-\EOT6\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\EOT.\EOT/Z\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\EOT.\EOT/Z\n\
    \T\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT3\STX7\ETX\SUBF Delegation queries delegate info for given validator delegator pair.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX3\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX3\DC1'\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX32I\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX4\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\EOT\EOT\241\140\166\ENQ\DC2\ETX4\EOT6\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\EOT5\EOT6D\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\EOT5\EOT6D\n\
    \_\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT;\STX?\ETX\SUBQ UnbondingDelegation queries unbonding info for given validator delegator\n\
    \ pair.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX;\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX;\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX;Dd\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX<\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ENQ\EOT\241\140\166\ENQ\DC2\ETX<\EOT6\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\EOT=\EOT>Y\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\EOT=\EOT>Y\n\
    \\217\SOH\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOTE\STXH\ETX\SUB\202\SOH DelegatorDelegations queries all delegations of a given delegator address.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETXE\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETXE\ESC;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETXEFg\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETXF\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ACK\EOT\241\140\166\ENQ\DC2\ETXF\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETXG\EOTh\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETXG\EOTh\n\
    \\237\SOH\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOTO\STXT\ETX\SUB\222\SOH DelegatorUnbondingDelegations queries all unbonding delegations of a given\n\
    \ delegator address.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETXO\ACK#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETXO$M\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETXP\SI9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETXQ\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\a\EOT\241\140\166\ENQ\DC2\ETXQ\EOT6\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\EOTR\EOTSZ\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\EOTR\EOTSZ\n\
    \\196\SOH\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOTZ\STX]\ETX\SUB\181\SOH Redelegations queries redelegations of given address.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETXZ\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETXZ\DC4-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETXZ8R\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETX[\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\b\EOT\241\140\166\ENQ\DC2\ETX[\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETX\\\EOTu\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\ETX\\\EOTu\n\
    \\220\SOH\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOTd\STXg\ETX\SUB\205\SOH DelegatorValidators queries all validators info for given delegator\n\
    \ address.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETXd\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETXd\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETXdDd\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXe\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\t\EOT\241\140\166\ENQ\DC2\ETXe\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXf\EOTr\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\t\EOT\176\202\188\"\STX\DC2\ETXf\EOTr\n\
    \^\n\
    \\EOT\ACK\NUL\STX\n\
    \\DC2\EOTk\STXo\ETX\SUBP DelegatorValidator queries validator info for given delegator validator\n\
    \ pair.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\SOH\DC2\ETXk\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\STX\DC2\ETXk\EM7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\ETX\DC2\ETXkBa\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\EOT\DC2\ETXl\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\n\
    \\EOT\241\140\166\ENQ\DC2\ETXl\EOT6\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\n\
    \\EOT\DC2\EOTm\EOTnD\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\n\
    \\EOT\176\202\188\"\STX\DC2\EOTm\EOTnD\n\
    \L\n\
    \\EOT\ACK\NUL\STX\v\DC2\EOTr\STXu\ETX\SUB> HistoricalInfo queries the historical info for given height.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\SOH\DC2\ETXr\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\STX\DC2\ETXr\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\ETX\DC2\ETXr:U\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\EOT\DC2\ETXs\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\v\EOT\241\140\166\ENQ\DC2\ETXs\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\EOT\DC2\ETXt\EOTd\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\v\EOT\176\202\188\"\STX\DC2\ETXt\EOTd\n\
    \+\n\
    \\EOT\ACK\NUL\STX\f\DC2\EOTx\STX{\ETX\SUB\GS Pool queries the pool info.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\SOH\DC2\ETXx\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\STX\DC2\ETXx\v\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\ETX\DC2\ETXx&7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\EOT\DC2\ETXy\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\f\EOT\241\140\166\ENQ\DC2\ETXy\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\EOT\DC2\ETXz\EOTP\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\f\EOT\176\202\188\"\STX\DC2\ETXz\EOTP\n\
    \;\n\
    \\EOT\ACK\NUL\STX\r\DC2\ENQ~\STX\129\SOH\ETX\SUB, Parameters queries the staking parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\SOH\DC2\ETX~\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\STX\DC2\ETX~\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\ETX\DC2\ETX~*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\EOT\DC2\ETX\DEL\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\r\EOT\241\140\166\ENQ\DC2\ETX\DEL\EOT6\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\r\EOT\DC2\EOT\128\SOH\EOTR\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\r\EOT\176\202\188\"\STX\DC2\EOT\128\SOH\EOTR\n\
    \W\n\
    \\STX\EOT\NUL\DC2\ACK\133\SOH\NUL\139\SOH\SOH\SUBI QueryValidatorsRequest is request type for Query/Validators RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NUL\SOH\DC2\EOT\133\SOH\b\RS\n\
    \O\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\135\SOH\STX\DC4\SUBA status enables to query for validators matching a given status.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\EOT\135\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\135\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\135\SOH\DC2\DC3\n\
    \J\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\138\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\138\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\138\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\138\SOH56\n\
    \\\\n\
    \\STX\EOT\SOH\DC2\ACK\142\SOH\NUL\148\SOH\SOH\SUBN QueryValidatorsResponse is response type for the Query/Validators RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\142\SOH\b\US\n\
    \?\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\144\SOH\STXb\SUB1 validators contains all the queried validators.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\144\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\144\SOH\NAK\US\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\144\SOH\"#\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT\144\SOH$a\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\EOT\144\SOH%A\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\EOT\144\SOHC`\n\
    \B\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\147\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\147\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\147\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\147\SOH67\n\
    \Y\n\
    \\STX\EOT\STX\DC2\ACK\151\SOH\NUL\154\SOH\SOH\SUBK QueryValidatorRequest is response type for the Query/Validator RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\151\SOH\b\GS\n\
    \J\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\153\SOH\STXM\SUB< validator_addr defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\153\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\153\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\153\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\EOT\153\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\EOT\153\SOH\GSK\n\
    \Z\n\
    \\STX\EOT\ETX\DC2\ACK\157\SOH\NUL\160\SOH\SOH\SUBL QueryValidatorResponse is response type for the Query/Validator RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\157\SOH\b\RS\n\
    \5\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\159\SOH\STXX\SUB' validator defines the validator info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\159\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\159\SOH\f\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\159\SOH\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT\159\SOH\SUBW\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\EOT\159\SOH\ESC7\n\
    \\DC1\n\
    \\t\EOT\ETX\STX\NUL\b\245\140\166\ENQ\DC2\EOT\159\SOH9V\n\
    \o\n\
    \\STX\EOT\EOT\DC2\ACK\164\SOH\NUL\170\SOH\SOH\SUBa QueryValidatorDelegationsRequest is request type for the\n\
    \ Query/ValidatorDelegations RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\164\SOH\b(\n\
    \J\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\166\SOH\STXM\SUB< validator_addr defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\166\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\166\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\166\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\166\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\EOT\166\SOH\GSK\n\
    \J\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\169\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\169\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\169\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\169\SOH56\n\
    \q\n\
    \\STX\EOT\ENQ\DC2\ACK\174\SOH\NUL\180\SOH\SOH\SUBc QueryValidatorDelegationsResponse is response type for the\n\
    \ Query/ValidatorDelegations RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\174\SOH\b)\n\
    \\SO\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ACK\175\SOH\STX\176\SOHv\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\175\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\175\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\175\SOH\RS2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\175\SOH56\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\176\SOH\ACKu\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\EOT\176\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\EOT\176\SOH%B\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\245\251\ETX\DC2\EOT\176\SOHDt\n\
    \B\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\179\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\179\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\179\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\179\SOH67\n\
    \\130\SOH\n\
    \\STX\EOT\ACK\DC2\ACK\184\SOH\NUL\190\SOH\SOH\SUBt QueryValidatorUnbondingDelegationsRequest is required type for the\n\
    \ Query/ValidatorUnbondingDelegations RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\184\SOH\b1\n\
    \J\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\186\SOH\STXM\SUB< validator_addr defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\186\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\186\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\186\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\186\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\EOT\186\SOH\GSK\n\
    \J\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\189\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\189\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\189\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\189\SOH56\n\
    \\132\SOH\n\
    \\STX\EOT\a\DC2\ACK\194\SOH\NUL\199\SOH\SOH\SUBv QueryValidatorUnbondingDelegationsResponse is response type for the\n\
    \ Query/ValidatorUnbondingDelegations RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\194\SOH\b2\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\195\SOH\STXu\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\195\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\195\SOH\v\RS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\195\SOH\US2\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\195\SOH56\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\195\SOH7t\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\EOT\195\SOH8T\n\
    \\DC1\n\
    \\t\EOT\a\STX\NUL\b\245\140\166\ENQ\DC2\EOT\195\SOHVs\n\
    \B\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\198\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\198\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\198\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\198\SOH67\n\
    \[\n\
    \\STX\EOT\b\DC2\ACK\202\SOH\NUL\211\SOH\SOH\SUBM QueryDelegationRequest is request type for the Query/Delegation RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\202\SOH\b\RS\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\203\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\141\244\ETX\DC2\EOT\203\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\204\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\204\SOH\STX-\n\
    \J\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\207\SOH\STXM\SUB< delegator_addr defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\207\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\207\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\207\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\207\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\207\SOH\GSK\n\
    \J\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\210\SOH\STXM\SUB< validator_addr defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\210\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\210\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\210\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\210\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\202\214\ENQ\DC2\EOT\210\SOH\GSK\n\
    \]\n\
    \\STX\EOT\t\DC2\ACK\214\SOH\NUL\217\SOH\SOH\SUBO QueryDelegationResponse is response type for the Query/Delegation RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\214\SOH\b\US\n\
    \Q\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\216\SOH\STX-\SUBC delegation_responses defines the delegation info of a delegation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\216\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\216\SOH\NAK(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\216\SOH+,\n\
    \n\n\
    \\STX\EOT\n\
    \\DC2\ACK\221\SOH\NUL\230\SOH\SOH\SUB` QueryUnbondingDelegationRequest is request type for the\n\
    \ Query/UnbondingDelegation RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\221\SOH\b'\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\222\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\141\244\ETX\DC2\EOT\222\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\223\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\129\244\ETX\DC2\EOT\223\SOH\STX-\n\
    \J\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\226\SOH\STXM\SUB< delegator_addr defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\226\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\226\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\226\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\226\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\226\SOH\GSK\n\
    \J\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\229\SOH\STXM\SUB< validator_addr defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\229\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\229\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\229\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\229\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\229\SOH\GSK\n\
    \g\n\
    \\STX\EOT\v\DC2\ACK\234\SOH\NUL\237\SOH\SOH\SUBY QueryDelegationResponse is response type for the Query/UnbondingDelegation\n\
    \ RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\234\SOH\b(\n\
    \I\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\236\SOH\STX_\SUB; unbond defines the unbonding information of a delegation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\236\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\236\SOH\SYN\FS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\236\SOH\US \n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\EOT\236\SOH!^\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\233\251\ETX\DC2\EOT\236\SOH\">\n\
    \\DC1\n\
    \\t\EOT\v\STX\NUL\b\245\140\166\ENQ\DC2\EOT\236\SOH@]\n\
    \p\n\
    \\STX\EOT\f\DC2\ACK\241\SOH\NUL\250\SOH\SOH\SUBb QueryDelegatorDelegationsRequest is request type for the\n\
    \ Query/DelegatorDelegations RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\241\SOH\b(\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\242\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\f\a\141\244\ETX\DC2\EOT\242\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\243\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\f\a\129\244\ETX\DC2\EOT\243\SOH\STX-\n\
    \J\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\246\SOH\STXM\SUB< delegator_addr defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\246\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\246\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\246\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\246\SOH\FSL\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\202\214\ENQ\DC2\EOT\246\SOH\GSK\n\
    \J\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\249\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\249\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\249\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\249\SOH56\n\
    \r\n\
    \\STX\EOT\r\DC2\ACK\254\SOH\NUL\132\STX\SOH\SUBd QueryDelegatorDelegationsResponse is response type for the\n\
    \ Query/DelegatorDelegations RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\254\SOH\b)\n\
    \V\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\128\STX\STXu\SUBH delegation_responses defines all the delegations' info of a delegator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\EOT\128\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\128\STX\v\GS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\128\STX\RS2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\128\STX56\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\128\STX7t\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\233\251\ETX\DC2\EOT\128\STX8T\n\
    \\DC1\n\
    \\t\EOT\r\STX\NUL\b\245\140\166\ENQ\DC2\EOT\128\STXVs\n\
    \B\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\131\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\131\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\131\STX)3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\131\STX67\n\
    \\130\SOH\n\
    \\STX\EOT\SO\DC2\ACK\136\STX\NUL\145\STX\SOH\SUBt QueryDelegatorUnbondingDelegationsRequest is request type for the\n\
    \ Query/DelegatorUnbondingDelegations RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\136\STX\b1\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\137\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\SO\a\141\244\ETX\DC2\EOT\137\STX\STX-\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\138\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\SO\a\129\244\ETX\DC2\EOT\138\STX\STX-\n\
    \J\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\141\STX\STXM\SUB< delegator_addr defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\141\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\141\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\141\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\b\DC2\EOT\141\STX\FSL\n\
    \\DLE\n\
    \\b\EOT\SO\STX\NUL\b\202\214\ENQ\DC2\EOT\141\STX\GSK\n\
    \J\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\144\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\144\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\144\STX(2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\144\STX56\n\
    \\132\SOH\n\
    \\STX\EOT\SI\DC2\ACK\149\STX\NUL\154\STX\SOH\SUBv QueryUnbondingDelegatorDelegationsResponse is response type for the\n\
    \ Query/UnbondingDelegatorDelegations RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\149\STX\b2\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\150\STX\STXu\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\EOT\150\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\150\STX\v\RS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\150\STX\US2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\150\STX56\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\b\DC2\EOT\150\STX7t\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\233\251\ETX\DC2\EOT\150\STX8T\n\
    \\DC1\n\
    \\t\EOT\SI\STX\NUL\b\245\140\166\ENQ\DC2\EOT\150\STXVs\n\
    \B\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\153\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\153\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\153\STX)3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\153\STX67\n\
    \b\n\
    \\STX\EOT\DLE\DC2\ACK\158\STX\NUL\173\STX\SOH\SUBT QueryRedelegationsRequest is request type for the Query/Redelegations RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\158\STX\b!\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\159\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\DLE\a\141\244\ETX\DC2\EOT\159\STX\STX-\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\160\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\DLE\a\129\244\ETX\DC2\EOT\160\STX\STX-\n\
    \J\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\163\STX\STXM\SUB< delegator_addr defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\163\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\163\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\163\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\b\DC2\EOT\163\STX\FSL\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\NUL\b\202\214\ENQ\DC2\EOT\163\STX\GSK\n\
    \T\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\166\STX\STXQ\SUBF src_validator_addr defines the validator address to redelegate from.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\166\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\166\STX\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\166\STX\RS\US\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\b\DC2\EOT\166\STX P\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\SOH\b\202\214\ENQ\DC2\EOT\166\STX!O\n\
    \R\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\169\STX\STXQ\SUBD dst_validator_addr defines the validator address to redelegate to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\169\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\169\STX\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\169\STX\RS\US\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\b\DC2\EOT\169\STX P\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\202\214\ENQ\DC2\EOT\169\STX!O\n\
    \J\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\172\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ACK\DC2\EOT\172\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\172\STX(2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\172\STX56\n\
    \d\n\
    \\STX\EOT\DC1\DC2\ACK\177\STX\NUL\183\STX\SOH\SUBV QueryRedelegationsResponse is response type for the Query/Redelegations RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\177\STX\b\"\n\
    \\SO\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\ACK\178\STX\STX\179\STXD\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\EOT\178\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\178\STX\v\US\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\178\STX 6\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\178\STX9:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\b\DC2\EOT\179\STX\ACKC\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\NUL\b\233\251\ETX\DC2\EOT\179\STX\a#\n\
    \\DC1\n\
    \\t\EOT\DC1\STX\NUL\b\245\140\166\ENQ\DC2\EOT\179\STX%B\n\
    \B\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\182\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\182\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\182\STX)3\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\182\STX67\n\
    \n\n\
    \\STX\EOT\DC2\DC2\ACK\187\STX\NUL\196\STX\SOH\SUB` QueryDelegatorValidatorsRequest is request type for the\n\
    \ Query/DelegatorValidators RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\187\STX\b'\n\
    \\v\n\
    \\ETX\EOT\DC2\a\DC2\EOT\188\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\DC2\a\141\244\ETX\DC2\EOT\188\STX\STX-\n\
    \\v\n\
    \\ETX\EOT\DC2\a\DC2\EOT\189\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\DC2\a\129\244\ETX\DC2\EOT\189\STX\STX-\n\
    \J\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\192\STX\STXM\SUB< delegator_addr defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\192\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\192\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\192\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\192\STX\FSL\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\202\214\ENQ\DC2\EOT\192\STX\GSK\n\
    \J\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\195\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ACK\DC2\EOT\195\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\195\STX(2\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\195\STX56\n\
    \p\n\
    \\STX\EOT\DC3\DC2\ACK\200\STX\NUL\206\STX\SOH\SUBb QueryDelegatorValidatorsResponse is response type for the\n\
    \ Query/DelegatorValidators RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\200\STX\b(\n\
    \G\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\202\STX\STXb\SUB9 validators defines the validators' info of a delegator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\EOT\202\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ACK\DC2\EOT\202\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\202\STX\NAK\US\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\202\STX\"#\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\b\DC2\EOT\202\STX$a\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\233\251\ETX\DC2\EOT\202\STX%A\n\
    \\DC1\n\
    \\t\EOT\DC3\STX\NUL\b\245\140\166\ENQ\DC2\EOT\202\STXC`\n\
    \B\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\205\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ACK\DC2\EOT\205\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\205\STX)3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\205\STX67\n\
    \l\n\
    \\STX\EOT\DC4\DC2\ACK\210\STX\NUL\219\STX\SOH\SUB^ QueryDelegatorValidatorRequest is request type for the\n\
    \ Query/DelegatorValidator RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\210\STX\b&\n\
    \\v\n\
    \\ETX\EOT\DC4\a\DC2\EOT\211\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\DC4\a\141\244\ETX\DC2\EOT\211\STX\STX-\n\
    \\v\n\
    \\ETX\EOT\DC4\a\DC2\EOT\212\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\DC4\a\129\244\ETX\DC2\EOT\212\STX\STX-\n\
    \J\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\215\STX\STXM\SUB< delegator_addr defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\215\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\215\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\215\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\b\DC2\EOT\215\STX\FSL\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\NUL\b\202\214\ENQ\DC2\EOT\215\STX\GSK\n\
    \J\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\218\STX\STXM\SUB< validator_addr defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ENQ\DC2\EOT\218\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\218\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\218\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\b\DC2\EOT\218\STX\FSL\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\SOH\b\202\214\ENQ\DC2\EOT\218\STX\GSK\n\
    \k\n\
    \\STX\EOT\NAK\DC2\ACK\223\STX\NUL\226\STX\SOH\SUB] QueryDelegatorValidatorResponse response type for the\n\
    \ Query/DelegatorValidator RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\223\STX\b'\n\
    \5\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\225\STX\STXX\SUB' validator defines the validator info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ACK\DC2\EOT\225\STX\STX\v\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\225\STX\f\NAK\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\225\STX\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\b\DC2\EOT\225\STX\SUBW\n\
    \\DLE\n\
    \\b\EOT\NAK\STX\NUL\b\233\251\ETX\DC2\EOT\225\STX\ESC7\n\
    \\DC1\n\
    \\t\EOT\NAK\STX\NUL\b\245\140\166\ENQ\DC2\EOT\225\STX9V\n\
    \d\n\
    \\STX\EOT\SYN\DC2\ACK\230\STX\NUL\233\STX\SOH\SUBV QueryHistoricalInfoRequest is request type for the Query/HistoricalInfo RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\230\STX\b\"\n\
    \L\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\232\STX\STX\DC3\SUB> height defines at which height to query the historical info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\232\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\232\STX\b\SO\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\232\STX\DC1\DC2\n\
    \f\n\
    \\STX\EOT\ETB\DC2\ACK\237\STX\NUL\240\STX\SOH\SUBX QueryHistoricalInfoResponse is response type for the Query/HistoricalInfo RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\237\STX\b#\n\
    \E\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\239\STX\STX\SUB\SUB7 hist defines the historical info at the given height.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ACK\DC2\EOT\239\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\239\STX\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\239\STX\CAN\EM\n\
    \M\n\
    \\STX\EOT\CAN\DC2\EOT\243\STX\NUL\ESC\SUBA QueryPoolRequest is request type for the Query/Pool RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\243\STX\b\CAN\n\
    \Q\n\
    \\STX\EOT\EM\DC2\ACK\246\STX\NUL\249\STX\SOH\SUBC QueryPoolResponse is response type for the Query/Pool RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\246\STX\b\EM\n\
    \+\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\248\STX\STXN\SUB\GS pool defines the pool info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ACK\DC2\EOT\248\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\248\STX\a\v\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\248\STX\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\b\DC2\EOT\248\STX\DLEM\n\
    \\DLE\n\
    \\b\EOT\EM\STX\NUL\b\233\251\ETX\DC2\EOT\248\STX\DC1-\n\
    \\DC1\n\
    \\t\EOT\EM\STX\NUL\b\245\140\166\ENQ\DC2\EOT\248\STX/L\n\
    \Q\n\
    \\STX\EOT\SUB\DC2\EOT\252\STX\NUL\GS\SUBE QueryParamsRequest is request type for the Query/Params RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\252\STX\b\SUB\n\
    \U\n\
    \\STX\EOT\ESC\DC2\ACK\255\STX\NUL\130\ETX\SOH\SUBG QueryParamsResponse is response type for the Query/Params RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\255\STX\b\ESC\n\
    \?\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\129\ETX\STXR\SUB1 params holds all the parameters of this module.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ACK\DC2\EOT\129\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\129\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\129\ETX\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\b\DC2\EOT\129\ETX\DC4Q\n\
    \\DLE\n\
    \\b\EOT\ESC\STX\NUL\b\233\251\ETX\DC2\EOT\129\ETX\NAK1\n\
    \\DC1\n\
    \\t\EOT\ESC\STX\NUL\b\245\140\166\ENQ\DC2\EOT\129\ETX3Pb\ACKproto3"