{- This file was auto-generated from cosmos/bank/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.V1beta1.Query (
        Query(..), DenomOwner(), QueryAllBalancesRequest(),
        QueryAllBalancesResponse(), QueryBalanceRequest(),
        QueryBalanceResponse(), QueryDenomMetadataRequest(),
        QueryDenomMetadataResponse(), QueryDenomOwnersRequest(),
        QueryDenomOwnersResponse(), QueryDenomsMetadataRequest(),
        QueryDenomsMetadataResponse(), QueryParamsRequest(),
        QueryParamsResponse(), QuerySendEnabledRequest(),
        QuerySendEnabledResponse(), QuerySpendableBalanceByDenomRequest(),
        QuerySpendableBalanceByDenomResponse(),
        QuerySpendableBalancesRequest(), QuerySpendableBalancesResponse(),
        QuerySupplyOfRequest(), QuerySupplyOfResponse(),
        QueryTotalSupplyRequest(), QueryTotalSupplyResponse()
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
import qualified Proto.Cosmos.Bank.V1beta1.Bank
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Query.V1.Query
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.address' @:: Lens' DenomOwner Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.balance' @:: Lens' DenomOwner Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'balance' @:: Lens' DenomOwner (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data DenomOwner
  = DenomOwner'_constructor {_DenomOwner'address :: !Data.Text.Text,
                             _DenomOwner'balance :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                             _DenomOwner'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DenomOwner where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DenomOwner "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DenomOwner'address (\ x__ y__ -> x__ {_DenomOwner'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DenomOwner "balance" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DenomOwner'balance (\ x__ y__ -> x__ {_DenomOwner'balance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DenomOwner "maybe'balance" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DenomOwner'balance (\ x__ y__ -> x__ {_DenomOwner'balance = y__}))
        Prelude.id
instance Data.ProtoLens.Message DenomOwner where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.DenomOwner"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DenomOwner\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
      \\abalance\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalanceB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor DenomOwner
        balance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'balance")) ::
              Data.ProtoLens.FieldDescriptor DenomOwner
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, balance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DenomOwner'_unknownFields
        (\ x__ y__ -> x__ {_DenomOwner'_unknownFields = y__})
  defMessage
    = DenomOwner'_constructor
        {_DenomOwner'address = Data.ProtoLens.fieldDefault,
         _DenomOwner'balance = Prelude.Nothing,
         _DenomOwner'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DenomOwner -> Data.ProtoLens.Encoding.Bytes.Parser DenomOwner
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "balance"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"balance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DenomOwner"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'balance") _x
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
instance Control.DeepSeq.NFData DenomOwner where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DenomOwner'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DenomOwner'address x__)
                (Control.DeepSeq.deepseq (_DenomOwner'balance x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.address' @:: Lens' QueryAllBalancesRequest Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllBalancesRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllBalancesRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.resolveDenom' @:: Lens' QueryAllBalancesRequest Prelude.Bool@ -}
data QueryAllBalancesRequest
  = QueryAllBalancesRequest'_constructor {_QueryAllBalancesRequest'address :: !Data.Text.Text,
                                          _QueryAllBalancesRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                          _QueryAllBalancesRequest'resolveDenom :: !Prelude.Bool,
                                          _QueryAllBalancesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllBalancesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllBalancesRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesRequest'address
           (\ x__ y__ -> x__ {_QueryAllBalancesRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllBalancesRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllBalancesRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllBalancesRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesRequest'pagination
           (\ x__ y__ -> x__ {_QueryAllBalancesRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllBalancesRequest "resolveDenom" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesRequest'resolveDenom
           (\ x__ y__ -> x__ {_QueryAllBalancesRequest'resolveDenom = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllBalancesRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryAllBalancesRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryAllBalancesRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination\DC2#\n\
      \\rresolve_denom\CAN\ETX \SOH(\bR\fresolveDenom:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor QueryAllBalancesRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllBalancesRequest
        resolveDenom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resolve_denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resolveDenom")) ::
              Data.ProtoLens.FieldDescriptor QueryAllBalancesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor),
           (Data.ProtoLens.Tag 3, resolveDenom__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllBalancesRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllBalancesRequest'_unknownFields = y__})
  defMessage
    = QueryAllBalancesRequest'_constructor
        {_QueryAllBalancesRequest'address = Data.ProtoLens.fieldDefault,
         _QueryAllBalancesRequest'pagination = Prelude.Nothing,
         _QueryAllBalancesRequest'resolveDenom = Data.ProtoLens.fieldDefault,
         _QueryAllBalancesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllBalancesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllBalancesRequest
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "resolve_denom"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resolveDenom") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAllBalancesRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"resolveDenom") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData QueryAllBalancesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllBalancesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllBalancesRequest'address x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllBalancesRequest'pagination x__)
                   (Control.DeepSeq.deepseq
                      (_QueryAllBalancesRequest'resolveDenom x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.balances' @:: Lens' QueryAllBalancesResponse [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.vec'balances' @:: Lens' QueryAllBalancesResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryAllBalancesResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAllBalancesResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAllBalancesResponse
  = QueryAllBalancesResponse'_constructor {_QueryAllBalancesResponse'balances :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                           _QueryAllBalancesResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                           _QueryAllBalancesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAllBalancesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAllBalancesResponse "balances" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesResponse'balances
           (\ x__ y__ -> x__ {_QueryAllBalancesResponse'balances = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAllBalancesResponse "vec'balances" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesResponse'balances
           (\ x__ y__ -> x__ {_QueryAllBalancesResponse'balances = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAllBalancesResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesResponse'pagination
           (\ x__ y__ -> x__ {_QueryAllBalancesResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAllBalancesResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAllBalancesResponse'pagination
           (\ x__ y__ -> x__ {_QueryAllBalancesResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAllBalancesResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryAllBalancesResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryAllBalancesResponse\DC2}\n\
      \\bbalances\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\bbalancesBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        balances__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balances"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"balances")) ::
              Data.ProtoLens.FieldDescriptor QueryAllBalancesResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAllBalancesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, balances__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAllBalancesResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAllBalancesResponse'_unknownFields = y__})
  defMessage
    = QueryAllBalancesResponse'_constructor
        {_QueryAllBalancesResponse'balances = Data.Vector.Generic.empty,
         _QueryAllBalancesResponse'pagination = Prelude.Nothing,
         _QueryAllBalancesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAllBalancesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAllBalancesResponse
        loop x mutable'balances
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'balances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'balances)
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
                              (Data.ProtoLens.Field.field @"vec'balances") frozen'balances x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "balances"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'balances y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'balances
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'balances
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'balances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'balances)
          "QueryAllBalancesResponse"
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
                   (Data.ProtoLens.Field.field @"vec'balances") _x))
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
instance Control.DeepSeq.NFData QueryAllBalancesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAllBalancesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAllBalancesResponse'balances x__)
                (Control.DeepSeq.deepseq
                   (_QueryAllBalancesResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.address' @:: Lens' QueryBalanceRequest Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.denom' @:: Lens' QueryBalanceRequest Data.Text.Text@ -}
data QueryBalanceRequest
  = QueryBalanceRequest'_constructor {_QueryBalanceRequest'address :: !Data.Text.Text,
                                      _QueryBalanceRequest'denom :: !Data.Text.Text,
                                      _QueryBalanceRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryBalanceRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryBalanceRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBalanceRequest'address
           (\ x__ y__ -> x__ {_QueryBalanceRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryBalanceRequest "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBalanceRequest'denom
           (\ x__ y__ -> x__ {_QueryBalanceRequest'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryBalanceRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryBalanceRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryBalanceRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\DC4\n\
      \\ENQdenom\CAN\STX \SOH(\tR\ENQdenom:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor QueryBalanceRequest
        denom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"denom")) ::
              Data.ProtoLens.FieldDescriptor QueryBalanceRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, denom__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryBalanceRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryBalanceRequest'_unknownFields = y__})
  defMessage
    = QueryBalanceRequest'_constructor
        {_QueryBalanceRequest'address = Data.ProtoLens.fieldDefault,
         _QueryBalanceRequest'denom = Data.ProtoLens.fieldDefault,
         _QueryBalanceRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryBalanceRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryBalanceRequest
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
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
                                       "denom"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryBalanceRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"denom") _x
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
instance Control.DeepSeq.NFData QueryBalanceRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryBalanceRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryBalanceRequest'address x__)
                (Control.DeepSeq.deepseq (_QueryBalanceRequest'denom x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.balance' @:: Lens' QueryBalanceResponse Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'balance' @:: Lens' QueryBalanceResponse (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data QueryBalanceResponse
  = QueryBalanceResponse'_constructor {_QueryBalanceResponse'balance :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                       _QueryBalanceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryBalanceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryBalanceResponse "balance" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBalanceResponse'balance
           (\ x__ y__ -> x__ {_QueryBalanceResponse'balance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryBalanceResponse "maybe'balance" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBalanceResponse'balance
           (\ x__ y__ -> x__ {_QueryBalanceResponse'balance = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryBalanceResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryBalanceResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryBalanceResponse\DC23\n\
      \\abalance\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalance"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        balance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'balance")) ::
              Data.ProtoLens.FieldDescriptor QueryBalanceResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, balance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryBalanceResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryBalanceResponse'_unknownFields = y__})
  defMessage
    = QueryBalanceResponse'_constructor
        {_QueryBalanceResponse'balance = Prelude.Nothing,
         _QueryBalanceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryBalanceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryBalanceResponse
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
                                       "balance"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"balance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryBalanceResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'balance") _x
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
instance Control.DeepSeq.NFData QueryBalanceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryBalanceResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryBalanceResponse'balance x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.denom' @:: Lens' QueryDenomMetadataRequest Data.Text.Text@ -}
data QueryDenomMetadataRequest
  = QueryDenomMetadataRequest'_constructor {_QueryDenomMetadataRequest'denom :: !Data.Text.Text,
                                            _QueryDenomMetadataRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDenomMetadataRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDenomMetadataRequest "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomMetadataRequest'denom
           (\ x__ y__ -> x__ {_QueryDenomMetadataRequest'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDenomMetadataRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryDenomMetadataRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryDenomMetadataRequest\DC2\DC4\n\
      \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        denom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"denom")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomMetadataRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, denom__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDenomMetadataRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDenomMetadataRequest'_unknownFields = y__})
  defMessage
    = QueryDenomMetadataRequest'_constructor
        {_QueryDenomMetadataRequest'denom = Data.ProtoLens.fieldDefault,
         _QueryDenomMetadataRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDenomMetadataRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDenomMetadataRequest
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
                                       "denom"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDenomMetadataRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"denom") _x
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
instance Control.DeepSeq.NFData QueryDenomMetadataRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDenomMetadataRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryDenomMetadataRequest'denom x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.metadata' @:: Lens' QueryDenomMetadataResponse Proto.Cosmos.Bank.V1beta1.Bank.Metadata@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'metadata' @:: Lens' QueryDenomMetadataResponse (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Metadata)@ -}
data QueryDenomMetadataResponse
  = QueryDenomMetadataResponse'_constructor {_QueryDenomMetadataResponse'metadata :: !(Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Metadata),
                                             _QueryDenomMetadataResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDenomMetadataResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDenomMetadataResponse "metadata" Proto.Cosmos.Bank.V1beta1.Bank.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomMetadataResponse'metadata
           (\ x__ y__ -> x__ {_QueryDenomMetadataResponse'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDenomMetadataResponse "maybe'metadata" (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomMetadataResponse'metadata
           (\ x__ y__ -> x__ {_QueryDenomMetadataResponse'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDenomMetadataResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryDenomMetadataResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryDenomMetadataResponse\DC2D\n\
      \\bmetadata\CAN\SOH \SOH(\v2\GS.cosmos.bank.v1beta1.MetadataR\bmetadataB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomMetadataResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDenomMetadataResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDenomMetadataResponse'_unknownFields = y__})
  defMessage
    = QueryDenomMetadataResponse'_constructor
        {_QueryDenomMetadataResponse'metadata = Prelude.Nothing,
         _QueryDenomMetadataResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDenomMetadataResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDenomMetadataResponse
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDenomMetadataResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
instance Control.DeepSeq.NFData QueryDenomMetadataResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDenomMetadataResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDenomMetadataResponse'metadata x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.denom' @:: Lens' QueryDenomOwnersRequest Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryDenomOwnersRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDenomOwnersRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryDenomOwnersRequest
  = QueryDenomOwnersRequest'_constructor {_QueryDenomOwnersRequest'denom :: !Data.Text.Text,
                                          _QueryDenomOwnersRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                          _QueryDenomOwnersRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDenomOwnersRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDenomOwnersRequest "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomOwnersRequest'denom
           (\ x__ y__ -> x__ {_QueryDenomOwnersRequest'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDenomOwnersRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomOwnersRequest'pagination
           (\ x__ y__ -> x__ {_QueryDenomOwnersRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDenomOwnersRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomOwnersRequest'pagination
           (\ x__ y__ -> x__ {_QueryDenomOwnersRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDenomOwnersRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryDenomOwnersRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryDenomOwnersRequest\DC2\DC4\n\
      \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        denom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"denom")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomOwnersRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomOwnersRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, denom__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDenomOwnersRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryDenomOwnersRequest'_unknownFields = y__})
  defMessage
    = QueryDenomOwnersRequest'_constructor
        {_QueryDenomOwnersRequest'denom = Data.ProtoLens.fieldDefault,
         _QueryDenomOwnersRequest'pagination = Prelude.Nothing,
         _QueryDenomOwnersRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDenomOwnersRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDenomOwnersRequest
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
                                       "denom"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
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
          (do loop Data.ProtoLens.defMessage) "QueryDenomOwnersRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"denom") _x
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
instance Control.DeepSeq.NFData QueryDenomOwnersRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDenomOwnersRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDenomOwnersRequest'denom x__)
                (Control.DeepSeq.deepseq
                   (_QueryDenomOwnersRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.denomOwners' @:: Lens' QueryDenomOwnersResponse [DenomOwner]@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.vec'denomOwners' @:: Lens' QueryDenomOwnersResponse (Data.Vector.Vector DenomOwner)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryDenomOwnersResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDenomOwnersResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryDenomOwnersResponse
  = QueryDenomOwnersResponse'_constructor {_QueryDenomOwnersResponse'denomOwners :: !(Data.Vector.Vector DenomOwner),
                                           _QueryDenomOwnersResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                           _QueryDenomOwnersResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDenomOwnersResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDenomOwnersResponse "denomOwners" [DenomOwner] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomOwnersResponse'denomOwners
           (\ x__ y__ -> x__ {_QueryDenomOwnersResponse'denomOwners = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDenomOwnersResponse "vec'denomOwners" (Data.Vector.Vector DenomOwner) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomOwnersResponse'denomOwners
           (\ x__ y__ -> x__ {_QueryDenomOwnersResponse'denomOwners = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDenomOwnersResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomOwnersResponse'pagination
           (\ x__ y__ -> x__ {_QueryDenomOwnersResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDenomOwnersResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomOwnersResponse'pagination
           (\ x__ y__ -> x__ {_QueryDenomOwnersResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDenomOwnersResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryDenomOwnersResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryDenomOwnersResponse\DC2B\n\
      \\fdenom_owners\CAN\SOH \ETX(\v2\US.cosmos.bank.v1beta1.DenomOwnerR\vdenomOwners\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        denomOwners__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom_owners"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DenomOwner)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"denomOwners")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomOwnersResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomOwnersResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, denomOwners__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDenomOwnersResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryDenomOwnersResponse'_unknownFields = y__})
  defMessage
    = QueryDenomOwnersResponse'_constructor
        {_QueryDenomOwnersResponse'denomOwners = Data.Vector.Generic.empty,
         _QueryDenomOwnersResponse'pagination = Prelude.Nothing,
         _QueryDenomOwnersResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDenomOwnersResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DenomOwner
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryDenomOwnersResponse
        loop x mutable'denomOwners
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'denomOwners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'denomOwners)
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
                              (Data.ProtoLens.Field.field @"vec'denomOwners") frozen'denomOwners
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
                                        "denom_owners"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'denomOwners y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'denomOwners
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'denomOwners
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'denomOwners <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'denomOwners)
          "QueryDenomOwnersResponse"
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
                   (Data.ProtoLens.Field.field @"vec'denomOwners") _x))
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
instance Control.DeepSeq.NFData QueryDenomOwnersResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDenomOwnersResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDenomOwnersResponse'denomOwners x__)
                (Control.DeepSeq.deepseq
                   (_QueryDenomOwnersResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryDenomsMetadataRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDenomsMetadataRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryDenomsMetadataRequest
  = QueryDenomsMetadataRequest'_constructor {_QueryDenomsMetadataRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                             _QueryDenomsMetadataRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDenomsMetadataRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDenomsMetadataRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomsMetadataRequest'pagination
           (\ x__ y__ -> x__ {_QueryDenomsMetadataRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDenomsMetadataRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomsMetadataRequest'pagination
           (\ x__ y__ -> x__ {_QueryDenomsMetadataRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDenomsMetadataRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryDenomsMetadataRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryDenomsMetadataRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryDenomsMetadataRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDenomsMetadataRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDenomsMetadataRequest'_unknownFields = y__})
  defMessage
    = QueryDenomsMetadataRequest'_constructor
        {_QueryDenomsMetadataRequest'pagination = Prelude.Nothing,
         _QueryDenomsMetadataRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDenomsMetadataRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDenomsMetadataRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryDenomsMetadataRequest"
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
instance Control.DeepSeq.NFData QueryDenomsMetadataRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDenomsMetadataRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDenomsMetadataRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.metadatas' @:: Lens' QueryDenomsMetadataResponse [Proto.Cosmos.Bank.V1beta1.Bank.Metadata]@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.vec'metadatas' @:: Lens' QueryDenomsMetadataResponse (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Metadata)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryDenomsMetadataResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryDenomsMetadataResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryDenomsMetadataResponse
  = QueryDenomsMetadataResponse'_constructor {_QueryDenomsMetadataResponse'metadatas :: !(Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Metadata),
                                              _QueryDenomsMetadataResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                              _QueryDenomsMetadataResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDenomsMetadataResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDenomsMetadataResponse "metadatas" [Proto.Cosmos.Bank.V1beta1.Bank.Metadata] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomsMetadataResponse'metadatas
           (\ x__ y__ -> x__ {_QueryDenomsMetadataResponse'metadatas = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDenomsMetadataResponse "vec'metadatas" (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomsMetadataResponse'metadatas
           (\ x__ y__ -> x__ {_QueryDenomsMetadataResponse'metadatas = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDenomsMetadataResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomsMetadataResponse'pagination
           (\ x__ y__ -> x__ {_QueryDenomsMetadataResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryDenomsMetadataResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDenomsMetadataResponse'pagination
           (\ x__ y__ -> x__ {_QueryDenomsMetadataResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDenomsMetadataResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryDenomsMetadataResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryDenomsMetadataResponse\DC2F\n\
      \\tmetadatas\CAN\SOH \ETX(\v2\GS.cosmos.bank.v1beta1.MetadataR\tmetadatasB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadatas__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadatas"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Metadata)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"metadatas")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomsMetadataResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryDenomsMetadataResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadatas__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDenomsMetadataResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDenomsMetadataResponse'_unknownFields = y__})
  defMessage
    = QueryDenomsMetadataResponse'_constructor
        {_QueryDenomsMetadataResponse'metadatas = Data.Vector.Generic.empty,
         _QueryDenomsMetadataResponse'pagination = Prelude.Nothing,
         _QueryDenomsMetadataResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDenomsMetadataResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Bank.V1beta1.Bank.Metadata
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryDenomsMetadataResponse
        loop x mutable'metadatas
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'metadatas <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'metadatas)
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
                              (Data.ProtoLens.Field.field @"vec'metadatas") frozen'metadatas x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "metadatas"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'metadatas y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'metadatas
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'metadatas
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'metadatas <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'metadatas)
          "QueryDenomsMetadataResponse"
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
                   (Data.ProtoLens.Field.field @"vec'metadatas") _x))
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
instance Control.DeepSeq.NFData QueryDenomsMetadataResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDenomsMetadataResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDenomsMetadataResponse'metadatas x__)
                (Control.DeepSeq.deepseq
                   (_QueryDenomsMetadataResponse'pagination x__) ()))
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
    = Data.Text.pack "cosmos.bank.v1beta1.QueryParamsRequest"
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
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Cosmos.Bank.V1beta1.Bank.Params@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Cosmos.Bank.V1beta1.Bank.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2>\n\
      \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.bank.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Params)
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
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.denoms' @:: Lens' QuerySendEnabledRequest [Data.Text.Text]@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.vec'denoms' @:: Lens' QuerySendEnabledRequest (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QuerySendEnabledRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QuerySendEnabledRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QuerySendEnabledRequest
  = QuerySendEnabledRequest'_constructor {_QuerySendEnabledRequest'denoms :: !(Data.Vector.Vector Data.Text.Text),
                                          _QuerySendEnabledRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                          _QuerySendEnabledRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySendEnabledRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySendEnabledRequest "denoms" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledRequest'denoms
           (\ x__ y__ -> x__ {_QuerySendEnabledRequest'denoms = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QuerySendEnabledRequest "vec'denoms" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledRequest'denoms
           (\ x__ y__ -> x__ {_QuerySendEnabledRequest'denoms = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuerySendEnabledRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledRequest'pagination
           (\ x__ y__ -> x__ {_QuerySendEnabledRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySendEnabledRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledRequest'pagination
           (\ x__ y__ -> x__ {_QuerySendEnabledRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySendEnabledRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QuerySendEnabledRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQuerySendEnabledRequest\DC2\SYN\n\
      \\ACKdenoms\CAN\SOH \ETX(\tR\ACKdenoms\DC2F\n\
      \\n\
      \pagination\CANc \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        denoms__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denoms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"denoms")) ::
              Data.ProtoLens.FieldDescriptor QuerySendEnabledRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QuerySendEnabledRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, denoms__field_descriptor),
           (Data.ProtoLens.Tag 99, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySendEnabledRequest'_unknownFields
        (\ x__ y__ -> x__ {_QuerySendEnabledRequest'_unknownFields = y__})
  defMessage
    = QuerySendEnabledRequest'_constructor
        {_QuerySendEnabledRequest'denoms = Data.Vector.Generic.empty,
         _QuerySendEnabledRequest'pagination = Prelude.Nothing,
         _QuerySendEnabledRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySendEnabledRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser QuerySendEnabledRequest
        loop x mutable'denoms
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'denoms <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'denoms)
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
                              (Data.ProtoLens.Field.field @"vec'denoms") frozen'denoms x))
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
                                        "denoms"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'denoms y)
                                loop x v
                        794
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'denoms
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'denoms
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'denoms <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'denoms)
          "QuerySendEnabledRequest"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'denoms") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 794)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QuerySendEnabledRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySendEnabledRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySendEnabledRequest'denoms x__)
                (Control.DeepSeq.deepseq
                   (_QuerySendEnabledRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.sendEnabled' @:: Lens' QuerySendEnabledResponse [Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled]@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.vec'sendEnabled' @:: Lens' QuerySendEnabledResponse (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QuerySendEnabledResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QuerySendEnabledResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QuerySendEnabledResponse
  = QuerySendEnabledResponse'_constructor {_QuerySendEnabledResponse'sendEnabled :: !(Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled),
                                           _QuerySendEnabledResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                           _QuerySendEnabledResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySendEnabledResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySendEnabledResponse "sendEnabled" [Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledResponse'sendEnabled
           (\ x__ y__ -> x__ {_QuerySendEnabledResponse'sendEnabled = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QuerySendEnabledResponse "vec'sendEnabled" (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledResponse'sendEnabled
           (\ x__ y__ -> x__ {_QuerySendEnabledResponse'sendEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuerySendEnabledResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledResponse'pagination
           (\ x__ y__ -> x__ {_QuerySendEnabledResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySendEnabledResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySendEnabledResponse'pagination
           (\ x__ y__ -> x__ {_QuerySendEnabledResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySendEnabledResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QuerySendEnabledResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQuerySendEnabledResponse\DC2C\n\
      \\fsend_enabled\CAN\SOH \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabled\DC2G\n\
      \\n\
      \pagination\CANc \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sendEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "send_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sendEnabled")) ::
              Data.ProtoLens.FieldDescriptor QuerySendEnabledResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QuerySendEnabledResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sendEnabled__field_descriptor),
           (Data.ProtoLens.Tag 99, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySendEnabledResponse'_unknownFields
        (\ x__ y__ -> x__ {_QuerySendEnabledResponse'_unknownFields = y__})
  defMessage
    = QuerySendEnabledResponse'_constructor
        {_QuerySendEnabledResponse'sendEnabled = Data.Vector.Generic.empty,
         _QuerySendEnabledResponse'pagination = Prelude.Nothing,
         _QuerySendEnabledResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySendEnabledResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled
             -> Data.ProtoLens.Encoding.Bytes.Parser QuerySendEnabledResponse
        loop x mutable'sendEnabled
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'sendEnabled)
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
                              (Data.ProtoLens.Field.field @"vec'sendEnabled") frozen'sendEnabled
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
                                        "send_enabled"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sendEnabled y)
                                loop x v
                        794
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'sendEnabled
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'sendEnabled
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'sendEnabled)
          "QuerySendEnabledResponse"
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
                   (Data.ProtoLens.Field.field @"vec'sendEnabled") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 794)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QuerySendEnabledResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySendEnabledResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySendEnabledResponse'sendEnabled x__)
                (Control.DeepSeq.deepseq
                   (_QuerySendEnabledResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.address' @:: Lens' QuerySpendableBalanceByDenomRequest Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.denom' @:: Lens' QuerySpendableBalanceByDenomRequest Data.Text.Text@ -}
data QuerySpendableBalanceByDenomRequest
  = QuerySpendableBalanceByDenomRequest'_constructor {_QuerySpendableBalanceByDenomRequest'address :: !Data.Text.Text,
                                                      _QuerySpendableBalanceByDenomRequest'denom :: !Data.Text.Text,
                                                      _QuerySpendableBalanceByDenomRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySpendableBalanceByDenomRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySpendableBalanceByDenomRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalanceByDenomRequest'address
           (\ x__ y__
              -> x__ {_QuerySpendableBalanceByDenomRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuerySpendableBalanceByDenomRequest "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalanceByDenomRequest'denom
           (\ x__ y__
              -> x__ {_QuerySpendableBalanceByDenomRequest'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySpendableBalanceByDenomRequest where
  messageName _
    = Data.Text.pack
        "cosmos.bank.v1beta1.QuerySpendableBalanceByDenomRequest"
  packedMessageDescriptor _
    = "\n\
      \#QuerySpendableBalanceByDenomRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\DC4\n\
      \\ENQdenom\CAN\STX \SOH(\tR\ENQdenom:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor QuerySpendableBalanceByDenomRequest
        denom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"denom")) ::
              Data.ProtoLens.FieldDescriptor QuerySpendableBalanceByDenomRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, denom__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySpendableBalanceByDenomRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QuerySpendableBalanceByDenomRequest'_unknownFields = y__})
  defMessage
    = QuerySpendableBalanceByDenomRequest'_constructor
        {_QuerySpendableBalanceByDenomRequest'address = Data.ProtoLens.fieldDefault,
         _QuerySpendableBalanceByDenomRequest'denom = Data.ProtoLens.fieldDefault,
         _QuerySpendableBalanceByDenomRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySpendableBalanceByDenomRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySpendableBalanceByDenomRequest
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
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
                                       "denom"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QuerySpendableBalanceByDenomRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"denom") _x
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
instance Control.DeepSeq.NFData QuerySpendableBalanceByDenomRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySpendableBalanceByDenomRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySpendableBalanceByDenomRequest'address x__)
                (Control.DeepSeq.deepseq
                   (_QuerySpendableBalanceByDenomRequest'denom x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.balance' @:: Lens' QuerySpendableBalanceByDenomResponse Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'balance' @:: Lens' QuerySpendableBalanceByDenomResponse (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data QuerySpendableBalanceByDenomResponse
  = QuerySpendableBalanceByDenomResponse'_constructor {_QuerySpendableBalanceByDenomResponse'balance :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                                       _QuerySpendableBalanceByDenomResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySpendableBalanceByDenomResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySpendableBalanceByDenomResponse "balance" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalanceByDenomResponse'balance
           (\ x__ y__
              -> x__ {_QuerySpendableBalanceByDenomResponse'balance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySpendableBalanceByDenomResponse "maybe'balance" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalanceByDenomResponse'balance
           (\ x__ y__
              -> x__ {_QuerySpendableBalanceByDenomResponse'balance = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySpendableBalanceByDenomResponse where
  messageName _
    = Data.Text.pack
        "cosmos.bank.v1beta1.QuerySpendableBalanceByDenomResponse"
  packedMessageDescriptor _
    = "\n\
      \$QuerySpendableBalanceByDenomResponse\DC23\n\
      \\abalance\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalance"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        balance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'balance")) ::
              Data.ProtoLens.FieldDescriptor QuerySpendableBalanceByDenomResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, balance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySpendableBalanceByDenomResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QuerySpendableBalanceByDenomResponse'_unknownFields = y__})
  defMessage
    = QuerySpendableBalanceByDenomResponse'_constructor
        {_QuerySpendableBalanceByDenomResponse'balance = Prelude.Nothing,
         _QuerySpendableBalanceByDenomResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySpendableBalanceByDenomResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySpendableBalanceByDenomResponse
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
                                       "balance"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"balance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QuerySpendableBalanceByDenomResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'balance") _x
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
instance Control.DeepSeq.NFData QuerySpendableBalanceByDenomResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySpendableBalanceByDenomResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySpendableBalanceByDenomResponse'balance x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.address' @:: Lens' QuerySpendableBalancesRequest Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QuerySpendableBalancesRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QuerySpendableBalancesRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QuerySpendableBalancesRequest
  = QuerySpendableBalancesRequest'_constructor {_QuerySpendableBalancesRequest'address :: !Data.Text.Text,
                                                _QuerySpendableBalancesRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                _QuerySpendableBalancesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySpendableBalancesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySpendableBalancesRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalancesRequest'address
           (\ x__ y__ -> x__ {_QuerySpendableBalancesRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuerySpendableBalancesRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalancesRequest'pagination
           (\ x__ y__
              -> x__ {_QuerySpendableBalancesRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySpendableBalancesRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalancesRequest'pagination
           (\ x__ y__
              -> x__ {_QuerySpendableBalancesRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySpendableBalancesRequest where
  messageName _
    = Data.Text.pack
        "cosmos.bank.v1beta1.QuerySpendableBalancesRequest"
  packedMessageDescriptor _
    = "\n\
      \\GSQuerySpendableBalancesRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor QuerySpendableBalancesRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QuerySpendableBalancesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySpendableBalancesRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QuerySpendableBalancesRequest'_unknownFields = y__})
  defMessage
    = QuerySpendableBalancesRequest'_constructor
        {_QuerySpendableBalancesRequest'address = Data.ProtoLens.fieldDefault,
         _QuerySpendableBalancesRequest'pagination = Prelude.Nothing,
         _QuerySpendableBalancesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySpendableBalancesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySpendableBalancesRequest
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
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
          (do loop Data.ProtoLens.defMessage) "QuerySpendableBalancesRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
instance Control.DeepSeq.NFData QuerySpendableBalancesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySpendableBalancesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySpendableBalancesRequest'address x__)
                (Control.DeepSeq.deepseq
                   (_QuerySpendableBalancesRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.balances' @:: Lens' QuerySpendableBalancesResponse [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.vec'balances' @:: Lens' QuerySpendableBalancesResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QuerySpendableBalancesResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QuerySpendableBalancesResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QuerySpendableBalancesResponse
  = QuerySpendableBalancesResponse'_constructor {_QuerySpendableBalancesResponse'balances :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                                 _QuerySpendableBalancesResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                 _QuerySpendableBalancesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySpendableBalancesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySpendableBalancesResponse "balances" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalancesResponse'balances
           (\ x__ y__
              -> x__ {_QuerySpendableBalancesResponse'balances = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QuerySpendableBalancesResponse "vec'balances" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalancesResponse'balances
           (\ x__ y__
              -> x__ {_QuerySpendableBalancesResponse'balances = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuerySpendableBalancesResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalancesResponse'pagination
           (\ x__ y__
              -> x__ {_QuerySpendableBalancesResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySpendableBalancesResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySpendableBalancesResponse'pagination
           (\ x__ y__
              -> x__ {_QuerySpendableBalancesResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySpendableBalancesResponse where
  messageName _
    = Data.Text.pack
        "cosmos.bank.v1beta1.QuerySpendableBalancesResponse"
  packedMessageDescriptor _
    = "\n\
      \\RSQuerySpendableBalancesResponse\DC2}\n\
      \\bbalances\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\bbalancesBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        balances__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balances"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"balances")) ::
              Data.ProtoLens.FieldDescriptor QuerySpendableBalancesResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QuerySpendableBalancesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, balances__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySpendableBalancesResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QuerySpendableBalancesResponse'_unknownFields = y__})
  defMessage
    = QuerySpendableBalancesResponse'_constructor
        {_QuerySpendableBalancesResponse'balances = Data.Vector.Generic.empty,
         _QuerySpendableBalancesResponse'pagination = Prelude.Nothing,
         _QuerySpendableBalancesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySpendableBalancesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser QuerySpendableBalancesResponse
        loop x mutable'balances
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'balances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'balances)
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
                              (Data.ProtoLens.Field.field @"vec'balances") frozen'balances x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "balances"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'balances y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'balances
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'balances
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'balances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'balances)
          "QuerySpendableBalancesResponse"
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
                   (Data.ProtoLens.Field.field @"vec'balances") _x))
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
instance Control.DeepSeq.NFData QuerySpendableBalancesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySpendableBalancesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySpendableBalancesResponse'balances x__)
                (Control.DeepSeq.deepseq
                   (_QuerySpendableBalancesResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.denom' @:: Lens' QuerySupplyOfRequest Data.Text.Text@ -}
data QuerySupplyOfRequest
  = QuerySupplyOfRequest'_constructor {_QuerySupplyOfRequest'denom :: !Data.Text.Text,
                                       _QuerySupplyOfRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySupplyOfRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySupplyOfRequest "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySupplyOfRequest'denom
           (\ x__ y__ -> x__ {_QuerySupplyOfRequest'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySupplyOfRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QuerySupplyOfRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4QuerySupplyOfRequest\DC2\DC4\n\
      \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        denom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"denom")) ::
              Data.ProtoLens.FieldDescriptor QuerySupplyOfRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, denom__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySupplyOfRequest'_unknownFields
        (\ x__ y__ -> x__ {_QuerySupplyOfRequest'_unknownFields = y__})
  defMessage
    = QuerySupplyOfRequest'_constructor
        {_QuerySupplyOfRequest'denom = Data.ProtoLens.fieldDefault,
         _QuerySupplyOfRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySupplyOfRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySupplyOfRequest
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
                                       "denom"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuerySupplyOfRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"denom") _x
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
instance Control.DeepSeq.NFData QuerySupplyOfRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySupplyOfRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QuerySupplyOfRequest'denom x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.amount' @:: Lens' QuerySupplyOfResponse Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'amount' @:: Lens' QuerySupplyOfResponse (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data QuerySupplyOfResponse
  = QuerySupplyOfResponse'_constructor {_QuerySupplyOfResponse'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                        _QuerySupplyOfResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySupplyOfResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySupplyOfResponse "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySupplyOfResponse'amount
           (\ x__ y__ -> x__ {_QuerySupplyOfResponse'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySupplyOfResponse "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySupplyOfResponse'amount
           (\ x__ y__ -> x__ {_QuerySupplyOfResponse'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySupplyOfResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QuerySupplyOfResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQuerySupplyOfResponse\DC2<\n\
      \\ACKamount\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor QuerySupplyOfResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySupplyOfResponse'_unknownFields
        (\ x__ y__ -> x__ {_QuerySupplyOfResponse'_unknownFields = y__})
  defMessage
    = QuerySupplyOfResponse'_constructor
        {_QuerySupplyOfResponse'amount = Prelude.Nothing,
         _QuerySupplyOfResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySupplyOfResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySupplyOfResponse
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
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuerySupplyOfResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
instance Control.DeepSeq.NFData QuerySupplyOfResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySupplyOfResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QuerySupplyOfResponse'amount x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryTotalSupplyRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryTotalSupplyRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryTotalSupplyRequest
  = QueryTotalSupplyRequest'_constructor {_QueryTotalSupplyRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                          _QueryTotalSupplyRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryTotalSupplyRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryTotalSupplyRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTotalSupplyRequest'pagination
           (\ x__ y__ -> x__ {_QueryTotalSupplyRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryTotalSupplyRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTotalSupplyRequest'pagination
           (\ x__ y__ -> x__ {_QueryTotalSupplyRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryTotalSupplyRequest where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryTotalSupplyRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryTotalSupplyRequest\DC2F\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor QueryTotalSupplyRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryTotalSupplyRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryTotalSupplyRequest'_unknownFields = y__})
  defMessage
    = QueryTotalSupplyRequest'_constructor
        {_QueryTotalSupplyRequest'pagination = Prelude.Nothing,
         _QueryTotalSupplyRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryTotalSupplyRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryTotalSupplyRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryTotalSupplyRequest"
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
instance Control.DeepSeq.NFData QueryTotalSupplyRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryTotalSupplyRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryTotalSupplyRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.supply' @:: Lens' QueryTotalSupplyResponse [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.vec'supply' @:: Lens' QueryTotalSupplyResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.pagination' @:: Lens' QueryTotalSupplyResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Bank.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryTotalSupplyResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryTotalSupplyResponse
  = QueryTotalSupplyResponse'_constructor {_QueryTotalSupplyResponse'supply :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                           _QueryTotalSupplyResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                           _QueryTotalSupplyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryTotalSupplyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryTotalSupplyResponse "supply" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTotalSupplyResponse'supply
           (\ x__ y__ -> x__ {_QueryTotalSupplyResponse'supply = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryTotalSupplyResponse "vec'supply" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTotalSupplyResponse'supply
           (\ x__ y__ -> x__ {_QueryTotalSupplyResponse'supply = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryTotalSupplyResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTotalSupplyResponse'pagination
           (\ x__ y__ -> x__ {_QueryTotalSupplyResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryTotalSupplyResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTotalSupplyResponse'pagination
           (\ x__ y__ -> x__ {_QueryTotalSupplyResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryTotalSupplyResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.QueryTotalSupplyResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryTotalSupplyResponse\DC2y\n\
      \\ACKsupply\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKsupplyBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        supply__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "supply"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"supply")) ::
              Data.ProtoLens.FieldDescriptor QueryTotalSupplyResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryTotalSupplyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, supply__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryTotalSupplyResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryTotalSupplyResponse'_unknownFields = y__})
  defMessage
    = QueryTotalSupplyResponse'_constructor
        {_QueryTotalSupplyResponse'supply = Data.Vector.Generic.empty,
         _QueryTotalSupplyResponse'pagination = Prelude.Nothing,
         _QueryTotalSupplyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryTotalSupplyResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryTotalSupplyResponse
        loop x mutable'supply
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'supply <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'supply)
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
                              (Data.ProtoLens.Field.field @"vec'supply") frozen'supply x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "supply"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'supply y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'supply
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'supply
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'supply <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'supply)
          "QueryTotalSupplyResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'supply") _x))
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
instance Control.DeepSeq.NFData QueryTotalSupplyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryTotalSupplyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryTotalSupplyResponse'supply x__)
                (Control.DeepSeq.deepseq
                   (_QueryTotalSupplyResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.bank.v1beta1"
  type ServiceMethods Query = '["allBalances",
                                "balance",
                                "denomMetadata",
                                "denomOwners",
                                "denomsMetadata",
                                "params",
                                "sendEnabled",
                                "spendableBalanceByDenom",
                                "spendableBalances",
                                "supplyOf",
                                "totalSupply"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\157\SOH\n\
      \\aBalance\DC2(.cosmos.bank.v1beta1.QueryBalanceRequest\SUB).cosmos.bank.v1beta1.QueryBalanceResponse\"=\136\231\176*\SOH\130\211\228\147\STX2\DC20/cosmos/bank/v1beta1/balances/{address}/by_denom\DC2\160\SOH\n\
      \\vAllBalances\DC2,.cosmos.bank.v1beta1.QueryAllBalancesRequest\SUB-.cosmos.bank.v1beta1.QueryAllBalancesResponse\"4\136\231\176*\SOH\130\211\228\147\STX)\DC2'/cosmos/bank/v1beta1/balances/{address}\DC2\188\SOH\n\
      \\DC1SpendableBalances\DC22.cosmos.bank.v1beta1.QuerySpendableBalancesRequest\SUB3.cosmos.bank.v1beta1.QuerySpendableBalancesResponse\">\136\231\176*\SOH\130\211\228\147\STX3\DC21/cosmos/bank/v1beta1/spendable_balances/{address}\DC2\215\SOH\n\
      \\ETBSpendableBalanceByDenom\DC28.cosmos.bank.v1beta1.QuerySpendableBalanceByDenomRequest\SUB9.cosmos.bank.v1beta1.QuerySpendableBalanceByDenomResponse\"G\136\231\176*\SOH\130\211\228\147\STX<\DC2:/cosmos/bank/v1beta1/spendable_balances/{address}/by_denom\DC2\148\SOH\n\
      \\vTotalSupply\DC2,.cosmos.bank.v1beta1.QueryTotalSupplyRequest\SUB-.cosmos.bank.v1beta1.QueryTotalSupplyResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/bank/v1beta1/supply\DC2\148\SOH\n\
      \\bSupplyOf\DC2).cosmos.bank.v1beta1.QuerySupplyOfRequest\SUB*.cosmos.bank.v1beta1.QuerySupplyOfResponse\"1\136\231\176*\SOH\130\211\228\147\STX&\DC2$/cosmos/bank/v1beta1/supply/by_denom\DC2\133\SOH\n\
      \\ACKParams\DC2'.cosmos.bank.v1beta1.QueryParamsRequest\SUB(.cosmos.bank.v1beta1.QueryParamsResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/bank/v1beta1/params\DC2\171\SOH\n\
      \\rDenomMetadata\DC2..cosmos.bank.v1beta1.QueryDenomMetadataRequest\SUB/.cosmos.bank.v1beta1.QueryDenomMetadataResponse\"9\136\231\176*\SOH\130\211\228\147\STX.\DC2,/cosmos/bank/v1beta1/denoms_metadata/{denom}\DC2\166\SOH\n\
      \\SODenomsMetadata\DC2/.cosmos.bank.v1beta1.QueryDenomsMetadataRequest\SUB0.cosmos.bank.v1beta1.QueryDenomsMetadataResponse\"1\136\231\176*\SOH\130\211\228\147\STX&\DC2$/cosmos/bank/v1beta1/denoms_metadata\DC2\162\SOH\n\
      \\vDenomOwners\DC2,.cosmos.bank.v1beta1.QueryDenomOwnersRequest\SUB-.cosmos.bank.v1beta1.QueryDenomOwnersResponse\"6\136\231\176*\SOH\130\211\228\147\STX+\DC2)/cosmos/bank/v1beta1/denom_owners/{denom}\DC2\154\SOH\n\
      \\vSendEnabled\DC2,.cosmos.bank.v1beta1.QuerySendEnabledRequest\SUB-.cosmos.bank.v1beta1.QuerySendEnabledResponse\".\136\231\176*\SOH\130\211\228\147\STX#\DC2!/cosmos/bank/v1beta1/send_enabled"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "balance" where
  type MethodName Query "balance" = "Balance"
  type MethodInput Query "balance" = QueryBalanceRequest
  type MethodOutput Query "balance" = QueryBalanceResponse
  type MethodStreamingType Query "balance" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "allBalances" where
  type MethodName Query "allBalances" = "AllBalances"
  type MethodInput Query "allBalances" = QueryAllBalancesRequest
  type MethodOutput Query "allBalances" = QueryAllBalancesResponse
  type MethodStreamingType Query "allBalances" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "spendableBalances" where
  type MethodName Query "spendableBalances" = "SpendableBalances"
  type MethodInput Query "spendableBalances" = QuerySpendableBalancesRequest
  type MethodOutput Query "spendableBalances" = QuerySpendableBalancesResponse
  type MethodStreamingType Query "spendableBalances" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "spendableBalanceByDenom" where
  type MethodName Query "spendableBalanceByDenom" = "SpendableBalanceByDenom"
  type MethodInput Query "spendableBalanceByDenom" = QuerySpendableBalanceByDenomRequest
  type MethodOutput Query "spendableBalanceByDenom" = QuerySpendableBalanceByDenomResponse
  type MethodStreamingType Query "spendableBalanceByDenom" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "totalSupply" where
  type MethodName Query "totalSupply" = "TotalSupply"
  type MethodInput Query "totalSupply" = QueryTotalSupplyRequest
  type MethodOutput Query "totalSupply" = QueryTotalSupplyResponse
  type MethodStreamingType Query "totalSupply" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "supplyOf" where
  type MethodName Query "supplyOf" = "SupplyOf"
  type MethodInput Query "supplyOf" = QuerySupplyOfRequest
  type MethodOutput Query "supplyOf" = QuerySupplyOfResponse
  type MethodStreamingType Query "supplyOf" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "denomMetadata" where
  type MethodName Query "denomMetadata" = "DenomMetadata"
  type MethodInput Query "denomMetadata" = QueryDenomMetadataRequest
  type MethodOutput Query "denomMetadata" = QueryDenomMetadataResponse
  type MethodStreamingType Query "denomMetadata" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "denomsMetadata" where
  type MethodName Query "denomsMetadata" = "DenomsMetadata"
  type MethodInput Query "denomsMetadata" = QueryDenomsMetadataRequest
  type MethodOutput Query "denomsMetadata" = QueryDenomsMetadataResponse
  type MethodStreamingType Query "denomsMetadata" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "denomOwners" where
  type MethodName Query "denomOwners" = "DenomOwners"
  type MethodInput Query "denomOwners" = QueryDenomOwnersRequest
  type MethodOutput Query "denomOwners" = QueryDenomOwnersResponse
  type MethodStreamingType Query "denomOwners" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "sendEnabled" where
  type MethodName Query "sendEnabled" = "SendEnabled"
  type MethodInput Query "sendEnabled" = QuerySendEnabledRequest
  type MethodOutput Query "sendEnabled" = QuerySendEnabledResponse
  type MethodStreamingType Query "sendEnabled" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/bank/v1beta1/query.proto\DC2\DC3cosmos.bank.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\RScosmos/bank/v1beta1/bank.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ESCcosmos/query/v1/query.proto\SUB\DC1amino/amino.proto\"i\n\
    \\DC3QueryBalanceRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\DC4\n\
    \\ENQdenom\CAN\STX \SOH(\tR\ENQdenom:\b\136\160\US\NUL\232\160\US\NUL\"K\n\
    \\DC4QueryBalanceResponse\DC23\n\
    \\abalance\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalance\"\196\SOH\n\
    \\ETBQueryAllBalancesRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\DC2#\n\
    \\rresolve_denom\CAN\ETX \SOH(\bR\fresolveDenom:\b\136\160\US\NUL\232\160\US\NUL\"\226\SOH\n\
    \\CANQueryAllBalancesResponse\DC2}\n\
    \\bbalances\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\bbalancesBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\165\SOH\n\
    \\GSQuerySpendableBalancesRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\b\136\160\US\NUL\232\160\US\NUL\"\232\SOH\n\
    \\RSQuerySpendableBalancesResponse\DC2}\n\
    \\bbalances\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\bbalancesBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"y\n\
    \#QuerySpendableBalanceByDenomRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\DC4\n\
    \\ENQdenom\CAN\STX \SOH(\tR\ENQdenom:\b\136\160\US\NUL\232\160\US\NUL\"[\n\
    \$QuerySpendableBalanceByDenomResponse\DC23\n\
    \\abalance\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalance\"k\n\
    \\ETBQueryTotalSupplyRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\b\136\160\US\NUL\232\160\US\NUL\"\222\SOH\n\
    \\CANQueryTotalSupplyResponse\DC2y\n\
    \\ACKsupply\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKsupplyBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\",\n\
    \\DC4QuerySupplyOfRequest\DC2\DC4\n\
    \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\"U\n\
    \\NAKQuerySupplyOfResponse\DC2<\n\
    \\ACKamount\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH\"\DC4\n\
    \\DC2QueryParamsRequest\"U\n\
    \\DC3QueryParamsResponse\DC2>\n\
    \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.bank.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\"d\n\
    \\SUBQueryDenomsMetadataRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\174\SOH\n\
    \\ESCQueryDenomsMetadataResponse\DC2F\n\
    \\tmetadatas\CAN\SOH \ETX(\v2\GS.cosmos.bank.v1beta1.MetadataR\tmetadatasB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"1\n\
    \\EMQueryDenomMetadataRequest\DC2\DC4\n\
    \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\"b\n\
    \\SUBQueryDenomMetadataResponse\DC2D\n\
    \\bmetadata\CAN\SOH \SOH(\v2\GS.cosmos.bank.v1beta1.MetadataR\bmetadataB\t\200\222\US\NUL\168\231\176*\SOH\"w\n\
    \\ETBQueryDenomOwnersRequest\DC2\DC4\n\
    \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\128\SOH\n\
    \\n\
    \DenomOwner\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
    \\abalance\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalanceB\t\200\222\US\NUL\168\231\176*\SOH\"\167\SOH\n\
    \\CANQueryDenomOwnersResponse\DC2B\n\
    \\fdenom_owners\CAN\SOH \ETX(\v2\US.cosmos.bank.v1beta1.DenomOwnerR\vdenomOwners\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"y\n\
    \\ETBQuerySendEnabledRequest\DC2\SYN\n\
    \\ACKdenoms\CAN\SOH \ETX(\tR\ACKdenoms\DC2F\n\
    \\n\
    \pagination\CANc \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\168\SOH\n\
    \\CANQuerySendEnabledResponse\DC2C\n\
    \\fsend_enabled\CAN\SOH \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabled\DC2G\n\
    \\n\
    \pagination\CANc \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\178\SO\n\
    \\ENQQuery\DC2\157\SOH\n\
    \\aBalance\DC2(.cosmos.bank.v1beta1.QueryBalanceRequest\SUB).cosmos.bank.v1beta1.QueryBalanceResponse\"=\136\231\176*\SOH\130\211\228\147\STX2\DC20/cosmos/bank/v1beta1/balances/{address}/by_denom\DC2\160\SOH\n\
    \\vAllBalances\DC2,.cosmos.bank.v1beta1.QueryAllBalancesRequest\SUB-.cosmos.bank.v1beta1.QueryAllBalancesResponse\"4\136\231\176*\SOH\130\211\228\147\STX)\DC2'/cosmos/bank/v1beta1/balances/{address}\DC2\188\SOH\n\
    \\DC1SpendableBalances\DC22.cosmos.bank.v1beta1.QuerySpendableBalancesRequest\SUB3.cosmos.bank.v1beta1.QuerySpendableBalancesResponse\">\136\231\176*\SOH\130\211\228\147\STX3\DC21/cosmos/bank/v1beta1/spendable_balances/{address}\DC2\215\SOH\n\
    \\ETBSpendableBalanceByDenom\DC28.cosmos.bank.v1beta1.QuerySpendableBalanceByDenomRequest\SUB9.cosmos.bank.v1beta1.QuerySpendableBalanceByDenomResponse\"G\136\231\176*\SOH\130\211\228\147\STX<\DC2:/cosmos/bank/v1beta1/spendable_balances/{address}/by_denom\DC2\148\SOH\n\
    \\vTotalSupply\DC2,.cosmos.bank.v1beta1.QueryTotalSupplyRequest\SUB-.cosmos.bank.v1beta1.QueryTotalSupplyResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/bank/v1beta1/supply\DC2\148\SOH\n\
    \\bSupplyOf\DC2).cosmos.bank.v1beta1.QuerySupplyOfRequest\SUB*.cosmos.bank.v1beta1.QuerySupplyOfResponse\"1\136\231\176*\SOH\130\211\228\147\STX&\DC2$/cosmos/bank/v1beta1/supply/by_denom\DC2\133\SOH\n\
    \\ACKParams\DC2'.cosmos.bank.v1beta1.QueryParamsRequest\SUB(.cosmos.bank.v1beta1.QueryParamsResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/bank/v1beta1/params\DC2\171\SOH\n\
    \\rDenomMetadata\DC2..cosmos.bank.v1beta1.QueryDenomMetadataRequest\SUB/.cosmos.bank.v1beta1.QueryDenomMetadataResponse\"9\136\231\176*\SOH\130\211\228\147\STX.\DC2,/cosmos/bank/v1beta1/denoms_metadata/{denom}\DC2\166\SOH\n\
    \\SODenomsMetadata\DC2/.cosmos.bank.v1beta1.QueryDenomsMetadataRequest\SUB0.cosmos.bank.v1beta1.QueryDenomsMetadataResponse\"1\136\231\176*\SOH\130\211\228\147\STX&\DC2$/cosmos/bank/v1beta1/denoms_metadata\DC2\162\SOH\n\
    \\vDenomOwners\DC2,.cosmos.bank.v1beta1.QueryDenomOwnersRequest\SUB-.cosmos.bank.v1beta1.QueryDenomOwnersResponse\"6\136\231\176*\SOH\130\211\228\147\STX+\DC2)/cosmos/bank/v1beta1/denom_owners/{denom}\DC2\154\SOH\n\
    \\vSendEnabled\DC2,.cosmos.bank.v1beta1.QuerySendEnabledRequest\SUB-.cosmos.bank.v1beta1.QuerySendEnabledResponse\".\136\231\176*\SOH\130\211\228\147\STX#\DC2!/cosmos/bank/v1beta1/send_enabledB+Z)github.com/cosmos/cosmos-sdk/x/bank/typesJ\223\\\n\
    \\a\DC2\ENQ\NUL\NUL\226\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\t\NUL%\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\n\
    \\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\f\NUL@\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\SI\NULs\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SI\b\r\n\
    \R\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DC1\STX\DC4\ETX\SUBD Balance queries the balance of a single coin for a single account.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC1\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC1\SO!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC1,@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC2\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\NUL\EOT\241\140\166\ENQ\DC2\ETX\DC2\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC3\EOTd\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DC3\EOTd\n\
    \\209\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\SUB\STX\GS\ETX\SUB\194\SOH AllBalances queries the balance of all coins for a single account.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\SUB\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\SUB\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\SUB4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\ESC\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\SOH\EOT\241\140\166\ENQ\DC2\ETX\ESC\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\FS\EOT[\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\FS\EOT[\n\
    \\251\SOH\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT&\STX)\ETX\SUB\236\SOH SpendableBalances queries the spendable balance of all coins for a single\n\
    \ account.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX&\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX&\CAN5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX&@^\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX'\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\STX\EOT\241\140\166\ENQ\DC2\ETX'\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX(\EOTe\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX(\EOTe\n\
    \\134\STX\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT2\STX5\ETX\SUB\247\SOH SpendableBalanceByDenom queries the spendable balance of a single denom for\n\
    \ a single account.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX2\ACK\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX2\RSA\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX2Lp\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX3\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ETX\EOT\241\140\166\ENQ\DC2\ETX3\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX4\EOTn\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX4\EOTn\n\
    \\193\SOH\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT;\STX>\ETX\SUB\178\SOH TotalSupply queries the total supply of all coins.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX;\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX;\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX;4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX<\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\EOT\EOT\241\140\166\ENQ\DC2\ETX<\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX=\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX=\EOTO\n\
    \\188\SOH\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOTD\STXG\ETX\SUB\173\SOH SupplyOf queries the supply of a single coin.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETXD\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETXD\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETXD.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETXE\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ENQ\EOT\241\140\166\ENQ\DC2\ETXE\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETXF\EOTX\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETXF\EOTX\n\
    \?\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOTJ\STXM\ETX\SUB1 Params queries the parameters of x/bank module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETXJ\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETXJ\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETXJ*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETXK\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ACK\EOT\241\140\166\ENQ\DC2\ETXK\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETXL\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETXL\EOTO\n\
    \X\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOTP\STXS\ETX\SUBJ DenomsMetadata queries the client metadata of a given coin denomination.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETXP\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETXP\DC4-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETXP8R\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETXQ\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\a\EOT\241\140\166\ENQ\DC2\ETXQ\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETXR\EOT`\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\ETXR\EOT`\n\
    \b\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOTW\STXZ\ETX\SUBT DenomsMetadata queries the client metadata for all registered coin\n\
    \ denominations.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETXW\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETXW\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETXW:U\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETXX\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\b\EOT\241\140\166\ENQ\DC2\ETXX\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETXY\EOTX\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\ETXY\EOTX\n\
    \\128\STX\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOTc\STXf\ETX\SUB\241\SOH DenomOwners queries for all account addresses that own a particular token\n\
    \ denomination.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETXc\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETXc\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETXc4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXd\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\t\EOT\241\140\166\ENQ\DC2\ETXd\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXe\EOT]\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\t\EOT\176\202\188\"\STX\DC2\ETXe\EOT]\n\
    \\186\STX\n\
    \\EOT\ACK\NUL\STX\n\
    \\DC2\EOTo\STXr\ETX\SUB\171\STX SendEnabled queries for SendEnabled entries.\n\
    \\n\
    \ This query only returns denominations that have specific SendEnabled settings.\n\
    \ Any denomination that does not have a specific setting will use the default\n\
    \ params.default_send_enabled, and will not be returned by this query.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\SOH\DC2\ETXo\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\STX\DC2\ETXo\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\ETX\DC2\ETXo4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\EOT\DC2\ETXp\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\n\
    \\EOT\241\140\166\ENQ\DC2\ETXp\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\EOT\DC2\ETXq\EOTU\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\n\
    \\EOT\176\202\188\"\STX\DC2\ETXq\EOTU\n\
    \W\n\
    \\STX\EOT\NUL\DC2\EOTv\NUL\DEL\SOH\SUBK QueryBalanceRequest is the request type for the Query/Balance RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXv\b\ESC\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETXw\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETXw\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETXx\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETXx\STX-\n\
    \<\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX{\STXF\SUB/ address is the address to query balances for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX{\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX{\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX{\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX{\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX{\SYND\n\
    \=\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX~\STX\DC3\SUB0 denom is the coin denom to query balances for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX~\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX~\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX~\DC1\DC2\n\
    \[\n\
    \\STX\EOT\SOH\DC2\ACK\130\SOH\NUL\133\SOH\SOH\SUBM QueryBalanceResponse is the response type for the Query/Balance RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\130\SOH\b\FS\n\
    \3\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\132\SOH\STX'\SUB% balance is the balance of the coin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\132\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\132\SOH\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\132\SOH%&\n\
    \]\n\
    \\STX\EOT\STX\DC2\ACK\136\SOH\NUL\150\SOH\SOH\SUBO QueryBalanceRequest is the request type for the Query/AllBalances RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\136\SOH\b\US\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\137\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\EOT\137\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\138\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\EOT\138\SOH\STX-\n\
    \=\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\141\SOH\STXF\SUB/ address is the address to query balances for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\141\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\141\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\141\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\EOT\141\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\EOT\141\SOH\SYND\n\
    \J\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\144\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\144\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\144\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\144\SOH56\n\
    \\133\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\149\SOH\STX\EM\SUBw resolve_denom is the flag to resolve the denom into a human-readable form from the metadata.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\149\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\149\SOH\a\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\149\SOH\ETB\CAN\n\
    \d\n\
    \\STX\EOT\ETX\DC2\ACK\154\SOH\NUL\165\SOH\SOH\SUBV QueryAllBalancesResponse is the response type for the Query/AllBalances RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\154\SOH\b \n\
    \<\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ACK\156\SOH\STX\161\SOH\EOT\SUB, balances is the balances of all the coins.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\156\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\156\SOH$,\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\156\SOH/0\n\
    \\SI\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ACK\156\SOH1\161\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\EOT\157\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\ETX\STX\NUL\b\245\140\166\ENQ\DC2\EOT\158\SOH\EOT#\n\
    \\DC1\n\
    \\t\EOT\ETX\STX\NUL\b\243\140\166\ENQ\DC2\EOT\159\SOH\EOT-\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\245\251\ETX\DC2\EOT\160\SOH\EOTI\n\
    \B\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\164\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\164\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\164\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\164\SOH67\n\
    \\153\SOH\n\
    \\STX\EOT\EOT\DC2\ACK\171\SOH\NUL\180\SOH\SOH\SUB\138\SOH QuerySpendableBalancesRequest defines the gRPC request structure for querying\n\
    \ an account's spendable balances.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\171\SOH\b%\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT\172\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\EOT\172\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT\173\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\EOT\173\SOH\STX-\n\
    \G\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\176\SOH\STXF\SUB9 address is the address to query spendable balances for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\176\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\176\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\176\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\176\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\EOT\176\SOH\SYND\n\
    \J\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\179\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\179\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\179\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\179\SOH56\n\
    \\155\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\186\SOH\NUL\197\SOH\SOH\SUB\140\SOH QuerySpendableBalancesResponse defines the gRPC response structure for querying\n\
    \ an account's spendable balances.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\186\SOH\b&\n\
    \F\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ACK\188\SOH\STX\193\SOH\EOT\SUB6 balances is the spendable balances of all the coins.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\188\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\188\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\188\SOH$,\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\188\SOH/0\n\
    \\SI\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ACK\188\SOH1\193\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\EOT\189\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\EOT\190\SOH\EOT#\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\NUL\b\243\140\166\ENQ\DC2\EOT\191\SOH\EOT-\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\245\251\ETX\DC2\EOT\192\SOH\EOTI\n\
    \B\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\196\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\196\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\196\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\196\SOH67\n\
    \\179\SOH\n\
    \\STX\EOT\ACK\DC2\ACK\203\SOH\NUL\212\SOH\SOH\SUB\164\SOH QuerySpendableBalanceByDenomRequest defines the gRPC request structure for\n\
    \ querying an account's spendable balance for a specific denom.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\203\SOH\b+\n\
    \\v\n\
    \\ETX\EOT\ACK\a\DC2\EOT\204\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\ACK\a\141\244\ETX\DC2\EOT\204\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\ACK\a\DC2\EOT\205\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\ACK\a\129\244\ETX\DC2\EOT\205\SOH\STX-\n\
    \=\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\208\SOH\STXF\SUB/ address is the address to query balances for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\208\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\208\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\208\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\208\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\EOT\208\SOH\SYND\n\
    \>\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\211\SOH\STX\DC3\SUB0 denom is the coin denom to query balances for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\211\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\211\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\211\SOH\DC1\DC2\n\
    \\181\SOH\n\
    \\STX\EOT\a\DC2\ACK\218\SOH\NUL\221\SOH\SOH\SUB\166\SOH QuerySpendableBalanceByDenomResponse defines the gRPC response structure for\n\
    \ querying an account's spendable balance for a specific denom.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\218\SOH\b,\n\
    \3\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\220\SOH\STX'\SUB% balance is the balance of the coin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\220\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\220\SOH\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\220\SOH%&\n\
    \b\n\
    \\STX\EOT\b\DC2\ACK\225\SOH\NUL\233\SOH\SOH\SUBT QueryTotalSupplyRequest is the request type for the Query/TotalSupply RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\225\SOH\b\US\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\226\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\141\244\ETX\DC2\EOT\226\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\227\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\227\SOH\STX-\n\
    \c\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\232\SOH\STX7\SUBU pagination defines an optional pagination for the request.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\232\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\232\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\232\SOH56\n\
    \c\n\
    \\STX\EOT\t\DC2\ACK\237\SOH\NUL\250\SOH\SOH\SUBU QueryTotalSupplyResponse is the response type for the Query/TotalSupply RPC\n\
    \ method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\237\SOH\b \n\
    \3\n\
    \\EOT\EOT\t\STX\NUL\DC2\ACK\239\SOH\STX\244\SOH\EOT\SUB# supply is the supply of the coins\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\239\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\239\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\239\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\239\SOH-.\n\
    \\SI\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\ACK\239\SOH/\244\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\EOT\240\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\t\STX\NUL\b\245\140\166\ENQ\DC2\EOT\241\SOH\EOT#\n\
    \\DC1\n\
    \\t\EOT\t\STX\NUL\b\243\140\166\ENQ\DC2\EOT\242\SOH\EOT-\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\245\251\ETX\DC2\EOT\243\SOH\EOTI\n\
    \[\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\249\SOH\STX8\SUBM pagination defines the pagination in the response.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\249\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\249\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\249\SOH67\n\
    \[\n\
    \\STX\EOT\n\
    \\DC2\ACK\253\SOH\NUL\128\STX\SOH\SUBM QuerySupplyOfRequest is the request type for the Query/SupplyOf RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\253\SOH\b\FS\n\
    \>\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\255\SOH\STX\DC3\SUB0 denom is the coin denom to query balances for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\255\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\255\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\255\SOH\DC1\DC2\n\
    \]\n\
    \\STX\EOT\v\DC2\ACK\131\STX\NUL\134\STX\SOH\SUBO QuerySupplyOfResponse is the response type for the Query/SupplyOf RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\131\STX\b\GS\n\
    \1\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\133\STX\STXd\SUB# amount is the supply of the coin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\133\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\133\STX\ESC!\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\133\STX$%\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\EOT\133\STX&c\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\233\251\ETX\DC2\EOT\133\STX'C\n\
    \\DC1\n\
    \\t\EOT\v\STX\NUL\b\245\140\166\ENQ\DC2\EOT\133\STXEb\n\
    \Y\n\
    \\STX\EOT\f\DC2\EOT\137\STX\NUL\GS\SUBM QueryParamsRequest defines the request type for querying x/bank parameters.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\137\STX\b\SUB\n\
    \]\n\
    \\STX\EOT\r\DC2\ACK\140\STX\NUL\142\STX\SOH\SUBO QueryParamsResponse defines the response type for querying x/bank parameters.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\140\STX\b\ESC\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\141\STX\STXR\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\141\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\141\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\141\STX\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\141\STX\DC4Q\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\233\251\ETX\DC2\EOT\141\STX\NAK1\n\
    \\DC1\n\
    \\t\EOT\r\STX\NUL\b\245\140\166\ENQ\DC2\EOT\141\STX3P\n\
    \g\n\
    \\STX\EOT\SO\DC2\ACK\145\STX\NUL\148\STX\SOH\SUBY QueryDenomsMetadataRequest is the request type for the Query/DenomsMetadata RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\145\STX\b\"\n\
    \J\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\147\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\EOT\147\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\147\STX(2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\147\STX56\n\
    \j\n\
    \\STX\EOT\SI\DC2\ACK\152\STX\NUL\158\STX\SOH\SUB\\ QueryDenomsMetadataResponse is the response type for the Query/DenomsMetadata RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\152\STX\b#\n\
    \W\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\154\STX\STX`\SUBI metadata provides the client information for all the registered tokens.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\EOT\154\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\154\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\154\STX\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\154\STX !\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\b\DC2\EOT\154\STX\"_\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\233\251\ETX\DC2\EOT\154\STX#?\n\
    \\DC1\n\
    \\t\EOT\SI\STX\NUL\b\245\140\166\ENQ\DC2\EOT\154\STXA^\n\
    \B\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\157\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\157\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\157\STX)3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\157\STX67\n\
    \e\n\
    \\STX\EOT\DLE\DC2\ACK\161\STX\NUL\164\STX\SOH\SUBW QueryDenomMetadataRequest is the request type for the Query/DenomMetadata RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\161\STX\b!\n\
    \B\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\163\STX\STX\DC3\SUB4 denom is the coin denom to query the metadata for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\163\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\163\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\163\STX\DC1\DC2\n\
    \h\n\
    \\STX\EOT\DC1\DC2\ACK\168\STX\NUL\171\STX\SOH\SUBZ QueryDenomMetadataResponse is the response type for the Query/DenomMetadata RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\168\STX\b\"\n\
    \c\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\170\STX\STXV\SUBU metadata describes and provides all the client information for the requested token.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\170\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\170\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\170\STX\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\b\DC2\EOT\170\STX\CANU\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\NUL\b\233\251\ETX\DC2\EOT\170\STX\EM5\n\
    \\DC1\n\
    \\t\EOT\DC1\STX\NUL\b\245\140\166\ENQ\DC2\EOT\170\STX7T\n\
    \\185\SOH\n\
    \\STX\EOT\DC2\DC2\ACK\176\STX\NUL\182\STX\SOH\SUB\170\SOH QueryDenomOwnersRequest defines the request type for the DenomOwners RPC query,\n\
    \ which queries for a paginated set of all account holders of a particular\n\
    \ denomination.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\176\STX\b\US\n\
    \U\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\178\STX\STX\DC3\SUBG denom defines the coin denomination to query all account holders for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\178\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\178\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\178\STX\DC1\DC2\n\
    \J\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\181\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ACK\DC2\EOT\181\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\181\STX(2\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\181\STX56\n\
    \\225\SOH\n\
    \\STX\EOT\DC3\DC2\ACK\189\STX\NUL\195\STX\SOH\SUB\210\SOH DenomOwner defines structure representing an account that owns or holds a\n\
    \ particular denominated token. It contains the account address and account\n\
    \ balance of the denominated token.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\189\STX\b\DC2\n\
    \P\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\191\STX\STXF\SUBB address defines the address that owns a particular denomination.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\191\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\191\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\191\STX\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\b\DC2\EOT\191\STX\NAKE\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\202\214\ENQ\DC2\EOT\191\STX\SYND\n\
    \N\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\194\STX\STXe\SUB@ balance is the balance of the denominated coin for an account.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ACK\DC2\EOT\194\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\194\STX\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\194\STX%&\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\b\DC2\EOT\194\STX'd\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\SOH\b\233\251\ETX\DC2\EOT\194\STX(D\n\
    \\DC1\n\
    \\t\EOT\DC3\STX\SOH\b\245\140\166\ENQ\DC2\EOT\194\STXFc\n\
    \v\n\
    \\STX\EOT\DC4\DC2\ACK\200\STX\NUL\205\STX\SOH\SUBh QueryDenomOwnersResponse defines the RPC response of a DenomOwners RPC query.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\200\STX\b \n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\201\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\EOT\201\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\201\STX\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\201\STX\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\201\STX%&\n\
    \B\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\204\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ACK\DC2\EOT\204\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\204\STX)3\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\204\STX67\n\
    \|\n\
    \\STX\EOT\NAK\DC2\ACK\210\STX\NUL\216\STX\SOH\SUBn QuerySendEnabledRequest defines the RPC request for looking up SendEnabled entries.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\210\STX\b\US\n\
    \_\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\212\STX\STX\GS\SUBQ denoms is the specific denoms you want look up. Leave empty to get all entries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\EOT\DC2\EOT\212\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\212\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\212\STX\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\212\STX\ESC\FS\n\
    \\129\SOH\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\215\STX\STX8\SUBs pagination defines an optional pagination for the request. This field is\n\
    \ only read if the denoms field is empty.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ACK\DC2\EOT\215\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\215\STX(2\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\215\STX57\n\
    \q\n\
    \\STX\EOT\SYN\DC2\ACK\221\STX\NUL\226\STX\SOH\SUBc QuerySendEnabledResponse defines the RPC response of a SendEnable query.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\221\STX\b \n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\222\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\EOT\DC2\EOT\222\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ACK\DC2\EOT\222\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\222\STX\ETB#\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\222\STX&'\n\
    \\141\SOH\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\225\STX\STX9\SUB\DEL pagination defines the pagination in the response. This field is only\n\
    \ populated if the denoms field in the request is empty.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\225\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\225\STX)3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\225\STX68b\ACKproto3"