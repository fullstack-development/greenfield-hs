{- This file was auto-generated from tendermint/types/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Params_Fields where
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
import qualified Proto.Google.Protobuf.Duration
abci ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "abci" a) =>
  Lens.Family2.LensLike' f s a
abci = Data.ProtoLens.Field.field @"abci"
app ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "app" a) =>
  Lens.Family2.LensLike' f s a
app = Data.ProtoLens.Field.field @"app"
block ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "block" a) =>
  Lens.Family2.LensLike' f s a
block = Data.ProtoLens.Field.field @"block"
blockMaxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockMaxBytes" a) =>
  Lens.Family2.LensLike' f s a
blockMaxBytes = Data.ProtoLens.Field.field @"blockMaxBytes"
blockMaxGas ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockMaxGas" a) =>
  Lens.Family2.LensLike' f s a
blockMaxGas = Data.ProtoLens.Field.field @"blockMaxGas"
evidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "evidence" a) =>
  Lens.Family2.LensLike' f s a
evidence = Data.ProtoLens.Field.field @"evidence"
maxAgeDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxAgeDuration" a) =>
  Lens.Family2.LensLike' f s a
maxAgeDuration = Data.ProtoLens.Field.field @"maxAgeDuration"
maxAgeNumBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxAgeNumBlocks" a) =>
  Lens.Family2.LensLike' f s a
maxAgeNumBlocks = Data.ProtoLens.Field.field @"maxAgeNumBlocks"
maxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBytes" a) =>
  Lens.Family2.LensLike' f s a
maxBytes = Data.ProtoLens.Field.field @"maxBytes"
maxGas ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maxGas" a) =>
  Lens.Family2.LensLike' f s a
maxGas = Data.ProtoLens.Field.field @"maxGas"
maybe'abci ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'abci" a) =>
  Lens.Family2.LensLike' f s a
maybe'abci = Data.ProtoLens.Field.field @"maybe'abci"
maybe'block ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'block" a) =>
  Lens.Family2.LensLike' f s a
maybe'block = Data.ProtoLens.Field.field @"maybe'block"
maybe'evidence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'evidence" a) =>
  Lens.Family2.LensLike' f s a
maybe'evidence = Data.ProtoLens.Field.field @"maybe'evidence"
maybe'maxAgeDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxAgeDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxAgeDuration
  = Data.ProtoLens.Field.field @"maybe'maxAgeDuration"
maybe'validator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validator" a) =>
  Lens.Family2.LensLike' f s a
maybe'validator = Data.ProtoLens.Field.field @"maybe'validator"
maybe'version ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'version" a) =>
  Lens.Family2.LensLike' f s a
maybe'version = Data.ProtoLens.Field.field @"maybe'version"
pubKeyTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pubKeyTypes" a) =>
  Lens.Family2.LensLike' f s a
pubKeyTypes = Data.ProtoLens.Field.field @"pubKeyTypes"
validator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validator" a) =>
  Lens.Family2.LensLike' f s a
validator = Data.ProtoLens.Field.field @"validator"
vec'pubKeyTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'pubKeyTypes" a) =>
  Lens.Family2.LensLike' f s a
vec'pubKeyTypes = Data.ProtoLens.Field.field @"vec'pubKeyTypes"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
voteExtensionsEnableHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "voteExtensionsEnableHeight" a) =>
  Lens.Family2.LensLike' f s a
voteExtensionsEnableHeight
  = Data.ProtoLens.Field.field @"voteExtensionsEnableHeight"