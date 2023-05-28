{- This file was auto-generated from cosmos/distribution/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Distribution.V1beta1.Query_Fields where
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
commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commission" a) =>
  Lens.Family2.LensLike' f s a
commission = Data.ProtoLens.Field.field @"commission"
delegatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorAddress" a) =>
  Lens.Family2.LensLike' f s a
delegatorAddress = Data.ProtoLens.Field.field @"delegatorAddress"
endingHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endingHeight" a) =>
  Lens.Family2.LensLike' f s a
endingHeight = Data.ProtoLens.Field.field @"endingHeight"
maybe'commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commission" a) =>
  Lens.Family2.LensLike' f s a
maybe'commission = Data.ProtoLens.Field.field @"maybe'commission"
maybe'pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagination" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagination = Data.ProtoLens.Field.field @"maybe'pagination"
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
operatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operatorAddress" a) =>
  Lens.Family2.LensLike' f s a
operatorAddress = Data.ProtoLens.Field.field @"operatorAddress"
pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagination" a) =>
  Lens.Family2.LensLike' f s a
pagination = Data.ProtoLens.Field.field @"pagination"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
pool ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pool" a) =>
  Lens.Family2.LensLike' f s a
pool = Data.ProtoLens.Field.field @"pool"
rewards ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rewards" a) =>
  Lens.Family2.LensLike' f s a
rewards = Data.ProtoLens.Field.field @"rewards"
selfBondRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "selfBondRewards" a) =>
  Lens.Family2.LensLike' f s a
selfBondRewards = Data.ProtoLens.Field.field @"selfBondRewards"
slashes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "slashes" a) =>
  Lens.Family2.LensLike' f s a
slashes = Data.ProtoLens.Field.field @"slashes"
startingHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startingHeight" a) =>
  Lens.Family2.LensLike' f s a
startingHeight = Data.ProtoLens.Field.field @"startingHeight"
total ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "total" a) =>
  Lens.Family2.LensLike' f s a
total = Data.ProtoLens.Field.field @"total"
validatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorAddress = Data.ProtoLens.Field.field @"validatorAddress"
validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validators" a) =>
  Lens.Family2.LensLike' f s a
validators = Data.ProtoLens.Field.field @"validators"
vec'commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'commission" a) =>
  Lens.Family2.LensLike' f s a
vec'commission = Data.ProtoLens.Field.field @"vec'commission"
vec'pool ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'pool" a) =>
  Lens.Family2.LensLike' f s a
vec'pool = Data.ProtoLens.Field.field @"vec'pool"
vec'rewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rewards" a) =>
  Lens.Family2.LensLike' f s a
vec'rewards = Data.ProtoLens.Field.field @"vec'rewards"
vec'selfBondRewards ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'selfBondRewards" a) =>
  Lens.Family2.LensLike' f s a
vec'selfBondRewards
  = Data.ProtoLens.Field.field @"vec'selfBondRewards"
vec'slashes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'slashes" a) =>
  Lens.Family2.LensLike' f s a
vec'slashes = Data.ProtoLens.Field.field @"vec'slashes"
vec'total ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'total" a) =>
  Lens.Family2.LensLike' f s a
vec'total = Data.ProtoLens.Field.field @"vec'total"
vec'validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validators" a) =>
  Lens.Family2.LensLike' f s a
vec'validators = Data.ProtoLens.Field.field @"vec'validators"
withdrawAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "withdrawAddress" a) =>
  Lens.Family2.LensLike' f s a
withdrawAddress = Data.ProtoLens.Field.field @"withdrawAddress"