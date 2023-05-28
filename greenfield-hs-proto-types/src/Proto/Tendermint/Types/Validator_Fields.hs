{- This file was auto-generated from tendermint/types/validator.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Validator_Fields where
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
import qualified Proto.Tendermint.Crypto.Keys
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
maybe'proposer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proposer" a) =>
  Lens.Family2.LensLike' f s a
maybe'proposer = Data.ProtoLens.Field.field @"maybe'proposer"
maybe'pubKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pubKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'pubKey = Data.ProtoLens.Field.field @"maybe'pubKey"
proposer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposer" a) =>
  Lens.Family2.LensLike' f s a
proposer = Data.ProtoLens.Field.field @"proposer"
proposerPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proposerPriority" a) =>
  Lens.Family2.LensLike' f s a
proposerPriority = Data.ProtoLens.Field.field @"proposerPriority"
pubKey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubKey" a) =>
  Lens.Family2.LensLike' f s a
pubKey = Data.ProtoLens.Field.field @"pubKey"
totalVotingPower ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalVotingPower" a) =>
  Lens.Family2.LensLike' f s a
totalVotingPower = Data.ProtoLens.Field.field @"totalVotingPower"
validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validators" a) =>
  Lens.Family2.LensLike' f s a
validators = Data.ProtoLens.Field.field @"validators"
vec'validators ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'validators" a) =>
  Lens.Family2.LensLike' f s a
vec'validators = Data.ProtoLens.Field.field @"vec'validators"
votingPower ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "votingPower" a) =>
  Lens.Family2.LensLike' f s a
votingPower = Data.ProtoLens.Field.field @"votingPower"