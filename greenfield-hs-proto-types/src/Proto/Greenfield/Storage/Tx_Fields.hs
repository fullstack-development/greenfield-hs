{- This file was auto-generated from greenfield/storage/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Tx_Fields where
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Greenfield.Common.Wrapper
import qualified Proto.Greenfield.Permission.Common
import qualified Proto.Greenfield.Storage.Common
import qualified Proto.Greenfield.Storage.Params
authority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authority" a) =>
  Lens.Family2.LensLike' f s a
authority = Data.ProtoLens.Field.field @"authority"
bucketId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketId" a) =>
  Lens.Family2.LensLike' f s a
bucketId = Data.ProtoLens.Field.field @"bucketId"
bucketName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketName" a) =>
  Lens.Family2.LensLike' f s a
bucketName = Data.ProtoLens.Field.field @"bucketName"
chargedReadQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chargedReadQuota" a) =>
  Lens.Family2.LensLike' f s a
chargedReadQuota = Data.ProtoLens.Field.field @"chargedReadQuota"
contentType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "contentType" a) =>
  Lens.Family2.LensLike' f s a
contentType = Data.ProtoLens.Field.field @"contentType"
creator ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "creator" a) =>
  Lens.Family2.LensLike' f s a
creator = Data.ProtoLens.Field.field @"creator"
dstBucketName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dstBucketName" a) =>
  Lens.Family2.LensLike' f s a
dstBucketName = Data.ProtoLens.Field.field @"dstBucketName"
dstObjectName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dstObjectName" a) =>
  Lens.Family2.LensLike' f s a
dstObjectName = Data.ProtoLens.Field.field @"dstObjectName"
dstPrimarySpApproval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dstPrimarySpApproval" a) =>
  Lens.Family2.LensLike' f s a
dstPrimarySpApproval
  = Data.ProtoLens.Field.field @"dstPrimarySpApproval"
expectChecksums ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expectChecksums" a) =>
  Lens.Family2.LensLike' f s a
expectChecksums = Data.ProtoLens.Field.field @"expectChecksums"
expectSecondarySpAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expectSecondarySpAddresses" a) =>
  Lens.Family2.LensLike' f s a
expectSecondarySpAddresses
  = Data.ProtoLens.Field.field @"expectSecondarySpAddresses"
expirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expirationTime" a) =>
  Lens.Family2.LensLike' f s a
expirationTime = Data.ProtoLens.Field.field @"expirationTime"
groupId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "groupId" a) =>
  Lens.Family2.LensLike' f s a
groupId = Data.ProtoLens.Field.field @"groupId"
groupName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupName" a) =>
  Lens.Family2.LensLike' f s a
groupName = Data.ProtoLens.Field.field @"groupName"
groupOwner ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupOwner" a) =>
  Lens.Family2.LensLike' f s a
groupOwner = Data.ProtoLens.Field.field @"groupOwner"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
maybe'chargedReadQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chargedReadQuota" a) =>
  Lens.Family2.LensLike' f s a
maybe'chargedReadQuota
  = Data.ProtoLens.Field.field @"maybe'chargedReadQuota"
maybe'dstPrimarySpApproval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstPrimarySpApproval" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstPrimarySpApproval
  = Data.ProtoLens.Field.field @"maybe'dstPrimarySpApproval"
maybe'expirationTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expirationTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'expirationTime
  = Data.ProtoLens.Field.field @"maybe'expirationTime"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
maybe'primarySpApproval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'primarySpApproval" a) =>
  Lens.Family2.LensLike' f s a
maybe'primarySpApproval
  = Data.ProtoLens.Field.field @"maybe'primarySpApproval"
maybe'principal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'principal" a) =>
  Lens.Family2.LensLike' f s a
maybe'principal = Data.ProtoLens.Field.field @"maybe'principal"
member ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "member" a) =>
  Lens.Family2.LensLike' f s a
member = Data.ProtoLens.Field.field @"member"
members ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "members" a) =>
  Lens.Family2.LensLike' f s a
members = Data.ProtoLens.Field.field @"members"
membersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "membersToAdd" a) =>
  Lens.Family2.LensLike' f s a
membersToAdd = Data.ProtoLens.Field.field @"membersToAdd"
membersToDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "membersToDelete" a) =>
  Lens.Family2.LensLike' f s a
membersToDelete = Data.ProtoLens.Field.field @"membersToDelete"
objectId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectId" a) =>
  Lens.Family2.LensLike' f s a
