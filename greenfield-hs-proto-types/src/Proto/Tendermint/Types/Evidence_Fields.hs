{- This file was auto-generated from tendermint/types/evidence.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Evidence_Fields where
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
import qualified Proto.Tendermint.Types.Types
import qualified Proto.Tendermint.Types.Validator
byzantineValidators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "byzantineValidators" a) =>
  Lens.Family2.LensLike' f s a
byzantineValidators
  = Data.ProtoLens.Field.field @"byzantineValidators"
commonHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonHeight" a) =>
  Lens.Family2.LensLike' f s a
commonHeight = Data.ProtoLens.Field.field @"commonHeight"
conflictingBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "conflictingBlock" a) =>
  Lens.Family2.LensLike' f s a
conflictingBlock = Data.ProtoLens.Field.field @"conflictingBlock"
duplicateVoteEvidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "duplicateVoteEvidence" a) =>
  Lens.Family2.LensLike' f s a
duplicateVoteEvidence
  = Data.ProtoLens.Field.field @"duplicateVoteEvidence"
evidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "evidence" a) =>
  Lens.Family2.LensLike' f s a
evidence = Data.ProtoLens.Field.field @"evidence"
lightClientAttackEvidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lightClientAttackEvidence" a) =>
  Lens.Family2.LensLike' f s a
lightClientAttackEvidence
  = Data.ProtoLens.Field.field @"lightClientAttackEvidence"
maybe'conflictingBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'conflictingBlock" a) =>
  Lens.Family2.LensLike' f s a
maybe'conflictingBlock
  = Data.ProtoLens.Field.field @"maybe'conflictingBlock"
maybe'duplicateVoteEvidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'duplicateVoteEvidence" a) =>
  Lens.Family2.LensLike' f s a
maybe'duplicateVoteEvidence
  = Data.ProtoLens.Field.field @"maybe'duplicateVoteEvidence"
maybe'lightClientAttackEvidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lightClientAttackEvidence" a) =>
  Lens.Family2.LensLike' f s a
maybe'lightClientAttackEvidence
  = Data.ProtoLens.Field.field @"maybe'lightClientAttackEvidence"
maybe'sum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sum" a) =>
  Lens.Family2.LensLike' f s a
maybe'sum = Data.ProtoLens.Field.field @"maybe'sum"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'voteA ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'voteA" a) =>
  Lens.Family2.LensLike' f s a
maybe'voteA = Data.ProtoLens.Field.field @"maybe'voteA"
maybe'voteB ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'voteB" a) =>
  Lens.Family2.LensLike' f s a
maybe'voteB = Data.ProtoLens.Field.field @"maybe'voteB"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
totalVotingPower ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalVotingPower" a) =>
  Lens.Family2.LensLike' f s a
totalVotingPower = Data.ProtoLens.Field.field @"totalVotingPower"
validatorPower ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validatorPower" a) =>
  Lens.Family2.LensLike' f s a
validatorPower = Data.ProtoLens.Field.field @"validatorPower"
vec'byzantineValidators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'byzantineValidators" a) =>
  Lens.Family2.LensLike' f s a
vec'byzantineValidators
  = Data.ProtoLens.Field.field @"vec'byzantineValidators"
vec'evidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'evidence" a) =>
  Lens.Family2.LensLike' f s a
vec'evidence = Data.ProtoLens.Field.field @"vec'evidence"
voteA ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "voteA" a) =>
  Lens.Family2.LensLike' f s a
voteA = Data.ProtoLens.Field.field @"voteA"
voteB ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "voteB" a) =>
  Lens.Family2.LensLike' f s a
voteB = Data.ProtoLens.Field.field @"voteB"