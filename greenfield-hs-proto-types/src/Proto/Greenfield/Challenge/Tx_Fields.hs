{- This file was auto-generated from greenfield/challenge/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Challenge.Tx_Fields where
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Challenge.Params
import qualified Proto.Greenfield.Challenge.Types
authority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authority" a) =>
  Lens.Family2.LensLike' f s a
authority = Data.ProtoLens.Field.field @"authority"
bucketName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bucketName" a) =>
  Lens.Family2.LensLike' f s a
bucketName = Data.ProtoLens.Field.field @"bucketName"
challengeId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "challengeId" a) =>
  Lens.Family2.LensLike' f s a
challengeId = Data.ProtoLens.Field.field @"challengeId"
challenger ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "challenger" a) =>
  Lens.Family2.LensLike' f s a
challenger = Data.ProtoLens.Field.field @"challenger"
challengerAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "challengerAddress" a) =>
  Lens.Family2.LensLike' f s a
challengerAddress = Data.ProtoLens.Field.field @"challengerAddress"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
objectId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectId" a) =>
  Lens.Family2.LensLike' f s a
objectId = Data.ProtoLens.Field.field @"objectId"
objectName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "objectName" a) =>
  Lens.Family2.LensLike' f s a
objectName = Data.ProtoLens.Field.field @"objectName"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
randomIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "randomIndex" a) =>
  Lens.Family2.LensLike' f s a
randomIndex = Data.ProtoLens.Field.field @"randomIndex"
segmentIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "segmentIndex" a) =>
  Lens.Family2.LensLike' f s a
segmentIndex = Data.ProtoLens.Field.field @"segmentIndex"
spOperatorAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "spOperatorAddress" a) =>
  Lens.Family2.LensLike' f s a
spOperatorAddress = Data.ProtoLens.Field.field @"spOperatorAddress"
submitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "submitter" a) =>
  Lens.Family2.LensLike' f s a
submitter = Data.ProtoLens.Field.field @"submitter"
vec'voteValidatorSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'voteValidatorSet" a) =>
  Lens.Family2.LensLike' f s a
vec'voteValidatorSet
  = Data.ProtoLens.Field.field @"vec'voteValidatorSet"
voteAggSignature ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "voteAggSignature" a) =>
  Lens.Family2.LensLike' f s a
voteAggSignature = Data.ProtoLens.Field.field @"voteAggSignature"
voteResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "voteResult" a) =>
  Lens.Family2.LensLike' f s a
voteResult = Data.ProtoLens.Field.field @"voteResult"
voteValidatorSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "voteValidatorSet" a) =>
  Lens.Family2.LensLike' f s a
voteValidatorSet = Data.ProtoLens.Field.field @"voteValidatorSet"