objectId = Data.ProtoLens.Field.field @"objectId"
objectIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectIds" a) =>
  Lens.Family2.LensLike' f s a
objectIds = Data.ProtoLens.Field.field @"objectIds"
objectName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectName" a) =>
  Lens.Family2.LensLike' f s a
objectName = Data.ProtoLens.Field.field @"objectName"
operator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operator" a) =>
  Lens.Family2.LensLike' f s a
operator = Data.ProtoLens.Field.field @"operator"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
payloadSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "payloadSize" a) =>
  Lens.Family2.LensLike' f s a
payloadSize = Data.ProtoLens.Field.field @"payloadSize"
paymentAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paymentAddress" a) =>
  Lens.Family2.LensLike' f s a
paymentAddress = Data.ProtoLens.Field.field @"paymentAddress"
policyId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "policyId" a) =>
  Lens.Family2.LensLike' f s a
policyId = Data.ProtoLens.Field.field @"policyId"
primarySpAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "primarySpAddress" a) =>
  Lens.Family2.LensLike' f s a
primarySpAddress = Data.ProtoLens.Field.field @"primarySpAddress"
primarySpApproval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "primarySpApproval" a) =>
  Lens.Family2.LensLike' f s a
primarySpApproval = Data.ProtoLens.Field.field @"primarySpApproval"
principal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "principal" a) =>
  Lens.Family2.LensLike' f s a
principal = Data.ProtoLens.Field.field @"principal"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
redundancyType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redundancyType" a) =>
  Lens.Family2.LensLike' f s a
redundancyType = Data.ProtoLens.Field.field @"redundancyType"
resource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resource" a) =>
  Lens.Family2.LensLike' f s a
resource = Data.ProtoLens.Field.field @"resource"
secondarySpAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "secondarySpAddresses" a) =>
  Lens.Family2.LensLike' f s a
secondarySpAddresses
  = Data.ProtoLens.Field.field @"secondarySpAddresses"
secondarySpSignatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "secondarySpSignatures" a) =>
  Lens.Family2.LensLike' f s a
secondarySpSignatures
  = Data.ProtoLens.Field.field @"secondarySpSignatures"
srcBucketName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "srcBucketName" a) =>
  Lens.Family2.LensLike' f s a
srcBucketName = Data.ProtoLens.Field.field @"srcBucketName"
srcObjectName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "srcObjectName" a) =>
  Lens.Family2.LensLike' f s a
srcObjectName = Data.ProtoLens.Field.field @"srcObjectName"
statements ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statements" a) =>
  Lens.Family2.LensLike' f s a
statements = Data.ProtoLens.Field.field @"statements"
vec'expectChecksums ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'expectChecksums" a) =>
  Lens.Family2.LensLike' f s a
vec'expectChecksums
  = Data.ProtoLens.Field.field @"vec'expectChecksums"
vec'expectSecondarySpAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'expectSecondarySpAddresses" a) =>
  Lens.Family2.LensLike' f s a
vec'expectSecondarySpAddresses
  = Data.ProtoLens.Field.field @"vec'expectSecondarySpAddresses"
vec'members ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'members" a) =>
  Lens.Family2.LensLike' f s a
vec'members = Data.ProtoLens.Field.field @"vec'members"
vec'membersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'membersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'membersToAdd = Data.ProtoLens.Field.field @"vec'membersToAdd"
vec'membersToDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'membersToDelete" a) =>
  Lens.Family2.LensLike' f s a
vec'membersToDelete
  = Data.ProtoLens.Field.field @"vec'membersToDelete"
vec'objectIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'objectIds" a) =>
  Lens.Family2.LensLike' f s a
vec'objectIds = Data.ProtoLens.Field.field @"vec'objectIds"
vec'secondarySpAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'secondarySpAddresses" a) =>
  Lens.Family2.LensLike' f s a
vec'secondarySpAddresses
  = Data.ProtoLens.Field.field @"vec'secondarySpAddresses"
vec'secondarySpSignatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'secondarySpSignatures" a) =>
  Lens.Family2.LensLike' f s a
vec'secondarySpSignatures
  = Data.ProtoLens.Field.field @"vec'secondarySpSignatures"
vec'statements ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'statements" a) =>
  Lens.Family2.LensLike' f s a
vec'statements = Data.ProtoLens.Field.field @"vec'statements"
visibility ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "visibility" a) =>
  Lens.Family2.LensLike' f s a
visibility = Data.ProtoLens.Field.field @"visibility"