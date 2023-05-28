{- This file was auto-generated from cosmos/autocli/v1/options.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Autocli.V1.Options_Fields where
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
alias ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "alias" a) =>
  Lens.Family2.LensLike' f s a
alias = Data.ProtoLens.Field.field @"alias"
defaultValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultValue" a) =>
  Lens.Family2.LensLike' f s a
defaultValue = Data.ProtoLens.Field.field @"defaultValue"
deprecated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deprecated" a) =>
  Lens.Family2.LensLike' f s a
deprecated = Data.ProtoLens.Field.field @"deprecated"
example ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "example" a) =>
  Lens.Family2.LensLike' f s a
example = Data.ProtoLens.Field.field @"example"
flagOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flagOptions" a) =>
  Lens.Family2.LensLike' f s a
flagOptions = Data.ProtoLens.Field.field @"flagOptions"
hidden ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hidden" a) =>
  Lens.Family2.LensLike' f s a
hidden = Data.ProtoLens.Field.field @"hidden"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
long ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "long" a) =>
  Lens.Family2.LensLike' f s a
long = Data.ProtoLens.Field.field @"long"
maybe'query ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'query" a) =>
  Lens.Family2.LensLike' f s a
maybe'query = Data.ProtoLens.Field.field @"maybe'query"
maybe'tx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tx" a) =>
  Lens.Family2.LensLike' f s a
maybe'tx = Data.ProtoLens.Field.field @"maybe'tx"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
positionalArgs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "positionalArgs" a) =>
  Lens.Family2.LensLike' f s a
positionalArgs = Data.ProtoLens.Field.field @"positionalArgs"
protoField ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protoField" a) =>
  Lens.Family2.LensLike' f s a
protoField = Data.ProtoLens.Field.field @"protoField"
query ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "query" a) =>
  Lens.Family2.LensLike' f s a
query = Data.ProtoLens.Field.field @"query"
rpcCommandOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rpcCommandOptions" a) =>
  Lens.Family2.LensLike' f s a
rpcCommandOptions = Data.ProtoLens.Field.field @"rpcCommandOptions"
rpcMethod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rpcMethod" a) =>
  Lens.Family2.LensLike' f s a
rpcMethod = Data.ProtoLens.Field.field @"rpcMethod"
service ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "service" a) =>
  Lens.Family2.LensLike' f s a
service = Data.ProtoLens.Field.field @"service"
short ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "short" a) =>
  Lens.Family2.LensLike' f s a
short = Data.ProtoLens.Field.field @"short"
shorthand ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "shorthand" a) =>
  Lens.Family2.LensLike' f s a
shorthand = Data.ProtoLens.Field.field @"shorthand"
shorthandDeprecated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "shorthandDeprecated" a) =>
  Lens.Family2.LensLike' f s a
shorthandDeprecated
  = Data.ProtoLens.Field.field @"shorthandDeprecated"
skip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "skip" a) =>
  Lens.Family2.LensLike' f s a
skip = Data.ProtoLens.Field.field @"skip"
subCommands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "subCommands" a) =>
  Lens.Family2.LensLike' f s a
subCommands = Data.ProtoLens.Field.field @"subCommands"
suggestFor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suggestFor" a) =>
  Lens.Family2.LensLike' f s a
suggestFor = Data.ProtoLens.Field.field @"suggestFor"
tx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tx" a) =>
  Lens.Family2.LensLike' f s a
tx = Data.ProtoLens.Field.field @"tx"
usage ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "usage" a) =>
  Lens.Family2.LensLike' f s a
usage = Data.ProtoLens.Field.field @"usage"
use ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "use" a) =>
  Lens.Family2.LensLike' f s a
use = Data.ProtoLens.Field.field @"use"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
varargs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "varargs" a) =>
  Lens.Family2.LensLike' f s a
varargs = Data.ProtoLens.Field.field @"varargs"
vec'alias ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'alias" a) =>
  Lens.Family2.LensLike' f s a
vec'alias = Data.ProtoLens.Field.field @"vec'alias"
vec'positionalArgs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'positionalArgs" a) =>
  Lens.Family2.LensLike' f s a
vec'positionalArgs
  = Data.ProtoLens.Field.field @"vec'positionalArgs"
vec'rpcCommandOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rpcCommandOptions" a) =>
  Lens.Family2.LensLike' f s a
vec'rpcCommandOptions
  = Data.ProtoLens.Field.field @"vec'rpcCommandOptions"
vec'suggestFor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'suggestFor" a) =>
  Lens.Family2.LensLike' f s a
vec'suggestFor = Data.ProtoLens.Field.field @"vec'suggestFor"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"