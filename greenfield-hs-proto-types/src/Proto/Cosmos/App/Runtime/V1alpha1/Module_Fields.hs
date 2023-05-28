{- This file was auto-generated from cosmos/app/runtime/v1alpha1/module.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields where
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
import qualified Proto.Cosmos.App.V1alpha1.Module
appName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appName" a) =>
  Lens.Family2.LensLike' f s a
appName = Data.ProtoLens.Field.field @"appName"
beginBlockers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "beginBlockers" a) =>
  Lens.Family2.LensLike' f s a
beginBlockers = Data.ProtoLens.Field.field @"beginBlockers"
endBlockers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endBlockers" a) =>
  Lens.Family2.LensLike' f s a
endBlockers = Data.ProtoLens.Field.field @"endBlockers"
exportGenesis ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exportGenesis" a) =>
  Lens.Family2.LensLike' f s a
exportGenesis = Data.ProtoLens.Field.field @"exportGenesis"
initGenesis ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initGenesis" a) =>
  Lens.Family2.LensLike' f s a
initGenesis = Data.ProtoLens.Field.field @"initGenesis"
kvStoreKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvStoreKey" a) =>
  Lens.Family2.LensLike' f s a
kvStoreKey = Data.ProtoLens.Field.field @"kvStoreKey"
moduleName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "moduleName" a) =>
  Lens.Family2.LensLike' f s a
moduleName = Data.ProtoLens.Field.field @"moduleName"
orderMigrations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "orderMigrations" a) =>
  Lens.Family2.LensLike' f s a
orderMigrations = Data.ProtoLens.Field.field @"orderMigrations"
overrideStoreKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overrideStoreKeys" a) =>
  Lens.Family2.LensLike' f s a
overrideStoreKeys = Data.ProtoLens.Field.field @"overrideStoreKeys"
precommiters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "precommiters" a) =>
  Lens.Family2.LensLike' f s a
precommiters = Data.ProtoLens.Field.field @"precommiters"
prepareCheckStaters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prepareCheckStaters" a) =>
  Lens.Family2.LensLike' f s a
prepareCheckStaters
  = Data.ProtoLens.Field.field @"prepareCheckStaters"
vec'beginBlockers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'beginBlockers" a) =>
  Lens.Family2.LensLike' f s a
vec'beginBlockers = Data.ProtoLens.Field.field @"vec'beginBlockers"
vec'endBlockers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'endBlockers" a) =>
  Lens.Family2.LensLike' f s a
vec'endBlockers = Data.ProtoLens.Field.field @"vec'endBlockers"
vec'exportGenesis ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'exportGenesis" a) =>
  Lens.Family2.LensLike' f s a
vec'exportGenesis = Data.ProtoLens.Field.field @"vec'exportGenesis"
vec'initGenesis ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'initGenesis" a) =>
  Lens.Family2.LensLike' f s a
vec'initGenesis = Data.ProtoLens.Field.field @"vec'initGenesis"
vec'orderMigrations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'orderMigrations" a) =>
  Lens.Family2.LensLike' f s a
vec'orderMigrations
  = Data.ProtoLens.Field.field @"vec'orderMigrations"
vec'overrideStoreKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'overrideStoreKeys" a) =>
  Lens.Family2.LensLike' f s a
vec'overrideStoreKeys
  = Data.ProtoLens.Field.field @"vec'overrideStoreKeys"
vec'precommiters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'precommiters" a) =>
  Lens.Family2.LensLike' f s a
vec'precommiters = Data.ProtoLens.Field.field @"vec'precommiters"
vec'prepareCheckStaters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'prepareCheckStaters" a) =>
  Lens.Family2.LensLike' f s a
vec'prepareCheckStaters
  = Data.ProtoLens.Field.field @"vec'prepareCheckStaters"