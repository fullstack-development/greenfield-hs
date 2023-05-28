{- This file was auto-generated from greenfield/sp/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Query_Fields where
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
import qualified Proto.Greenfield.Sp.Params
import qualified Proto.Greenfield.Sp.Types
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
maybe'secondarySpStorePrice ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'secondarySpStorePrice" a) =>
  Lens.Family2.LensLike' f s a
maybe'secondarySpStorePrice
  = Data.ProtoLens.Field.field @"maybe'secondarySpStorePrice"
maybe'spStoragePrice ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'spStoragePrice" a) =>
  Lens.Family2.LensLike' f s a
maybe'spStoragePrice
  = Data.ProtoLens.Field.field @"maybe'spStoragePrice"
maybe'storageProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'storageProvider" a) =>
  Lens.Family2.LensLike' f s a
maybe'storageProvider
  = Data.ProtoLens.Field.field @"maybe'storageProvider"
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
secondarySpStorePrice ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "secondarySpStorePrice" a) =>
  Lens.Family2.LensLike' f s a
secondarySpStorePrice
  = Data.ProtoLens.Field.field @"secondarySpStorePrice"
spAddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "spAddr" a) =>
  Lens.Family2.LensLike' f s a
spAddr = Data.ProtoLens.Field.field @"spAddr"
spAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "spAddress" a) =>
  Lens.Family2.LensLike' f s a
spAddress = Data.ProtoLens.Field.field @"spAddress"
spStoragePrice ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "spStoragePrice" a) =>
  Lens.Family2.LensLike' f s a
spStoragePrice = Data.ProtoLens.Field.field @"spStoragePrice"
sps ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sps" a) =>
  Lens.Family2.LensLike' f s a
sps = Data.ProtoLens.Field.field @"sps"
storageProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "storageProvider" a) =>
  Lens.Family2.LensLike' f s a
storageProvider = Data.ProtoLens.Field.field @"storageProvider"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
vec'sps ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'sps" a) =>
  Lens.Family2.LensLike' f s a
vec'sps = Data.ProtoLens.Field.field @"vec'sps"