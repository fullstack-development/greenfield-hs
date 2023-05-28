{- This file was auto-generated from cosmos/group/v1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.V1.Query_Fields where
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
import qualified Proto.Cosmos.Group.V1.Types
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
admin ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "admin" a) =>
  Lens.Family2.LensLike' f s a
admin = Data.ProtoLens.Field.field @"admin"
groupId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "groupId" a) =>
  Lens.Family2.LensLike' f s a
groupId = Data.ProtoLens.Field.field @"groupId"
groupPolicies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "groupPolicies" a) =>
  Lens.Family2.LensLike' f s a
groupPolicies = Data.ProtoLens.Field.field @"groupPolicies"
groups ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "groups" a) =>
  Lens.Family2.LensLike' f s a
groups = Data.ProtoLens.Field.field @"groups"
info ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "info" a) =>
  Lens.Family2.LensLike' f s a
info = Data.ProtoLens.Field.field @"info"
maybe'info ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'info" a) =>
  Lens.Family2.LensLike' f s a
maybe'info = Data.ProtoLens.Field.field @"maybe'info"
maybe'pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagination" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagination = Data.ProtoLens.Field.field @"maybe'pagination"
maybe'proposal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proposal" a) =>
  Lens.Family2.LensLike' f s a
maybe'proposal = Data.ProtoLens.Field.field @"maybe'proposal"
maybe'tally ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tally" a) =>
  Lens.Family2.LensLike' f s a
maybe'tally = Data.ProtoLens.Field.field @"maybe'tally"
maybe'vote ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vote" a) =>
  Lens.Family2.LensLike' f s a
maybe'vote = Data.ProtoLens.Field.field @"maybe'vote"
members ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "members" a) =>
  Lens.Family2.LensLike' f s a
members = Data.ProtoLens.Field.field @"members"
pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagination" a) =>
  Lens.Family2.LensLike' f s a
pagination = Data.ProtoLens.Field.field @"pagination"
proposal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposal" a) =>
  Lens.Family2.LensLike' f s a
proposal = Data.ProtoLens.Field.field @"proposal"
proposalId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposalId" a) =>
  Lens.Family2.LensLike' f s a
proposalId = Data.ProtoLens.Field.field @"proposalId"
proposals ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposals" a) =>
  Lens.Family2.LensLike' f s a
proposals = Data.ProtoLens.Field.field @"proposals"
tally ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tally" a) =>
  Lens.Family2.LensLike' f s a
tally = Data.ProtoLens.Field.field @"tally"
vec'groupPolicies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'groupPolicies" a) =>
  Lens.Family2.LensLike' f s a
vec'groupPolicies = Data.ProtoLens.Field.field @"vec'groupPolicies"
vec'groups ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'groups" a) =>
  Lens.Family2.LensLike' f s a
vec'groups = Data.ProtoLens.Field.field @"vec'groups"
vec'members ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'members" a) =>
  Lens.Family2.LensLike' f s a
vec'members = Data.ProtoLens.Field.field @"vec'members"
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
vote ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vote" a) =>
  Lens.Family2.LensLike' f s a
vote = Data.ProtoLens.Field.field @"vote"
voter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "voter" a) =>
  Lens.Family2.LensLike' f s a
voter = Data.ProtoLens.Field.field @"voter"
votes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "votes" a) =>
  Lens.Family2.LensLike' f s a
votes = Data.ProtoLens.Field.field @"votes"