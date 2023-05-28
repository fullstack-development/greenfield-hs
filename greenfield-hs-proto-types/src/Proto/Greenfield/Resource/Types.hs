{- This file was auto-generated from greenfield/resource/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Resource.Types (
        ResourceType(..), ResourceType(), ResourceType'UnrecognizedValue
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
newtype ResourceType'UnrecognizedValue
  = ResourceType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ResourceType
  = RESOURCE_TYPE_UNSPECIFIED |
    RESOURCE_TYPE_BUCKET |
    RESOURCE_TYPE_OBJECT |
    RESOURCE_TYPE_GROUP |
    ResourceType'Unrecognized !ResourceType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ResourceType where
  maybeToEnum 0 = Prelude.Just RESOURCE_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just RESOURCE_TYPE_BUCKET
  maybeToEnum 2 = Prelude.Just RESOURCE_TYPE_OBJECT
  maybeToEnum 3 = Prelude.Just RESOURCE_TYPE_GROUP
  maybeToEnum k
    = Prelude.Just
        (ResourceType'Unrecognized
           (ResourceType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum RESOURCE_TYPE_UNSPECIFIED = "RESOURCE_TYPE_UNSPECIFIED"
  showEnum RESOURCE_TYPE_BUCKET = "RESOURCE_TYPE_BUCKET"
  showEnum RESOURCE_TYPE_OBJECT = "RESOURCE_TYPE_OBJECT"
  showEnum RESOURCE_TYPE_GROUP = "RESOURCE_TYPE_GROUP"
  showEnum
    (ResourceType'Unrecognized (ResourceType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "RESOURCE_TYPE_UNSPECIFIED"
    = Prelude.Just RESOURCE_TYPE_UNSPECIFIED
    | (Prelude.==) k "RESOURCE_TYPE_BUCKET"
    = Prelude.Just RESOURCE_TYPE_BUCKET
    | (Prelude.==) k "RESOURCE_TYPE_OBJECT"
    = Prelude.Just RESOURCE_TYPE_OBJECT
    | (Prelude.==) k "RESOURCE_TYPE_GROUP"
    = Prelude.Just RESOURCE_TYPE_GROUP
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ResourceType where
  minBound = RESOURCE_TYPE_UNSPECIFIED
  maxBound = RESOURCE_TYPE_GROUP
instance Prelude.Enum ResourceType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ResourceType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum RESOURCE_TYPE_UNSPECIFIED = 0
  fromEnum RESOURCE_TYPE_BUCKET = 1
  fromEnum RESOURCE_TYPE_OBJECT = 2
  fromEnum RESOURCE_TYPE_GROUP = 3
  fromEnum
    (ResourceType'Unrecognized (ResourceType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RESOURCE_TYPE_GROUP
    = Prelude.error
        "ResourceType.succ: bad argument RESOURCE_TYPE_GROUP. This value would be out of bounds."
  succ RESOURCE_TYPE_UNSPECIFIED = RESOURCE_TYPE_BUCKET
  succ RESOURCE_TYPE_BUCKET = RESOURCE_TYPE_OBJECT
  succ RESOURCE_TYPE_OBJECT = RESOURCE_TYPE_GROUP
  succ (ResourceType'Unrecognized _)
    = Prelude.error
        "ResourceType.succ: bad argument: unrecognized value"
  pred RESOURCE_TYPE_UNSPECIFIED
    = Prelude.error
        "ResourceType.pred: bad argument RESOURCE_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred RESOURCE_TYPE_BUCKET = RESOURCE_TYPE_UNSPECIFIED
  pred RESOURCE_TYPE_OBJECT = RESOURCE_TYPE_BUCKET
  pred RESOURCE_TYPE_GROUP = RESOURCE_TYPE_OBJECT
  pred (ResourceType'Unrecognized _)
    = Prelude.error
        "ResourceType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ResourceType where
  fieldDefault = RESOURCE_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData ResourceType where
  rnf x__ = Prelude.seq x__ ()