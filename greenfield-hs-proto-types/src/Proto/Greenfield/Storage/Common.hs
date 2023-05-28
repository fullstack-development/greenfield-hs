{- This file was auto-generated from greenfield/storage/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Common (
        Approval(), BucketStatus(..), BucketStatus(),
        BucketStatus'UnrecognizedValue, ObjectStatus(..), ObjectStatus(),
        ObjectStatus'UnrecognizedValue, RedundancyType(..),
        RedundancyType(), RedundancyType'UnrecognizedValue,
        SecondarySpSignDoc(), SourceType(..), SourceType(),
        SourceType'UnrecognizedValue, VisibilityType(..), VisibilityType(),
        VisibilityType'UnrecognizedValue
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
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Common_Fields.expiredHeight' @:: Lens' Approval Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Common_Fields.sig' @:: Lens' Approval Data.ByteString.ByteString@ -}
data Approval
  = Approval'_constructor {_Approval'expiredHeight :: !Data.Word.Word64,
                           _Approval'sig :: !Data.ByteString.ByteString,
                           _Approval'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Approval where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Approval "expiredHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Approval'expiredHeight
           (\ x__ y__ -> x__ {_Approval'expiredHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Approval "sig" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Approval'sig (\ x__ y__ -> x__ {_Approval'sig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Approval where
  messageName _ = Data.Text.pack "greenfield.storage.Approval"
  packedMessageDescriptor _
    = "\n\
      \\bApproval\DC2%\n\
      \\SOexpired_height\CAN\SOH \SOH(\EOTR\rexpiredHeight\DC2\DLE\n\
      \\ETXsig\CAN\STX \SOH(\fR\ETXsig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        expiredHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expired_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"expiredHeight")) ::
              Data.ProtoLens.FieldDescriptor Approval
        sig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sig"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sig")) ::
              Data.ProtoLens.FieldDescriptor Approval
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, expiredHeight__field_descriptor),
           (Data.ProtoLens.Tag 2, sig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Approval'_unknownFields
        (\ x__ y__ -> x__ {_Approval'_unknownFields = y__})
  defMessage
    = Approval'_constructor
        {_Approval'expiredHeight = Data.ProtoLens.fieldDefault,
         _Approval'sig = Data.ProtoLens.fieldDefault,
         _Approval'_unknownFields = []}
  parseMessage
    = let
        loop :: Approval -> Data.ProtoLens.Encoding.Bytes.Parser Approval
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "expired_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expiredHeight") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "sig"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Approval"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"expiredHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sig") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Approval where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Approval'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Approval'expiredHeight x__)
                (Control.DeepSeq.deepseq (_Approval'sig x__) ()))
newtype BucketStatus'UnrecognizedValue
  = BucketStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BucketStatus
  = BUCKET_STATUS_CREATED |
    BUCKET_STATUS_DISCONTINUED |
    BucketStatus'Unrecognized !BucketStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BucketStatus where
  maybeToEnum 0 = Prelude.Just BUCKET_STATUS_CREATED
  maybeToEnum 1 = Prelude.Just BUCKET_STATUS_DISCONTINUED
  maybeToEnum k
    = Prelude.Just
        (BucketStatus'Unrecognized
           (BucketStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum BUCKET_STATUS_CREATED = "BUCKET_STATUS_CREATED"
  showEnum BUCKET_STATUS_DISCONTINUED = "BUCKET_STATUS_DISCONTINUED"
  showEnum
    (BucketStatus'Unrecognized (BucketStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BUCKET_STATUS_CREATED"
    = Prelude.Just BUCKET_STATUS_CREATED
    | (Prelude.==) k "BUCKET_STATUS_DISCONTINUED"
    = Prelude.Just BUCKET_STATUS_DISCONTINUED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BucketStatus where
  minBound = BUCKET_STATUS_CREATED
  maxBound = BUCKET_STATUS_DISCONTINUED
instance Prelude.Enum BucketStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BucketStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BUCKET_STATUS_CREATED = 0
  fromEnum BUCKET_STATUS_DISCONTINUED = 1
  fromEnum
    (BucketStatus'Unrecognized (BucketStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BUCKET_STATUS_DISCONTINUED
    = Prelude.error
        "BucketStatus.succ: bad argument BUCKET_STATUS_DISCONTINUED. This value would be out of bounds."
  succ BUCKET_STATUS_CREATED = BUCKET_STATUS_DISCONTINUED
  succ (BucketStatus'Unrecognized _)
    = Prelude.error
        "BucketStatus.succ: bad argument: unrecognized value"
  pred BUCKET_STATUS_CREATED
    = Prelude.error
        "BucketStatus.pred: bad argument BUCKET_STATUS_CREATED. This value would be out of bounds."
  pred BUCKET_STATUS_DISCONTINUED = BUCKET_STATUS_CREATED
  pred (BucketStatus'Unrecognized _)
    = Prelude.error
        "BucketStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BucketStatus where
  fieldDefault = BUCKET_STATUS_CREATED
instance Control.DeepSeq.NFData BucketStatus where
  rnf x__ = Prelude.seq x__ ()
newtype ObjectStatus'UnrecognizedValue
  = ObjectStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ObjectStatus
  = OBJECT_STATUS_CREATED |
    OBJECT_STATUS_SEALED |
    OBJECT_STATUS_DISCONTINUED |
    ObjectStatus'Unrecognized !ObjectStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ObjectStatus where
  maybeToEnum 0 = Prelude.Just OBJECT_STATUS_CREATED
  maybeToEnum 1 = Prelude.Just OBJECT_STATUS_SEALED
  maybeToEnum 2 = Prelude.Just OBJECT_STATUS_DISCONTINUED
  maybeToEnum k
    = Prelude.Just
        (ObjectStatus'Unrecognized
           (ObjectStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum OBJECT_STATUS_CREATED = "OBJECT_STATUS_CREATED"
  showEnum OBJECT_STATUS_SEALED = "OBJECT_STATUS_SEALED"
  showEnum OBJECT_STATUS_DISCONTINUED = "OBJECT_STATUS_DISCONTINUED"
  showEnum
    (ObjectStatus'Unrecognized (ObjectStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "OBJECT_STATUS_CREATED"
    = Prelude.Just OBJECT_STATUS_CREATED
    | (Prelude.==) k "OBJECT_STATUS_SEALED"
    = Prelude.Just OBJECT_STATUS_SEALED
    | (Prelude.==) k "OBJECT_STATUS_DISCONTINUED"
    = Prelude.Just OBJECT_STATUS_DISCONTINUED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ObjectStatus where
  minBound = OBJECT_STATUS_CREATED
  maxBound = OBJECT_STATUS_DISCONTINUED
instance Prelude.Enum ObjectStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ObjectStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum OBJECT_STATUS_CREATED = 0
  fromEnum OBJECT_STATUS_SEALED = 1
  fromEnum OBJECT_STATUS_DISCONTINUED = 2
  fromEnum
    (ObjectStatus'Unrecognized (ObjectStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ OBJECT_STATUS_DISCONTINUED
    = Prelude.error
        "ObjectStatus.succ: bad argument OBJECT_STATUS_DISCONTINUED. This value would be out of bounds."
  succ OBJECT_STATUS_CREATED = OBJECT_STATUS_SEALED
  succ OBJECT_STATUS_SEALED = OBJECT_STATUS_DISCONTINUED
  succ (ObjectStatus'Unrecognized _)
    = Prelude.error
        "ObjectStatus.succ: bad argument: unrecognized value"
  pred OBJECT_STATUS_CREATED
    = Prelude.error
        "ObjectStatus.pred: bad argument OBJECT_STATUS_CREATED. This value would be out of bounds."
  pred OBJECT_STATUS_SEALED = OBJECT_STATUS_CREATED
  pred OBJECT_STATUS_DISCONTINUED = OBJECT_STATUS_SEALED
  pred (ObjectStatus'Unrecognized _)
    = Prelude.error
        "ObjectStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ObjectStatus where
  fieldDefault = OBJECT_STATUS_CREATED
instance Control.DeepSeq.NFData ObjectStatus where
  rnf x__ = Prelude.seq x__ ()
newtype RedundancyType'UnrecognizedValue
  = RedundancyType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RedundancyType
  = REDUNDANCY_EC_TYPE |
    REDUNDANCY_REPLICA_TYPE |
    RedundancyType'Unrecognized !RedundancyType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RedundancyType where
  maybeToEnum 0 = Prelude.Just REDUNDANCY_EC_TYPE
  maybeToEnum 1 = Prelude.Just REDUNDANCY_REPLICA_TYPE
  maybeToEnum k
    = Prelude.Just
        (RedundancyType'Unrecognized
           (RedundancyType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum REDUNDANCY_EC_TYPE = "REDUNDANCY_EC_TYPE"
  showEnum REDUNDANCY_REPLICA_TYPE = "REDUNDANCY_REPLICA_TYPE"
  showEnum
    (RedundancyType'Unrecognized (RedundancyType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "REDUNDANCY_EC_TYPE"
    = Prelude.Just REDUNDANCY_EC_TYPE
    | (Prelude.==) k "REDUNDANCY_REPLICA_TYPE"
    = Prelude.Just REDUNDANCY_REPLICA_TYPE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RedundancyType where
  minBound = REDUNDANCY_EC_TYPE
  maxBound = REDUNDANCY_REPLICA_TYPE
instance Prelude.Enum RedundancyType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RedundancyType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum REDUNDANCY_EC_TYPE = 0
  fromEnum REDUNDANCY_REPLICA_TYPE = 1
  fromEnum
    (RedundancyType'Unrecognized (RedundancyType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ REDUNDANCY_REPLICA_TYPE
    = Prelude.error
        "RedundancyType.succ: bad argument REDUNDANCY_REPLICA_TYPE. This value would be out of bounds."
  succ REDUNDANCY_EC_TYPE = REDUNDANCY_REPLICA_TYPE
  succ (RedundancyType'Unrecognized _)
    = Prelude.error
        "RedundancyType.succ: bad argument: unrecognized value"
  pred REDUNDANCY_EC_TYPE
    = Prelude.error
        "RedundancyType.pred: bad argument REDUNDANCY_EC_TYPE. This value would be out of bounds."
  pred REDUNDANCY_REPLICA_TYPE = REDUNDANCY_EC_TYPE
  pred (RedundancyType'Unrecognized _)
    = Prelude.error
        "RedundancyType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RedundancyType where
  fieldDefault = REDUNDANCY_EC_TYPE
instance Control.DeepSeq.NFData RedundancyType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Common_Fields.spAddress' @:: Lens' SecondarySpSignDoc Data.Text.Text@
         * 'Proto.Greenfield.Storage.Common_Fields.objectId' @:: Lens' SecondarySpSignDoc Data.Text.Text@
         * 'Proto.Greenfield.Storage.Common_Fields.checksum' @:: Lens' SecondarySpSignDoc Data.ByteString.ByteString@ -}
data SecondarySpSignDoc
  = SecondarySpSignDoc'_constructor {_SecondarySpSignDoc'spAddress :: !Data.Text.Text,
                                     _SecondarySpSignDoc'objectId :: !Data.Text.Text,
                                     _SecondarySpSignDoc'checksum :: !Data.ByteString.ByteString,
                                     _SecondarySpSignDoc'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SecondarySpSignDoc where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SecondarySpSignDoc "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondarySpSignDoc'spAddress
           (\ x__ y__ -> x__ {_SecondarySpSignDoc'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecondarySpSignDoc "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondarySpSignDoc'objectId
           (\ x__ y__ -> x__ {_SecondarySpSignDoc'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecondarySpSignDoc "checksum" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondarySpSignDoc'checksum
           (\ x__ y__ -> x__ {_SecondarySpSignDoc'checksum = y__}))
        Prelude.id
instance Data.ProtoLens.Message SecondarySpSignDoc where
  messageName _
    = Data.Text.pack "greenfield.storage.SecondarySpSignDoc"
  packedMessageDescriptor _
    = "\n\
      \\DC2SecondarySpSignDoc\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
      \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SUB\n\
      \\bchecksum\CAN\ETX \SOH(\fR\bchecksum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor SecondarySpSignDoc
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor SecondarySpSignDoc
        checksum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checksum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"checksum")) ::
              Data.ProtoLens.FieldDescriptor SecondarySpSignDoc
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, objectId__field_descriptor),
           (Data.ProtoLens.Tag 3, checksum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SecondarySpSignDoc'_unknownFields
        (\ x__ y__ -> x__ {_SecondarySpSignDoc'_unknownFields = y__})
  defMessage
    = SecondarySpSignDoc'_constructor
        {_SecondarySpSignDoc'spAddress = Data.ProtoLens.fieldDefault,
         _SecondarySpSignDoc'objectId = Data.ProtoLens.fieldDefault,
         _SecondarySpSignDoc'checksum = Data.ProtoLens.fieldDefault,
         _SecondarySpSignDoc'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SecondarySpSignDoc
          -> Data.ProtoLens.Encoding.Bytes.Parser SecondarySpSignDoc
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "sp_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddress") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "checksum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"checksum") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SecondarySpSignDoc"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddress") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"objectId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"checksum") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SecondarySpSignDoc where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SecondarySpSignDoc'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SecondarySpSignDoc'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_SecondarySpSignDoc'objectId x__)
                   (Control.DeepSeq.deepseq (_SecondarySpSignDoc'checksum x__) ())))
newtype SourceType'UnrecognizedValue
  = SourceType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SourceType
  = SOURCE_TYPE_ORIGIN |
    SOURCE_TYPE_BSC_CROSS_CHAIN |
    SOURCE_TYPE_MIRROR_PENDING |
    SourceType'Unrecognized !SourceType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SourceType where
  maybeToEnum 0 = Prelude.Just SOURCE_TYPE_ORIGIN
  maybeToEnum 1 = Prelude.Just SOURCE_TYPE_BSC_CROSS_CHAIN
  maybeToEnum 2 = Prelude.Just SOURCE_TYPE_MIRROR_PENDING
  maybeToEnum k
    = Prelude.Just
        (SourceType'Unrecognized
           (SourceType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum SOURCE_TYPE_ORIGIN = "SOURCE_TYPE_ORIGIN"
  showEnum SOURCE_TYPE_BSC_CROSS_CHAIN
    = "SOURCE_TYPE_BSC_CROSS_CHAIN"
  showEnum SOURCE_TYPE_MIRROR_PENDING = "SOURCE_TYPE_MIRROR_PENDING"
  showEnum (SourceType'Unrecognized (SourceType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SOURCE_TYPE_ORIGIN"
    = Prelude.Just SOURCE_TYPE_ORIGIN
    | (Prelude.==) k "SOURCE_TYPE_BSC_CROSS_CHAIN"
    = Prelude.Just SOURCE_TYPE_BSC_CROSS_CHAIN
    | (Prelude.==) k "SOURCE_TYPE_MIRROR_PENDING"
    = Prelude.Just SOURCE_TYPE_MIRROR_PENDING
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SourceType where
  minBound = SOURCE_TYPE_ORIGIN
  maxBound = SOURCE_TYPE_MIRROR_PENDING
instance Prelude.Enum SourceType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SourceType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum SOURCE_TYPE_ORIGIN = 0
  fromEnum SOURCE_TYPE_BSC_CROSS_CHAIN = 1
  fromEnum SOURCE_TYPE_MIRROR_PENDING = 2
  fromEnum (SourceType'Unrecognized (SourceType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SOURCE_TYPE_MIRROR_PENDING
    = Prelude.error
        "SourceType.succ: bad argument SOURCE_TYPE_MIRROR_PENDING. This value would be out of bounds."
  succ SOURCE_TYPE_ORIGIN = SOURCE_TYPE_BSC_CROSS_CHAIN
  succ SOURCE_TYPE_BSC_CROSS_CHAIN = SOURCE_TYPE_MIRROR_PENDING
  succ (SourceType'Unrecognized _)
    = Prelude.error "SourceType.succ: bad argument: unrecognized value"
  pred SOURCE_TYPE_ORIGIN
    = Prelude.error
        "SourceType.pred: bad argument SOURCE_TYPE_ORIGIN. This value would be out of bounds."
  pred SOURCE_TYPE_BSC_CROSS_CHAIN = SOURCE_TYPE_ORIGIN
  pred SOURCE_TYPE_MIRROR_PENDING = SOURCE_TYPE_BSC_CROSS_CHAIN
  pred (SourceType'Unrecognized _)
    = Prelude.error "SourceType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SourceType where
  fieldDefault = SOURCE_TYPE_ORIGIN
instance Control.DeepSeq.NFData SourceType where
  rnf x__ = Prelude.seq x__ ()
newtype VisibilityType'UnrecognizedValue
  = VisibilityType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data VisibilityType
  = VISIBILITY_TYPE_UNSPECIFIED |
    VISIBILITY_TYPE_PUBLIC_READ |
    VISIBILITY_TYPE_PRIVATE |
    VISIBILITY_TYPE_INHERIT |
    VisibilityType'Unrecognized !VisibilityType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum VisibilityType where
  maybeToEnum 0 = Prelude.Just VISIBILITY_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just VISIBILITY_TYPE_PUBLIC_READ
  maybeToEnum 2 = Prelude.Just VISIBILITY_TYPE_PRIVATE
  maybeToEnum 3 = Prelude.Just VISIBILITY_TYPE_INHERIT
  maybeToEnum k
    = Prelude.Just
        (VisibilityType'Unrecognized
           (VisibilityType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum VISIBILITY_TYPE_UNSPECIFIED
    = "VISIBILITY_TYPE_UNSPECIFIED"
  showEnum VISIBILITY_TYPE_PUBLIC_READ
    = "VISIBILITY_TYPE_PUBLIC_READ"
  showEnum VISIBILITY_TYPE_PRIVATE = "VISIBILITY_TYPE_PRIVATE"
  showEnum VISIBILITY_TYPE_INHERIT = "VISIBILITY_TYPE_INHERIT"
  showEnum
    (VisibilityType'Unrecognized (VisibilityType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "VISIBILITY_TYPE_UNSPECIFIED"
    = Prelude.Just VISIBILITY_TYPE_UNSPECIFIED
    | (Prelude.==) k "VISIBILITY_TYPE_PUBLIC_READ"
    = Prelude.Just VISIBILITY_TYPE_PUBLIC_READ
    | (Prelude.==) k "VISIBILITY_TYPE_PRIVATE"
    = Prelude.Just VISIBILITY_TYPE_PRIVATE
    | (Prelude.==) k "VISIBILITY_TYPE_INHERIT"
    = Prelude.Just VISIBILITY_TYPE_INHERIT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded VisibilityType where
  minBound = VISIBILITY_TYPE_UNSPECIFIED
  maxBound = VISIBILITY_TYPE_INHERIT
instance Prelude.Enum VisibilityType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VisibilityType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum VISIBILITY_TYPE_UNSPECIFIED = 0
  fromEnum VISIBILITY_TYPE_PUBLIC_READ = 1
  fromEnum VISIBILITY_TYPE_PRIVATE = 2
  fromEnum VISIBILITY_TYPE_INHERIT = 3
  fromEnum
    (VisibilityType'Unrecognized (VisibilityType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ VISIBILITY_TYPE_INHERIT
    = Prelude.error
        "VisibilityType.succ: bad argument VISIBILITY_TYPE_INHERIT. This value would be out of bounds."
  succ VISIBILITY_TYPE_UNSPECIFIED = VISIBILITY_TYPE_PUBLIC_READ
  succ VISIBILITY_TYPE_PUBLIC_READ = VISIBILITY_TYPE_PRIVATE
  succ VISIBILITY_TYPE_PRIVATE = VISIBILITY_TYPE_INHERIT
  succ (VisibilityType'Unrecognized _)
    = Prelude.error
        "VisibilityType.succ: bad argument: unrecognized value"
  pred VISIBILITY_TYPE_UNSPECIFIED
    = Prelude.error
        "VisibilityType.pred: bad argument VISIBILITY_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred VISIBILITY_TYPE_PUBLIC_READ = VISIBILITY_TYPE_UNSPECIFIED
  pred VISIBILITY_TYPE_PRIVATE = VISIBILITY_TYPE_PUBLIC_READ
  pred VISIBILITY_TYPE_INHERIT = VISIBILITY_TYPE_PRIVATE
  pred (VisibilityType'Unrecognized _)
    = Prelude.error
        "VisibilityType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault VisibilityType where
  fieldDefault = VISIBILITY_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData VisibilityType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USgreenfield/storage/common.proto\DC2\DC2greenfield.storage\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"C\n\
    \\bApproval\DC2%\n\
    \\SOexpired_height\CAN\SOH \SOH(\EOTR\rexpiredHeight\DC2\DLE\n\
    \\ETXsig\CAN\STX \SOH(\fR\ETXsig\"\163\SOH\n\
    \\DC2SecondarySpSignDoc\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
    \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SUB\n\
    \\bchecksum\CAN\ETX \SOH(\fR\bchecksum*k\n\
    \\n\
    \SourceType\DC2\SYN\n\
    \\DC2SOURCE_TYPE_ORIGIN\DLE\NUL\DC2\US\n\
    \\ESCSOURCE_TYPE_BSC_CROSS_CHAIN\DLE\SOH\DC2\RS\n\
    \\SUBSOURCE_TYPE_MIRROR_PENDING\DLE\STX\SUB\EOT\136\163\RS\NUL*O\n\
    \\fBucketStatus\DC2\EM\n\
    \\NAKBUCKET_STATUS_CREATED\DLE\NUL\DC2\RS\n\
    \\SUBBUCKET_STATUS_DISCONTINUED\DLE\SOH\SUB\EOT\136\163\RS\NUL*K\n\
    \\SORedundancyType\DC2\SYN\n\
    \\DC2REDUNDANCY_EC_TYPE\DLE\NUL\DC2\ESC\n\
    \\ETBREDUNDANCY_REPLICA_TYPE\DLE\SOH\SUB\EOT\136\163\RS\NUL*i\n\
    \\fObjectStatus\DC2\EM\n\
    \\NAKOBJECT_STATUS_CREATED\DLE\NUL\DC2\CAN\n\
    \\DC4OBJECT_STATUS_SEALED\DLE\SOH\DC2\RS\n\
    \\SUBOBJECT_STATUS_DISCONTINUED\DLE\STX\SUB\EOT\136\163\RS\NUL*\146\SOH\n\
    \\SOVisibilityType\DC2\US\n\
    \\ESCVISIBILITY_TYPE_UNSPECIFIED\DLE\NUL\DC2\US\n\
    \\ESCVISIBILITY_TYPE_PUBLIC_READ\DLE\SOH\DC2\ESC\n\
    \\ETBVISIBILITY_TYPE_PRIVATE\DLE\STX\DC2\ESC\n\
    \\ETBVISIBILITY_TYPE_INHERIT\DLE\ETX\SUB\EOT\136\163\RS\NULB1Z/github.com/bnb-chain/greenfield/x/storage/typesJ\213\CAN\n\
    \\ACK\DC2\EOT\NUL\NULS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULF\n\
    \\143\SOH\n\
    \\STX\ENQ\NUL\DC2\EOT\n\
    \\NUL\DLE\SOH\SUB\130\SOH SourceType represents the source of resource creation, which can\n\
    \ from Greenfield native or from a cross-chain transfer from BSC\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\n\
    \\ENQ\SI\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\v\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\v\STX1\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\r\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\r\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\r\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SO\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SO\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SO !\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\SI\STX!\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\SI\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\SI\US \n\
    \\140\STX\n\
    \\STX\ENQ\SOH\DC2\EOT\NAK\NUL\SUB\SOH\SUB\255\SOH BucketStatus represents the status of a bucket. After a user successfully\n\
    \ sends a CreateBucket transaction onto the chain, the status is set to 'Created'.\n\
    \ When a Discontinue Object transaction is received on chain, the status is set to 'Discontinued'.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX\NAK\ENQ\DC1\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\ETX\DC2\ETX\SYN\STX1\n\
    \\r\n\
    \\ACK\ENQ\SOH\ETX\177\228\ETX\DC2\ETX\SYN\STX1\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX\CAN\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX\CAN\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX\CAN\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETX\EM\STX!\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETX\EM\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETX\EM\US \n\
    \\141\SOH\n\
    \\STX\ENQ\STX\DC2\EOT\RS\NUL#\SOH\SUB\128\SOH RedundancyType represents the redundancy algorithm type for object data,\n\
    \ which can be either multi-replica or erasure coding.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\STX\SOH\DC2\ETX\RS\ENQ\DC3\n\
    \\n\
    \\n\
    \\ETX\ENQ\STX\ETX\DC2\ETX\US\STX1\n\
    \\r\n\
    \\ACK\ENQ\STX\ETX\177\228\ETX\DC2\ETX\US\STX1\n\
    \\v\n\
    \\EOT\ENQ\STX\STX\NUL\DC2\ETX!\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\SOH\DC2\ETX!\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\STX\DC2\ETX!\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\STX\STX\SOH\DC2\ETX\"\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\SOH\DC2\ETX\"\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\STX\DC2\ETX\"\FS\GS\n\
    \\151\ETX\n\
    \\STX\ENQ\ETX\DC2\EOT*\NUL0\SOH\SUB\138\ETX ObjectStatus represents the creation status of an object. After a user successfully\n\
    \ sends a CreateObject transaction onto the chain, the status is set to 'Created'.\n\
    \ After the Primary Service Provider successfully sends a Seal Object transaction onto\n\
    \ the chain, the status is set to 'Sealed'. When a Discontinue Object transaction is\n\
    \ received on chain, the status is set to 'Discontinued'.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\ETX\SOH\DC2\ETX*\ENQ\DC1\n\
    \\n\
    \\n\
    \\ETX\ENQ\ETX\ETX\DC2\ETX+\STX1\n\
    \\r\n\
    \\ACK\ENQ\ETX\ETX\177\228\ETX\DC2\ETX+\STX1\n\
    \\v\n\
    \\EOT\ENQ\ETX\STX\NUL\DC2\ETX-\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\ETX\STX\NUL\SOH\DC2\ETX-\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\ETX\STX\NUL\STX\DC2\ETX-\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\ETX\STX\SOH\DC2\ETX.\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\ETX\STX\SOH\SOH\DC2\ETX.\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\ETX\STX\SOH\STX\DC2\ETX.\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\ETX\STX\STX\DC2\ETX/\STX!\n\
    \\f\n\
    \\ENQ\ENQ\ETX\STX\STX\SOH\DC2\ETX/\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\ETX\STX\STX\STX\DC2\ETX/\US \n\
    \<\n\
    \\STX\ENQ\EOT\DC2\EOT3\NUL:\SOH\SUB0 VisibilityType is the resources public status.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\EOT\SOH\DC2\ETX3\ENQ\DC3\n\
    \\n\
    \\n\
    \\ETX\ENQ\EOT\ETX\DC2\ETX4\STX1\n\
    \\r\n\
    \\ACK\ENQ\EOT\ETX\177\228\ETX\DC2\ETX4\STX1\n\
    \\v\n\
    \\EOT\ENQ\EOT\STX\NUL\DC2\ETX5\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\NUL\SOH\DC2\ETX5\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\NUL\STX\DC2\ETX5 !\n\
    \\v\n\
    \\EOT\ENQ\EOT\STX\SOH\DC2\ETX6\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\SOH\SOH\DC2\ETX6\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\SOH\STX\DC2\ETX6 !\n\
    \\v\n\
    \\EOT\ENQ\EOT\STX\STX\DC2\ETX7\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\STX\SOH\DC2\ETX7\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\STX\STX\DC2\ETX7\FS\GS\n\
    \\143\SOH\n\
    \\EOT\ENQ\EOT\STX\ETX\DC2\ETX9\STX\RS\SUB\129\SOH If the bucket Visibility is inherit, it's finally set to private. If the object Visibility is inherit, it's the same as bucket.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\ETX\SOH\DC2\ETX9\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\EOT\STX\ETX\STX\DC2\ETX9\FS\GS\n\
    \\141\STX\n\
    \\STX\EOT\NUL\DC2\EOT?\NULD\SOH\SUB\128\STX Approval is the signature information returned by the Primary Storage Provider (SP) to the user\n\
    \ after allowing them to create a bucket or object, which is then used for verification on the chain\n\
    \ to ensure agreement between the Primary SP and the user.\"\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX?\b\DLE\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXA\STX\FS\SUBD expired_height is the block height at which the signature expires.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXA\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXA\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXA\SUB\ESC\n\
    \K\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXC\STX\DLE\SUB> The signature needs to conform to the EIP 712 specification.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXC\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXC\b\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXC\SO\SI\n\
    \\217\STX\n\
    \\STX\EOT\SOH\DC2\EOTK\NULS\SOH\SUB\204\STX SecondarySpSignDoc used to generate seal signature of secondary SP\n\
    \ If the secondary SP only signs the checksum to declare the object pieces are saved,\n\
    \ it might be reused by the primary SP to fake it's declaration.\n\
    \ Then the primary SP can challenge and slash the secondary SP.\n\
    \ So the id of the object is needed to prevent this.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXK\b\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXL\STXI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXL\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXL\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXL\CANH\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETXL\EMG\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOTM\STXQ\EOT\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXM\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXM\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOTM\ETBQ\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETXN\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\235\251\ETX\DC2\ETXO\EOT#\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETXP\EOT \n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXR\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXR\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXR\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXR\DC3\DC4b\ACKproto3"