{- This file was auto-generated from cosmos/auth/v1beta1/auth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Auth.V1beta1.Auth_Fields where
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
accountNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accountNumber" a) =>
  Lens.Family2.LensLike' f s a
accountNumber = Data.ProtoLens.Field.field @"accountNumber"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
baseAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseAccount" a) =>
  Lens.Family2.LensLike' f s a
baseAccount = Data.ProtoLens.Field.field @"baseAccount"
derivationKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "derivationKeys" a) =>
  Lens.Family2.LensLike' f s a
derivationKeys = Data.ProtoLens.Field.field @"derivationKeys"
maxMemoCharacters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxMemoCharacters" a) =>
  Lens.Family2.LensLike' f s a
maxMemoCharacters = Data.ProtoLens.Field.field @"maxMemoCharacters"
maybe'baseAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'baseAccount" a) =>
  Lens.Family2.LensLike' f s a
maybe'baseAccount = Data.ProtoLens.Field.field @"maybe'baseAccount"
maybe'pubKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pubKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'pubKey = Data.ProtoLens.Field.field @"maybe'pubKey"
moduleName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "moduleName" a) =>
  Lens.Family2.LensLike' f s a
moduleName = Data.ProtoLens.Field.field @"moduleName"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
permissions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "permissions" a) =>
  Lens.Family2.LensLike' f s a
permissions = Data.ProtoLens.Field.field @"permissions"
pubKey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubKey" a) =>
  Lens.Family2.LensLike' f s a
pubKey = Data.ProtoLens.Field.field @"pubKey"
sequence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sequence" a) =>
  Lens.Family2.LensLike' f s a
sequence = Data.ProtoLens.Field.field @"sequence"
sigVerifyCostEd25519 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sigVerifyCostEd25519" a) =>
  Lens.Family2.LensLike' f s a
sigVerifyCostEd25519
  = Data.ProtoLens.Field.field @"sigVerifyCostEd25519"
sigVerifyCostSecp256k1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sigVerifyCostSecp256k1" a) =>
  Lens.Family2.LensLike' f s a
sigVerifyCostSecp256k1
  = Data.ProtoLens.Field.field @"sigVerifyCostSecp256k1"
txSigLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "txSigLimit" a) =>
  Lens.Family2.LensLike' f s a
txSigLimit = Data.ProtoLens.Field.field @"txSigLimit"
txSizeCostPerByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "txSizeCostPerByte" a) =>
  Lens.Family2.LensLike' f s a
txSizeCostPerByte = Data.ProtoLens.Field.field @"txSizeCostPerByte"
vec'derivationKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'derivationKeys" a) =>
  Lens.Family2.LensLike' f s a
vec'derivationKeys
  = Data.ProtoLens.Field.field @"vec'derivationKeys"
vec'permissions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'permissions" a) =>
  Lens.Family2.LensLike' f s a
vec'permissions = Data.ProtoLens.Field.field @"vec'permissions"