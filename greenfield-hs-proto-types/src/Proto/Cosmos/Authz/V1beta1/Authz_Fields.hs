{- This file was auto-generated from cosmos/authz/v1beta1/authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Authz.V1beta1.Authz_Fields where
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
authorization ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authorization" a) =>
  Lens.Family2.LensLike' f s a
authorization = Data.ProtoLens.Field.field @"authorization"
expiration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expiration" a) =>
  Lens.Family2.LensLike' f s a
expiration = Data.ProtoLens.Field.field @"expiration"
grantee ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "grantee" a) =>
  Lens.Family2.LensLike' f s a
grantee = Data.ProtoLens.Field.field @"grantee"
granter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "granter" a) =>
  Lens.Family2.LensLike' f s a
granter = Data.ProtoLens.Field.field @"granter"
maybe'authorization ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authorization" a) =>
  Lens.Family2.LensLike' f s a
maybe'authorization
  = Data.ProtoLens.Field.field @"maybe'authorization"
maybe'expiration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expiration" a) =>
  Lens.Family2.LensLike' f s a
maybe'expiration = Data.ProtoLens.Field.field @"maybe'expiration"
msg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "msg" a) =>
  Lens.Family2.LensLike' f s a
msg = Data.ProtoLens.Field.field @"msg"
msgTypeUrls ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "msgTypeUrls" a) =>
  Lens.Family2.LensLike' f s a
msgTypeUrls = Data.ProtoLens.Field.field @"msgTypeUrls"
vec'msgTypeUrls ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'msgTypeUrls" a) =>
  Lens.Family2.LensLike' f s a
vec'msgTypeUrls = Data.ProtoLens.Field.field @"vec'msgTypeUrls"