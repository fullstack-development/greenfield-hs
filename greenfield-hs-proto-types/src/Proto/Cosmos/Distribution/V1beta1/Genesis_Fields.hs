{- This file was auto-generated from cosmos/distribution/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Distribution.V1beta1.Genesis_Fields where
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
import qualified Proto.Cosmos.Distribution.V1beta1.Distribution
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
accumulated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accumulated" a) =>
  Lens.Family2.LensLike' f s a
accumulated = Data.ProtoLens.Field.field @"accumulated"
delegatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorAddress" a) =>
  Lens.Family2.LensLike' f s a
delegatorAddress = Data.ProtoLens.Field.field @"delegatorAddress"
delegatorStartingInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorStartingInfos" a) =>
  Lens.Family2.LensLike' f s a
delegatorStartingInfos
  = Data.ProtoLens.Field.field @"delegatorStartingInfos"
delegatorWithdrawInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorWithdrawInfos" a) =>
  Lens.Family2.LensLike' f s a
delegatorWithdrawInfos
  = Data.ProtoLens.Field.field @"delegatorWithdrawInfos"
feePool ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "feePool" a) =>
  Lens.Family2.LensLike' f s a
feePool = Data.ProtoLens.Field.field @"feePool"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
maybe'accumulated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'accumulated" a) =>
  Lens.Family2.LensLike' f s a
maybe'accumulated = Data.ProtoLens.Field.field @"maybe'accumulated"
maybe'feePool ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'feePool" a) =>
  Lens.Family2.LensLike' f s a
maybe'feePool = Data.ProtoLens.Field.field @"maybe'feePool"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
maybe'rewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rewards" a) =>
  Lens.Family2.LensLike' f s a
maybe'rewards = Data.ProtoLens.Field.field @"maybe'rewards"
maybe'startingInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startingInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'startingInfo
  = Data.ProtoLens.Field.field @"maybe'startingInfo"
maybe'validatorSlashEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validatorSlashEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'validatorSlashEvent
  = Data.ProtoLens.Field.field @"maybe'validatorSlashEvent"
outstandingRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outstandingRewards" a) =>
  Lens.Family2.LensLike' f s a
outstandingRewards
  = Data.ProtoLens.Field.field @"outstandingRewards"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
period ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "period" a) =>
  Lens.Family2.LensLike' f s a
period = Data.ProtoLens.Field.field @"period"
previousProposer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "previousProposer" a) =>
  Lens.Family2.LensLike' f s a
previousProposer = Data.ProtoLens.Field.field @"previousProposer"
rewards ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rewards" a) =>
  Lens.Family2.LensLike' f s a
rewards = Data.ProtoLens.Field.field @"rewards"
startingInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startingInfo" a) =>
  Lens.Family2.LensLike' f s a
startingInfo = Data.ProtoLens.Field.field @"startingInfo"
validatorAccumulatedCommissions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAccumulatedCommissions" a) =>
  Lens.Family2.LensLike' f s a
validatorAccumulatedCommissions
  = Data.ProtoLens.Field.field @"validatorAccumulatedCommissions"
validatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorAddress = Data.ProtoLens.Field.field @"validatorAddress"
validatorCurrentRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorCurrentRewards" a) =>
  Lens.Family2.LensLike' f s a
validatorCurrentRewards
  = Data.ProtoLens.Field.field @"validatorCurrentRewards"
validatorHistoricalRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorHistoricalRewards" a) =>
  Lens.Family2.LensLike' f s a
validatorHistoricalRewards
  = Data.ProtoLens.Field.field @"validatorHistoricalRewards"
validatorSlashEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorSlashEvent" a) =>
  Lens.Family2.LensLike' f s a
validatorSlashEvent
  = Data.ProtoLens.Field.field @"validatorSlashEvent"
validatorSlashEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorSlashEvents" a) =>
  Lens.Family2.LensLike' f s a
validatorSlashEvents
  = Data.ProtoLens.Field.field @"validatorSlashEvents"
vec'delegatorStartingInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'delegatorStartingInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'delegatorStartingInfos
  = Data.ProtoLens.Field.field @"vec'delegatorStartingInfos"
vec'delegatorWithdrawInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'delegatorWithdrawInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'delegatorWithdrawInfos
  = Data.ProtoLens.Field.field @"vec'delegatorWithdrawInfos"
vec'outstandingRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'outstandingRewards" a) =>
  Lens.Family2.LensLike' f s a
vec'outstandingRewards
  = Data.ProtoLens.Field.field @"vec'outstandingRewards"
vec'validatorAccumulatedCommissions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validatorAccumulatedCommissions" a) =>
  Lens.Family2.LensLike' f s a
vec'validatorAccumulatedCommissions
  = Data.ProtoLens.Field.field @"vec'validatorAccumulatedCommissions"
vec'validatorCurrentRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validatorCurrentRewards" a) =>
  Lens.Family2.LensLike' f s a
vec'validatorCurrentRewards
  = Data.ProtoLens.Field.field @"vec'validatorCurrentRewards"
vec'validatorHistoricalRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validatorHistoricalRewards" a) =>
  Lens.Family2.LensLike' f s a
vec'validatorHistoricalRewards
  = Data.ProtoLens.Field.field @"vec'validatorHistoricalRewards"
vec'validatorSlashEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validatorSlashEvents" a) =>
  Lens.Family2.LensLike' f s a
vec'validatorSlashEvents
  = Data.ProtoLens.Field.field @"vec'validatorSlashEvents"
withdrawAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "withdrawAddress" a) =>
  Lens.Family2.LensLike' f s a
withdrawAddress = Data.ProtoLens.Field.field @"withdrawAddress"