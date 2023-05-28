{- This file was auto-generated from tendermint/abci/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Abci.Types_Fields where
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
import qualified Proto.Tendermint.Crypto.Keys
import qualified Proto.Tendermint.Crypto.Proof
import qualified Proto.Tendermint.Types.Params
import qualified Proto.Tendermint.Types.Validator
abciVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abciVersion" a) =>
  Lens.Family2.LensLike' f s a
abciVersion = Data.ProtoLens.Field.field @"abciVersion"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
appHash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appHash" a) =>
  Lens.Family2.LensLike' f s a
appHash = Data.ProtoLens.Field.field @"appHash"
appStateBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "appStateBytes" a) =>
  Lens.Family2.LensLike' f s a
appStateBytes = Data.ProtoLens.Field.field @"appStateBytes"
appVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "appVersion" a) =>
  Lens.Family2.LensLike' f s a
appVersion = Data.ProtoLens.Field.field @"appVersion"
applySnapshotChunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "applySnapshotChunk" a) =>
  Lens.Family2.LensLike' f s a
applySnapshotChunk
  = Data.ProtoLens.Field.field @"applySnapshotChunk"
attributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attributes" a) =>
  Lens.Family2.LensLike' f s a
attributes = Data.ProtoLens.Field.field @"attributes"
blockIdFlag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockIdFlag" a) =>
  Lens.Family2.LensLike' f s a
blockIdFlag = Data.ProtoLens.Field.field @"blockIdFlag"
blockVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockVersion" a) =>
  Lens.Family2.LensLike' f s a
blockVersion = Data.ProtoLens.Field.field @"blockVersion"
chainId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chainId" a) =>
  Lens.Family2.LensLike' f s a
chainId = Data.ProtoLens.Field.field @"chainId"
checkTx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "checkTx" a) =>
  Lens.Family2.LensLike' f s a
checkTx = Data.ProtoLens.Field.field @"checkTx"
chunk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chunk" a) =>
  Lens.Family2.LensLike' f s a
chunk = Data.ProtoLens.Field.field @"chunk"
chunks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chunks" a) =>
  Lens.Family2.LensLike' f s a
chunks = Data.ProtoLens.Field.field @"chunks"
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
commit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "commit" a) =>
  Lens.Family2.LensLike' f s a
commit = Data.ProtoLens.Field.field @"commit"
consensusParamUpdates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consensusParamUpdates" a) =>
  Lens.Family2.LensLike' f s a
consensusParamUpdates
  = Data.ProtoLens.Field.field @"consensusParamUpdates"
consensusParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consensusParams" a) =>
  Lens.Family2.LensLike' f s a
consensusParams = Data.ProtoLens.Field.field @"consensusParams"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
decidedLastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "decidedLastCommit" a) =>
  Lens.Family2.LensLike' f s a
decidedLastCommit = Data.ProtoLens.Field.field @"decidedLastCommit"
echo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "echo" a) =>
  Lens.Family2.LensLike' f s a
echo = Data.ProtoLens.Field.field @"echo"
error ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "error" a) =>
  Lens.Family2.LensLike' f s a
error = Data.ProtoLens.Field.field @"error"
events ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "events" a) =>
  Lens.Family2.LensLike' f s a
events = Data.ProtoLens.Field.field @"events"
exception ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exception" a) =>
  Lens.Family2.LensLike' f s a
exception = Data.ProtoLens.Field.field @"exception"
extendVote ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extendVote" a) =>
  Lens.Family2.LensLike' f s a
extendVote = Data.ProtoLens.Field.field @"extendVote"
extensionSignature ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extensionSignature" a) =>
  Lens.Family2.LensLike' f s a
extensionSignature
  = Data.ProtoLens.Field.field @"extensionSignature"
finalizeBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "finalizeBlock" a) =>
  Lens.Family2.LensLike' f s a
finalizeBlock = Data.ProtoLens.Field.field @"finalizeBlock"
flush ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flush" a) =>
  Lens.Family2.LensLike' f s a
flush = Data.ProtoLens.Field.field @"flush"
format ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "format" a) =>
  Lens.Family2.LensLike' f s a
format = Data.ProtoLens.Field.field @"format"
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
initChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initChain" a) =>
  Lens.Family2.LensLike' f s a
