{- This file was auto-generated from cosmos/gov/v1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1.Genesis_Fields where
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
import qualified Proto.Cosmos.Gov.V1.Gov
constitution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "constitution" a) =>
  Lens.Family2.LensLike' f s a
constitution = Data.ProtoLens.Field.field @"constitution"
depositParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "depositParams" a) =>
  Lens.Family2.LensLike' f s a
depositParams = Data.ProtoLens.Field.field @"depositParams"
deposits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deposits" a) =>
  Lens.Family2.LensLike' f s a
deposits = Data.ProtoLens.Field.field @"deposits"
maybe'depositParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'depositParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'depositParams
  = Data.ProtoLens.Field.field @"maybe'depositParams"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
maybe'tallyParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tallyParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'tallyParams = Data.ProtoLens.Field.field @"maybe'tallyParams"
maybe'votingParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'votingParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'votingParams
  = Data.ProtoLens.Field.field @"maybe'votingParams"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
proposals ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposals" a) =>
  Lens.Family2.LensLike' f s a
proposals = Data.ProtoLens.Field.field @"proposals"
startingProposalId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startingProposalId" a) =>
  Lens.Family2.LensLike' f s a
startingProposalId
  = Data.ProtoLens.Field.field @"startingProposalId"
tallyParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tallyParams" a) =>
  Lens.Family2.LensLike' f s a
tallyParams = Data.ProtoLens.Field.field @"tallyParams"
vec'deposits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'deposits" a) =>
  Lens.Family2.LensLike' f s a
vec'deposits = Data.ProtoLens.Field.field @"vec'deposits"
vec'proposals ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'proposals" a) =>
  Lens.Family2.LensLike' f s a
vec'proposals = Data.ProtoLens.Field.field @"vec'proposals"
vec'votes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'votes" a) =>
  Lens.Family2.LensLike' f s a
vec'votes = Data.ProtoLens.Field.field @"vec'votes"
votes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "votes" a) =>
  Lens.Family2.LensLike' f s a
votes = Data.ProtoLens.Field.field @"votes"
votingParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingParams" a) =>
  Lens.Family2.LensLike' f s a
votingParams = Data.ProtoLens.Field.field @"votingParams"