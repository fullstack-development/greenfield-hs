{- This file was auto-generated from cosmos/slashing/v1beta1/slashing.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Slashing.V1beta1.Slashing_Fields where
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
downtimeJailDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downtimeJailDuration" a) =>
  Lens.Family2.LensLike' f s a
downtimeJailDuration
  = Data.ProtoLens.Field.field @"downtimeJailDuration"
indexOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "indexOffset" a) =>
  Lens.Family2.LensLike' f s a
indexOffset = Data.ProtoLens.Field.field @"indexOffset"
jailedUntil ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "jailedUntil" a) =>
  Lens.Family2.LensLike' f s a
jailedUntil = Data.ProtoLens.Field.field @"jailedUntil"
maybe'downtimeJailDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'downtimeJailDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'downtimeJailDuration
  = Data.ProtoLens.Field.field @"maybe'downtimeJailDuration"
maybe'jailedUntil ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'jailedUntil" a) =>
  Lens.Family2.LensLike' f s a
maybe'jailedUntil = Data.ProtoLens.Field.field @"maybe'jailedUntil"
minSignedPerWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minSignedPerWindow" a) =>
  Lens.Family2.LensLike' f s a
minSignedPerWindow
  = Data.ProtoLens.Field.field @"minSignedPerWindow"
missedBlocksCounter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "missedBlocksCounter" a) =>
  Lens.Family2.LensLike' f s a
missedBlocksCounter
  = Data.ProtoLens.Field.field @"missedBlocksCounter"
signedBlocksWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signedBlocksWindow" a) =>
  Lens.Family2.LensLike' f s a
signedBlocksWindow
  = Data.ProtoLens.Field.field @"signedBlocksWindow"
slashFractionDoubleSign ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "slashFractionDoubleSign" a) =>
  Lens.Family2.LensLike' f s a
slashFractionDoubleSign
  = Data.ProtoLens.Field.field @"slashFractionDoubleSign"
slashFractionDowntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "slashFractionDowntime" a) =>
  Lens.Family2.LensLike' f s a
slashFractionDowntime
  = Data.ProtoLens.Field.field @"slashFractionDowntime"
startHeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startHeight" a) =>
  Lens.Family2.LensLike' f s a
startHeight = Data.ProtoLens.Field.field @"startHeight"
tombstoned ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tombstoned" a) =>
  Lens.Family2.LensLike' f s a
tombstoned = Data.ProtoLens.Field.field @"tombstoned"