initChain = Data.ProtoLens.Field.field @"initChain"
initialHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialHeight" a) =>
  Lens.Family2.LensLike' f s a
initialHeight = Data.ProtoLens.Field.field @"initialHeight"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
lastBlockAppHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastBlockAppHash" a) =>
  Lens.Family2.LensLike' f s a
lastBlockAppHash = Data.ProtoLens.Field.field @"lastBlockAppHash"
lastBlockHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastBlockHeight" a) =>
  Lens.Family2.LensLike' f s a
lastBlockHeight = Data.ProtoLens.Field.field @"lastBlockHeight"
listSnapshots ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listSnapshots" a) =>
  Lens.Family2.LensLike' f s a
listSnapshots = Data.ProtoLens.Field.field @"listSnapshots"
loadSnapshotChunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loadSnapshotChunk" a) =>
  Lens.Family2.LensLike' f s a
loadSnapshotChunk = Data.ProtoLens.Field.field @"loadSnapshotChunk"
localLastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localLastCommit" a) =>
  Lens.Family2.LensLike' f s a
localLastCommit = Data.ProtoLens.Field.field @"localLastCommit"
log ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "log" a) =>
  Lens.Family2.LensLike' f s a
log = Data.ProtoLens.Field.field @"log"
maxTxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxTxBytes" a) =>
  Lens.Family2.LensLike' f s a
maxTxBytes = Data.ProtoLens.Field.field @"maxTxBytes"
maybe'applySnapshotChunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'applySnapshotChunk" a) =>
  Lens.Family2.LensLike' f s a
maybe'applySnapshotChunk
  = Data.ProtoLens.Field.field @"maybe'applySnapshotChunk"
maybe'checkTx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'checkTx" a) =>
  Lens.Family2.LensLike' f s a
maybe'checkTx = Data.ProtoLens.Field.field @"maybe'checkTx"
maybe'commit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commit" a) =>
  Lens.Family2.LensLike' f s a
maybe'commit = Data.ProtoLens.Field.field @"maybe'commit"
maybe'consensusParamUpdates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'consensusParamUpdates" a) =>
  Lens.Family2.LensLike' f s a
maybe'consensusParamUpdates
  = Data.ProtoLens.Field.field @"maybe'consensusParamUpdates"
maybe'consensusParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'consensusParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'consensusParams
  = Data.ProtoLens.Field.field @"maybe'consensusParams"
maybe'decidedLastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'decidedLastCommit" a) =>
  Lens.Family2.LensLike' f s a
maybe'decidedLastCommit
  = Data.ProtoLens.Field.field @"maybe'decidedLastCommit"
maybe'echo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'echo" a) =>
  Lens.Family2.LensLike' f s a
maybe'echo = Data.ProtoLens.Field.field @"maybe'echo"
maybe'exception ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exception" a) =>
  Lens.Family2.LensLike' f s a
maybe'exception = Data.ProtoLens.Field.field @"maybe'exception"
maybe'extendVote ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extendVote" a) =>
  Lens.Family2.LensLike' f s a
maybe'extendVote = Data.ProtoLens.Field.field @"maybe'extendVote"
maybe'finalizeBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'finalizeBlock" a) =>
  Lens.Family2.LensLike' f s a
maybe'finalizeBlock
  = Data.ProtoLens.Field.field @"maybe'finalizeBlock"
maybe'flush ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flush" a) =>
  Lens.Family2.LensLike' f s a
maybe'flush = Data.ProtoLens.Field.field @"maybe'flush"
maybe'info ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'info" a) =>
  Lens.Family2.LensLike' f s a
maybe'info = Data.ProtoLens.Field.field @"maybe'info"
maybe'initChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initChain" a) =>
  Lens.Family2.LensLike' f s a
maybe'initChain = Data.ProtoLens.Field.field @"maybe'initChain"
maybe'listSnapshots ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listSnapshots" a) =>
  Lens.Family2.LensLike' f s a
maybe'listSnapshots
  = Data.ProtoLens.Field.field @"maybe'listSnapshots"
maybe'loadSnapshotChunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loadSnapshotChunk" a) =>
  Lens.Family2.LensLike' f s a
maybe'loadSnapshotChunk
  = Data.ProtoLens.Field.field @"maybe'loadSnapshotChunk"
maybe'localLastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localLastCommit" a) =>
  Lens.Family2.LensLike' f s a
