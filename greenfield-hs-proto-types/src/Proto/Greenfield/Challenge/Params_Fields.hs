{- This file was auto-generated from greenfield/challenge/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Challenge.Params_Fields where
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
attestationInturnInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attestationInturnInterval" a) =>
  Lens.Family2.LensLike' f s a
attestationInturnInterval
  = Data.ProtoLens.Field.field @"attestationInturnInterval"
attestationKeptCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attestationKeptCount" a) =>
  Lens.Family2.LensLike' f s a
attestationKeptCount
  = Data.ProtoLens.Field.field @"attestationKeptCount"
challengeCountPerBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "challengeCountPerBlock" a) =>
  Lens.Family2.LensLike' f s a
challengeCountPerBlock
  = Data.ProtoLens.Field.field @"challengeCountPerBlock"
challengeKeepAlivePeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "challengeKeepAlivePeriod" a) =>
  Lens.Family2.LensLike' f s a
challengeKeepAlivePeriod
  = Data.ProtoLens.Field.field @"challengeKeepAlivePeriod"
heartbeatInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heartbeatInterval" a) =>
  Lens.Family2.LensLike' f s a
heartbeatInterval = Data.ProtoLens.Field.field @"heartbeatInterval"
rewardSubmitterRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rewardSubmitterRatio" a) =>
  Lens.Family2.LensLike' f s a
rewardSubmitterRatio
  = Data.ProtoLens.Field.field @"rewardSubmitterRatio"
rewardSubmitterThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rewardSubmitterThreshold" a) =>
  Lens.Family2.LensLike' f s a
rewardSubmitterThreshold
  = Data.ProtoLens.Field.field @"rewardSubmitterThreshold"
rewardValidatorRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rewardValidatorRatio" a) =>
  Lens.Family2.LensLike' f s a
rewardValidatorRatio
  = Data.ProtoLens.Field.field @"rewardValidatorRatio"
slashAmountMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "slashAmountMax" a) =>
  Lens.Family2.LensLike' f s a
slashAmountMax = Data.ProtoLens.Field.field @"slashAmountMax"
slashAmountMin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "slashAmountMin" a) =>
  Lens.Family2.LensLike' f s a
slashAmountMin = Data.ProtoLens.Field.field @"slashAmountMin"
slashAmountSizeRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "slashAmountSizeRate" a) =>
  Lens.Family2.LensLike' f s a
slashAmountSizeRate
  = Data.ProtoLens.Field.field @"slashAmountSizeRate"
slashCoolingOffPeriod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "slashCoolingOffPeriod" a) =>
  Lens.Family2.LensLike' f s a
slashCoolingOffPeriod
  = Data.ProtoLens.Field.field @"slashCoolingOffPeriod"