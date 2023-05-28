{- This file was auto-generated from cosmos/tx/v1beta1/service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Tx.V1beta1.Service_Fields where
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
import qualified Proto.Cosmos.Base.Abci.V1beta1.Abci
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Tx.V1beta1.Tx
import qualified Proto.Google.Api.Annotations
import qualified Proto.Tendermint.Types.Block
import qualified Proto.Tendermint.Types.Types
aminoBinary ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "aminoBinary" a) =>
  Lens.Family2.LensLike' f s a
aminoBinary = Data.ProtoLens.Field.field @"aminoBinary"
aminoJson ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "aminoJson" a) =>
  Lens.Family2.LensLike' f s a
aminoJson = Data.ProtoLens.Field.field @"aminoJson"
block ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "block" a) =>
  Lens.Family2.LensLike' f s a
block = Data.ProtoLens.Field.field @"block"
blockId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blockId" a) =>
  Lens.Family2.LensLike' f s a
blockId = Data.ProtoLens.Field.field @"blockId"
events ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "events" a) =>
  Lens.Family2.LensLike' f s a
events = Data.ProtoLens.Field.field @"events"
gasInfo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gasInfo" a) =>
  Lens.Family2.LensLike' f s a
gasInfo = Data.ProtoLens.Field.field @"gasInfo"
hash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hash" a) =>
  Lens.Family2.LensLike' f s a
hash = Data.ProtoLens.Field.field @"hash"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
limit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "limit" a) =>
  Lens.Family2.LensLike' f s a
limit = Data.ProtoLens.Field.field @"limit"
maybe'block ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'block" a) =>
  Lens.Family2.LensLike' f s a
maybe'block = Data.ProtoLens.Field.field @"maybe'block"
maybe'blockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockId" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockId = Data.ProtoLens.Field.field @"maybe'blockId"
maybe'gasInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gasInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'gasInfo = Data.ProtoLens.Field.field @"maybe'gasInfo"
maybe'pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagination" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagination = Data.ProtoLens.Field.field @"maybe'pagination"
maybe'result ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'result" a) =>
  Lens.Family2.LensLike' f s a
maybe'result = Data.ProtoLens.Field.field @"maybe'result"
maybe'tx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tx" a) =>
  Lens.Family2.LensLike' f s a
maybe'tx = Data.ProtoLens.Field.field @"maybe'tx"
maybe'txResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'txResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'txResponse = Data.ProtoLens.Field.field @"maybe'txResponse"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
orderBy ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "orderBy" a) =>
  Lens.Family2.LensLike' f s a
orderBy = Data.ProtoLens.Field.field @"orderBy"
page ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "page" a) =>
  Lens.Family2.LensLike' f s a
page = Data.ProtoLens.Field.field @"page"
pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagination" a) =>
  Lens.Family2.LensLike' f s a
pagination = Data.ProtoLens.Field.field @"pagination"
query ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "query" a) =>
  Lens.Family2.LensLike' f s a
query = Data.ProtoLens.Field.field @"query"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
total ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "total" a) =>
  Lens.Family2.LensLike' f s a
total = Data.ProtoLens.Field.field @"total"
tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
  Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
txBytes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txBytes" a) =>
  Lens.Family2.LensLike' f s a
txBytes = Data.ProtoLens.Field.field @"txBytes"
txResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "txResponse" a) =>
  Lens.Family2.LensLike' f s a
txResponse = Data.ProtoLens.Field.field @"txResponse"
txResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "txResponses" a) =>
  Lens.Family2.LensLike' f s a
txResponses = Data.ProtoLens.Field.field @"txResponses"
txs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txs" a) =>
  Lens.Family2.LensLike' f s a
txs = Data.ProtoLens.Field.field @"txs"
vec'events ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'events" a) =>
  Lens.Family2.LensLike' f s a
vec'events = Data.ProtoLens.Field.field @"vec'events"
vec'txResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'txResponses" a) =>
  Lens.Family2.LensLike' f s a
vec'txResponses = Data.ProtoLens.Field.field @"vec'txResponses"
vec'txs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'txs" a) =>
  Lens.Family2.LensLike' f s a
vec'txs = Data.ProtoLens.Field.field @"vec'txs"