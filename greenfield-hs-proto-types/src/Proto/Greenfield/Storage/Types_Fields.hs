{- This file was auto-generated from greenfield/storage/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Types_Fields where
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Payment.Base
import qualified Proto.Greenfield.Storage.Common
attributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attributes" a) =>
  Lens.Family2.LensLike' f s a
attributes = Data.ProtoLens.Field.field @"attributes"
billingInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "billingInfo" a) =>
  Lens.Family2.LensLike' f s a
billingInfo = Data.ProtoLens.Field.field @"billingInfo"
bucketIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketIds" a) =>
  Lens.Family2.LensLike' f s a
bucketIds = Data.ProtoLens.Field.field @"bucketIds"
bucketName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketName" a) =>
  Lens.Family2.LensLike' f s a
bucketName = Data.ProtoLens.Field.field @"bucketName"
bucketStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketStatus" a) =>
  Lens.Family2.LensLike' f s a
bucketStatus = Data.ProtoLens.Field.field @"bucketStatus"
chargedReadQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chargedReadQuota" a) =>
  Lens.Family2.LensLike' f s a
chargedReadQuota = Data.ProtoLens.Field.field @"chargedReadQuota"
checksums ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "checksums" a) =>
  Lens.Family2.LensLike' f s a
checksums = Data.ProtoLens.Field.field @"checksums"
contentType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "contentType" a) =>
  Lens.Family2.LensLike' f s a
contentType = Data.ProtoLens.Field.field @"contentType"
createAt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "createAt" a) =>
  Lens.Family2.LensLike' f s a
createAt = Data.ProtoLens.Field.field @"createAt"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
externalUrl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "externalUrl" a) =>
  Lens.Family2.LensLike' f s a
externalUrl = Data.ProtoLens.Field.field @"externalUrl"
groupIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupIds" a) =>
  Lens.Family2.LensLike' f s a
groupIds = Data.ProtoLens.Field.field @"groupIds"
groupName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupName" a) =>
  Lens.Family2.LensLike' f s a
groupName = Data.ProtoLens.Field.field @"groupName"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
image ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "image" a) =>
  Lens.Family2.LensLike' f s a
image = Data.ProtoLens.Field.field @"image"
maybe'billingInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'billingInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'billingInfo = Data.ProtoLens.Field.field @"maybe'billingInfo"
maybe'bucketIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bucketIds" a) =>
  Lens.Family2.LensLike' f s a
maybe'bucketIds = Data.ProtoLens.Field.field @"maybe'bucketIds"
maybe'groupIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'groupIds" a) =>
  Lens.Family2.LensLike' f s a
maybe'groupIds = Data.ProtoLens.Field.field @"maybe'groupIds"
maybe'objectIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'objectIds" a) =>
  Lens.Family2.LensLike' f s a
maybe'objectIds = Data.ProtoLens.Field.field @"maybe'objectIds"
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
objectStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectStatus" a) =>
  Lens.Family2.LensLike' f s a
objectStatus = Data.ProtoLens.Field.field @"objectStatus"
owner ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "owner" a) =>
  Lens.Family2.LensLike' f s a
owner = Data.ProtoLens.Field.field @"owner"
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
priceTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priceTime" a) =>
  Lens.Family2.LensLike' f s a
priceTime = Data.ProtoLens.Field.field @"priceTime"
primarySpAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "primarySpAddress" a) =>
  Lens.Family2.LensLike' f s a
primarySpAddress = Data.ProtoLens.Field.field @"primarySpAddress"
redundancyType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redundancyType" a) =>
  Lens.Family2.LensLike' f s a
redundancyType = Data.ProtoLens.Field.field @"redundancyType"
secondarySpAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "secondarySpAddresses" a) =>
  Lens.Family2.LensLike' f s a
secondarySpAddresses
  = Data.ProtoLens.Field.field @"secondarySpAddresses"
secondarySpObjectsSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "secondarySpObjectsSize" a) =>
  Lens.Family2.LensLike' f s a
secondarySpObjectsSize
  = Data.ProtoLens.Field.field @"secondarySpObjectsSize"
sourceType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceType" a) =>
  Lens.Family2.LensLike' f s a
sourceType = Data.ProtoLens.Field.field @"sourceType"
spAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "spAddress" a) =>
  Lens.Family2.LensLike' f s a
spAddress = Data.ProtoLens.Field.field @"spAddress"
totalChargeSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalChargeSize" a) =>
  Lens.Family2.LensLike' f s a
totalChargeSize = Data.ProtoLens.Field.field @"totalChargeSize"
traitType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traitType" a) =>
  Lens.Family2.LensLike' f s a
traitType = Data.ProtoLens.Field.field @"traitType"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'attributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'attributes" a) =>
  Lens.Family2.LensLike' f s a
vec'attributes = Data.ProtoLens.Field.field @"vec'attributes"
vec'checksums ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'checksums" a) =>
  Lens.Family2.LensLike' f s a
vec'checksums = Data.ProtoLens.Field.field @"vec'checksums"
vec'id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'id" a) =>
  Lens.Family2.LensLike' f s a
vec'id = Data.ProtoLens.Field.field @"vec'id"
vec'secondarySpAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'secondarySpAddresses" a) =>
  Lens.Family2.LensLike' f s a
vec'secondarySpAddresses
  = Data.ProtoLens.Field.field @"vec'secondarySpAddresses"
vec'secondarySpObjectsSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'secondarySpObjectsSize" a) =>
  Lens.Family2.LensLike' f s a
vec'secondarySpObjectsSize
  = Data.ProtoLens.Field.field @"vec'secondarySpObjectsSize"
visibility ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "visibility" a) =>
  Lens.Family2.LensLike' f s a
visibility = Data.ProtoLens.Field.field @"visibility"