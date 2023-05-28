{- This file was auto-generated from cosmos/base/tendermint/v1beta1/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields where
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
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Tendermint.Types.Evidence
import qualified Proto.Tendermint.Types.Types
import qualified Proto.Tendermint.Version.Types
appHash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appHash" a) =>
  Lens.Family2.LensLike' f s a
appHash = Data.ProtoLens.Field.field @"appHash"
chainId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chainId" a) =>
  Lens.Family2.LensLike' f s a
chainId = Data.ProtoLens.Field.field @"chainId"
consensusHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consensusHash" a) =>
  Lens.Family2.LensLike' f s a
consensusHash = Data.ProtoLens.Field.field @"consensusHash"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
dataHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataHash" a) =>
  Lens.Family2.LensLike' f s a
dataHash = Data.ProtoLens.Field.field @"dataHash"
evidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "evidence" a) =>
  Lens.Family2.LensLike' f s a
evidence = Data.ProtoLens.Field.field @"evidence"
evidenceHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "evidenceHash" a) =>
  Lens.Family2.LensLike' f s a
evidenceHash = Data.ProtoLens.Field.field @"evidenceHash"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
height ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "height" a) =>
  Lens.Family2.LensLike' f s a
height = Data.ProtoLens.Field.field @"height"
lastBlockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastBlockId" a) =>
  Lens.Family2.LensLike' f s a
lastBlockId = Data.ProtoLens.Field.field @"lastBlockId"
lastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastCommit" a) =>
  Lens.Family2.LensLike' f s a
lastCommit = Data.ProtoLens.Field.field @"lastCommit"
lastCommitHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastCommitHash" a) =>
  Lens.Family2.LensLike' f s a
lastCommitHash = Data.ProtoLens.Field.field @"lastCommitHash"
lastResultsHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastResultsHash" a) =>
  Lens.Family2.LensLike' f s a
lastResultsHash = Data.ProtoLens.Field.field @"lastResultsHash"
maybe'data' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'data'" a) =>
  Lens.Family2.LensLike' f s a
maybe'data' = Data.ProtoLens.Field.field @"maybe'data'"
maybe'evidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'evidence" a) =>
  Lens.Family2.LensLike' f s a
maybe'evidence = Data.ProtoLens.Field.field @"maybe'evidence"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'lastBlockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastBlockId" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastBlockId = Data.ProtoLens.Field.field @"maybe'lastBlockId"
maybe'lastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastCommit" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastCommit = Data.ProtoLens.Field.field @"maybe'lastCommit"
maybe'time ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'time" a) =>
  Lens.Family2.LensLike' f s a
maybe'time = Data.ProtoLens.Field.field @"maybe'time"
maybe'version ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'version" a) =>
  Lens.Family2.LensLike' f s a
maybe'version = Data.ProtoLens.Field.field @"maybe'version"
nextValidatorsHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nextValidatorsHash" a) =>
  Lens.Family2.LensLike' f s a
nextValidatorsHash
  = Data.ProtoLens.Field.field @"nextValidatorsHash"
proposerAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposerAddress" a) =>
  Lens.Family2.LensLike' f s a
proposerAddress = Data.ProtoLens.Field.field @"proposerAddress"
time ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "time" a) =>
  Lens.Family2.LensLike' f s a
time = Data.ProtoLens.Field.field @"time"
validatorsHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorsHash" a) =>
  Lens.Family2.LensLike' f s a
validatorsHash = Data.ProtoLens.Field.field @"validatorsHash"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"