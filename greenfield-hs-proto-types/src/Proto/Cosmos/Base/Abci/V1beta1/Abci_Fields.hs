{- This file was auto-generated from cosmos/base/abci/v1beta1/abci.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields where
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Tendermint.Abci.Types
import qualified Proto.Tendermint.Types.Block
attributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attributes" a) =>
  Lens.Family2.LensLike' f s a
attributes = Data.ProtoLens.Field.field @"attributes"
blocks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blocks" a) =>
  Lens.Family2.LensLike' f s a
blocks = Data.ProtoLens.Field.field @"blocks"
code ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "code" a) =>
  Lens.Family2.LensLike' f s a
code = Data.ProtoLens.Field.field @"code"
codespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "codespace" a) =>
  Lens.Family2.LensLike' f s a
codespace = Data.ProtoLens.Field.field @"codespace"
count ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "count" a) =>
  Lens.Family2.LensLike' f s a
count = Data.ProtoLens.Field.field @"count"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
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
gasUsed ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gasUsed" a) =>
  Lens.Family2.LensLike' f s a
gasUsed = Data.ProtoLens.Field.field @"gasUsed"
gasWanted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gasWanted" a) =>
  Lens.Family2.LensLike' f s a
gasWanted = Data.ProtoLens.Field.field @"gasWanted"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
info ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "info" a) =>
  Lens.Family2.LensLike' f s a
info = Data.ProtoLens.Field.field @"info"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
limit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "limit" a) =>
  Lens.Family2.LensLike' f s a
limit = Data.ProtoLens.Field.field @"limit"
log ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "log" a) =>
  Lens.Family2.LensLike' f s a
log = Data.ProtoLens.Field.field @"log"
logs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "logs" a) =>
  Lens.Family2.LensLike' f s a
logs = Data.ProtoLens.Field.field @"logs"
maybe'gasInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gasInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'gasInfo = Data.ProtoLens.Field.field @"maybe'gasInfo"
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
msgIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "msgIndex" a) =>
  Lens.Family2.LensLike' f s a
msgIndex = Data.ProtoLens.Field.field @"msgIndex"
msgResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "msgResponses" a) =>
  Lens.Family2.LensLike' f s a
msgResponses = Data.ProtoLens.Field.field @"msgResponses"
msgType ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "msgType" a) =>
  Lens.Family2.LensLike' f s a
msgType = Data.ProtoLens.Field.field @"msgType"
pageNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pageNumber" a) =>
  Lens.Family2.LensLike' f s a
pageNumber = Data.ProtoLens.Field.field @"pageNumber"
pageTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pageTotal" a) =>
  Lens.Family2.LensLike' f s a
pageTotal = Data.ProtoLens.Field.field @"pageTotal"
rawLog ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rawLog" a) =>
  Lens.Family2.LensLike' f s a
rawLog = Data.ProtoLens.Field.field @"rawLog"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
totalCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalCount" a) =>
  Lens.Family2.LensLike' f s a
totalCount = Data.ProtoLens.Field.field @"totalCount"
tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
  Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
txhash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txhash" a) =>
  Lens.Family2.LensLike' f s a
txhash = Data.ProtoLens.Field.field @"txhash"
txs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txs" a) =>
  Lens.Family2.LensLike' f s a
txs = Data.ProtoLens.Field.field @"txs"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
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
vec'blocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'blocks" a) =>
  Lens.Family2.LensLike' f s a
vec'blocks = Data.ProtoLens.Field.field @"vec'blocks"
vec'data' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'data'" a) =>
  Lens.Family2.LensLike' f s a
vec'data' = Data.ProtoLens.Field.field @"vec'data'"
vec'events ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'events" a) =>
  Lens.Family2.LensLike' f s a
vec'events = Data.ProtoLens.Field.field @"vec'events"
vec'logs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'logs" a) =>
  Lens.Family2.LensLike' f s a
vec'logs = Data.ProtoLens.Field.field @"vec'logs"
vec'msgResponses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'msgResponses" a) =>
  Lens.Family2.LensLike' f s a
vec'msgResponses = Data.ProtoLens.Field.field @"vec'msgResponses"
vec'txs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'txs" a) =>
  Lens.Family2.LensLike' f s a
vec'txs = Data.ProtoLens.Field.field @"vec'txs"