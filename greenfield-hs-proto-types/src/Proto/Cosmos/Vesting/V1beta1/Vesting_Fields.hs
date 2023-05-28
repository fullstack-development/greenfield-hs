{- This file was auto-generated from cosmos/vesting/v1beta1/vesting.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Vesting.V1beta1.Vesting_Fields where
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
import qualified Proto.Cosmos.Auth.V1beta1.Auth
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Gogoproto.Gogo
amount ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amount" a) =>
  Lens.Family2.LensLike' f s a
amount = Data.ProtoLens.Field.field @"amount"
baseAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseAccount" a) =>
  Lens.Family2.LensLike' f s a
baseAccount = Data.ProtoLens.Field.field @"baseAccount"
baseVestingAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseVestingAccount" a) =>
  Lens.Family2.LensLike' f s a
baseVestingAccount
  = Data.ProtoLens.Field.field @"baseVestingAccount"
delegatedFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatedFree" a) =>
  Lens.Family2.LensLike' f s a
delegatedFree = Data.ProtoLens.Field.field @"delegatedFree"
delegatedVesting ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatedVesting" a) =>
  Lens.Family2.LensLike' f s a
delegatedVesting = Data.ProtoLens.Field.field @"delegatedVesting"
endTime ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "endTime" a) =>
  Lens.Family2.LensLike' f s a
endTime = Data.ProtoLens.Field.field @"endTime"
length ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "length" a) =>
  Lens.Family2.LensLike' f s a
length = Data.ProtoLens.Field.field @"length"
maybe'baseAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'baseAccount" a) =>
  Lens.Family2.LensLike' f s a
maybe'baseAccount = Data.ProtoLens.Field.field @"maybe'baseAccount"
maybe'baseVestingAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'baseVestingAccount" a) =>
  Lens.Family2.LensLike' f s a
maybe'baseVestingAccount
  = Data.ProtoLens.Field.field @"maybe'baseVestingAccount"
originalVesting ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalVesting" a) =>
  Lens.Family2.LensLike' f s a
originalVesting = Data.ProtoLens.Field.field @"originalVesting"
startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTime" a) =>
  Lens.Family2.LensLike' f s a
startTime = Data.ProtoLens.Field.field @"startTime"
vec'amount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'amount" a) =>
  Lens.Family2.LensLike' f s a
vec'amount = Data.ProtoLens.Field.field @"vec'amount"
vec'delegatedFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'delegatedFree" a) =>
  Lens.Family2.LensLike' f s a
vec'delegatedFree = Data.ProtoLens.Field.field @"vec'delegatedFree"
vec'delegatedVesting ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'delegatedVesting" a) =>
  Lens.Family2.LensLike' f s a
vec'delegatedVesting
  = Data.ProtoLens.Field.field @"vec'delegatedVesting"
vec'originalVesting ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'originalVesting" a) =>
  Lens.Family2.LensLike' f s a
vec'originalVesting
  = Data.ProtoLens.Field.field @"vec'originalVesting"
vec'vestingPeriods ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'vestingPeriods" a) =>
  Lens.Family2.LensLike' f s a
vec'vestingPeriods
  = Data.ProtoLens.Field.field @"vec'vestingPeriods"
vestingPeriods ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vestingPeriods" a) =>
  Lens.Family2.LensLike' f s a
vestingPeriods = Data.ProtoLens.Field.field @"vestingPeriods"