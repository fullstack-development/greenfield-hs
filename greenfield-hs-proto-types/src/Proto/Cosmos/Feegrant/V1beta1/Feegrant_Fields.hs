{- This file was auto-generated from cosmos/feegrant/v1beta1/feegrant.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields where
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
allowance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowance" a) =>
  Lens.Family2.LensLike' f s a
allowance = Data.ProtoLens.Field.field @"allowance"
allowedMessages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedMessages" a) =>
  Lens.Family2.LensLike' f s a
allowedMessages = Data.ProtoLens.Field.field @"allowedMessages"
basic ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "basic" a) =>
  Lens.Family2.LensLike' f s a
basic = Data.ProtoLens.Field.field @"basic"
expiration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expiration" a) =>
  Lens.Family2.LensLike' f s a
expiration = Data.ProtoLens.Field.field @"expiration"
grantee ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "grantee" a) =>
  Lens.Family2.LensLike' f s a
grantee = Data.ProtoLens.Field.field @"grantee"
granter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "granter" a) =>
  Lens.Family2.LensLike' f s a
granter = Data.ProtoLens.Field.field @"granter"
maybe'allowance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowance" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowance = Data.ProtoLens.Field.field @"maybe'allowance"
maybe'basic ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'basic" a) =>
  Lens.Family2.LensLike' f s a
maybe'basic = Data.ProtoLens.Field.field @"maybe'basic"
maybe'expiration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expiration" a) =>
  Lens.Family2.LensLike' f s a
maybe'expiration = Data.ProtoLens.Field.field @"maybe'expiration"
maybe'period ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'period" a) =>
  Lens.Family2.LensLike' f s a
maybe'period = Data.ProtoLens.Field.field @"maybe'period"
maybe'periodReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'periodReset" a) =>
  Lens.Family2.LensLike' f s a
maybe'periodReset = Data.ProtoLens.Field.field @"maybe'periodReset"
period ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "period" a) =>
  Lens.Family2.LensLike' f s a
period = Data.ProtoLens.Field.field @"period"
periodCanSpend ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "periodCanSpend" a) =>
  Lens.Family2.LensLike' f s a
periodCanSpend = Data.ProtoLens.Field.field @"periodCanSpend"
periodReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "periodReset" a) =>
  Lens.Family2.LensLike' f s a
periodReset = Data.ProtoLens.Field.field @"periodReset"
periodSpendLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "periodSpendLimit" a) =>
  Lens.Family2.LensLike' f s a
periodSpendLimit = Data.ProtoLens.Field.field @"periodSpendLimit"
spendLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "spendLimit" a) =>
  Lens.Family2.LensLike' f s a
spendLimit = Data.ProtoLens.Field.field @"spendLimit"
vec'allowedMessages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'allowedMessages" a) =>
  Lens.Family2.LensLike' f s a
vec'allowedMessages
  = Data.ProtoLens.Field.field @"vec'allowedMessages"
vec'periodCanSpend ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'periodCanSpend" a) =>
  Lens.Family2.LensLike' f s a
vec'periodCanSpend
  = Data.ProtoLens.Field.field @"vec'periodCanSpend"
vec'periodSpendLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'periodSpendLimit" a) =>
  Lens.Family2.LensLike' f s a
vec'periodSpendLimit
  = Data.ProtoLens.Field.field @"vec'periodSpendLimit"
vec'spendLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'spendLimit" a) =>
  Lens.Family2.LensLike' f s a
vec'spendLimit = Data.ProtoLens.Field.field @"vec'spendLimit"