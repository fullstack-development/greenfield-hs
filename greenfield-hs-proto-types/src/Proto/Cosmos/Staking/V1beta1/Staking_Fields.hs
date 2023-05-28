{- This file was auto-generated from cosmos/staking/v1beta1/staking.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Staking_Fields where
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Tendermint.Abci.Types
import qualified Proto.Tendermint.Types.Types
addresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addresses" a) =>
  Lens.Family2.LensLike' f s a
addresses = Data.ProtoLens.Field.field @"addresses"
balance ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "balance" a) =>
  Lens.Family2.LensLike' f s a
balance = Data.ProtoLens.Field.field @"balance"
bondDenom ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bondDenom" a) =>
  Lens.Family2.LensLike' f s a
bondDenom = Data.ProtoLens.Field.field @"bondDenom"
bondedTokens ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bondedTokens" a) =>
  Lens.Family2.LensLike' f s a
bondedTokens = Data.ProtoLens.Field.field @"bondedTokens"
commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commission" a) =>
  Lens.Family2.LensLike' f s a
commission = Data.ProtoLens.Field.field @"commission"
commissionRates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commissionRates" a) =>
  Lens.Family2.LensLike' f s a
commissionRates = Data.ProtoLens.Field.field @"commissionRates"
completionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completionTime" a) =>
  Lens.Family2.LensLike' f s a
completionTime = Data.ProtoLens.Field.field @"completionTime"
consensusPubkey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consensusPubkey" a) =>
  Lens.Family2.LensLike' f s a
consensusPubkey = Data.ProtoLens.Field.field @"consensusPubkey"
creationHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "creationHeight" a) =>
  Lens.Family2.LensLike' f s a
creationHeight = Data.ProtoLens.Field.field @"creationHeight"
delegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegation" a) =>
  Lens.Family2.LensLike' f s a
delegation = Data.ProtoLens.Field.field @"delegation"
delegatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorAddress" a) =>
  Lens.Family2.LensLike' f s a
delegatorAddress = Data.ProtoLens.Field.field @"delegatorAddress"
delegatorShares ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorShares" a) =>
  Lens.Family2.LensLike' f s a
delegatorShares = Data.ProtoLens.Field.field @"delegatorShares"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
details ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "details" a) =>
  Lens.Family2.LensLike' f s a
details = Data.ProtoLens.Field.field @"details"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
historicalEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "historicalEntries" a) =>
  Lens.Family2.LensLike' f s a
historicalEntries = Data.ProtoLens.Field.field @"historicalEntries"
identity ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "identity" a) =>
  Lens.Family2.LensLike' f s a
identity = Data.ProtoLens.Field.field @"identity"
initialBalance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialBalance" a) =>
  Lens.Family2.LensLike' f s a
initialBalance = Data.ProtoLens.Field.field @"initialBalance"
jailed ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "jailed" a) =>
  Lens.Family2.LensLike' f s a
jailed = Data.ProtoLens.Field.field @"jailed"
maxChangeRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxChangeRate" a) =>
  Lens.Family2.LensLike' f s a
maxChangeRate = Data.ProtoLens.Field.field @"maxChangeRate"
maxEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxEntries" a) =>
  Lens.Family2.LensLike' f s a
maxEntries = Data.ProtoLens.Field.field @"maxEntries"
maxRate ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maxRate" a) =>
  Lens.Family2.LensLike' f s a
maxRate = Data.ProtoLens.Field.field @"maxRate"
maxValidators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxValidators" a) =>
  Lens.Family2.LensLike' f s a
maxValidators = Data.ProtoLens.Field.field @"maxValidators"
maybe'balance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'balance" a) =>
  Lens.Family2.LensLike' f s a
maybe'balance = Data.ProtoLens.Field.field @"maybe'balance"
maybe'commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commission" a) =>
  Lens.Family2.LensLike' f s a
maybe'commission = Data.ProtoLens.Field.field @"maybe'commission"
maybe'commissionRates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commissionRates" a) =>
  Lens.Family2.LensLike' f s a
maybe'commissionRates
  = Data.ProtoLens.Field.field @"maybe'commissionRates"
maybe'completionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'completionTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'completionTime
  = Data.ProtoLens.Field.field @"maybe'completionTime"
maybe'consensusPubkey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'consensusPubkey" a) =>
  Lens.Family2.LensLike' f s a
maybe'consensusPubkey
  = Data.ProtoLens.Field.field @"maybe'consensusPubkey"
maybe'delegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'delegation" a) =>
  Lens.Family2.LensLike' f s a
maybe'delegation = Data.ProtoLens.Field.field @"maybe'delegation"
maybe'description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'description" a) =>
  Lens.Family2.LensLike' f s a
maybe'description = Data.ProtoLens.Field.field @"maybe'description"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'redelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'redelegation" a) =>
  Lens.Family2.LensLike' f s a
maybe'redelegation
  = Data.ProtoLens.Field.field @"maybe'redelegation"
maybe'redelegationEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'redelegationEntry" a) =>
  Lens.Family2.LensLike' f s a
maybe'redelegationEntry
  = Data.ProtoLens.Field.field @"maybe'redelegationEntry"
maybe'unbondingTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unbondingTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'unbondingTime
  = Data.ProtoLens.Field.field @"maybe'unbondingTime"
