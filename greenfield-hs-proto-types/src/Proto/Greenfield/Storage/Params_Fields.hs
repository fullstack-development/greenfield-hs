{- This file was auto-generated from greenfield/storage/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Params_Fields where
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
import qualified Proto.Gogoproto.Gogo
discontinueBucketMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "discontinueBucketMax" a) =>
  Lens.Family2.LensLike' f s a
discontinueBucketMax
  = Data.ProtoLens.Field.field @"discontinueBucketMax"
discontinueConfirmPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "discontinueConfirmPeriod" a) =>
  Lens.Family2.LensLike' f s a
discontinueConfirmPeriod
  = Data.ProtoLens.Field.field @"discontinueConfirmPeriod"
discontinueCountingWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "discontinueCountingWindow" a) =>
  Lens.Family2.LensLike' f s a
discontinueCountingWindow
  = Data.ProtoLens.Field.field @"discontinueCountingWindow"
discontinueDeletionMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "discontinueDeletionMax" a) =>
  Lens.Family2.LensLike' f s a
discontinueDeletionMax
  = Data.ProtoLens.Field.field @"discontinueDeletionMax"
discontinueObjectMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "discontinueObjectMax" a) =>
  Lens.Family2.LensLike' f s a
discontinueObjectMax
  = Data.ProtoLens.Field.field @"discontinueObjectMax"
maxBucketsPerAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBucketsPerAccount" a) =>
  Lens.Family2.LensLike' f s a
maxBucketsPerAccount
  = Data.ProtoLens.Field.field @"maxBucketsPerAccount"
maxPayloadSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxPayloadSize" a) =>
  Lens.Family2.LensLike' f s a
maxPayloadSize = Data.ProtoLens.Field.field @"maxPayloadSize"
maxSegmentSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxSegmentSize" a) =>
  Lens.Family2.LensLike' f s a
maxSegmentSize = Data.ProtoLens.Field.field @"maxSegmentSize"
maybe'versionedParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'versionedParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'versionedParams
  = Data.ProtoLens.Field.field @"maybe'versionedParams"
minChargeSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minChargeSize" a) =>
  Lens.Family2.LensLike' f s a
minChargeSize = Data.ProtoLens.Field.field @"minChargeSize"
mirrorBucketAckRelayerFee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mirrorBucketAckRelayerFee" a) =>
  Lens.Family2.LensLike' f s a
mirrorBucketAckRelayerFee
  = Data.ProtoLens.Field.field @"mirrorBucketAckRelayerFee"
mirrorBucketRelayerFee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mirrorBucketRelayerFee" a) =>
  Lens.Family2.LensLike' f s a
mirrorBucketRelayerFee
  = Data.ProtoLens.Field.field @"mirrorBucketRelayerFee"
mirrorGroupAckRelayerFee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mirrorGroupAckRelayerFee" a) =>
  Lens.Family2.LensLike' f s a
mirrorGroupAckRelayerFee
  = Data.ProtoLens.Field.field @"mirrorGroupAckRelayerFee"
mirrorGroupRelayerFee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mirrorGroupRelayerFee" a) =>
  Lens.Family2.LensLike' f s a
mirrorGroupRelayerFee
  = Data.ProtoLens.Field.field @"mirrorGroupRelayerFee"
mirrorObjectAckRelayerFee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mirrorObjectAckRelayerFee" a) =>
  Lens.Family2.LensLike' f s a
mirrorObjectAckRelayerFee
  = Data.ProtoLens.Field.field @"mirrorObjectAckRelayerFee"
mirrorObjectRelayerFee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mirrorObjectRelayerFee" a) =>
  Lens.Family2.LensLike' f s a
mirrorObjectRelayerFee
  = Data.ProtoLens.Field.field @"mirrorObjectRelayerFee"
redundantDataChunkNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redundantDataChunkNum" a) =>
  Lens.Family2.LensLike' f s a
redundantDataChunkNum
  = Data.ProtoLens.Field.field @"redundantDataChunkNum"
redundantParityChunkNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redundantParityChunkNum" a) =>
  Lens.Family2.LensLike' f s a
redundantParityChunkNum
  = Data.ProtoLens.Field.field @"redundantParityChunkNum"
stalePolicyCleanupMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stalePolicyCleanupMax" a) =>
  Lens.Family2.LensLike' f s a
stalePolicyCleanupMax
  = Data.ProtoLens.Field.field @"stalePolicyCleanupMax"
versionedParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versionedParams" a) =>
  Lens.Family2.LensLike' f s a
versionedParams = Data.ProtoLens.Field.field @"versionedParams"