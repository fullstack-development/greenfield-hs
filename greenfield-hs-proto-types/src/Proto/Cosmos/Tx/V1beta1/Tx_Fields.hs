{- This file was auto-generated from cosmos/tx/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Tx.V1beta1.Tx_Fields where
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig
import qualified Proto.Cosmos.Tx.Signing.V1beta1.Signing
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
amount ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amount" a) =>
  Lens.Family2.LensLike' f s a
amount = Data.ProtoLens.Field.field @"amount"
authInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authInfo" a) =>
  Lens.Family2.LensLike' f s a
authInfo = Data.ProtoLens.Field.field @"authInfo"
authInfoBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authInfoBytes" a) =>
  Lens.Family2.LensLike' f s a
authInfoBytes = Data.ProtoLens.Field.field @"authInfoBytes"
bitarray ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bitarray" a) =>
  Lens.Family2.LensLike' f s a
bitarray = Data.ProtoLens.Field.field @"bitarray"
body ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "body" a) =>
  Lens.Family2.LensLike' f s a
body = Data.ProtoLens.Field.field @"body"
bodyBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bodyBytes" a) =>
  Lens.Family2.LensLike' f s a
bodyBytes = Data.ProtoLens.Field.field @"bodyBytes"
chainId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chainId" a) =>
  Lens.Family2.LensLike' f s a
chainId = Data.ProtoLens.Field.field @"chainId"
extensionOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extensionOptions" a) =>
  Lens.Family2.LensLike' f s a
extensionOptions = Data.ProtoLens.Field.field @"extensionOptions"
fee ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fee" a) =>
  Lens.Family2.LensLike' f s a
fee = Data.ProtoLens.Field.field @"fee"
gasLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gasLimit" a) =>
  Lens.Family2.LensLike' f s a
gasLimit = Data.ProtoLens.Field.field @"gasLimit"
granter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "granter" a) =>
  Lens.Family2.LensLike' f s a
granter = Data.ProtoLens.Field.field @"granter"
maybe'authInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'authInfo = Data.ProtoLens.Field.field @"maybe'authInfo"
maybe'bitarray ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bitarray" a) =>
  Lens.Family2.LensLike' f s a
maybe'bitarray = Data.ProtoLens.Field.field @"maybe'bitarray"
maybe'body ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'body" a) =>
  Lens.Family2.LensLike' f s a
maybe'body = Data.ProtoLens.Field.field @"maybe'body"
maybe'fee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fee" a) =>
  Lens.Family2.LensLike' f s a
maybe'fee = Data.ProtoLens.Field.field @"maybe'fee"
maybe'modeInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'modeInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'modeInfo = Data.ProtoLens.Field.field @"maybe'modeInfo"
maybe'multi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'multi" a) =>
  Lens.Family2.LensLike' f s a
maybe'multi = Data.ProtoLens.Field.field @"maybe'multi"
maybe'publicKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'publicKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'publicKey = Data.ProtoLens.Field.field @"maybe'publicKey"
maybe'signDoc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signDoc" a) =>
  Lens.Family2.LensLike' f s a
maybe'signDoc = Data.ProtoLens.Field.field @"maybe'signDoc"
maybe'single ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'single" a) =>
  Lens.Family2.LensLike' f s a
maybe'single = Data.ProtoLens.Field.field @"maybe'single"
maybe'sum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sum" a) =>
  Lens.Family2.LensLike' f s a
maybe'sum = Data.ProtoLens.Field.field @"maybe'sum"
maybe'tip ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tip" a) =>
  Lens.Family2.LensLike' f s a
maybe'tip = Data.ProtoLens.Field.field @"maybe'tip"
memo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "memo" a) =>
  Lens.Family2.LensLike' f s a
memo = Data.ProtoLens.Field.field @"memo"
messages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messages" a) =>
  Lens.Family2.LensLike' f s a
messages = Data.ProtoLens.Field.field @"messages"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
modeInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "modeInfo" a) =>
  Lens.Family2.LensLike' f s a
modeInfo = Data.ProtoLens.Field.field @"modeInfo"
modeInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "modeInfos" a) =>
  Lens.Family2.LensLike' f s a
modeInfos = Data.ProtoLens.Field.field @"modeInfos"
multi ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "multi" a) =>
  Lens.Family2.LensLike' f s a
multi = Data.ProtoLens.Field.field @"multi"
nonCriticalExtensionOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nonCriticalExtensionOptions" a) =>
  Lens.Family2.LensLike' f s a
nonCriticalExtensionOptions
  = Data.ProtoLens.Field.field @"nonCriticalExtensionOptions"
payer ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "payer" a) =>
  Lens.Family2.LensLike' f s a
payer = Data.ProtoLens.Field.field @"payer"
publicKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "publicKey" a) =>
  Lens.Family2.LensLike' f s a
publicKey = Data.ProtoLens.Field.field @"publicKey"
sequence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sequence" a) =>
  Lens.Family2.LensLike' f s a
sequence = Data.ProtoLens.Field.field @"sequence"
sig ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sig" a) =>
  Lens.Family2.LensLike' f s a
sig = Data.ProtoLens.Field.field @"sig"
signDoc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "signDoc" a) =>
  Lens.Family2.LensLike' f s a
signDoc = Data.ProtoLens.Field.field @"signDoc"
signatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signatures" a) =>
  Lens.Family2.LensLike' f s a
signatures = Data.ProtoLens.Field.field @"signatures"
signerInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signerInfos" a) =>
  Lens.Family2.LensLike' f s a
signerInfos = Data.ProtoLens.Field.field @"signerInfos"
single ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "single" a) =>
  Lens.Family2.LensLike' f s a
single = Data.ProtoLens.Field.field @"single"
timeoutHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeoutHeight" a) =>
  Lens.Family2.LensLike' f s a
timeoutHeight = Data.ProtoLens.Field.field @"timeoutHeight"
tip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tip" a) =>
  Lens.Family2.LensLike' f s a
tip = Data.ProtoLens.Field.field @"tip"
tipper ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tipper" a) =>
  Lens.Family2.LensLike' f s a
tipper = Data.ProtoLens.Field.field @"tipper"
vec'amount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'amount" a) =>
  Lens.Family2.LensLike' f s a
vec'amount = Data.ProtoLens.Field.field @"vec'amount"
vec'extensionOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extensionOptions" a) =>
  Lens.Family2.LensLike' f s a
vec'extensionOptions
  = Data.ProtoLens.Field.field @"vec'extensionOptions"
vec'messages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'messages" a) =>
  Lens.Family2.LensLike' f s a
vec'messages = Data.ProtoLens.Field.field @"vec'messages"
vec'modeInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'modeInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'modeInfos = Data.ProtoLens.Field.field @"vec'modeInfos"
vec'nonCriticalExtensionOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nonCriticalExtensionOptions" a) =>
  Lens.Family2.LensLike' f s a
vec'nonCriticalExtensionOptions
  = Data.ProtoLens.Field.field @"vec'nonCriticalExtensionOptions"
vec'signatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'signatures" a) =>
  Lens.Family2.LensLike' f s a
vec'signatures = Data.ProtoLens.Field.field @"vec'signatures"
vec'signerInfos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'signerInfos" a) =>
  Lens.Family2.LensLike' f s a
vec'signerInfos = Data.ProtoLens.Field.field @"vec'signerInfos"