maybe'updateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateTime = Data.ProtoLens.Field.field @"maybe'updateTime"
minCommissionRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minCommissionRate" a) =>
  Lens.Family2.LensLike' f s a
minCommissionRate = Data.ProtoLens.Field.field @"minCommissionRate"
minSelfDelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minSelfDelegation" a) =>
  Lens.Family2.LensLike' f s a
minSelfDelegation = Data.ProtoLens.Field.field @"minSelfDelegation"
moniker ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "moniker" a) =>
  Lens.Family2.LensLike' f s a
moniker = Data.ProtoLens.Field.field @"moniker"
notBondedTokens ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "notBondedTokens" a) =>
  Lens.Family2.LensLike' f s a
notBondedTokens = Data.ProtoLens.Field.field @"notBondedTokens"
operatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operatorAddress" a) =>
  Lens.Family2.LensLike' f s a
operatorAddress = Data.ProtoLens.Field.field @"operatorAddress"
pairs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pairs" a) =>
  Lens.Family2.LensLike' f s a
pairs = Data.ProtoLens.Field.field @"pairs"
rate ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rate" a) =>
  Lens.Family2.LensLike' f s a
rate = Data.ProtoLens.Field.field @"rate"
redelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redelegation" a) =>
  Lens.Family2.LensLike' f s a
redelegation = Data.ProtoLens.Field.field @"redelegation"
redelegationEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redelegationEntry" a) =>
  Lens.Family2.LensLike' f s a
redelegationEntry = Data.ProtoLens.Field.field @"redelegationEntry"
securityContact ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "securityContact" a) =>
  Lens.Family2.LensLike' f s a
securityContact = Data.ProtoLens.Field.field @"securityContact"
shares ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "shares" a) =>
  Lens.Family2.LensLike' f s a
shares = Data.ProtoLens.Field.field @"shares"
sharesDst ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sharesDst" a) =>
  Lens.Family2.LensLike' f s a
sharesDst = Data.ProtoLens.Field.field @"sharesDst"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
tokens ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tokens" a) =>
  Lens.Family2.LensLike' f s a
tokens = Data.ProtoLens.Field.field @"tokens"
triplets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "triplets" a) =>
  Lens.Family2.LensLike' f s a
triplets = Data.ProtoLens.Field.field @"triplets"
unbondingHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unbondingHeight" a) =>
  Lens.Family2.LensLike' f s a
unbondingHeight = Data.ProtoLens.Field.field @"unbondingHeight"
unbondingId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unbondingId" a) =>
  Lens.Family2.LensLike' f s a
unbondingId = Data.ProtoLens.Field.field @"unbondingId"
unbondingIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unbondingIds" a) =>
  Lens.Family2.LensLike' f s a
unbondingIds = Data.ProtoLens.Field.field @"unbondingIds"
unbondingOnHoldRefCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unbondingOnHoldRefCount" a) =>
  Lens.Family2.LensLike' f s a
unbondingOnHoldRefCount
  = Data.ProtoLens.Field.field @"unbondingOnHoldRefCount"
unbondingTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unbondingTime" a) =>
  Lens.Family2.LensLike' f s a
unbondingTime = Data.ProtoLens.Field.field @"unbondingTime"
updateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateTime" a) =>
  Lens.Family2.LensLike' f s a
updateTime = Data.ProtoLens.Field.field @"updateTime"
updates ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "updates" a) =>
  Lens.Family2.LensLike' f s a
updates = Data.ProtoLens.Field.field @"updates"
validatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorAddress = Data.ProtoLens.Field.field @"validatorAddress"
validatorDstAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorDstAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorDstAddress
  = Data.ProtoLens.Field.field @"validatorDstAddress"
validatorSrcAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorSrcAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorSrcAddress
  = Data.ProtoLens.Field.field @"validatorSrcAddress"
valset ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "valset" a) =>
  Lens.Family2.LensLike' f s a
valset = Data.ProtoLens.Field.field @"valset"
vec'addresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'addresses" a) =>
  Lens.Family2.LensLike' f s a
vec'addresses = Data.ProtoLens.Field.field @"vec'addresses"
vec'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'entries" a) =>
  Lens.Family2.LensLike' f s a
vec'entries = Data.ProtoLens.Field.field @"vec'entries"
vec'pairs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'pairs" a) =>
  Lens.Family2.LensLike' f s a
vec'pairs = Data.ProtoLens.Field.field @"vec'pairs"
vec'triplets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'triplets" a) =>
  Lens.Family2.LensLike' f s a
vec'triplets = Data.ProtoLens.Field.field @"vec'triplets"
vec'unbondingIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'unbondingIds" a) =>
  Lens.Family2.LensLike' f s a
vec'unbondingIds = Data.ProtoLens.Field.field @"vec'unbondingIds"
vec'updates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'updates" a) =>
  Lens.Family2.LensLike' f s a
vec'updates = Data.ProtoLens.Field.field @"vec'updates"
vec'valset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'valset" a) =>
  Lens.Family2.LensLike' f s a
vec'valset = Data.ProtoLens.Field.field @"vec'valset"
website ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "website" a) =>
  Lens.Family2.LensLike' f s a
website = Data.ProtoLens.Field.field @"website"