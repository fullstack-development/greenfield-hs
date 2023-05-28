{- This file was auto-generated from cosmos/bank/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.V1beta1.Genesis_Fields where
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
import qualified Proto.Cosmos.Bank.V1beta1.Bank
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
balances ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "balances" a) =>
  Lens.Family2.LensLike' f s a
balances = Data.ProtoLens.Field.field @"balances"
coins ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "coins" a) =>
  Lens.Family2.LensLike' f s a
coins = Data.ProtoLens.Field.field @"coins"
denomMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "denomMetadata" a) =>
  Lens.Family2.LensLike' f s a
denomMetadata = Data.ProtoLens.Field.field @"denomMetadata"
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
sendEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sendEnabled" a) =>
  Lens.Family2.LensLike' f s a
sendEnabled = Data.ProtoLens.Field.field @"sendEnabled"
supply ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "supply" a) =>
  Lens.Family2.LensLike' f s a
supply = Data.ProtoLens.Field.field @"supply"
vec'balances ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'balances" a) =>
  Lens.Family2.LensLike' f s a
vec'balances = Data.ProtoLens.Field.field @"vec'balances"
vec'coins ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'coins" a) =>
  Lens.Family2.LensLike' f s a
vec'coins = Data.ProtoLens.Field.field @"vec'coins"
vec'denomMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'denomMetadata" a) =>
  Lens.Family2.LensLike' f s a
vec'denomMetadata = Data.ProtoLens.Field.field @"vec'denomMetadata"
vec'sendEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sendEnabled" a) =>
  Lens.Family2.LensLike' f s a
vec'sendEnabled = Data.ProtoLens.Field.field @"vec'sendEnabled"
vec'supply ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'supply" a) =>
  Lens.Family2.LensLike' f s a
vec'supply = Data.ProtoLens.Field.field @"vec'supply"