maybe'localLastCommit
  = Data.ProtoLens.Field.field @"maybe'localLastCommit"
maybe'offerSnapshot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'offerSnapshot" a) =>
  Lens.Family2.LensLike' f s a
maybe'offerSnapshot
  = Data.ProtoLens.Field.field @"maybe'offerSnapshot"
maybe'prepareProposal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prepareProposal" a) =>
  Lens.Family2.LensLike' f s a
maybe'prepareProposal
  = Data.ProtoLens.Field.field @"maybe'prepareProposal"
maybe'processProposal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processProposal" a) =>
  Lens.Family2.LensLike' f s a
maybe'processProposal
  = Data.ProtoLens.Field.field @"maybe'processProposal"
maybe'proofOps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proofOps" a) =>
  Lens.Family2.LensLike' f s a
maybe'proofOps = Data.ProtoLens.Field.field @"maybe'proofOps"
maybe'proposedLastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proposedLastCommit" a) =>
  Lens.Family2.LensLike' f s a
maybe'proposedLastCommit
  = Data.ProtoLens.Field.field @"maybe'proposedLastCommit"
maybe'pubKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pubKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'pubKey = Data.ProtoLens.Field.field @"maybe'pubKey"
maybe'query ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'query" a) =>
  Lens.Family2.LensLike' f s a
maybe'query = Data.ProtoLens.Field.field @"maybe'query"
maybe'result ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'result" a) =>
  Lens.Family2.LensLike' f s a
maybe'result = Data.ProtoLens.Field.field @"maybe'result"
maybe'snapshot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'snapshot" a) =>
  Lens.Family2.LensLike' f s a
maybe'snapshot = Data.ProtoLens.Field.field @"maybe'snapshot"
maybe'time ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'time" a) =>
  Lens.Family2.LensLike' f s a
maybe'time = Data.ProtoLens.Field.field @"maybe'time"
maybe'validator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validator" a) =>
  Lens.Family2.LensLike' f s a
maybe'validator = Data.ProtoLens.Field.field @"maybe'validator"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'verifyVoteExtension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'verifyVoteExtension" a) =>
  Lens.Family2.LensLike' f s a
maybe'verifyVoteExtension
  = Data.ProtoLens.Field.field @"maybe'verifyVoteExtension"
message ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "message" a) =>
  Lens.Family2.LensLike' f s a
message = Data.ProtoLens.Field.field @"message"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
misbehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "misbehavior" a) =>
  Lens.Family2.LensLike' f s a
misbehavior = Data.ProtoLens.Field.field @"misbehavior"
nextValidatorsHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nextValidatorsHash" a) =>
  Lens.Family2.LensLike' f s a
nextValidatorsHash
  = Data.ProtoLens.Field.field @"nextValidatorsHash"
offerSnapshot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "offerSnapshot" a) =>
  Lens.Family2.LensLike' f s a
offerSnapshot = Data.ProtoLens.Field.field @"offerSnapshot"
p2pVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "p2pVersion" a) =>
  Lens.Family2.LensLike' f s a
p2pVersion = Data.ProtoLens.Field.field @"p2pVersion"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
power ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "power" a) =>
  Lens.Family2.LensLike' f s a
power = Data.ProtoLens.Field.field @"power"
prepareProposal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prepareProposal" a) =>
  Lens.Family2.LensLike' f s a
prepareProposal = Data.ProtoLens.Field.field @"prepareProposal"
processProposal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processProposal" a) =>
  Lens.Family2.LensLike' f s a
processProposal = Data.ProtoLens.Field.field @"processProposal"
proofOps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proofOps" a) =>
  Lens.Family2.LensLike' f s a
proofOps = Data.ProtoLens.Field.field @"proofOps"
proposedLastCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposedLastCommit" a) =>
  Lens.Family2.LensLike' f s a
proposedLastCommit
  = Data.ProtoLens.Field.field @"proposedLastCommit"
proposerAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposerAddress" a) =>
  Lens.Family2.LensLike' f s a
proposerAddress = Data.ProtoLens.Field.field @"proposerAddress"
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
query ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "query" a) =>
  Lens.Family2.LensLike' f s a
query = Data.ProtoLens.Field.field @"query"
refetchChunks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "refetchChunks" a) =>
  Lens.Family2.LensLike' f s a
