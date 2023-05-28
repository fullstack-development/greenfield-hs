{- This file was auto-generated from greenfield/payment/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.Query_Fields where
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Greenfield.Payment.AutoSettleRecord
import qualified Proto.Greenfield.Payment.Params
import qualified Proto.Greenfield.Payment.PaymentAccount
import qualified Proto.Greenfield.Payment.PaymentAccountCount
import qualified Proto.Greenfield.Payment.StreamRecord
account ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "account" a) =>
  Lens.Family2.LensLike' f s a
account = Data.ProtoLens.Field.field @"account"
addr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "addr" a) =>
  Lens.Family2.LensLike' f s a
addr = Data.ProtoLens.Field.field @"addr"
autoSettleRecord ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "autoSettleRecord" a) =>
  Lens.Family2.LensLike' f s a
autoSettleRecord = Data.ProtoLens.Field.field @"autoSettleRecord"
availableBalance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "availableBalance" a) =>
  Lens.Family2.LensLike' f s a
availableBalance = Data.ProtoLens.Field.field @"availableBalance"
bankBalance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bankBalance" a) =>
  Lens.Family2.LensLike' f s a
bankBalance = Data.ProtoLens.Field.field @"bankBalance"
changeRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "changeRate" a) =>
  Lens.Family2.LensLike' f s a
changeRate = Data.ProtoLens.Field.field @"changeRate"
currentTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentTimestamp" a) =>
  Lens.Family2.LensLike' f s a
currentTimestamp = Data.ProtoLens.Field.field @"currentTimestamp"
dynamicBalance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicBalance" a) =>
  Lens.Family2.LensLike' f s a
dynamicBalance = Data.ProtoLens.Field.field @"dynamicBalance"
lockedFee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lockedFee" a) =>
  Lens.Family2.LensLike' f s a
lockedFee = Data.ProtoLens.Field.field @"lockedFee"
maybe'pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagination" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagination = Data.ProtoLens.Field.field @"maybe'pagination"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
maybe'paymentAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paymentAccount" a) =>
  Lens.Family2.LensLike' f s a
maybe'paymentAccount
  = Data.ProtoLens.Field.field @"maybe'paymentAccount"
maybe'paymentAccountCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paymentAccountCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'paymentAccountCount
  = Data.ProtoLens.Field.field @"maybe'paymentAccountCount"
maybe'streamRecord ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'streamRecord" a) =>
  Lens.Family2.LensLike' f s a
maybe'streamRecord
  = Data.ProtoLens.Field.field @"maybe'streamRecord"
owner ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "owner" a) =>
  Lens.Family2.LensLike' f s a
owner = Data.ProtoLens.Field.field @"owner"
pagination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagination" a) =>
  Lens.Family2.LensLike' f s a
pagination = Data.ProtoLens.Field.field @"pagination"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
paymentAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paymentAccount" a) =>
  Lens.Family2.LensLike' f s a
paymentAccount = Data.ProtoLens.Field.field @"paymentAccount"
paymentAccountCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paymentAccountCount" a) =>
  Lens.Family2.LensLike' f s a
paymentAccountCount
  = Data.ProtoLens.Field.field @"paymentAccountCount"
paymentAccounts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paymentAccounts" a) =>
  Lens.Family2.LensLike' f s a
paymentAccounts = Data.ProtoLens.Field.field @"paymentAccounts"
streamRecord ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamRecord" a) =>
  Lens.Family2.LensLike' f s a
streamRecord = Data.ProtoLens.Field.field @"streamRecord"
vec'autoSettleRecord ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'autoSettleRecord" a) =>
  Lens.Family2.LensLike' f s a
vec'autoSettleRecord
  = Data.ProtoLens.Field.field @"vec'autoSettleRecord"
vec'paymentAccount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'paymentAccount" a) =>
  Lens.Family2.LensLike' f s a
vec'paymentAccount
  = Data.ProtoLens.Field.field @"vec'paymentAccount"
vec'paymentAccountCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'paymentAccountCount" a) =>
  Lens.Family2.LensLike' f s a
vec'paymentAccountCount
  = Data.ProtoLens.Field.field @"vec'paymentAccountCount"
vec'paymentAccounts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'paymentAccounts" a) =>
  Lens.Family2.LensLike' f s a
vec'paymentAccounts
  = Data.ProtoLens.Field.field @"vec'paymentAccounts"
vec'streamRecord ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'streamRecord" a) =>
  Lens.Family2.LensLike' f s a
vec'streamRecord = Data.ProtoLens.Field.field @"vec'streamRecord"