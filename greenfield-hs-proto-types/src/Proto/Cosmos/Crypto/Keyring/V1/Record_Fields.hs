{- This file was auto-generated from cosmos/crypto/keyring/v1/record.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crypto.Keyring.V1.Record_Fields where
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
import qualified Proto.Cosmos.Crypto.Hd.V1.Hd
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
ledger ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ledger" a) =>
  Lens.Family2.LensLike' f s a
ledger = Data.ProtoLens.Field.field @"ledger"
local ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "local" a) =>
  Lens.Family2.LensLike' f s a
local = Data.ProtoLens.Field.field @"local"
maybe'item ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'item" a) =>
  Lens.Family2.LensLike' f s a
maybe'item = Data.ProtoLens.Field.field @"maybe'item"
maybe'ledger ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ledger" a) =>
  Lens.Family2.LensLike' f s a
maybe'ledger = Data.ProtoLens.Field.field @"maybe'ledger"
maybe'local ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'local" a) =>
  Lens.Family2.LensLike' f s a
maybe'local = Data.ProtoLens.Field.field @"maybe'local"
maybe'multi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'multi" a) =>
  Lens.Family2.LensLike' f s a
maybe'multi = Data.ProtoLens.Field.field @"maybe'multi"
maybe'offline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'offline" a) =>
  Lens.Family2.LensLike' f s a
maybe'offline = Data.ProtoLens.Field.field @"maybe'offline"
maybe'path ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'path" a) =>
  Lens.Family2.LensLike' f s a
maybe'path = Data.ProtoLens.Field.field @"maybe'path"
maybe'privKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'privKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'privKey = Data.ProtoLens.Field.field @"maybe'privKey"
maybe'pubKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pubKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'pubKey = Data.ProtoLens.Field.field @"maybe'pubKey"
multi ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "multi" a) =>
  Lens.Family2.LensLike' f s a
multi = Data.ProtoLens.Field.field @"multi"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
offline ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "offline" a) =>
  Lens.Family2.LensLike' f s a
offline = Data.ProtoLens.Field.field @"offline"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
privKey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "privKey" a) =>
  Lens.Family2.LensLike' f s a
privKey = Data.ProtoLens.Field.field @"privKey"
pubKey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubKey" a) =>
  Lens.Family2.LensLike' f s a
pubKey = Data.ProtoLens.Field.field @"pubKey"