{- This file was auto-generated from cosmos/distribution/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Distribution.V1beta1.Query (
        Query(..), QueryCommunityPoolRequest(),
        QueryCommunityPoolResponse(), QueryDelegationRewardsRequest(),
        QueryDelegationRewardsResponse(),
        QueryDelegationTotalRewardsRequest(),
        QueryDelegationTotalRewardsResponse(),
        QueryDelegatorValidatorsRequest(),
        QueryDelegatorValidatorsResponse(),
        QueryDelegatorWithdrawAddressRequest(),
        QueryDelegatorWithdrawAddressResponse(), QueryParamsRequest(),
        QueryParamsResponse(), QueryValidatorCommissionRequest(),
        QueryValidatorCommissionResponse(),
        QueryValidatorDistributionInfoRequest(),
        QueryValidatorDistributionInfoResponse(),
        QueryValidatorOutstandingRewardsRequest(),
        QueryValidatorOutstandingRewardsResponse(),
        QueryValidatorSlashesRequest(), QueryValidatorSlashesResponse()
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Distribution.V1beta1.Distribution
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
{- | Fields :
      -}
data QueryCommunityPoolRequest
  = QueryCommunityPoolRequest'_constructor {_QueryCommunityPoolRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryCommunityPoolRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryCommunityPoolRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryCommunityPoolRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryCommunityPoolRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryCommunityPoolRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryCommunityPoolRequest'_unknownFields = y__})
  defMessage
    = QueryCommunityPoolRequest'_constructor
        {_QueryCommunityPoolRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryCommunityPoolRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryCommunityPoolRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryCommunityPoolRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryCommunityPoolRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryCommunityPoolRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.pool' @:: Lens' QueryCommunityPoolResponse [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'pool' @:: Lens' QueryCommunityPoolResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data QueryCommunityPoolResponse
  = QueryCommunityPoolResponse'_constructor {_QueryCommunityPoolResponse'pool :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                             _QueryCommunityPoolResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryCommunityPoolResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryCommunityPoolResponse "pool" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryCommunityPoolResponse'pool
           (\ x__ y__ -> x__ {_QueryCommunityPoolResponse'pool = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryCommunityPoolResponse "vec'pool" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryCommunityPoolResponse'pool
           (\ x__ y__ -> x__ {_QueryCommunityPoolResponse'pool = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryCommunityPoolResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryCommunityPoolResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryCommunityPoolResponse\DC2j\n\
      \\EOTpool\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\EOTpoolB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pool__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"pool")) ::
              Data.ProtoLens.FieldDescriptor QueryCommunityPoolResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, pool__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryCommunityPoolResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryCommunityPoolResponse'_unknownFields = y__})
  defMessage
    = QueryCommunityPoolResponse'_constructor
        {_QueryCommunityPoolResponse'pool = Data.Vector.Generic.empty,
         _QueryCommunityPoolResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryCommunityPoolResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryCommunityPoolResponse
        loop x mutable'pool
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pool <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'pool)
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
                              (Data.ProtoLens.Field.field @"vec'pool") frozen'pool x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "pool"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'pool y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pool
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pool <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pool)
          "QueryCommunityPoolResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'pool") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryCommunityPoolResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryCommunityPoolResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryCommunityPoolResponse'pool x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.delegatorAddress' @:: Lens' QueryDelegationRewardsRequest Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.validatorAddress' @:: Lens' QueryDelegationRewardsRequest Data.Text.Text@ -}
data QueryDelegationRewardsRequest
  = QueryDelegationRewardsRequest'_constructor {_QueryDelegationRewardsRequest'delegatorAddress :: !Data.Text.Text,
                                                _QueryDelegationRewardsRequest'validatorAddress :: !Data.Text.Text,
                                                _QueryDelegationRewardsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegationRewardsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegationRewardsRequest "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationRewardsRequest'delegatorAddress
           (\ x__ y__
              -> x__ {_QueryDelegationRewardsRequest'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegationRewardsRequest "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationRewardsRequest'validatorAddress
           (\ x__ y__
              -> x__ {_QueryDelegationRewardsRequest'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegationRewardsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegationRewardsRequest"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryDelegationRewardsRequest\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationRewardsRequest
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationRewardsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegationRewardsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegationRewardsRequest'_unknownFields = y__})
  defMessage
    = QueryDelegationRewardsRequest'_constructor
        {_QueryDelegationRewardsRequest'delegatorAddress = Data.ProtoLens.fieldDefault,
         _QueryDelegationRewardsRequest'validatorAddress = Data.ProtoLens.fieldDefault,
         _QueryDelegationRewardsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegationRewardsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegationRewardsRequest
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
                                       "delegator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddress") y x)
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryDelegationRewardsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddress") _x
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
                         (Data.ProtoLens.Field.field @"validatorAddress") _x
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
instance Control.DeepSeq.NFData QueryDelegationRewardsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegationRewardsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegationRewardsRequest'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegationRewardsRequest'validatorAddress x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.rewards' @:: Lens' QueryDelegationRewardsResponse [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'rewards' @:: Lens' QueryDelegationRewardsResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data QueryDelegationRewardsResponse
  = QueryDelegationRewardsResponse'_constructor {_QueryDelegationRewardsResponse'rewards :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                                 _QueryDelegationRewardsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegationRewardsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegationRewardsResponse "rewards" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationRewardsResponse'rewards
           (\ x__ y__ -> x__ {_QueryDelegationRewardsResponse'rewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDelegationRewardsResponse "vec'rewards" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationRewardsResponse'rewards
           (\ x__ y__ -> x__ {_QueryDelegationRewardsResponse'rewards = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegationRewardsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegationRewardsResponse"
  packedMessageDescriptor _
    = "\n\
      \\RSQueryDelegationRewardsResponse\DC2p\n\
      \\arewards\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\arewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rewards")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationRewardsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rewards__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegationRewardsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegationRewardsResponse'_unknownFields = y__})
  defMessage
    = QueryDelegationRewardsResponse'_constructor
        {_QueryDelegationRewardsResponse'rewards = Data.Vector.Generic.empty,
         _QueryDelegationRewardsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegationRewardsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegationRewardsResponse
        loop x mutable'rewards
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'rewards)
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
                              (Data.ProtoLens.Field.field @"vec'rewards") frozen'rewards x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rewards y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rewards
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rewards)
          "QueryDelegationRewardsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rewards") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryDelegationRewardsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegationRewardsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegationRewardsResponse'rewards x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.delegatorAddress' @:: Lens' QueryDelegationTotalRewardsRequest Data.Text.Text@ -}
data QueryDelegationTotalRewardsRequest
  = QueryDelegationTotalRewardsRequest'_constructor {_QueryDelegationTotalRewardsRequest'delegatorAddress :: !Data.Text.Text,
                                                     _QueryDelegationTotalRewardsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegationTotalRewardsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegationTotalRewardsRequest "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationTotalRewardsRequest'delegatorAddress
           (\ x__ y__
              -> x__
                   {_QueryDelegationTotalRewardsRequest'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegationTotalRewardsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegationTotalRewardsRequest"
  packedMessageDescriptor _
    = "\n\
      \\"QueryDelegationTotalRewardsRequest\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationTotalRewardsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegationTotalRewardsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegationTotalRewardsRequest'_unknownFields = y__})
  defMessage
    = QueryDelegationTotalRewardsRequest'_constructor
        {_QueryDelegationTotalRewardsRequest'delegatorAddress = Data.ProtoLens.fieldDefault,
         _QueryDelegationTotalRewardsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegationTotalRewardsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegationTotalRewardsRequest
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
                                       "delegator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryDelegationTotalRewardsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddress") _x
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
instance Control.DeepSeq.NFData QueryDelegationTotalRewardsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegationTotalRewardsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegationTotalRewardsRequest'delegatorAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.rewards' @:: Lens' QueryDelegationTotalRewardsResponse [Proto.Cosmos.Distribution.V1beta1.Distribution.DelegationDelegatorReward]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'rewards' @:: Lens' QueryDelegationTotalRewardsResponse (Data.Vector.Vector Proto.Cosmos.Distribution.V1beta1.Distribution.DelegationDelegatorReward)@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.total' @:: Lens' QueryDelegationTotalRewardsResponse [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'total' @:: Lens' QueryDelegationTotalRewardsResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data QueryDelegationTotalRewardsResponse
  = QueryDelegationTotalRewardsResponse'_constructor {_QueryDelegationTotalRewardsResponse'rewards :: !(Data.Vector.Vector Proto.Cosmos.Distribution.V1beta1.Distribution.DelegationDelegatorReward),
                                                      _QueryDelegationTotalRewardsResponse'total :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                                      _QueryDelegationTotalRewardsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegationTotalRewardsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegationTotalRewardsResponse "rewards" [Proto.Cosmos.Distribution.V1beta1.Distribution.DelegationDelegatorReward] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationTotalRewardsResponse'rewards
           (\ x__ y__
              -> x__ {_QueryDelegationTotalRewardsResponse'rewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDelegationTotalRewardsResponse "vec'rewards" (Data.Vector.Vector Proto.Cosmos.Distribution.V1beta1.Distribution.DelegationDelegatorReward) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationTotalRewardsResponse'rewards
           (\ x__ y__
              -> x__ {_QueryDelegationTotalRewardsResponse'rewards = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryDelegationTotalRewardsResponse "total" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationTotalRewardsResponse'total
           (\ x__ y__
              -> x__ {_QueryDelegationTotalRewardsResponse'total = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDelegationTotalRewardsResponse "vec'total" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegationTotalRewardsResponse'total
           (\ x__ y__
              -> x__ {_QueryDelegationTotalRewardsResponse'total = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegationTotalRewardsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegationTotalRewardsResponse"
  packedMessageDescriptor _
    = "\n\
      \#QueryDelegationTotalRewardsResponse\DC2[\n\
      \\arewards\CAN\SOH \ETX(\v26.cosmos.distribution.v1beta1.DelegationDelegatorRewardR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2l\n\
      \\ENQtotal\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\ENQtotalB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.DelegationDelegatorReward)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rewards")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationTotalRewardsResponse
        total__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"total")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegationTotalRewardsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rewards__field_descriptor),
           (Data.ProtoLens.Tag 2, total__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegationTotalRewardsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegationTotalRewardsResponse'_unknownFields = y__})
  defMessage
    = QueryDelegationTotalRewardsResponse'_constructor
        {_QueryDelegationTotalRewardsResponse'rewards = Data.Vector.Generic.empty,
         _QueryDelegationTotalRewardsResponse'total = Data.Vector.Generic.empty,
         _QueryDelegationTotalRewardsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegationTotalRewardsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Distribution.V1beta1.Distribution.DelegationDelegatorReward
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
                -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegationTotalRewardsResponse
        loop x mutable'rewards mutable'total
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'rewards)
                      frozen'total <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'total)
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
                              (Data.ProtoLens.Field.field @"vec'rewards") frozen'rewards
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'total") frozen'total x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rewards y)
                                loop x v mutable'total
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "total"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'total y)
                                loop x mutable'rewards v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rewards mutable'total
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'total <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rewards mutable'total)
          "QueryDelegationTotalRewardsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rewards") _x))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'total") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryDelegationTotalRewardsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegationTotalRewardsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegationTotalRewardsResponse'rewards x__)
                (Control.DeepSeq.deepseq
                   (_QueryDelegationTotalRewardsResponse'total x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.delegatorAddress' @:: Lens' QueryDelegatorValidatorsRequest Data.Text.Text@ -}
data QueryDelegatorValidatorsRequest
  = QueryDelegatorValidatorsRequest'_constructor {_QueryDelegatorValidatorsRequest'delegatorAddress :: !Data.Text.Text,
                                                  _QueryDelegatorValidatorsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorValidatorsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsRequest "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsRequest'delegatorAddress
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsRequest'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorValidatorsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegatorValidatorsRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryDelegatorValidatorsRequest\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorValidatorsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorValidatorsRequest'_unknownFields = y__})
  defMessage
    = QueryDelegatorValidatorsRequest'_constructor
        {_QueryDelegatorValidatorsRequest'delegatorAddress = Data.ProtoLens.fieldDefault,
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
                                       "delegator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddress") y x)
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
                      (Data.ProtoLens.Field.field @"delegatorAddress") _x
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
instance Control.DeepSeq.NFData QueryDelegatorValidatorsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorValidatorsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorValidatorsRequest'delegatorAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.validators' @:: Lens' QueryDelegatorValidatorsResponse [Data.Text.Text]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'validators' @:: Lens' QueryDelegatorValidatorsResponse (Data.Vector.Vector Data.Text.Text)@ -}
data QueryDelegatorValidatorsResponse
  = QueryDelegatorValidatorsResponse'_constructor {_QueryDelegatorValidatorsResponse'validators :: !(Data.Vector.Vector Data.Text.Text),
                                                   _QueryDelegatorValidatorsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorValidatorsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsResponse "validators" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsResponse'validators
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsResponse'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryDelegatorValidatorsResponse "vec'validators" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorValidatorsResponse'validators
           (\ x__ y__
              -> x__ {_QueryDelegatorValidatorsResponse'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorValidatorsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegatorValidatorsResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryDelegatorValidatorsResponse\DC2\RS\n\
      \\n\
      \validators\CAN\SOH \ETX(\tR\n\
      \validators:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorValidatorsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validators__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorValidatorsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryDelegatorValidatorsResponse'_unknownFields = y__})
  defMessage
    = QueryDelegatorValidatorsResponse'_constructor
        {_QueryDelegatorValidatorsResponse'validators = Data.Vector.Generic.empty,
         _QueryDelegatorValidatorsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorValidatorsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
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
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'validators") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryDelegatorValidatorsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorValidatorsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorValidatorsResponse'validators x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.delegatorAddress' @:: Lens' QueryDelegatorWithdrawAddressRequest Data.Text.Text@ -}
data QueryDelegatorWithdrawAddressRequest
  = QueryDelegatorWithdrawAddressRequest'_constructor {_QueryDelegatorWithdrawAddressRequest'delegatorAddress :: !Data.Text.Text,
                                                       _QueryDelegatorWithdrawAddressRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorWithdrawAddressRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorWithdrawAddressRequest "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorWithdrawAddressRequest'delegatorAddress
           (\ x__ y__
              -> x__
                   {_QueryDelegatorWithdrawAddressRequest'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorWithdrawAddressRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegatorWithdrawAddressRequest"
  packedMessageDescriptor _
    = "\n\
      \$QueryDelegatorWithdrawAddressRequest\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorWithdrawAddressRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorWithdrawAddressRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryDelegatorWithdrawAddressRequest'_unknownFields = y__})
  defMessage
    = QueryDelegatorWithdrawAddressRequest'_constructor
        {_QueryDelegatorWithdrawAddressRequest'delegatorAddress = Data.ProtoLens.fieldDefault,
         _QueryDelegatorWithdrawAddressRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorWithdrawAddressRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorWithdrawAddressRequest
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
                                       "delegator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryDelegatorWithdrawAddressRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddress") _x
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
instance Control.DeepSeq.NFData QueryDelegatorWithdrawAddressRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorWithdrawAddressRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorWithdrawAddressRequest'delegatorAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.withdrawAddress' @:: Lens' QueryDelegatorWithdrawAddressResponse Data.Text.Text@ -}
data QueryDelegatorWithdrawAddressResponse
  = QueryDelegatorWithdrawAddressResponse'_constructor {_QueryDelegatorWithdrawAddressResponse'withdrawAddress :: !Data.Text.Text,
                                                        _QueryDelegatorWithdrawAddressResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDelegatorWithdrawAddressResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryDelegatorWithdrawAddressResponse "withdrawAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryDelegatorWithdrawAddressResponse'withdrawAddress
           (\ x__ y__
              -> x__
                   {_QueryDelegatorWithdrawAddressResponse'withdrawAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryDelegatorWithdrawAddressResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryDelegatorWithdrawAddressResponse"
  packedMessageDescriptor _
    = "\n\
      \%QueryDelegatorWithdrawAddressResponse\DC2C\n\
      \\DLEwithdraw_address\CAN\SOH \SOH(\tR\SIwithdrawAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        withdrawAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "withdraw_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"withdrawAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryDelegatorWithdrawAddressResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, withdrawAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDelegatorWithdrawAddressResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryDelegatorWithdrawAddressResponse'_unknownFields = y__})
  defMessage
    = QueryDelegatorWithdrawAddressResponse'_constructor
        {_QueryDelegatorWithdrawAddressResponse'withdrawAddress = Data.ProtoLens.fieldDefault,
         _QueryDelegatorWithdrawAddressResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDelegatorWithdrawAddressResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDelegatorWithdrawAddressResponse
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
                                       "withdraw_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"withdrawAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryDelegatorWithdrawAddressResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"withdrawAddress") _x
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
instance Control.DeepSeq.NFData QueryDelegatorWithdrawAddressResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDelegatorWithdrawAddressResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryDelegatorWithdrawAddressResponse'withdrawAddress x__) ())
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
    = Data.Text.pack "cosmos.distribution.v1beta1.QueryParamsRequest"
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
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Cosmos.Distribution.V1beta1.Distribution.Params@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Cosmos.Distribution.V1beta1.Distribution.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.distribution.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2F\n\
      \\ACKparams\CAN\SOH \SOH(\v2#.cosmos.distribution.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.Params)
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
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.validatorAddress' @:: Lens' QueryValidatorCommissionRequest Data.Text.Text@ -}
data QueryValidatorCommissionRequest
  = QueryValidatorCommissionRequest'_constructor {_QueryValidatorCommissionRequest'validatorAddress :: !Data.Text.Text,
                                                  _QueryValidatorCommissionRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorCommissionRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorCommissionRequest "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorCommissionRequest'validatorAddress
           (\ x__ y__
              -> x__ {_QueryValidatorCommissionRequest'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorCommissionRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorCommissionRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryValidatorCommissionRequest\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorCommissionRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorCommissionRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryValidatorCommissionRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorCommissionRequest'_constructor
        {_QueryValidatorCommissionRequest'validatorAddress = Data.ProtoLens.fieldDefault,
         _QueryValidatorCommissionRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorCommissionRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorCommissionRequest
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryValidatorCommissionRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddress") _x
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
instance Control.DeepSeq.NFData QueryValidatorCommissionRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorCommissionRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorCommissionRequest'validatorAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.commission' @:: Lens' QueryValidatorCommissionResponse Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.maybe'commission' @:: Lens' QueryValidatorCommissionResponse (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission)@ -}
data QueryValidatorCommissionResponse
  = QueryValidatorCommissionResponse'_constructor {_QueryValidatorCommissionResponse'commission :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission),
                                                   _QueryValidatorCommissionResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorCommissionResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorCommissionResponse "commission" Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorCommissionResponse'commission
           (\ x__ y__
              -> x__ {_QueryValidatorCommissionResponse'commission = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorCommissionResponse "maybe'commission" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorCommissionResponse'commission
           (\ x__ y__
              -> x__ {_QueryValidatorCommissionResponse'commission = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorCommissionResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorCommissionResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryValidatorCommissionResponse\DC2f\n\
      \\n\
      \commission\CAN\SOH \SOH(\v2;.cosmos.distribution.v1beta1.ValidatorAccumulatedCommissionR\n\
      \commissionB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commission__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commission"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commission")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorCommissionResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commission__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorCommissionResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryValidatorCommissionResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorCommissionResponse'_constructor
        {_QueryValidatorCommissionResponse'commission = Prelude.Nothing,
         _QueryValidatorCommissionResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorCommissionResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorCommissionResponse
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
                                       "commission"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"commission") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryValidatorCommissionResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commission") _x
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
instance Control.DeepSeq.NFData QueryValidatorCommissionResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorCommissionResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorCommissionResponse'commission x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.validatorAddress' @:: Lens' QueryValidatorDistributionInfoRequest Data.Text.Text@ -}
data QueryValidatorDistributionInfoRequest
  = QueryValidatorDistributionInfoRequest'_constructor {_QueryValidatorDistributionInfoRequest'validatorAddress :: !Data.Text.Text,
                                                        _QueryValidatorDistributionInfoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorDistributionInfoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorDistributionInfoRequest "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDistributionInfoRequest'validatorAddress
           (\ x__ y__
              -> x__
                   {_QueryValidatorDistributionInfoRequest'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorDistributionInfoRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorDistributionInfoRequest"
  packedMessageDescriptor _
    = "\n\
      \%QueryValidatorDistributionInfoRequest\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDistributionInfoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorDistributionInfoRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryValidatorDistributionInfoRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorDistributionInfoRequest'_constructor
        {_QueryValidatorDistributionInfoRequest'validatorAddress = Data.ProtoLens.fieldDefault,
         _QueryValidatorDistributionInfoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorDistributionInfoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorDistributionInfoRequest
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryValidatorDistributionInfoRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddress") _x
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
instance Control.DeepSeq.NFData QueryValidatorDistributionInfoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorDistributionInfoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorDistributionInfoRequest'validatorAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.operatorAddress' @:: Lens' QueryValidatorDistributionInfoResponse Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.selfBondRewards' @:: Lens' QueryValidatorDistributionInfoResponse [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'selfBondRewards' @:: Lens' QueryValidatorDistributionInfoResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.commission' @:: Lens' QueryValidatorDistributionInfoResponse [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'commission' @:: Lens' QueryValidatorDistributionInfoResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data QueryValidatorDistributionInfoResponse
  = QueryValidatorDistributionInfoResponse'_constructor {_QueryValidatorDistributionInfoResponse'operatorAddress :: !Data.Text.Text,
                                                         _QueryValidatorDistributionInfoResponse'selfBondRewards :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                                         _QueryValidatorDistributionInfoResponse'commission :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                                         _QueryValidatorDistributionInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorDistributionInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorDistributionInfoResponse "operatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDistributionInfoResponse'operatorAddress
           (\ x__ y__
              -> x__
                   {_QueryValidatorDistributionInfoResponse'operatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorDistributionInfoResponse "selfBondRewards" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDistributionInfoResponse'selfBondRewards
           (\ x__ y__
              -> x__
                   {_QueryValidatorDistributionInfoResponse'selfBondRewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryValidatorDistributionInfoResponse "vec'selfBondRewards" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDistributionInfoResponse'selfBondRewards
           (\ x__ y__
              -> x__
                   {_QueryValidatorDistributionInfoResponse'selfBondRewards = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorDistributionInfoResponse "commission" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDistributionInfoResponse'commission
           (\ x__ y__
              -> x__ {_QueryValidatorDistributionInfoResponse'commission = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryValidatorDistributionInfoResponse "vec'commission" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorDistributionInfoResponse'commission
           (\ x__ y__
              -> x__ {_QueryValidatorDistributionInfoResponse'commission = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorDistributionInfoResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorDistributionInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \&QueryValidatorDistributionInfoResponse\DC2L\n\
      \\DLEoperator_address\CAN\SOH \SOH(\tR\SIoperatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\130\SOH\n\
      \\DC1self_bond_rewards\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\SIselfBondRewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\DC2q\n\
      \\n\
      \commission\CAN\ETX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\n\
      \commissionB3\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDistributionInfoResponse
        selfBondRewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "self_bond_rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"selfBondRewards")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDistributionInfoResponse
        commission__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commission"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"commission")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorDistributionInfoResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, selfBondRewards__field_descriptor),
           (Data.ProtoLens.Tag 3, commission__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorDistributionInfoResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryValidatorDistributionInfoResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorDistributionInfoResponse'_constructor
        {_QueryValidatorDistributionInfoResponse'operatorAddress = Data.ProtoLens.fieldDefault,
         _QueryValidatorDistributionInfoResponse'selfBondRewards = Data.Vector.Generic.empty,
         _QueryValidatorDistributionInfoResponse'commission = Data.Vector.Generic.empty,
         _QueryValidatorDistributionInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorDistributionInfoResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
                -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorDistributionInfoResponse
        loop x mutable'commission mutable'selfBondRewards
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'commission <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'commission)
                      frozen'selfBondRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'selfBondRewards)
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
                              (Data.ProtoLens.Field.field @"vec'commission") frozen'commission
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'selfBondRewards")
                                 frozen'selfBondRewards x)))
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
                                       "operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operatorAddress") y x)
                                  mutable'commission mutable'selfBondRewards
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "self_bond_rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'selfBondRewards y)
                                loop x mutable'commission v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "commission"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'commission y)
                                loop x v mutable'selfBondRewards
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'commission mutable'selfBondRewards
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'commission <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'selfBondRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'commission
                mutable'selfBondRewards)
          "QueryValidatorDistributionInfoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"operatorAddress") _x
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
                      (Data.ProtoLens.Field.field @"vec'selfBondRewards") _x))
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'commission") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData QueryValidatorDistributionInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorDistributionInfoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorDistributionInfoResponse'operatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorDistributionInfoResponse'selfBondRewards x__)
                   (Control.DeepSeq.deepseq
                      (_QueryValidatorDistributionInfoResponse'commission x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.validatorAddress' @:: Lens' QueryValidatorOutstandingRewardsRequest Data.Text.Text@ -}
data QueryValidatorOutstandingRewardsRequest
  = QueryValidatorOutstandingRewardsRequest'_constructor {_QueryValidatorOutstandingRewardsRequest'validatorAddress :: !Data.Text.Text,
                                                          _QueryValidatorOutstandingRewardsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorOutstandingRewardsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorOutstandingRewardsRequest "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorOutstandingRewardsRequest'validatorAddress
           (\ x__ y__
              -> x__
                   {_QueryValidatorOutstandingRewardsRequest'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorOutstandingRewardsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorOutstandingRewardsRequest"
  packedMessageDescriptor _
    = "\n\
      \'QueryValidatorOutstandingRewardsRequest\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorOutstandingRewardsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorOutstandingRewardsRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryValidatorOutstandingRewardsRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorOutstandingRewardsRequest'_constructor
        {_QueryValidatorOutstandingRewardsRequest'validatorAddress = Data.ProtoLens.fieldDefault,
         _QueryValidatorOutstandingRewardsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorOutstandingRewardsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorOutstandingRewardsRequest
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryValidatorOutstandingRewardsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddress") _x
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
instance Control.DeepSeq.NFData QueryValidatorOutstandingRewardsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorOutstandingRewardsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorOutstandingRewardsRequest'validatorAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.rewards' @:: Lens' QueryValidatorOutstandingRewardsResponse Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorOutstandingRewards@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.maybe'rewards' @:: Lens' QueryValidatorOutstandingRewardsResponse (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorOutstandingRewards)@ -}
data QueryValidatorOutstandingRewardsResponse
  = QueryValidatorOutstandingRewardsResponse'_constructor {_QueryValidatorOutstandingRewardsResponse'rewards :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorOutstandingRewards),
                                                           _QueryValidatorOutstandingRewardsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorOutstandingRewardsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorOutstandingRewardsResponse "rewards" Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorOutstandingRewards where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorOutstandingRewardsResponse'rewards
           (\ x__ y__
              -> x__ {_QueryValidatorOutstandingRewardsResponse'rewards = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorOutstandingRewardsResponse "maybe'rewards" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorOutstandingRewards) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorOutstandingRewardsResponse'rewards
           (\ x__ y__
              -> x__ {_QueryValidatorOutstandingRewardsResponse'rewards = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorOutstandingRewardsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorOutstandingRewardsResponse"
  packedMessageDescriptor _
    = "\n\
      \(QueryValidatorOutstandingRewardsResponse\DC2]\n\
      \\arewards\CAN\SOH \SOH(\v28.cosmos.distribution.v1beta1.ValidatorOutstandingRewardsR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorOutstandingRewards)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rewards")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorOutstandingRewardsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rewards__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorOutstandingRewardsResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryValidatorOutstandingRewardsResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorOutstandingRewardsResponse'_constructor
        {_QueryValidatorOutstandingRewardsResponse'rewards = Prelude.Nothing,
         _QueryValidatorOutstandingRewardsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorOutstandingRewardsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorOutstandingRewardsResponse
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
                                       "rewards"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rewards") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryValidatorOutstandingRewardsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rewards") _x
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
instance Control.DeepSeq.NFData QueryValidatorOutstandingRewardsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorOutstandingRewardsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorOutstandingRewardsResponse'rewards x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.validatorAddress' @:: Lens' QueryValidatorSlashesRequest Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.startingHeight' @:: Lens' QueryValidatorSlashesRequest Data.Word.Word64@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.endingHeight' @:: Lens' QueryValidatorSlashesRequest Data.Word.Word64@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorSlashesRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorSlashesRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryValidatorSlashesRequest
  = QueryValidatorSlashesRequest'_constructor {_QueryValidatorSlashesRequest'validatorAddress :: !Data.Text.Text,
                                               _QueryValidatorSlashesRequest'startingHeight :: !Data.Word.Word64,
                                               _QueryValidatorSlashesRequest'endingHeight :: !Data.Word.Word64,
                                               _QueryValidatorSlashesRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                               _QueryValidatorSlashesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorSlashesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesRequest "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesRequest'validatorAddress
           (\ x__ y__
              -> x__ {_QueryValidatorSlashesRequest'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesRequest "startingHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesRequest'startingHeight
           (\ x__ y__
              -> x__ {_QueryValidatorSlashesRequest'startingHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesRequest "endingHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesRequest'endingHeight
           (\ x__ y__
              -> x__ {_QueryValidatorSlashesRequest'endingHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesRequest'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorSlashesRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesRequest'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorSlashesRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorSlashesRequest where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorSlashesRequest"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryValidatorSlashesRequest\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2'\n\
      \\SIstarting_height\CAN\STX \SOH(\EOTR\SOstartingHeight\DC2#\n\
      \\rending_height\CAN\ETX \SOH(\EOTR\fendingHeight\DC2F\n\
      \\n\
      \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination:\EOT\136\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorSlashesRequest
        startingHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "starting_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startingHeight")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorSlashesRequest
        endingHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ending_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endingHeight")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorSlashesRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorSlashesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, startingHeight__field_descriptor),
           (Data.ProtoLens.Tag 3, endingHeight__field_descriptor),
           (Data.ProtoLens.Tag 4, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorSlashesRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryValidatorSlashesRequest'_unknownFields = y__})
  defMessage
    = QueryValidatorSlashesRequest'_constructor
        {_QueryValidatorSlashesRequest'validatorAddress = Data.ProtoLens.fieldDefault,
         _QueryValidatorSlashesRequest'startingHeight = Data.ProtoLens.fieldDefault,
         _QueryValidatorSlashesRequest'endingHeight = Data.ProtoLens.fieldDefault,
         _QueryValidatorSlashesRequest'pagination = Prelude.Nothing,
         _QueryValidatorSlashesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorSlashesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorSlashesRequest
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "starting_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startingHeight") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ending_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"endingHeight") y x)
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
          (do loop Data.ProtoLens.defMessage) "QueryValidatorSlashesRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddress") _x
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
                         (Data.ProtoLens.Field.field @"startingHeight") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"endingHeight") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
instance Control.DeepSeq.NFData QueryValidatorSlashesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorSlashesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorSlashesRequest'validatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorSlashesRequest'startingHeight x__)
                   (Control.DeepSeq.deepseq
                      (_QueryValidatorSlashesRequest'endingHeight x__)
                      (Control.DeepSeq.deepseq
                         (_QueryValidatorSlashesRequest'pagination x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.slashes' @:: Lens' QueryValidatorSlashesResponse [Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent]@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.vec'slashes' @:: Lens' QueryValidatorSlashesResponse (Data.Vector.Vector Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent)@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.pagination' @:: Lens' QueryValidatorSlashesResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Distribution.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryValidatorSlashesResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryValidatorSlashesResponse
  = QueryValidatorSlashesResponse'_constructor {_QueryValidatorSlashesResponse'slashes :: !(Data.Vector.Vector Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent),
                                                _QueryValidatorSlashesResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                _QueryValidatorSlashesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryValidatorSlashesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesResponse "slashes" [Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesResponse'slashes
           (\ x__ y__ -> x__ {_QueryValidatorSlashesResponse'slashes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesResponse "vec'slashes" (Data.Vector.Vector Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesResponse'slashes
           (\ x__ y__ -> x__ {_QueryValidatorSlashesResponse'slashes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesResponse'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorSlashesResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryValidatorSlashesResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryValidatorSlashesResponse'pagination
           (\ x__ y__
              -> x__ {_QueryValidatorSlashesResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryValidatorSlashesResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.QueryValidatorSlashesResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryValidatorSlashesResponse\DC2U\n\
      \\aslashes\CAN\SOH \ETX(\v20.cosmos.distribution.v1beta1.ValidatorSlashEventR\aslashesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        slashes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slashes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"slashes")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorSlashesResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryValidatorSlashesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, slashes__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryValidatorSlashesResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryValidatorSlashesResponse'_unknownFields = y__})
  defMessage
    = QueryValidatorSlashesResponse'_constructor
        {_QueryValidatorSlashesResponse'slashes = Data.Vector.Generic.empty,
         _QueryValidatorSlashesResponse'pagination = Prelude.Nothing,
         _QueryValidatorSlashesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryValidatorSlashesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryValidatorSlashesResponse
        loop x mutable'slashes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'slashes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'slashes)
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
                              (Data.ProtoLens.Field.field @"vec'slashes") frozen'slashes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "slashes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'slashes y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'slashes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'slashes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'slashes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'slashes)
          "QueryValidatorSlashesResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'slashes") _x))
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
instance Control.DeepSeq.NFData QueryValidatorSlashesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryValidatorSlashesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryValidatorSlashesResponse'slashes x__)
                (Control.DeepSeq.deepseq
                   (_QueryValidatorSlashesResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.distribution.v1beta1"
  type ServiceMethods Query = '["communityPool",
                                "delegationRewards",
                                "delegationTotalRewards",
                                "delegatorValidators",
                                "delegatorWithdrawAddress",
                                "params",
                                "validatorCommission",
                                "validatorDistributionInfo",
                                "validatorOutstandingRewards",
                                "validatorSlashes"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\152\SOH\n\
      \\ACKParams\DC2/.cosmos.distribution.v1beta1.QueryParamsRequest\SUB0.cosmos.distribution.v1beta1.QueryParamsResponse\"+\130\211\228\147\STX%\DC2#/cosmos/distribution/v1beta1/params\DC2\233\SOH\n\
      \\EMValidatorDistributionInfo\DC2B.cosmos.distribution.v1beta1.QueryValidatorDistributionInfoRequest\SUBC.cosmos.distribution.v1beta1.QueryValidatorDistributionInfoResponse\"C\130\211\228\147\STX=\DC2;/cosmos/distribution/v1beta1/validators/{validator_address}\DC2\131\STX\n\
      \\ESCValidatorOutstandingRewards\DC2D.cosmos.distribution.v1beta1.QueryValidatorOutstandingRewardsRequest\SUBE.cosmos.distribution.v1beta1.QueryValidatorOutstandingRewardsResponse\"W\130\211\228\147\STXQ\DC2O/cosmos/distribution/v1beta1/validators/{validator_address}/outstanding_rewards\DC2\226\SOH\n\
      \\DC3ValidatorCommission\DC2<.cosmos.distribution.v1beta1.QueryValidatorCommissionRequest\SUB=.cosmos.distribution.v1beta1.QueryValidatorCommissionResponse\"N\130\211\228\147\STXH\DC2F/cosmos/distribution/v1beta1/validators/{validator_address}/commission\DC2\214\SOH\n\
      \\DLEValidatorSlashes\DC29.cosmos.distribution.v1beta1.QueryValidatorSlashesRequest\SUB:.cosmos.distribution.v1beta1.QueryValidatorSlashesResponse\"K\130\211\228\147\STXE\DC2C/cosmos/distribution/v1beta1/validators/{validator_address}/slashes\DC2\237\SOH\n\
      \\DC1DelegationRewards\DC2:.cosmos.distribution.v1beta1.QueryDelegationRewardsRequest\SUB;.cosmos.distribution.v1beta1.QueryDelegationRewardsResponse\"_\130\211\228\147\STXY\DC2W/cosmos/distribution/v1beta1/delegators/{delegator_address}/rewards/{validator_address}\DC2\232\SOH\n\
      \\SYNDelegationTotalRewards\DC2?.cosmos.distribution.v1beta1.QueryDelegationTotalRewardsRequest\SUB@.cosmos.distribution.v1beta1.QueryDelegationTotalRewardsResponse\"K\130\211\228\147\STXE\DC2C/cosmos/distribution/v1beta1/delegators/{delegator_address}/rewards\DC2\226\SOH\n\
      \\DC3DelegatorValidators\DC2<.cosmos.distribution.v1beta1.QueryDelegatorValidatorsRequest\SUB=.cosmos.distribution.v1beta1.QueryDelegatorValidatorsResponse\"N\130\211\228\147\STXH\DC2F/cosmos/distribution/v1beta1/delegators/{delegator_address}/validators\DC2\247\SOH\n\
      \\CANDelegatorWithdrawAddress\DC2A.cosmos.distribution.v1beta1.QueryDelegatorWithdrawAddressRequest\SUBB.cosmos.distribution.v1beta1.QueryDelegatorWithdrawAddressResponse\"T\130\211\228\147\STXN\DC2L/cosmos/distribution/v1beta1/delegators/{delegator_address}/withdraw_address\DC2\181\SOH\n\
      \\rCommunityPool\DC26.cosmos.distribution.v1beta1.QueryCommunityPoolRequest\SUB7.cosmos.distribution.v1beta1.QueryCommunityPoolResponse\"3\130\211\228\147\STX-\DC2+/cosmos/distribution/v1beta1/community_pool"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validatorDistributionInfo" where
  type MethodName Query "validatorDistributionInfo" = "ValidatorDistributionInfo"
  type MethodInput Query "validatorDistributionInfo" = QueryValidatorDistributionInfoRequest
  type MethodOutput Query "validatorDistributionInfo" = QueryValidatorDistributionInfoResponse
  type MethodStreamingType Query "validatorDistributionInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validatorOutstandingRewards" where
  type MethodName Query "validatorOutstandingRewards" = "ValidatorOutstandingRewards"
  type MethodInput Query "validatorOutstandingRewards" = QueryValidatorOutstandingRewardsRequest
  type MethodOutput Query "validatorOutstandingRewards" = QueryValidatorOutstandingRewardsResponse
  type MethodStreamingType Query "validatorOutstandingRewards" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validatorCommission" where
  type MethodName Query "validatorCommission" = "ValidatorCommission"
  type MethodInput Query "validatorCommission" = QueryValidatorCommissionRequest
  type MethodOutput Query "validatorCommission" = QueryValidatorCommissionResponse
  type MethodStreamingType Query "validatorCommission" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "validatorSlashes" where
  type MethodName Query "validatorSlashes" = "ValidatorSlashes"
  type MethodInput Query "validatorSlashes" = QueryValidatorSlashesRequest
  type MethodOutput Query "validatorSlashes" = QueryValidatorSlashesResponse
  type MethodStreamingType Query "validatorSlashes" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegationRewards" where
  type MethodName Query "delegationRewards" = "DelegationRewards"
  type MethodInput Query "delegationRewards" = QueryDelegationRewardsRequest
  type MethodOutput Query "delegationRewards" = QueryDelegationRewardsResponse
  type MethodStreamingType Query "delegationRewards" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegationTotalRewards" where
  type MethodName Query "delegationTotalRewards" = "DelegationTotalRewards"
  type MethodInput Query "delegationTotalRewards" = QueryDelegationTotalRewardsRequest
  type MethodOutput Query "delegationTotalRewards" = QueryDelegationTotalRewardsResponse
  type MethodStreamingType Query "delegationTotalRewards" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegatorValidators" where
  type MethodName Query "delegatorValidators" = "DelegatorValidators"
  type MethodInput Query "delegatorValidators" = QueryDelegatorValidatorsRequest
  type MethodOutput Query "delegatorValidators" = QueryDelegatorValidatorsResponse
  type MethodStreamingType Query "delegatorValidators" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "delegatorWithdrawAddress" where
  type MethodName Query "delegatorWithdrawAddress" = "DelegatorWithdrawAddress"
  type MethodInput Query "delegatorWithdrawAddress" = QueryDelegatorWithdrawAddressRequest
  type MethodOutput Query "delegatorWithdrawAddress" = QueryDelegatorWithdrawAddressResponse
  type MethodStreamingType Query "delegatorWithdrawAddress" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "communityPool" where
  type MethodName Query "communityPool" = "CommunityPool"
  type MethodInput Query "communityPool" = QueryCommunityPoolRequest
  type MethodOutput Query "communityPool" = QueryCommunityPoolResponse
  type MethodStreamingType Query "communityPool" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'cosmos/distribution/v1beta1/query.proto\DC2\ESCcosmos.distribution.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB.cosmos/distribution/v1beta1/distribution.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"]\n\
    \\DC3QueryParamsResponse\DC2F\n\
    \\ACKparams\CAN\SOH \SOH(\v2#.cosmos.distribution.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\"w\n\
    \%QueryValidatorDistributionInfoRequest\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\"\238\STX\n\
    \&QueryValidatorDistributionInfoResponse\DC2L\n\
    \\DLEoperator_address\CAN\SOH \SOH(\tR\SIoperatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\130\SOH\n\
    \\DC1self_bond_rewards\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\SIselfBondRewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\DC2q\n\
    \\n\
    \commission\CAN\ETX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\n\
    \commissionB3\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\"y\n\
    \'QueryValidatorOutstandingRewardsRequest\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\"\137\SOH\n\
    \(QueryValidatorOutstandingRewardsResponse\DC2]\n\
    \\arewards\CAN\SOH \SOH(\v28.cosmos.distribution.v1beta1.ValidatorOutstandingRewardsR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH\"q\n\
    \\USQueryValidatorCommissionRequest\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\"\138\SOH\n\
    \ QueryValidatorCommissionResponse\DC2f\n\
    \\n\
    \commission\CAN\SOH \SOH(\v2;.cosmos.distribution.v1beta1.ValidatorAccumulatedCommissionR\n\
    \commissionB\t\200\222\US\NUL\168\231\176*\SOH\"\138\STX\n\
    \\FSQueryValidatorSlashesRequest\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2'\n\
    \\SIstarting_height\CAN\STX \SOH(\EOTR\SOstartingHeight\DC2#\n\
    \\rending_height\CAN\ETX \SOH(\EOTR\fendingHeight\DC2F\n\
    \\n\
    \pagination\CAN\EOT \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination:\EOT\136\160\US\NUL\"\191\SOH\n\
    \\GSQueryValidatorSlashesResponse\DC2U\n\
    \\aslashes\CAN\SOH \ETX(\v20.cosmos.distribution.v1beta1.ValidatorSlashEventR\aslashesB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\192\SOH\n\
    \\GSQueryDelegationRewardsRequest\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString:\b\136\160\US\NUL\232\160\US\NUL\"\146\SOH\n\
    \\RSQueryDelegationRewardsResponse\DC2p\n\
    \\arewards\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\arewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\"u\n\
    \\"QueryDelegationTotalRewardsRequest\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"\240\SOH\n\
    \#QueryDelegationTotalRewardsResponse\DC2[\n\
    \\arewards\CAN\SOH \ETX(\v26.cosmos.distribution.v1beta1.DelegationDelegatorRewardR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2l\n\
    \\ENQtotal\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\ENQtotalB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\"r\n\
    \\USQueryDelegatorValidatorsRequest\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"L\n\
    \ QueryDelegatorValidatorsResponse\DC2\RS\n\
    \\n\
    \validators\CAN\SOH \ETX(\tR\n\
    \validators:\b\136\160\US\NUL\232\160\US\NUL\"w\n\
    \$QueryDelegatorWithdrawAddressRequest\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"v\n\
    \%QueryDelegatorWithdrawAddressResponse\DC2C\n\
    \\DLEwithdraw_address\CAN\SOH \SOH(\tR\SIwithdrawAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"\ESC\n\
    \\EMQueryCommunityPoolRequest\"\136\SOH\n\
    \\SUBQueryCommunityPoolResponse\DC2j\n\
    \\EOTpool\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\EOTpoolB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH2\196\DC1\n\
    \\ENQQuery\DC2\152\SOH\n\
    \\ACKParams\DC2/.cosmos.distribution.v1beta1.QueryParamsRequest\SUB0.cosmos.distribution.v1beta1.QueryParamsResponse\"+\130\211\228\147\STX%\DC2#/cosmos/distribution/v1beta1/params\DC2\233\SOH\n\
    \\EMValidatorDistributionInfo\DC2B.cosmos.distribution.v1beta1.QueryValidatorDistributionInfoRequest\SUBC.cosmos.distribution.v1beta1.QueryValidatorDistributionInfoResponse\"C\130\211\228\147\STX=\DC2;/cosmos/distribution/v1beta1/validators/{validator_address}\DC2\131\STX\n\
    \\ESCValidatorOutstandingRewards\DC2D.cosmos.distribution.v1beta1.QueryValidatorOutstandingRewardsRequest\SUBE.cosmos.distribution.v1beta1.QueryValidatorOutstandingRewardsResponse\"W\130\211\228\147\STXQ\DC2O/cosmos/distribution/v1beta1/validators/{validator_address}/outstanding_rewards\DC2\226\SOH\n\
    \\DC3ValidatorCommission\DC2<.cosmos.distribution.v1beta1.QueryValidatorCommissionRequest\SUB=.cosmos.distribution.v1beta1.QueryValidatorCommissionResponse\"N\130\211\228\147\STXH\DC2F/cosmos/distribution/v1beta1/validators/{validator_address}/commission\DC2\214\SOH\n\
    \\DLEValidatorSlashes\DC29.cosmos.distribution.v1beta1.QueryValidatorSlashesRequest\SUB:.cosmos.distribution.v1beta1.QueryValidatorSlashesResponse\"K\130\211\228\147\STXE\DC2C/cosmos/distribution/v1beta1/validators/{validator_address}/slashes\DC2\237\SOH\n\
    \\DC1DelegationRewards\DC2:.cosmos.distribution.v1beta1.QueryDelegationRewardsRequest\SUB;.cosmos.distribution.v1beta1.QueryDelegationRewardsResponse\"_\130\211\228\147\STXY\DC2W/cosmos/distribution/v1beta1/delegators/{delegator_address}/rewards/{validator_address}\DC2\232\SOH\n\
    \\SYNDelegationTotalRewards\DC2?.cosmos.distribution.v1beta1.QueryDelegationTotalRewardsRequest\SUB@.cosmos.distribution.v1beta1.QueryDelegationTotalRewardsResponse\"K\130\211\228\147\STXE\DC2C/cosmos/distribution/v1beta1/delegators/{delegator_address}/rewards\DC2\226\SOH\n\
    \\DC3DelegatorValidators\DC2<.cosmos.distribution.v1beta1.QueryDelegatorValidatorsRequest\SUB=.cosmos.distribution.v1beta1.QueryDelegatorValidatorsResponse\"N\130\211\228\147\STXH\DC2F/cosmos/distribution/v1beta1/delegators/{delegator_address}/validators\DC2\247\SOH\n\
    \\CANDelegatorWithdrawAddress\DC2A.cosmos.distribution.v1beta1.QueryDelegatorWithdrawAddressRequest\SUBB.cosmos.distribution.v1beta1.QueryDelegatorWithdrawAddressResponse\"T\130\211\228\147\STXN\DC2L/cosmos/distribution/v1beta1/delegators/{delegator_address}/withdraw_address\DC2\181\SOH\n\
    \\rCommunityPool\DC26.cosmos.distribution.v1beta1.QueryCommunityPoolRequest\SUB7.cosmos.distribution.v1beta1.QueryCommunityPoolResponse\"3\130\211\228\147\STX-\DC2+/cosmos/distribution/v1beta1/community_poolB3Z1github.com/cosmos/cosmos-sdk/x/distribution/typesJ\137E\n\
    \\a\DC2\ENQ\NUL\NUL\254\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL8\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\t\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\v\NULH\n\
    \M\n\
    \\STX\ACK\NUL\DC2\EOT\SO\NULH\SOH\SUBA Query defines the gRPC querier service for distribution module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SO\b\r\n\
    \A\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DLE\STX\DC2\ETX\SUB3 Params queries params of the distribution module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DLE\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DLE\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DLE*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC1\EOTI\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DC1\EOTI\n\
    \p\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\NAK\STX\CAN\ETX\SUBb ValidatorDistributionInfo queries validator commission and self-delegation rewards for validator\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\NAK\ACK\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\NAK E\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\SYN\SI5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\ETB\EOTa\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\ETB\EOTa\n\
    \S\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\ESC\STX\US\ETX\SUBE ValidatorOutstandingRewards queries rewards of a validator address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\ESC\ACK!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\ESC\"I\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\FS\SI7\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\EOT\GS\EOT\RSM\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\EOT\GS\EOT\RSM\n\
    \S\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT\"\STX%\ETX\SUBE ValidatorCommission queries accumulated commission for a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\"\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\"\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\"Dd\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\EOT#\EOT$D\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\EOT#\EOT$D\n\
    \E\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT(\STX*\ETX\SUB7 ValidatorSlashes queries slash events of a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX(\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX(\ETB3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX(>[\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX)\EOTi\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX)\EOTi\n\
    \T\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT-\STX0\ETX\SUBF DelegationRewards queries the total rewards accrued by a delegation.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX-\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX-\CAN5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX-@^\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\EOT.\EOT/9\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\EOT.\EOT/9\n\
    \\\\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT4\STX6\ETX\SUBN DelegationTotalRewards queries the total rewards accrued by each\n\
    \ validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX4\ACK\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX4\GS?\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX4Jm\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX5\EOTi\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX5\EOTi\n\
    \J\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT9\STX<\ETX\SUB< DelegatorValidators queries the validators of a delegator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX9\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX9\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX9Dd\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\EOT:\EOT;D\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\EOT:\EOT;D\n\
    \Q\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOT?\STXB\ETX\SUBC DelegatorWithdrawAddress queries withdraw address of a delegator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX?\ACK\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX?\USC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX?Ns\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\EOT@\EOTAJ\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\EOT@\EOTAJ\n\
    \?\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOTE\STXG\ETX\SUB1 CommunityPool queries the community pool coins.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETXE\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETXE\DC4-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETXE8R\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXF\EOTQ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\t\EOT\176\202\188\"\STX\DC2\ETXF\EOTQ\n\
    \T\n\
    \\STX\EOT\NUL\DC2\ETXK\NUL\GS\SUBI QueryParamsRequest is the request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXK\b\SUB\n\
    \W\n\
    \\STX\EOT\SOH\DC2\EOTN\NULQ\SOH\SUBK QueryParamsResponse is the response type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXN\b\ESC\n\
    \;\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXP\STXR\SUB. params defines the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXP\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXP\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXP\DC4Q\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETXP\NAK1\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETXP3P\n\
    \{\n\
    \\STX\EOT\STX\DC2\EOTT\NULW\SOH\SUBo QueryValidatorDistributionInfoRequest is the request type for the Query/ValidatorDistributionInfo RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXT\b-\n\
    \L\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXV\STXY\SUB? validator_address defines the validator address to query for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXV\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXV\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXV\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXV\USX\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETXV W\n\
    \}\n\
    \\STX\EOT\ETX\DC2\EOTZ\NULf\SOH\SUBq QueryValidatorDistributionInfoResponse is the response type for the Query/ValidatorDistributionInfo RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXZ\b.\n\
    \G\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\\\STXX\SUB: operator_address defines the validator operator address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\\\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\\\t\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\\\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX\\\RSW\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETX\\\USV\n\
    \G\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT^\STXb\EOT\SUB9 self_bond_rewards defines the self delegations rewards.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX^\v&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX^'8\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX^;<\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT^=b\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\233\251\ETX\DC2\ETX_\EOT$\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\SOH\b\245\140\166\ENQ\DC2\ETX`\EOT#\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\245\251\ETX\DC2\ETXa\EOTL\n\
    \I\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOTd\STXeo\SUB; commission defines the commission the validator received.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXd\v&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXd'1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXd45\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\ETXe\ACKn\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\245\251\ETX\DC2\ETXe\aO\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\233\251\ETX\DC2\ETXeQm\n\
    \\128\SOH\n\
    \\STX\EOT\EOT\DC2\EOTj\NULm\SOH\SUBt QueryValidatorOutstandingRewardsRequest is the request type for the\n\
    \ Query/ValidatorOutstandingRewards RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXj\b/\n\
    \L\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXl\STXY\SUB? validator_address defines the validator address to query for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXl\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXl\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXl\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXl\USX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXl W\n\
    \\130\SOH\n\
    \\STX\EOT\ENQ\DC2\EOTq\NULs\SOH\SUBv QueryValidatorOutstandingRewardsResponse is the response type for the\n\
    \ Query/ValidatorOutstandingRewards RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXq\b0\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXr\STXh\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXr\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXr\RS%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXr()\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETXr*g\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\ETXr+G\n\
    \\DLE\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\ETXrIf\n\
    \o\n\
    \\STX\EOT\ACK\DC2\EOTw\NULz\SOH\SUBc QueryValidatorCommissionRequest is the request type for the\n\
    \ Query/ValidatorCommission RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXw\b'\n\
    \L\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXy\STXY\SUB? validator_address defines the validator address to query for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXy\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXy\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXy\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXy\USX\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\ETXy W\n\
    \r\n\
    \\STX\EOT\a\DC2\ENQ~\NUL\129\SOH\SOH\SUBe QueryValidatorCommissionResponse is the response type for the\n\
    \ Query/ValidatorCommission RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX~\b(\n\
    \I\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\128\SOH\STXn\SUB; commission defines the commission the validator received.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\128\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\128\SOH!+\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\128\SOH./\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\128\SOH0m\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\EOT\128\SOH1M\n\
    \\DC1\n\
    \\t\EOT\a\STX\NUL\b\245\140\166\ENQ\DC2\EOT\128\SOHOl\n\
    \k\n\
    \\STX\EOT\b\DC2\ACK\133\SOH\NUL\144\SOH\SOH\SUB] QueryValidatorSlashesRequest is the request type for the\n\
    \ Query/ValidatorSlashes RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\133\SOH\b$\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\134\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\134\SOH\STX-\n\
    \M\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\137\SOH\STXY\SUB? validator_address defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\137\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\137\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\137\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\137\SOH\USX\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\137\SOH W\n\
    \Z\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\139\SOH\STX\GS\SUBL starting_height defines the optional starting height to query the slashes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\139\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\139\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\139\SOH\ESC\FS\n\
    \X\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\141\SOH\STX\ESC\SUBJ starting_height defines the optional ending height to query the slashes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\141\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\141\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\141\SOH\EM\SUB\n\
    \J\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\143\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\EOT\143\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\143\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\143\SOH56\n\
    \n\n\
    \\STX\EOT\t\DC2\ACK\148\SOH\NUL\154\SOH\SOH\SUB` QueryValidatorSlashesResponse is the response type for the\n\
    \ Query/ValidatorSlashes RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\148\SOH\b%\n\
    \C\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\150\SOH\STXi\SUB5 slashes defines the slashes the validator received.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\150\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\150\SOH\v\RS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\150\SOH\US&\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\150\SOH)*\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\150\SOH+h\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\EOT\150\SOH,H\n\
    \\DC1\n\
    \\t\EOT\t\STX\NUL\b\245\140\166\ENQ\DC2\EOT\150\SOHJg\n\
    \B\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\153\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\153\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\153\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\153\SOH67\n\
    \n\n\
    \\STX\EOT\n\
    \\DC2\ACK\158\SOH\NUL\166\SOH\SOH\SUB` QueryDelegationRewardsRequest is the request type for the\n\
    \ Query/DelegationRewards RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\158\SOH\b%\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\159\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\141\244\ETX\DC2\EOT\159\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\160\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\129\244\ETX\DC2\EOT\160\SOH\STX-\n\
    \M\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\163\SOH\STXP\SUB? delegator_address defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\163\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\163\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\163\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\163\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\163\SOH N\n\
    \M\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\165\SOH\STXY\SUB? validator_address defines the validator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\165\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\165\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\165\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\165\SOH\USX\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\165\SOH W\n\
    \p\n\
    \\STX\EOT\v\DC2\ACK\170\SOH\NUL\177\SOH\SOH\SUBb QueryDelegationRewardsResponse is the response type for the\n\
    \ Query/DelegationRewards RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\170\SOH\b&\n\
    \F\n\
    \\EOT\EOT\v\STX\NUL\DC2\ACK\172\SOH\STX\176\SOH\EOT\SUB6 rewards defines the rewards accrued by a delegation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\EOT\172\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\172\SOH\v&\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\172\SOH'.\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\172\SOH12\n\
    \\SI\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\ACK\172\SOH3\176\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\233\251\ETX\DC2\EOT\173\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\v\STX\NUL\b\245\140\166\ENQ\DC2\EOT\174\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\245\251\ETX\DC2\EOT\175\SOH\EOTL\n\
    \x\n\
    \\STX\EOT\f\DC2\ACK\181\SOH\NUL\186\SOH\SOH\SUBj QueryDelegationTotalRewardsRequest is the request type for the\n\
    \ Query/DelegationTotalRewards RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\181\SOH\b*\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\182\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\f\a\141\244\ETX\DC2\EOT\182\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\183\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\f\a\129\244\ETX\DC2\EOT\183\SOH\STX-\n\
    \M\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\185\SOH\STXP\SUB? delegator_address defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\185\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\185\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\185\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\185\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\202\214\ENQ\DC2\EOT\185\SOH N\n\
    \z\n\
    \\STX\EOT\r\DC2\ACK\190\SOH\NUL\199\SOH\SOH\SUBl QueryDelegationTotalRewardsResponse is the response type for the\n\
    \ Query/DelegationTotalRewards RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\190\SOH\b+\n\
    \G\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\192\SOH\STXo\SUB9 rewards defines all the rewards accrued by a delegator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\EOT\192\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\192\SOH\v$\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\192\SOH%,\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\192\SOH/0\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\192\SOH1n\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\233\251\ETX\DC2\EOT\192\SOH2N\n\
    \\DC1\n\
    \\t\EOT\r\STX\NUL\b\245\140\166\ENQ\DC2\EOT\192\SOHPm\n\
    \;\n\
    \\EOT\EOT\r\STX\SOH\DC2\ACK\194\SOH\STX\198\SOH\EOT\SUB+ total defines the sum of all the rewards.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\EOT\194\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\194\SOH\v&\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\194\SOH',\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\194\SOH/0\n\
    \\SI\n\
    \\ENQ\EOT\r\STX\SOH\b\DC2\ACK\194\SOH1\198\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\233\251\ETX\DC2\EOT\195\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\r\STX\SOH\b\245\140\166\ENQ\DC2\EOT\196\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\245\251\ETX\DC2\EOT\197\SOH\EOTL\n\
    \r\n\
    \\STX\EOT\SO\DC2\ACK\203\SOH\NUL\209\SOH\SOH\SUBd QueryDelegatorValidatorsRequest is the request type for the\n\
    \ Query/DelegatorValidators RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\203\SOH\b'\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\204\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\SO\a\141\244\ETX\DC2\EOT\204\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\205\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\SO\a\129\244\ETX\DC2\EOT\205\SOH\STX-\n\
    \M\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\208\SOH\STXP\SUB? delegator_address defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\208\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\208\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\208\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\b\DC2\EOT\208\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\SO\STX\NUL\b\202\214\ENQ\DC2\EOT\208\SOH N\n\
    \t\n\
    \\STX\EOT\SI\DC2\ACK\213\SOH\NUL\219\SOH\SOH\SUBf QueryDelegatorValidatorsResponse is the response type for the\n\
    \ Query/DelegatorValidators RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\213\SOH\b(\n\
    \\v\n\
    \\ETX\EOT\SI\a\DC2\EOT\214\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\SI\a\141\244\ETX\DC2\EOT\214\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\SI\a\DC2\EOT\215\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\SI\a\129\244\ETX\DC2\EOT\215\SOH\STX-\n\
    \P\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\218\SOH\STX!\SUBB validators defines the validators a delegator is delegating for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\EOT\218\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\218\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\218\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\218\SOH\US \n\
    \|\n\
    \\STX\EOT\DLE\DC2\ACK\223\SOH\NUL\229\SOH\SOH\SUBn QueryDelegatorWithdrawAddressRequest is the request type for the\n\
    \ Query/DelegatorWithdrawAddress RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\223\SOH\b,\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\224\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\DLE\a\141\244\ETX\DC2\EOT\224\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\225\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\DLE\a\129\244\ETX\DC2\EOT\225\SOH\STX-\n\
    \M\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\228\SOH\STXP\SUB? delegator_address defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\228\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\228\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\228\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\b\DC2\EOT\228\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\NUL\b\202\214\ENQ\DC2\EOT\228\SOH N\n\
    \~\n\
    \\STX\EOT\DC1\DC2\ACK\233\SOH\NUL\239\SOH\SOH\SUBp QueryDelegatorWithdrawAddressResponse is the response type for the\n\
    \ Query/DelegatorWithdrawAddress RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\233\SOH\b-\n\
    \\v\n\
    \\ETX\EOT\DC1\a\DC2\EOT\234\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\DC1\a\141\244\ETX\DC2\EOT\234\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\DC1\a\DC2\EOT\235\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\DC1\a\129\244\ETX\DC2\EOT\235\SOH\STX-\n\
    \L\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\238\SOH\STXO\SUB> withdraw_address defines the delegator address to query for.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\238\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\238\SOH\t\EM\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\238\SOH\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\b\DC2\EOT\238\SOH\RSN\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\NUL\b\202\214\ENQ\DC2\EOT\238\SOH\USM\n\
    \d\n\
    \\STX\EOT\DC2\DC2\EOT\243\SOH\NUL$\SUBX QueryCommunityPoolRequest is the request type for the Query/CommunityPool RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\243\SOH\b!\n\
    \h\n\
    \\STX\EOT\DC3\DC2\ACK\247\SOH\NUL\254\SOH\SOH\SUBZ QueryCommunityPoolResponse is the response type for the Query/CommunityPool\n\
    \ RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\247\SOH\b\"\n\
    \6\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\ACK\249\SOH\STX\253\SOH\EOT\SUB& pool defines community pool's coins.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\EOT\249\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ACK\DC2\EOT\249\SOH\v&\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\249\SOH'+\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\249\SOH./\n\
    \\SI\n\
    \\ENQ\EOT\DC3\STX\NUL\b\DC2\ACK\249\SOH0\253\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\245\251\ETX\DC2\EOT\250\SOH\EOTL\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\233\251\ETX\DC2\EOT\251\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\DC3\STX\NUL\b\245\140\166\ENQ\DC2\EOT\252\SOH\EOT#b\ACKproto3"