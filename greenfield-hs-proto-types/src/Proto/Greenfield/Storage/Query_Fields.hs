{- This file was auto-generated from greenfield/storage/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Query_Fields where
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Greenfield.Permission.Common
import qualified Proto.Greenfield.Permission.Types
import qualified Proto.Greenfield.Storage.Params
import qualified Proto.Greenfield.Storage.Types
actionType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "actionType" a) =>
  Lens.Family2.LensLike' f s a
actionType = Data.ProtoLens.Field.field @"actionType"
bucketId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketId" a) =>
  Lens.Family2.LensLike' f s a
bucketId = Data.ProtoLens.Field.field @"bucketId"
bucketInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketInfo" a) =>
  Lens.Family2.LensLike' f s a
bucketInfo = Data.ProtoLens.Field.field @"bucketInfo"
bucketInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketInfos" a) =>
  Lens.Family2.LensLike' f s a
bucketInfos = Data.ProtoLens.Field.field @"bucketInfos"
bucketName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketName" a) =>
  Lens.Family2.LensLike' f s a
bucketName = Data.ProtoLens.Field.field @"bucketName"
effect ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "effect" a) =>
  Lens.Family2.LensLike' f s a
effect = Data.ProtoLens.Field.field @"effect"
groupInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupInfo" a) =>
  Lens.Family2.LensLike' f s a
groupInfo = Data.ProtoLens.Field.field @"groupInfo"
groupInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupInfos" a) =>
  Lens.Family2.LensLike' f s a
groupInfos = Data.ProtoLens.Field.field @"groupInfos"
groupMember ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupMember" a) =>
  Lens.Family2.LensLike' f s a
groupMember = Data.ProtoLens.Field.field @"groupMember"
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
maybe'bucketInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bucketInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'bucketInfo = Data.ProtoLens.Field.field @"maybe'bucketInfo"
maybe'groupInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'groupInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'groupInfo = Data.ProtoLens.Field.field @"maybe'groupInfo"
maybe'groupMember ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'groupMember" a) =>
  Lens.Family2.LensLike' f s a
maybe'groupMember = Data.ProtoLens.Field.field @"maybe'groupMember"
maybe'metaData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metaData" a) =>
  Lens.Family2.LensLike' f s a
maybe'metaData = Data.ProtoLens.Field.field @"maybe'metaData"
maybe'objectInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'objectInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'objectInfo = Data.ProtoLens.Field.field @"maybe'objectInfo"
maybe'pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagination" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagination = Data.ProtoLens.Field.field @"maybe'pagination"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
maybe'policy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'policy" a) =>
  Lens.Family2.LensLike' f s a
maybe'policy = Data.ProtoLens.Field.field @"maybe'policy"
member ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "member" a) =>
  Lens.Family2.LensLike' f s a
member = Data.ProtoLens.Field.field @"member"
metaData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metaData" a) =>
  Lens.Family2.LensLike' f s a
metaData = Data.ProtoLens.Field.field @"metaData"
objectId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectId" a) =>
  Lens.Family2.LensLike' f s a
objectId = Data.ProtoLens.Field.field @"objectId"
objectInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectInfo" a) =>
  Lens.Family2.LensLike' f s a
objectInfo = Data.ProtoLens.Field.field @"objectInfo"
objectInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectInfos" a) =>
  Lens.Family2.LensLike' f s a
objectInfos = Data.ProtoLens.Field.field @"objectInfos"
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
pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagination" a) =>
  Lens.Family2.LensLike' f s a
pagination = Data.ProtoLens.Field.field @"pagination"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
policy ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "policy" a) =>
  Lens.Family2.LensLike' f s a
policy = Data.ProtoLens.Field.field @"policy"
policyId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "policyId" a) =>
  Lens.Family2.LensLike' f s a
policyId = Data.ProtoLens.Field.field @"policyId"
principalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "principalAddress" a) =>
  Lens.Family2.LensLike' f s a
principalAddress = Data.ProtoLens.Field.field @"principalAddress"
principalGroupId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "principalGroupId" a) =>
  Lens.Family2.LensLike' f s a
principalGroupId = Data.ProtoLens.Field.field @"principalGroupId"
resource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resource" a) =>
  Lens.Family2.LensLike' f s a
resource = Data.ProtoLens.Field.field @"resource"
tokenId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tokenId" a) =>
  Lens.Family2.LensLike' f s a
tokenId = Data.ProtoLens.Field.field @"tokenId"
vec'bucketInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'bucketInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'bucketInfos = Data.ProtoLens.Field.field @"vec'bucketInfos"
vec'groupInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'groupInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'groupInfos = Data.ProtoLens.Field.field @"vec'groupInfos"
vec'objectInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'objectInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'objectInfos = Data.ProtoLens.Field.field @"vec'objectInfos"