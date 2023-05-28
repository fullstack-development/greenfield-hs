{- This file was auto-generated from cosmos/group/v1/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.V1.Types_Fields where
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
abstainCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abstainCount" a) =>
  Lens.Family2.LensLike' f s a
abstainCount = Data.ProtoLens.Field.field @"abstainCount"
addedAt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "addedAt" a) =>
  Lens.Family2.LensLike' f s a
addedAt = Data.ProtoLens.Field.field @"addedAt"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
admin ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "admin" a) =>
  Lens.Family2.LensLike' f s a
admin = Data.ProtoLens.Field.field @"admin"
createdAt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "createdAt" a) =>
  Lens.Family2.LensLike' f s a
createdAt = Data.ProtoLens.Field.field @"createdAt"
decisionPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "decisionPolicy" a) =>
  Lens.Family2.LensLike' f s a
decisionPolicy = Data.ProtoLens.Field.field @"decisionPolicy"
executorResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "executorResult" a) =>
  Lens.Family2.LensLike' f s a
executorResult = Data.ProtoLens.Field.field @"executorResult"
finalTallyResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "finalTallyResult" a) =>
  Lens.Family2.LensLike' f s a
finalTallyResult = Data.ProtoLens.Field.field @"finalTallyResult"
groupId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "groupId" a) =>
  Lens.Family2.LensLike' f s a
groupId = Data.ProtoLens.Field.field @"groupId"
groupPolicyAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupPolicyAddress" a) =>
  Lens.Family2.LensLike' f s a
groupPolicyAddress
  = Data.ProtoLens.Field.field @"groupPolicyAddress"
groupPolicyVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupPolicyVersion" a) =>
  Lens.Family2.LensLike' f s a
groupPolicyVersion
  = Data.ProtoLens.Field.field @"groupPolicyVersion"
groupVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupVersion" a) =>
  Lens.Family2.LensLike' f s a
groupVersion = Data.ProtoLens.Field.field @"groupVersion"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
maybe'addedAt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'addedAt" a) =>
  Lens.Family2.LensLike' f s a
maybe'addedAt = Data.ProtoLens.Field.field @"maybe'addedAt"
maybe'createdAt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'createdAt" a) =>
  Lens.Family2.LensLike' f s a
maybe'createdAt = Data.ProtoLens.Field.field @"maybe'createdAt"
maybe'decisionPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'decisionPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'decisionPolicy
  = Data.ProtoLens.Field.field @"maybe'decisionPolicy"
maybe'finalTallyResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'finalTallyResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'finalTallyResult
  = Data.ProtoLens.Field.field @"maybe'finalTallyResult"
maybe'member ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'member" a) =>
  Lens.Family2.LensLike' f s a
maybe'member = Data.ProtoLens.Field.field @"maybe'member"
maybe'minExecutionPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minExecutionPeriod" a) =>
  Lens.Family2.LensLike' f s a
maybe'minExecutionPeriod
  = Data.ProtoLens.Field.field @"maybe'minExecutionPeriod"
maybe'submitTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'submitTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'submitTime = Data.ProtoLens.Field.field @"maybe'submitTime"
maybe'votingPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'votingPeriod" a) =>
  Lens.Family2.LensLike' f s a
maybe'votingPeriod
  = Data.ProtoLens.Field.field @"maybe'votingPeriod"
maybe'votingPeriodEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'votingPeriodEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'votingPeriodEnd
  = Data.ProtoLens.Field.field @"maybe'votingPeriodEnd"
maybe'windows ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'windows" a) =>
  Lens.Family2.LensLike' f s a
maybe'windows = Data.ProtoLens.Field.field @"maybe'windows"
member ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "member" a) =>
  Lens.Family2.LensLike' f s a
member = Data.ProtoLens.Field.field @"member"
messages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messages" a) =>
  Lens.Family2.LensLike' f s a
messages = Data.ProtoLens.Field.field @"messages"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
minExecutionPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minExecutionPeriod" a) =>
  Lens.Family2.LensLike' f s a
minExecutionPeriod
  = Data.ProtoLens.Field.field @"minExecutionPeriod"
noCount ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "noCount" a) =>
  Lens.Family2.LensLike' f s a
noCount = Data.ProtoLens.Field.field @"noCount"
noWithVetoCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noWithVetoCount" a) =>
  Lens.Family2.LensLike' f s a
noWithVetoCount = Data.ProtoLens.Field.field @"noWithVetoCount"
option ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "option" a) =>
  Lens.Family2.LensLike' f s a
option = Data.ProtoLens.Field.field @"option"
percentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "percentage" a) =>
  Lens.Family2.LensLike' f s a
percentage = Data.ProtoLens.Field.field @"percentage"
proposalId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposalId" a) =>
  Lens.Family2.LensLike' f s a
proposalId = Data.ProtoLens.Field.field @"proposalId"
proposers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposers" a) =>
  Lens.Family2.LensLike' f s a
proposers = Data.ProtoLens.Field.field @"proposers"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
submitTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "submitTime" a) =>
  Lens.Family2.LensLike' f s a
submitTime = Data.ProtoLens.Field.field @"submitTime"
summary ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "summary" a) =>
  Lens.Family2.LensLike' f s a
summary = Data.ProtoLens.Field.field @"summary"
threshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threshold" a) =>
  Lens.Family2.LensLike' f s a
threshold = Data.ProtoLens.Field.field @"threshold"
title ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "title" a) =>
  Lens.Family2.LensLike' f s a
title = Data.ProtoLens.Field.field @"title"
totalWeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalWeight" a) =>
  Lens.Family2.LensLike' f s a
totalWeight = Data.ProtoLens.Field.field @"totalWeight"
vec'messages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'messages" a) =>
  Lens.Family2.LensLike' f s a
vec'messages = Data.ProtoLens.Field.field @"vec'messages"
vec'proposers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'proposers" a) =>
  Lens.Family2.LensLike' f s a
vec'proposers = Data.ProtoLens.Field.field @"vec'proposers"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
voter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "voter" a) =>
  Lens.Family2.LensLike' f s a
voter = Data.ProtoLens.Field.field @"voter"
votingPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingPeriod" a) =>
  Lens.Family2.LensLike' f s a
votingPeriod = Data.ProtoLens.Field.field @"votingPeriod"
votingPeriodEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingPeriodEnd" a) =>
  Lens.Family2.LensLike' f s a
votingPeriodEnd = Data.ProtoLens.Field.field @"votingPeriodEnd"
weight ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "weight" a) =>
  Lens.Family2.LensLike' f s a
weight = Data.ProtoLens.Field.field @"weight"
windows ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "windows" a) =>
  Lens.Family2.LensLike' f s a
windows = Data.ProtoLens.Field.field @"windows"
yesCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "yesCount" a) =>
  Lens.Family2.LensLike' f s a
yesCount = Data.ProtoLens.Field.field @"yesCount"