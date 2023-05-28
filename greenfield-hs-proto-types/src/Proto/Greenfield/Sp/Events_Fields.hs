{- This file was auto-generated from greenfield/sp/events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Events_Fields where
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Sp.Types
approvalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "approvalAddress" a) =>
  Lens.Family2.LensLike' f s a
approvalAddress = Data.ProtoLens.Field.field @"approvalAddress"
deposit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "deposit" a) =>
  Lens.Family2.LensLike' f s a
deposit = Data.ProtoLens.Field.field @"deposit"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoint" a) =>
  Lens.Family2.LensLike' f s a
endpoint = Data.ProtoLens.Field.field @"endpoint"
freeReadQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "freeReadQuota" a) =>
  Lens.Family2.LensLike' f s a
freeReadQuota = Data.ProtoLens.Field.field @"freeReadQuota"
fundingAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fundingAddress" a) =>
  Lens.Family2.LensLike' f s a
fundingAddress = Data.ProtoLens.Field.field @"fundingAddress"
gcAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gcAddress" a) =>
  Lens.Family2.LensLike' f s a
gcAddress = Data.ProtoLens.Field.field @"gcAddress"
maybe'description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'description" a) =>
  Lens.Family2.LensLike' f s a
maybe'description = Data.ProtoLens.Field.field @"maybe'description"
maybe'totalDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'totalDeposit" a) =>
  Lens.Family2.LensLike' f s a
maybe'totalDeposit
  = Data.ProtoLens.Field.field @"maybe'totalDeposit"
readPrice ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readPrice" a) =>
  Lens.Family2.LensLike' f s a
readPrice = Data.ProtoLens.Field.field @"readPrice"
sealAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sealAddress" a) =>
  Lens.Family2.LensLike' f s a
sealAddress = Data.ProtoLens.Field.field @"sealAddress"
spAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "spAddress" a) =>
  Lens.Family2.LensLike' f s a
spAddress = Data.ProtoLens.Field.field @"spAddress"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
storePrice ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "storePrice" a) =>
  Lens.Family2.LensLike' f s a
storePrice = Data.ProtoLens.Field.field @"storePrice"
totalDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalDeposit" a) =>
  Lens.Family2.LensLike' f s a
totalDeposit = Data.ProtoLens.Field.field @"totalDeposit"
updateTimeSec ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateTimeSec" a) =>
  Lens.Family2.LensLike' f s a
updateTimeSec = Data.ProtoLens.Field.field @"updateTimeSec"