{- This file was auto-generated from tendermint/types/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Types_Fields where
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Tendermint.Crypto.Proof
import qualified Proto.Tendermint.Types.Validator
import qualified Proto.Tendermint.Version.Types
appHash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appHash" a) =>
  Lens.Family2.LensLike' f s a
appHash = Data.ProtoLens.Field.field @"appHash"
blockId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blockId" a) =>
  Lens.Family2.LensLike' f s a
blockId = Data.ProtoLens.Field.field @"blockId"
blockIdFlag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockIdFlag" a) =>
  Lens.Family2.LensLike' f s a
blockIdFlag = Data.ProtoLens.Field.field @"blockIdFlag"
blockSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockSize" a) =>
  Lens.Family2.LensLike' f s a
blockSize = Data.ProtoLens.Field.field @"blockSize"
bytes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bytes" a) =>
  Lens.Family2.LensLike' f s a
bytes = Data.ProtoLens.Field.field @"bytes"
chainId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chainId" a) =>
  Lens.Family2.LensLike' f s a
chainId = Data.ProtoLens.Field.field @"chainId"
commit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "commit" a) =>
  Lens.Family2.LensLike' f s a
commit = Data.ProtoLens.Field.field @"commit"
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
evidenceHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "evidenceHash" a) =>
  Lens.Family2.LensLike' f s a
evidenceHash = Data.ProtoLens.Field.field @"evidenceHash"
extendedSignatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extendedSignatures" a) =>
  Lens.Family2.LensLike' f s a
extendedSignatures
  = Data.ProtoLens.Field.field @"extendedSignatures"
extension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extension" a) =>
  Lens.Family2.LensLike' f s a
extension = Data.ProtoLens.Field.field @"extension"
extensionSignature ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extensionSignature" a) =>
  Lens.Family2.LensLike' f s a
extensionSignature
  = Data.ProtoLens.Field.field @"extensionSignature"
hash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hash" a) =>
  Lens.Family2.LensLike' f s a
hash = Data.ProtoLens.Field.field @"hash"
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
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
lastBlockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastBlockId" a) =>
  Lens.Family2.LensLike' f s a
lastBlockId = Data.ProtoLens.Field.field @"lastBlockId"
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
maybe'blockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockId" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockId = Data.ProtoLens.Field.field @"maybe'blockId"
maybe'commit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commit" a) =>
  Lens.Family2.LensLike' f s a
maybe'commit = Data.ProtoLens.Field.field @"maybe'commit"
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
maybe'partSetHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'partSetHeader" a) =>
  Lens.Family2.LensLike' f s a
maybe'partSetHeader
  = Data.ProtoLens.Field.field @"maybe'partSetHeader"
maybe'proof ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proof" a) =>
  Lens.Family2.LensLike' f s a
maybe'proof = Data.ProtoLens.Field.field @"maybe'proof"
maybe'signedHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signedHeader" a) =>
  Lens.Family2.LensLike' f s a
maybe'signedHeader
  = Data.ProtoLens.Field.field @"maybe'signedHeader"
maybe'time ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'time" a) =>
  Lens.Family2.LensLike' f s a
maybe'time = Data.ProtoLens.Field.field @"maybe'time"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'validatorSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validatorSet" a) =>
  Lens.Family2.LensLike' f s a
maybe'validatorSet
  = Data.ProtoLens.Field.field @"maybe'validatorSet"
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
numTxs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "numTxs" a) =>
  Lens.Family2.LensLike' f s a
numTxs = Data.ProtoLens.Field.field @"numTxs"
partSetHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "partSetHeader" a) =>
  Lens.Family2.LensLike' f s a
partSetHeader = Data.ProtoLens.Field.field @"partSetHeader"
polRound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "polRound" a) =>
  Lens.Family2.LensLike' f s a
polRound = Data.ProtoLens.Field.field @"polRound"
proof ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "proof" a) =>
  Lens.Family2.LensLike' f s a
proof = Data.ProtoLens.Field.field @"proof"
proposerAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposerAddress" a) =>
  Lens.Family2.LensLike' f s a
proposerAddress = Data.ProtoLens.Field.field @"proposerAddress"
rootHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rootHash" a) =>
  Lens.Family2.LensLike' f s a
rootHash = Data.ProtoLens.Field.field @"rootHash"
round ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "round" a) =>
  Lens.Family2.LensLike' f s a
round = Data.ProtoLens.Field.field @"round"
signature ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signature" a) =>
  Lens.Family2.LensLike' f s a
signature = Data.ProtoLens.Field.field @"signature"
signatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signatures" a) =>
  Lens.Family2.LensLike' f s a
signatures = Data.ProtoLens.Field.field @"signatures"
signedHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signedHeader" a) =>
  Lens.Family2.LensLike' f s a
signedHeader = Data.ProtoLens.Field.field @"signedHeader"
time ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "time" a) =>
  Lens.Family2.LensLike' f s a
time = Data.ProtoLens.Field.field @"time"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
total ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "total" a) =>
  Lens.Family2.LensLike' f s a
total = Data.ProtoLens.Field.field @"total"
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
validatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorAddress = Data.ProtoLens.Field.field @"validatorAddress"
validatorIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorIndex" a) =>
  Lens.Family2.LensLike' f s a
validatorIndex = Data.ProtoLens.Field.field @"validatorIndex"
validatorSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorSet" a) =>
  Lens.Family2.LensLike' f s a
validatorSet = Data.ProtoLens.Field.field @"validatorSet"
validatorsHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorsHash" a) =>
  Lens.Family2.LensLike' f s a
validatorsHash = Data.ProtoLens.Field.field @"validatorsHash"
vec'extendedSignatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extendedSignatures" a) =>
  Lens.Family2.LensLike' f s a
vec'extendedSignatures
  = Data.ProtoLens.Field.field @"vec'extendedSignatures"
vec'signatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'signatures" a) =>
  Lens.Family2.LensLike' f s a
vec'signatures = Data.ProtoLens.Field.field @"vec'signatures"
vec'txs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'txs" a) =>
  Lens.Family2.LensLike' f s a
vec'txs = Data.ProtoLens.Field.field @"vec'txs"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"