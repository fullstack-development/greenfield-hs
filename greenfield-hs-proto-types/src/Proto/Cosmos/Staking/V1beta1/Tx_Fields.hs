{- This file was auto-generated from cosmos/staking/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Tx_Fields where
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
import qualified Proto.Cosmos.Staking.V1beta1.Staking
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
amount ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amount" a) =>
  Lens.Family2.LensLike' f s a
amount = Data.ProtoLens.Field.field @"amount"
authority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authority" a) =>
  Lens.Family2.LensLike' f s a
authority = Data.ProtoLens.Field.field @"authority"
commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commission" a) =>
  Lens.Family2.LensLike' f s a
commission = Data.ProtoLens.Field.field @"commission"
commissionRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commissionRate" a) =>
  Lens.Family2.LensLike' f s a
commissionRate = Data.ProtoLens.Field.field @"commissionRate"
completionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "completionTime" a) =>
  Lens.Family2.LensLike' f s a
completionTime = Data.ProtoLens.Field.field @"completionTime"
creationHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "creationHeight" a) =>
  Lens.Family2.LensLike' f s a
creationHeight = Data.ProtoLens.Field.field @"creationHeight"
delegatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delegatorAddress" a) =>
  Lens.Family2.LensLike' f s a
delegatorAddress = Data.ProtoLens.Field.field @"delegatorAddress"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
maybe'amount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'amount" a) =>
  Lens.Family2.LensLike' f s a
maybe'amount = Data.ProtoLens.Field.field @"maybe'amount"
maybe'commission ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commission" a) =>
  Lens.Family2.LensLike' f s a
maybe'commission = Data.ProtoLens.Field.field @"maybe'commission"
maybe'completionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'completionTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'completionTime
  = Data.ProtoLens.Field.field @"maybe'completionTime"
maybe'description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'description" a) =>
  Lens.Family2.LensLike' f s a
maybe'description = Data.ProtoLens.Field.field @"maybe'description"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
maybe'pubkey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pubkey" a) =>
  Lens.Family2.LensLike' f s a
maybe'pubkey = Data.ProtoLens.Field.field @"maybe'pubkey"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
minSelfDelegation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minSelfDelegation" a) =>
  Lens.Family2.LensLike' f s a
minSelfDelegation = Data.ProtoLens.Field.field @"minSelfDelegation"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
pubkey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubkey" a) =>
  Lens.Family2.LensLike' f s a
pubkey = Data.ProtoLens.Field.field @"pubkey"
validatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorAddress = Data.ProtoLens.Field.field @"validatorAddress"
validatorDstAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorDstAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorDstAddress
  = Data.ProtoLens.Field.field @"validatorDstAddress"
validatorSrcAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorSrcAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorSrcAddress
  = Data.ProtoLens.Field.field @"validatorSrcAddress"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"