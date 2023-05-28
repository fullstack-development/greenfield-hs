{- This file was auto-generated from cosmos/base/tendermint/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields where
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Base.Tendermint.V1beta1.Types
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Tendermint.P2p.Types
import qualified Proto.Tendermint.Types.Block
import qualified Proto.Tendermint.Types.Types
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
appName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appName" a) =>
  Lens.Family2.LensLike' f s a
appName = Data.ProtoLens.Field.field @"appName"
applicationVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "applicationVersion" a) =>
  Lens.Family2.LensLike' f s a
applicationVersion
  = Data.ProtoLens.Field.field @"applicationVersion"
block ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "block" a) =>
  Lens.Family2.LensLike' f s a
block = Data.ProtoLens.Field.field @"block"
blockHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockHeight" a) =>
  Lens.Family2.LensLike' f s a
blockHeight = Data.ProtoLens.Field.field @"blockHeight"
blockId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blockId" a) =>
  Lens.Family2.LensLike' f s a
blockId = Data.ProtoLens.Field.field @"blockId"
buildDeps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "buildDeps" a) =>
  Lens.Family2.LensLike' f s a
buildDeps = Data.ProtoLens.Field.field @"buildDeps"
buildTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "buildTags" a) =>
  Lens.Family2.LensLike' f s a
buildTags = Data.ProtoLens.Field.field @"buildTags"
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
cosmosSdkVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cosmosSdkVersion" a) =>
  Lens.Family2.LensLike' f s a
cosmosSdkVersion = Data.ProtoLens.Field.field @"cosmosSdkVersion"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
defaultNodeInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultNodeInfo" a) =>
  Lens.Family2.LensLike' f s a
defaultNodeInfo = Data.ProtoLens.Field.field @"defaultNodeInfo"
gitCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gitCommit" a) =>
  Lens.Family2.LensLike' f s a
gitCommit = Data.ProtoLens.Field.field @"gitCommit"
goVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "goVersion" a) =>
  Lens.Family2.LensLike' f s a
goVersion = Data.ProtoLens.Field.field @"goVersion"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
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
log ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "log" a) =>
  Lens.Family2.LensLike' f s a
log = Data.ProtoLens.Field.field @"log"
maybe'applicationVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'applicationVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'applicationVersion
  = Data.ProtoLens.Field.field @"maybe'applicationVersion"
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
maybe'defaultNodeInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'defaultNodeInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'defaultNodeInfo
  = Data.ProtoLens.Field.field @"maybe'defaultNodeInfo"
maybe'pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagination" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagination = Data.ProtoLens.Field.field @"maybe'pagination"
maybe'proofOps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proofOps" a) =>
  Lens.Family2.LensLike' f s a
maybe'proofOps = Data.ProtoLens.Field.field @"maybe'proofOps"
maybe'pubKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pubKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'pubKey = Data.ProtoLens.Field.field @"maybe'pubKey"
maybe'sdkBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdkBlock" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdkBlock = Data.ProtoLens.Field.field @"maybe'sdkBlock"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
ops ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ops" a) =>
  Lens.Family2.LensLike' f s a
ops = Data.ProtoLens.Field.field @"ops"
pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagination" a) =>
  Lens.Family2.LensLike' f s a
pagination = Data.ProtoLens.Field.field @"pagination"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
proofOps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proofOps" a) =>
  Lens.Family2.LensLike' f s a
proofOps = Data.ProtoLens.Field.field @"proofOps"
proposerPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposerPriority" a) =>
  Lens.Family2.LensLike' f s a
proposerPriority = Data.ProtoLens.Field.field @"proposerPriority"
prove ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prove" a) =>
  Lens.Family2.LensLike' f s a
prove = Data.ProtoLens.Field.field @"prove"
pubKey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubKey" a) =>
  Lens.Family2.LensLike' f s a
pubKey = Data.ProtoLens.Field.field @"pubKey"
sdkBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdkBlock" a) =>
  Lens.Family2.LensLike' f s a
sdkBlock = Data.ProtoLens.Field.field @"sdkBlock"
sum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sum" a) =>
  Lens.Family2.LensLike' f s a
sum = Data.ProtoLens.Field.field @"sum"
syncing ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "syncing" a) =>
  Lens.Family2.LensLike' f s a
syncing = Data.ProtoLens.Field.field @"syncing"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validators" a) =>
  Lens.Family2.LensLike' f s a
validators = Data.ProtoLens.Field.field @"validators"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'buildDeps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'buildDeps" a) =>
  Lens.Family2.LensLike' f s a
vec'buildDeps = Data.ProtoLens.Field.field @"vec'buildDeps"
vec'ops ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'ops" a) =>
  Lens.Family2.LensLike' f s a
vec'ops = Data.ProtoLens.Field.field @"vec'ops"
vec'validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validators" a) =>
  Lens.Family2.LensLike' f s a
vec'validators = Data.ProtoLens.Field.field @"vec'validators"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
votingPower ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingPower" a) =>
  Lens.Family2.LensLike' f s a
votingPower = Data.ProtoLens.Field.field @"votingPower"