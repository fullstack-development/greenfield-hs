{- This file was auto-generated from cosmos/staking/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Genesis_Fields where
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
import qualified Proto.Cosmos.Staking.V1beta1.Staking
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
delegations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegations" a) =>
  Lens.Family2.LensLike' f s a
delegations = Data.ProtoLens.Field.field @"delegations"
exported ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exported" a) =>
  Lens.Family2.LensLike' f s a
exported = Data.ProtoLens.Field.field @"exported"
lastTotalPower ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastTotalPower" a) =>
  Lens.Family2.LensLike' f s a
lastTotalPower = Data.ProtoLens.Field.field @"lastTotalPower"
lastValidatorPowers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastValidatorPowers" a) =>
  Lens.Family2.LensLike' f s a
lastValidatorPowers
  = Data.ProtoLens.Field.field @"lastValidatorPowers"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
power ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "power" a) =>
  Lens.Family2.LensLike' f s a
power = Data.ProtoLens.Field.field @"power"
redelegations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redelegations" a) =>
  Lens.Family2.LensLike' f s a
redelegations = Data.ProtoLens.Field.field @"redelegations"
unbondingDelegations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unbondingDelegations" a) =>
  Lens.Family2.LensLike' f s a
unbondingDelegations
  = Data.ProtoLens.Field.field @"unbondingDelegations"
validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validators" a) =>
  Lens.Family2.LensLike' f s a
validators = Data.ProtoLens.Field.field @"validators"
vec'delegations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'delegations" a) =>
  Lens.Family2.LensLike' f s a
vec'delegations = Data.ProtoLens.Field.field @"vec'delegations"
vec'lastValidatorPowers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'lastValidatorPowers" a) =>
  Lens.Family2.LensLike' f s a
vec'lastValidatorPowers
  = Data.ProtoLens.Field.field @"vec'lastValidatorPowers"
vec'redelegations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'redelegations" a) =>
  Lens.Family2.LensLike' f s a
vec'redelegations = Data.ProtoLens.Field.field @"vec'redelegations"
vec'unbondingDelegations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'unbondingDelegations" a) =>
  Lens.Family2.LensLike' f s a
vec'unbondingDelegations
  = Data.ProtoLens.Field.field @"vec'unbondingDelegations"
vec'validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validators" a) =>
  Lens.Family2.LensLike' f s a
vec'validators = Data.ProtoLens.Field.field @"vec'validators"