refetchChunks = Data.ProtoLens.Field.field @"refetchChunks"
rejectSenders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectSenders" a) =>
  Lens.Family2.LensLike' f s a
rejectSenders = Data.ProtoLens.Field.field @"rejectSenders"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
retainHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retainHeight" a) =>
  Lens.Family2.LensLike' f s a
retainHeight = Data.ProtoLens.Field.field @"retainHeight"
round ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "round" a) =>
  Lens.Family2.LensLike' f s a
round = Data.ProtoLens.Field.field @"round"
sender ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sender" a) =>
  Lens.Family2.LensLike' f s a
sender = Data.ProtoLens.Field.field @"sender"
snapshot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "snapshot" a) =>
  Lens.Family2.LensLike' f s a
snapshot = Data.ProtoLens.Field.field @"snapshot"
snapshots ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "snapshots" a) =>
  Lens.Family2.LensLike' f s a
snapshots = Data.ProtoLens.Field.field @"snapshots"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
time ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "time" a) =>
  Lens.Family2.LensLike' f s a
time = Data.ProtoLens.Field.field @"time"
totalVotingPower ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalVotingPower" a) =>
  Lens.Family2.LensLike' f s a
totalVotingPower = Data.ProtoLens.Field.field @"totalVotingPower"
tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
  Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
txResults ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "txResults" a) =>
  Lens.Family2.LensLike' f s a
txResults = Data.ProtoLens.Field.field @"txResults"
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
validator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validator" a) =>
  Lens.Family2.LensLike' f s a
validator = Data.ProtoLens.Field.field @"validator"
validatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorAddress" a) =>
  Lens.Family2.LensLike' f s a
validatorAddress = Data.ProtoLens.Field.field @"validatorAddress"
validatorUpdates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorUpdates" a) =>
  Lens.Family2.LensLike' f s a
validatorUpdates = Data.ProtoLens.Field.field @"validatorUpdates"
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
vec'attributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'attributes" a) =>
  Lens.Family2.LensLike' f s a
vec'attributes = Data.ProtoLens.Field.field @"vec'attributes"
vec'events ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'events" a) =>
  Lens.Family2.LensLike' f s a
vec'events = Data.ProtoLens.Field.field @"vec'events"
vec'misbehavior ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'misbehavior" a) =>
  Lens.Family2.LensLike' f s a
vec'misbehavior = Data.ProtoLens.Field.field @"vec'misbehavior"
vec'refetchChunks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'refetchChunks" a) =>
  Lens.Family2.LensLike' f s a
vec'refetchChunks = Data.ProtoLens.Field.field @"vec'refetchChunks"
vec'rejectSenders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rejectSenders" a) =>
  Lens.Family2.LensLike' f s a
vec'rejectSenders = Data.ProtoLens.Field.field @"vec'rejectSenders"
vec'snapshots ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'snapshots" a) =>
  Lens.Family2.LensLike' f s a
vec'snapshots = Data.ProtoLens.Field.field @"vec'snapshots"
vec'txResults ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'txResults" a) =>
  Lens.Family2.LensLike' f s a
vec'txResults = Data.ProtoLens.Field.field @"vec'txResults"
vec'txs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'txs" a) =>
  Lens.Family2.LensLike' f s a
vec'txs = Data.ProtoLens.Field.field @"vec'txs"
vec'validatorUpdates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validatorUpdates" a) =>
  Lens.Family2.LensLike' f s a
vec'validatorUpdates
  = Data.ProtoLens.Field.field @"vec'validatorUpdates"
vec'validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validators" a) =>
  Lens.Family2.LensLike' f s a
vec'validators = Data.ProtoLens.Field.field @"vec'validators"
vec'votes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'votes" a) =>
  Lens.Family2.LensLike' f s a
vec'votes = Data.ProtoLens.Field.field @"vec'votes"
verifyVoteExtension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "verifyVoteExtension" a) =>
  Lens.Family2.LensLike' f s a
verifyVoteExtension
  = Data.ProtoLens.Field.field @"verifyVoteExtension"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
voteExtension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "voteExtension" a) =>
  Lens.Family2.LensLike' f s a
voteExtension = Data.ProtoLens.Field.field @"voteExtension"
votes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "votes" a) =>
  Lens.Family2.LensLike' f s a
votes = Data.ProtoLens.Field.field @"votes"