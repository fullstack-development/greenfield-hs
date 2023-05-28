{- This file was auto-generated from cosmos/distribution/v1beta1/distribution.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Distribution.V1beta1.Distribution_Fields where
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
amount ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amount" a) =>
  Lens.Family2.LensLike' f s a
amount = Data.ProtoLens.Field.field @"amount"
baseProposerReward ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseProposerReward" a) =>
  Lens.Family2.LensLike' f s a
baseProposerReward
  = Data.ProtoLens.Field.field @"baseProposerReward"
bonusProposerReward ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bonusProposerReward" a) =>
  Lens.Family2.LensLike' f s a
bonusProposerReward
  = Data.ProtoLens.Field.field @"bonusProposerReward"
commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commission" a) =>
  Lens.Family2.LensLike' f s a
commission = Data.ProtoLens.Field.field @"commission"
communityPool ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "communityPool" a) =>
  Lens.Family2.LensLike' f s a
communityPool = Data.ProtoLens.Field.field @"communityPool"
communityTax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "communityTax" a) =>
  Lens.Family2.LensLike' f s a
communityTax = Data.ProtoLens.Field.field @"communityTax"
cumulativeRewardRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cumulativeRewardRatio" a) =>
  Lens.Family2.LensLike' f s a
cumulativeRewardRatio
  = Data.ProtoLens.Field.field @"cumulativeRewardRatio"
deposit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "deposit" a) =>
  Lens.Family2.LensLike' f s a
deposit = Data.ProtoLens.Field.field @"deposit"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
fraction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fraction" a) =>
  Lens.Family2.LensLike' f s a
fraction = Data.ProtoLens.Field.field @"fraction"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
period ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "period" a) =>
  Lens.Family2.LensLike' f s a
period = Data.ProtoLens.Field.field @"period"
previousPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "previousPeriod" a) =>
  Lens.Family2.LensLike' f s a
previousPeriod = Data.ProtoLens.Field.field @"previousPeriod"
recipient ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "recipient" a) =>
  Lens.Family2.LensLike' f s a
recipient = Data.ProtoLens.Field.field @"recipient"
referenceCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "referenceCount" a) =>
  Lens.Family2.LensLike' f s a
referenceCount = Data.ProtoLens.Field.field @"referenceCount"
reward ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reward" a) =>
  Lens.Family2.LensLike' f s a
reward = Data.ProtoLens.Field.field @"reward"
rewards ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rewards" a) =>
  Lens.Family2.LensLike' f s a
rewards = Data.ProtoLens.Field.field @"rewards"
stake ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stake" a) =>
  Lens.Family2.LensLike' f s a
stake = Data.ProtoLens.Field.field @"stake"
title ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "title" a) =>
  Lens.Family2.LensLike' f s a
title = Data.ProtoLens.Field.field @"title"
validatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorAddress = Data.ProtoLens.Field.field @"validatorAddress"
validatorPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorPeriod" a) =>
  Lens.Family2.LensLike' f s a
validatorPeriod = Data.ProtoLens.Field.field @"validatorPeriod"
validatorSlashEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorSlashEvents" a) =>
  Lens.Family2.LensLike' f s a
validatorSlashEvents
  = Data.ProtoLens.Field.field @"validatorSlashEvents"
vec'amount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'amount" a) =>
  Lens.Family2.LensLike' f s a
vec'amount = Data.ProtoLens.Field.field @"vec'amount"
vec'commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'commission" a) =>
  Lens.Family2.LensLike' f s a
vec'commission = Data.ProtoLens.Field.field @"vec'commission"
vec'communityPool ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'communityPool" a) =>
  Lens.Family2.LensLike' f s a
vec'communityPool = Data.ProtoLens.Field.field @"vec'communityPool"
vec'cumulativeRewardRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cumulativeRewardRatio" a) =>
  Lens.Family2.LensLike' f s a
vec'cumulativeRewardRatio
  = Data.ProtoLens.Field.field @"vec'cumulativeRewardRatio"
vec'reward ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'reward" a) =>
  Lens.Family2.LensLike' f s a
vec'reward = Data.ProtoLens.Field.field @"vec'reward"
vec'rewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rewards" a) =>
  Lens.Family2.LensLike' f s a
vec'rewards = Data.ProtoLens.Field.field @"vec'rewards"
vec'validatorSlashEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validatorSlashEvents" a) =>
  Lens.Family2.LensLike' f s a
vec'validatorSlashEvents
  = Data.ProtoLens.Field.field @"vec'validatorSlashEvents"
withdrawAddrEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "withdrawAddrEnabled" a) =>
  Lens.Family2.LensLike' f s a
withdrawAddrEnabled
  = Data.ProtoLens.Field.field @"withdrawAddrEnabled"