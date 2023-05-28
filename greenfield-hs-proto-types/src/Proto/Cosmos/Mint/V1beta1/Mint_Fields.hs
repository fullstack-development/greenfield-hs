{- This file was auto-generated from cosmos/mint/v1beta1/mint.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Mint.V1beta1.Mint_Fields where
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
annualProvisions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "annualProvisions" a) =>
  Lens.Family2.LensLike' f s a
annualProvisions = Data.ProtoLens.Field.field @"annualProvisions"
blocksPerYear ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blocksPerYear" a) =>
  Lens.Family2.LensLike' f s a
blocksPerYear = Data.ProtoLens.Field.field @"blocksPerYear"
goalBonded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "goalBonded" a) =>
  Lens.Family2.LensLike' f s a
goalBonded = Data.ProtoLens.Field.field @"goalBonded"
inflation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inflation" a) =>
  Lens.Family2.LensLike' f s a
inflation = Data.ProtoLens.Field.field @"inflation"
inflationMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inflationMax" a) =>
  Lens.Family2.LensLike' f s a
inflationMax = Data.ProtoLens.Field.field @"inflationMax"
inflationMin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inflationMin" a) =>
  Lens.Family2.LensLike' f s a
inflationMin = Data.ProtoLens.Field.field @"inflationMin"
inflationRateChange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inflationRateChange" a) =>
  Lens.Family2.LensLike' f s a
inflationRateChange
  = Data.ProtoLens.Field.field @"inflationRateChange"
mintDenom ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mintDenom" a) =>
  Lens.Family2.LensLike' f s a
mintDenom = Data.ProtoLens.Field.field @"mintDenom"