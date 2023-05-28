{- This file was auto-generated from cosmos/gov/v1/gov.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1.Gov_Fields where
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
abstainCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abstainCount" a) =>
  Lens.Family2.LensLike' f s a
abstainCount = Data.ProtoLens.Field.field @"abstainCount"
amount ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amount" a) =>
  Lens.Family2.LensLike' f s a
amount = Data.ProtoLens.Field.field @"amount"
burnProposalDepositPrevote ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "burnProposalDepositPrevote" a) =>
  Lens.Family2.LensLike' f s a
burnProposalDepositPrevote
  = Data.ProtoLens.Field.field @"burnProposalDepositPrevote"
burnVoteQuorum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "burnVoteQuorum" a) =>
  Lens.Family2.LensLike' f s a
burnVoteQuorum = Data.ProtoLens.Field.field @"burnVoteQuorum"
burnVoteVeto ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "burnVoteVeto" a) =>
  Lens.Family2.LensLike' f s a
burnVoteVeto = Data.ProtoLens.Field.field @"burnVoteVeto"
depositEndTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "depositEndTime" a) =>
  Lens.Family2.LensLike' f s a
depositEndTime = Data.ProtoLens.Field.field @"depositEndTime"
depositor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "depositor" a) =>
  Lens.Family2.LensLike' f s a
depositor = Data.ProtoLens.Field.field @"depositor"
expedited ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expedited" a) =>
  Lens.Family2.LensLike' f s a
expedited = Data.ProtoLens.Field.field @"expedited"
expeditedMinDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expeditedMinDeposit" a) =>
  Lens.Family2.LensLike' f s a
expeditedMinDeposit
  = Data.ProtoLens.Field.field @"expeditedMinDeposit"
expeditedThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expeditedThreshold" a) =>
  Lens.Family2.LensLike' f s a
expeditedThreshold
  = Data.ProtoLens.Field.field @"expeditedThreshold"
expeditedVotingPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expeditedVotingPeriod" a) =>
  Lens.Family2.LensLike' f s a
expeditedVotingPeriod
  = Data.ProtoLens.Field.field @"expeditedVotingPeriod"
finalTallyResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "finalTallyResult" a) =>
  Lens.Family2.LensLike' f s a
finalTallyResult = Data.ProtoLens.Field.field @"finalTallyResult"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
maxDepositPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxDepositPeriod" a) =>
  Lens.Family2.LensLike' f s a
maxDepositPeriod = Data.ProtoLens.Field.field @"maxDepositPeriod"
maybe'depositEndTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'depositEndTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'depositEndTime
  = Data.ProtoLens.Field.field @"maybe'depositEndTime"
maybe'expeditedVotingPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expeditedVotingPeriod" a) =>
  Lens.Family2.LensLike' f s a
maybe'expeditedVotingPeriod
  = Data.ProtoLens.Field.field @"maybe'expeditedVotingPeriod"
maybe'finalTallyResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'finalTallyResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'finalTallyResult
  = Data.ProtoLens.Field.field @"maybe'finalTallyResult"
maybe'maxDepositPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxDepositPeriod" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxDepositPeriod
  = Data.ProtoLens.Field.field @"maybe'maxDepositPeriod"
maybe'submitTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'submitTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'submitTime = Data.ProtoLens.Field.field @"maybe'submitTime"
maybe'votingEndTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'votingEndTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'votingEndTime
  = Data.ProtoLens.Field.field @"maybe'votingEndTime"
maybe'votingPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'votingPeriod" a) =>
  Lens.Family2.LensLike' f s a
maybe'votingPeriod
  = Data.ProtoLens.Field.field @"maybe'votingPeriod"
maybe'votingStartTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'votingStartTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'votingStartTime
  = Data.ProtoLens.Field.field @"maybe'votingStartTime"
messages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messages" a) =>
  Lens.Family2.LensLike' f s a
messages = Data.ProtoLens.Field.field @"messages"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
minDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minDeposit" a) =>
  Lens.Family2.LensLike' f s a
minDeposit = Data.ProtoLens.Field.field @"minDeposit"
minInitialDepositRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minInitialDepositRatio" a) =>
  Lens.Family2.LensLike' f s a
minInitialDepositRatio
  = Data.ProtoLens.Field.field @"minInitialDepositRatio"
