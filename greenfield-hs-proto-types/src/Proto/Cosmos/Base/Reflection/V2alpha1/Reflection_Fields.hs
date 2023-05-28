{- This file was auto-generated from cosmos/base/reflection/v2alpha1/reflection.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields where
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
import qualified Proto.Google.Api.Annotations
authn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "authn" a) =>
  Lens.Family2.LensLike' f s a
authn = Data.ProtoLens.Field.field @"authn"
authnInfoProviderMethodFullname ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authnInfoProviderMethodFullname" a) =>
  Lens.Family2.LensLike' f s a
authnInfoProviderMethodFullname
  = Data.ProtoLens.Field.field @"authnInfoProviderMethodFullname"
bech32AccountAddressPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bech32AccountAddressPrefix" a) =>
  Lens.Family2.LensLike' f s a
bech32AccountAddressPrefix
  = Data.ProtoLens.Field.field @"bech32AccountAddressPrefix"
chain ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chain" a) =>
  Lens.Family2.LensLike' f s a
chain = Data.ProtoLens.Field.field @"chain"
codec ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "codec" a) =>
  Lens.Family2.LensLike' f s a
codec = Data.ProtoLens.Field.field @"codec"
config ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config" a) =>
  Lens.Family2.LensLike' f s a
config = Data.ProtoLens.Field.field @"config"
configuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configuration" a) =>
  Lens.Family2.LensLike' f s a
configuration = Data.ProtoLens.Field.field @"configuration"
fieldDescriptorNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fieldDescriptorNames" a) =>
  Lens.Family2.LensLike' f s a
fieldDescriptorNames
  = Data.ProtoLens.Field.field @"fieldDescriptorNames"
fullQueryPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fullQueryPath" a) =>
  Lens.Family2.LensLike' f s a
fullQueryPath = Data.ProtoLens.Field.field @"fullQueryPath"
fullname ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fullname" a) =>
  Lens.Family2.LensLike' f s a
fullname = Data.ProtoLens.Field.field @"fullname"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
interfaceAcceptingMessages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interfaceAcceptingMessages" a) =>
  Lens.Family2.LensLike' f s a
interfaceAcceptingMessages
  = Data.ProtoLens.Field.field @"interfaceAcceptingMessages"
interfaceImplementers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interfaceImplementers" a) =>
  Lens.Family2.LensLike' f s a
interfaceImplementers
  = Data.ProtoLens.Field.field @"interfaceImplementers"
interfaces ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interfaces" a) =>
  Lens.Family2.LensLike' f s a
interfaces = Data.ProtoLens.Field.field @"interfaces"
isModule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isModule" a) =>
  Lens.Family2.LensLike' f s a
isModule = Data.ProtoLens.Field.field @"isModule"
maybe'authn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authn" a) =>
  Lens.Family2.LensLike' f s a
maybe'authn = Data.ProtoLens.Field.field @"maybe'authn"
maybe'chain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chain" a) =>
  Lens.Family2.LensLike' f s a
maybe'chain = Data.ProtoLens.Field.field @"maybe'chain"
maybe'codec ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'codec" a) =>
  Lens.Family2.LensLike' f s a
maybe'codec = Data.ProtoLens.Field.field @"maybe'codec"
maybe'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config" a) =>
  Lens.Family2.LensLike' f s a
maybe'config = Data.ProtoLens.Field.field @"maybe'config"
maybe'configuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'configuration
  = Data.ProtoLens.Field.field @"maybe'configuration"
maybe'queries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queries" a) =>
  Lens.Family2.LensLike' f s a
maybe'queries = Data.ProtoLens.Field.field @"maybe'queries"
maybe'queryServices ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queryServices" a) =>
  Lens.Family2.LensLike' f s a
maybe'queryServices
  = Data.ProtoLens.Field.field @"maybe'queryServices"
maybe'tx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tx" a) =>
  Lens.Family2.LensLike' f s a
maybe'tx = Data.ProtoLens.Field.field @"maybe'tx"
methods ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "methods" a) =>
  Lens.Family2.LensLike' f s a
methods = Data.ProtoLens.Field.field @"methods"
msgTypeUrl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "msgTypeUrl" a) =>
  Lens.Family2.LensLike' f s a
msgTypeUrl = Data.ProtoLens.Field.field @"msgTypeUrl"
msgs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "msgs" a) =>
  Lens.Family2.LensLike' f s a
msgs = Data.ProtoLens.Field.field @"msgs"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
number ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "number" a) =>
  Lens.Family2.LensLike' f s a
number = Data.ProtoLens.Field.field @"number"
queries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "queries" a) =>
  Lens.Family2.LensLike' f s a
queries = Data.ProtoLens.Field.field @"queries"
queryServices ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queryServices" a) =>
  Lens.Family2.LensLike' f s a
queryServices = Data.ProtoLens.Field.field @"queryServices"
signModes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signModes" a) =>
  Lens.Family2.LensLike' f s a
signModes = Data.ProtoLens.Field.field @"signModes"
tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
  Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
typeUrl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "typeUrl" a) =>
  Lens.Family2.LensLike' f s a
typeUrl = Data.ProtoLens.Field.field @"typeUrl"
vec'fieldDescriptorNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fieldDescriptorNames" a) =>
  Lens.Family2.LensLike' f s a
vec'fieldDescriptorNames
  = Data.ProtoLens.Field.field @"vec'fieldDescriptorNames"
vec'interfaceAcceptingMessages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'interfaceAcceptingMessages" a) =>
  Lens.Family2.LensLike' f s a
vec'interfaceAcceptingMessages
  = Data.ProtoLens.Field.field @"vec'interfaceAcceptingMessages"
vec'interfaceImplementers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'interfaceImplementers" a) =>
  Lens.Family2.LensLike' f s a
vec'interfaceImplementers
  = Data.ProtoLens.Field.field @"vec'interfaceImplementers"
vec'interfaces ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'interfaces" a) =>
  Lens.Family2.LensLike' f s a
vec'interfaces = Data.ProtoLens.Field.field @"vec'interfaces"
vec'methods ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'methods" a) =>
  Lens.Family2.LensLike' f s a
vec'methods = Data.ProtoLens.Field.field @"vec'methods"
vec'msgs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'msgs" a) =>
  Lens.Family2.LensLike' f s a
vec'msgs = Data.ProtoLens.Field.field @"vec'msgs"
vec'queryServices ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'queryServices" a) =>
  Lens.Family2.LensLike' f s a
vec'queryServices = Data.ProtoLens.Field.field @"vec'queryServices"
vec'signModes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'signModes" a) =>
  Lens.Family2.LensLike' f s a
vec'signModes = Data.ProtoLens.Field.field @"vec'signModes"