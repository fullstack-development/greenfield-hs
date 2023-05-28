{- This file was auto-generated from cosmos/bank/v1beta1/bank.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.V1beta1.Bank_Fields where
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
aliases ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "aliases" a) =>
  Lens.Family2.LensLike' f s a
aliases = Data.ProtoLens.Field.field @"aliases"
base ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "base" a) =>
  Lens.Family2.LensLike' f s a
base = Data.ProtoLens.Field.field @"base"
coins ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "coins" a) =>
  Lens.Family2.LensLike' f s a
coins = Data.ProtoLens.Field.field @"coins"
defaultSendEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultSendEnabled" a) =>
  Lens.Family2.LensLike' f s a
defaultSendEnabled
  = Data.ProtoLens.Field.field @"defaultSendEnabled"
denom ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "denom" a) =>
  Lens.Family2.LensLike' f s a
denom = Data.ProtoLens.Field.field @"denom"
denomUnits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "denomUnits" a) =>
  Lens.Family2.LensLike' f s a
denomUnits = Data.ProtoLens.Field.field @"denomUnits"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
display ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "display" a) =>
  Lens.Family2.LensLike' f s a
display = Data.ProtoLens.Field.field @"display"
enabled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enabled" a) =>
  Lens.Family2.LensLike' f s a
enabled = Data.ProtoLens.Field.field @"enabled"
exponent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exponent" a) =>
  Lens.Family2.LensLike' f s a
exponent = Data.ProtoLens.Field.field @"exponent"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
sendEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sendEnabled" a) =>
  Lens.Family2.LensLike' f s a
sendEnabled = Data.ProtoLens.Field.field @"sendEnabled"
symbol ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "symbol" a) =>
  Lens.Family2.LensLike' f s a
symbol = Data.ProtoLens.Field.field @"symbol"
total ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "total" a) =>
  Lens.Family2.LensLike' f s a
total = Data.ProtoLens.Field.field @"total"
uri ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uri" a) =>
  Lens.Family2.LensLike' f s a
uri = Data.ProtoLens.Field.field @"uri"
uriHash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uriHash" a) =>
  Lens.Family2.LensLike' f s a
uriHash = Data.ProtoLens.Field.field @"uriHash"
vec'aliases ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'aliases" a) =>
  Lens.Family2.LensLike' f s a
vec'aliases = Data.ProtoLens.Field.field @"vec'aliases"
vec'coins ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'coins" a) =>
  Lens.Family2.LensLike' f s a
vec'coins = Data.ProtoLens.Field.field @"vec'coins"
vec'denomUnits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'denomUnits" a) =>
  Lens.Family2.LensLike' f s a
vec'denomUnits = Data.ProtoLens.Field.field @"vec'denomUnits"
vec'sendEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sendEnabled" a) =>
  Lens.Family2.LensLike' f s a
vec'sendEnabled = Data.ProtoLens.Field.field @"vec'sendEnabled"
vec'total ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'total" a) =>
  Lens.Family2.LensLike' f s a
vec'total = Data.ProtoLens.Field.field @"vec'total"