noCount ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "noCount" a) =>
  Lens.Family2.LensLike' f s a
noCount = Data.ProtoLens.Field.field @"noCount"
noWithVetoCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noWithVetoCount" a) =>
  Lens.Family2.LensLike' f s a
noWithVetoCount = Data.ProtoLens.Field.field @"noWithVetoCount"
option ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "option" a) =>
  Lens.Family2.LensLike' f s a
option = Data.ProtoLens.Field.field @"option"
options ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "options" a) =>
  Lens.Family2.LensLike' f s a
options = Data.ProtoLens.Field.field @"options"
proposalCancelDest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposalCancelDest" a) =>
  Lens.Family2.LensLike' f s a
proposalCancelDest
  = Data.ProtoLens.Field.field @"proposalCancelDest"
proposalCancelRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposalCancelRatio" a) =>
  Lens.Family2.LensLike' f s a
proposalCancelRatio
  = Data.ProtoLens.Field.field @"proposalCancelRatio"
proposalId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposalId" a) =>
  Lens.Family2.LensLike' f s a
proposalId = Data.ProtoLens.Field.field @"proposalId"
proposer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposer" a) =>
  Lens.Family2.LensLike' f s a
proposer = Data.ProtoLens.Field.field @"proposer"
quorum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "quorum" a) =>
  Lens.Family2.LensLike' f s a
quorum = Data.ProtoLens.Field.field @"quorum"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
submitTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "submitTime" a) =>
  Lens.Family2.LensLike' f s a
submitTime = Data.ProtoLens.Field.field @"submitTime"
summary ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "summary" a) =>
  Lens.Family2.LensLike' f s a
summary = Data.ProtoLens.Field.field @"summary"
threshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threshold" a) =>
  Lens.Family2.LensLike' f s a
threshold = Data.ProtoLens.Field.field @"threshold"
title ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "title" a) =>
  Lens.Family2.LensLike' f s a
title = Data.ProtoLens.Field.field @"title"
totalDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalDeposit" a) =>
  Lens.Family2.LensLike' f s a
totalDeposit = Data.ProtoLens.Field.field @"totalDeposit"
vec'amount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'amount" a) =>
  Lens.Family2.LensLike' f s a
vec'amount = Data.ProtoLens.Field.field @"vec'amount"
vec'expeditedMinDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'expeditedMinDeposit" a) =>
  Lens.Family2.LensLike' f s a
vec'expeditedMinDeposit
  = Data.ProtoLens.Field.field @"vec'expeditedMinDeposit"
vec'messages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'messages" a) =>
  Lens.Family2.LensLike' f s a
vec'messages = Data.ProtoLens.Field.field @"vec'messages"
vec'minDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'minDeposit" a) =>
  Lens.Family2.LensLike' f s a
vec'minDeposit = Data.ProtoLens.Field.field @"vec'minDeposit"
vec'options ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'options" a) =>
  Lens.Family2.LensLike' f s a
vec'options = Data.ProtoLens.Field.field @"vec'options"
vec'totalDeposit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'totalDeposit" a) =>
  Lens.Family2.LensLike' f s a
vec'totalDeposit = Data.ProtoLens.Field.field @"vec'totalDeposit"
vetoThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vetoThreshold" a) =>
  Lens.Family2.LensLike' f s a
vetoThreshold = Data.ProtoLens.Field.field @"vetoThreshold"
voter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "voter" a) =>
  Lens.Family2.LensLike' f s a
voter = Data.ProtoLens.Field.field @"voter"
votingEndTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingEndTime" a) =>
  Lens.Family2.LensLike' f s a
votingEndTime = Data.ProtoLens.Field.field @"votingEndTime"
votingPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingPeriod" a) =>
  Lens.Family2.LensLike' f s a
votingPeriod = Data.ProtoLens.Field.field @"votingPeriod"
votingStartTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingStartTime" a) =>
  Lens.Family2.LensLike' f s a
votingStartTime = Data.ProtoLens.Field.field @"votingStartTime"
weight ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "weight" a) =>
  Lens.Family2.LensLike' f s a
weight = Data.ProtoLens.Field.field @"weight"
yesCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "yesCount" a) =>
  Lens.Family2.LensLike' f s a
yesCount = Data.ProtoLens.Field.field @"yesCount"