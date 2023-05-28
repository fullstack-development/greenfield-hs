{- This file was auto-generated from cosmos/staking/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Query_Fields where
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
delegationResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegationResponse" a) =>
  Lens.Family2.LensLike' f s a
delegationResponse
  = Data.ProtoLens.Field.field @"delegationResponse"
delegationResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegationResponses" a) =>
  Lens.Family2.LensLike' f s a
delegationResponses
  = Data.ProtoLens.Field.field @"delegationResponses"
delegatorAddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorAddr" a) =>
  Lens.Family2.LensLike' f s a
delegatorAddr = Data.ProtoLens.Field.field @"delegatorAddr"
dstValidatorAddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dstValidatorAddr" a) =>
  Lens.Family2.LensLike' f s a
dstValidatorAddr = Data.ProtoLens.Field.field @"dstValidatorAddr"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
hist ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hist" a) =>
  Lens.Family2.LensLike' f s a
hist = Data.ProtoLens.Field.field @"hist"
maybe'delegationResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'delegationResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'delegationResponse
  = Data.ProtoLens.Field.field @"maybe'delegationResponse"
maybe'hist ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hist" a) =>
  Lens.Family2.LensLike' f s a
maybe'hist = Data.ProtoLens.Field.field @"maybe'hist"
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
maybe'pool ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pool" a) =>
  Lens.Family2.LensLike' f s a
maybe'pool = Data.ProtoLens.Field.field @"maybe'pool"
maybe'unbond ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unbond" a) =>
  Lens.Family2.LensLike' f s a
maybe'unbond = Data.ProtoLens.Field.field @"maybe'unbond"
maybe'validator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validator" a) =>
  Lens.Family2.LensLike' f s a
maybe'validator = Data.ProtoLens.Field.field @"maybe'validator"
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
redelegationResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redelegationResponses" a) =>
  Lens.Family2.LensLike' f s a
redelegationResponses
  = Data.ProtoLens.Field.field @"redelegationResponses"
srcValidatorAddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "srcValidatorAddr" a) =>
  Lens.Family2.LensLike' f s a
srcValidatorAddr = Data.ProtoLens.Field.field @"srcValidatorAddr"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
unbond ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "unbond" a) =>
  Lens.Family2.LensLike' f s a
unbond = Data.ProtoLens.Field.field @"unbond"
unbondingResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unbondingResponses" a) =>
  Lens.Family2.LensLike' f s a
unbondingResponses
  = Data.ProtoLens.Field.field @"unbondingResponses"
validator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validator" a) =>
  Lens.Family2.LensLike' f s a
validator = Data.ProtoLens.Field.field @"validator"
validatorAddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddr" a) =>
  Lens.Family2.LensLike' f s a
validatorAddr = Data.ProtoLens.Field.field @"validatorAddr"
validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validators" a) =>
  Lens.Family2.LensLike' f s a
validators = Data.ProtoLens.Field.field @"validators"
vec'delegationResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'delegationResponses" a) =>
  Lens.Family2.LensLike' f s a
vec'delegationResponses
  = Data.ProtoLens.Field.field @"vec'delegationResponses"
vec'redelegationResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'redelegationResponses" a) =>
  Lens.Family2.LensLike' f s a
vec'redelegationResponses
  = Data.ProtoLens.Field.field @"vec'redelegationResponses"
vec'unbondingResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'unbondingResponses" a) =>
  Lens.Family2.LensLike' f s a
vec'unbondingResponses
  = Data.ProtoLens.Field.field @"vec'unbondingResponses"
vec'validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validators" a) =>
  Lens.Family2.LensLike' f s a
vec'validators = Data.ProtoLens.Field.field @"vec'validators"