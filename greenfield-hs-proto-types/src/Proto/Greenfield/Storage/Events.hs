{- This file was auto-generated from greenfield/storage/events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Events (
        EventCancelCreateObject(), EventCopyObject(), EventCreateBucket(),
        EventCreateGroup(), EventCreateObject(), EventDeleteBucket(),
        EventDeleteGroup(), EventDeleteObject(), EventDiscontinueBucket(),
        EventDiscontinueObject(), EventLeaveGroup(), EventMirrorBucket(),
        EventMirrorBucketResult(), EventMirrorGroup(),
        EventMirrorGroupResult(), EventMirrorObject(),
        EventMirrorObjectResult(), EventRejectSealObject(),
        EventSealObject(), EventStalePolicyCleanup(),
        EventUpdateBucketInfo(), EventUpdateGroupMember(),
        EventUpdateObjectInfo()
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
import qualified Proto.Greenfield.Storage.Common
import qualified Proto.Greenfield.Storage.Types
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventCancelCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventCancelCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventCancelCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.primarySpAddress' @:: Lens' EventCancelCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventCancelCreateObject Data.Text.Text@ -}
data EventCancelCreateObject
  = EventCancelCreateObject'_constructor {_EventCancelCreateObject'operator :: !Data.Text.Text,
                                          _EventCancelCreateObject'bucketName :: !Data.Text.Text,
                                          _EventCancelCreateObject'objectName :: !Data.Text.Text,
                                          _EventCancelCreateObject'primarySpAddress :: !Data.Text.Text,
                                          _EventCancelCreateObject'objectId :: !Data.Text.Text,
                                          _EventCancelCreateObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCancelCreateObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCancelCreateObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCancelCreateObject'operator
           (\ x__ y__ -> x__ {_EventCancelCreateObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCancelCreateObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCancelCreateObject'bucketName
           (\ x__ y__ -> x__ {_EventCancelCreateObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCancelCreateObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCancelCreateObject'objectName
           (\ x__ y__ -> x__ {_EventCancelCreateObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCancelCreateObject "primarySpAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCancelCreateObject'primarySpAddress
           (\ x__ y__
              -> x__ {_EventCancelCreateObject'primarySpAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCancelCreateObject "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCancelCreateObject'objectId
           (\ x__ y__ -> x__ {_EventCancelCreateObject'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCancelCreateObject where
  messageName _
    = Data.Text.pack "greenfield.storage.EventCancelCreateObject"
  packedMessageDescriptor _
    = "\n\
      \\ETBEventCancelCreateObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC2F\n\
      \\DC2primary_sp_address\CAN\EOT \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
      \\tobject_id\CAN\ACK \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventCancelCreateObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventCancelCreateObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventCancelCreateObject
        primarySpAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"primarySpAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCancelCreateObject
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventCancelCreateObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, primarySpAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, objectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCancelCreateObject'_unknownFields
        (\ x__ y__ -> x__ {_EventCancelCreateObject'_unknownFields = y__})
  defMessage
    = EventCancelCreateObject'_constructor
        {_EventCancelCreateObject'operator = Data.ProtoLens.fieldDefault,
         _EventCancelCreateObject'bucketName = Data.ProtoLens.fieldDefault,
         _EventCancelCreateObject'objectName = Data.ProtoLens.fieldDefault,
         _EventCancelCreateObject'primarySpAddress = Data.ProtoLens.fieldDefault,
         _EventCancelCreateObject'objectId = Data.ProtoLens.fieldDefault,
         _EventCancelCreateObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCancelCreateObject
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCancelCreateObject
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "primary_sp_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpAddress") y x)
                        50
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventCancelCreateObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"primarySpAddress") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData EventCancelCreateObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCancelCreateObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCancelCreateObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventCancelCreateObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventCancelCreateObject'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_EventCancelCreateObject'primarySpAddress x__)
                         (Control.DeepSeq.deepseq
                            (_EventCancelCreateObject'objectId x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.srcBucketName' @:: Lens' EventCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.srcObjectName' @:: Lens' EventCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.dstBucketName' @:: Lens' EventCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.dstObjectName' @:: Lens' EventCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.srcObjectId' @:: Lens' EventCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.dstObjectId' @:: Lens' EventCopyObject Data.Text.Text@ -}
data EventCopyObject
  = EventCopyObject'_constructor {_EventCopyObject'operator :: !Data.Text.Text,
                                  _EventCopyObject'srcBucketName :: !Data.Text.Text,
                                  _EventCopyObject'srcObjectName :: !Data.Text.Text,
                                  _EventCopyObject'dstBucketName :: !Data.Text.Text,
                                  _EventCopyObject'dstObjectName :: !Data.Text.Text,
                                  _EventCopyObject'srcObjectId :: !Data.Text.Text,
                                  _EventCopyObject'dstObjectId :: !Data.Text.Text,
                                  _EventCopyObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCopyObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCopyObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCopyObject'operator
           (\ x__ y__ -> x__ {_EventCopyObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCopyObject "srcBucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCopyObject'srcBucketName
           (\ x__ y__ -> x__ {_EventCopyObject'srcBucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCopyObject "srcObjectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCopyObject'srcObjectName
           (\ x__ y__ -> x__ {_EventCopyObject'srcObjectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCopyObject "dstBucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCopyObject'dstBucketName
           (\ x__ y__ -> x__ {_EventCopyObject'dstBucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCopyObject "dstObjectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCopyObject'dstObjectName
           (\ x__ y__ -> x__ {_EventCopyObject'dstObjectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCopyObject "srcObjectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCopyObject'srcObjectId
           (\ x__ y__ -> x__ {_EventCopyObject'srcObjectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCopyObject "dstObjectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCopyObject'dstObjectId
           (\ x__ y__ -> x__ {_EventCopyObject'dstObjectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCopyObject where
  messageName _ = Data.Text.pack "greenfield.storage.EventCopyObject"
  packedMessageDescriptor _
    = "\n\
      \\SIEventCopyObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2&\n\
      \\SIsrc_bucket_name\CAN\STX \SOH(\tR\rsrcBucketName\DC2&\n\
      \\SIsrc_object_name\CAN\ETX \SOH(\tR\rsrcObjectName\DC2&\n\
      \\SIdst_bucket_name\CAN\EOT \SOH(\tR\rdstBucketName\DC2&\n\
      \\SIdst_object_name\CAN\ENQ \SOH(\tR\rdstObjectName\DC2?\n\
      \\rsrc_object_id\CAN\ACK \SOH(\tR\vsrcObjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
      \\rdst_object_id\CAN\a \SOH(\tR\vdstObjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventCopyObject
        srcBucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"srcBucketName")) ::
              Data.ProtoLens.FieldDescriptor EventCopyObject
        srcObjectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"srcObjectName")) ::
              Data.ProtoLens.FieldDescriptor EventCopyObject
        dstBucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dstBucketName")) ::
              Data.ProtoLens.FieldDescriptor EventCopyObject
        dstObjectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dstObjectName")) ::
              Data.ProtoLens.FieldDescriptor EventCopyObject
        srcObjectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"srcObjectId")) ::
              Data.ProtoLens.FieldDescriptor EventCopyObject
        dstObjectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dstObjectId")) ::
              Data.ProtoLens.FieldDescriptor EventCopyObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, srcBucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, srcObjectName__field_descriptor),
           (Data.ProtoLens.Tag 4, dstBucketName__field_descriptor),
           (Data.ProtoLens.Tag 5, dstObjectName__field_descriptor),
           (Data.ProtoLens.Tag 6, srcObjectId__field_descriptor),
           (Data.ProtoLens.Tag 7, dstObjectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCopyObject'_unknownFields
        (\ x__ y__ -> x__ {_EventCopyObject'_unknownFields = y__})
  defMessage
    = EventCopyObject'_constructor
        {_EventCopyObject'operator = Data.ProtoLens.fieldDefault,
         _EventCopyObject'srcBucketName = Data.ProtoLens.fieldDefault,
         _EventCopyObject'srcObjectName = Data.ProtoLens.fieldDefault,
         _EventCopyObject'dstBucketName = Data.ProtoLens.fieldDefault,
         _EventCopyObject'dstObjectName = Data.ProtoLens.fieldDefault,
         _EventCopyObject'srcObjectId = Data.ProtoLens.fieldDefault,
         _EventCopyObject'dstObjectId = Data.ProtoLens.fieldDefault,
         _EventCopyObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCopyObject
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCopyObject
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "src_bucket_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"srcBucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "src_object_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"srcObjectName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "dst_bucket_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dstBucketName") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "dst_object_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dstObjectName") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "src_object_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"srcObjectId") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "dst_object_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dstObjectId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventCopyObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"srcBucketName") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"srcObjectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"dstBucketName") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"dstObjectName") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"srcObjectId") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"dstObjectId") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData EventCopyObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCopyObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCopyObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventCopyObject'srcBucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventCopyObject'srcObjectName x__)
                      (Control.DeepSeq.deepseq
                         (_EventCopyObject'dstBucketName x__)
                         (Control.DeepSeq.deepseq
                            (_EventCopyObject'dstObjectName x__)
                            (Control.DeepSeq.deepseq
                               (_EventCopyObject'srcObjectId x__)
                               (Control.DeepSeq.deepseq
                                  (_EventCopyObject'dstObjectId x__) ())))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.visibility' @:: Lens' EventCreateBucket Proto.Greenfield.Storage.Common.VisibilityType@
         * 'Proto.Greenfield.Storage.Events_Fields.createAt' @:: Lens' EventCreateBucket Data.Int.Int64@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketId' @:: Lens' EventCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.sourceType' @:: Lens' EventCreateBucket Proto.Greenfield.Storage.Common.SourceType@
         * 'Proto.Greenfield.Storage.Events_Fields.chargedReadQuota' @:: Lens' EventCreateBucket Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Events_Fields.paymentAddress' @:: Lens' EventCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.primarySpAddress' @:: Lens' EventCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.status' @:: Lens' EventCreateBucket Proto.Greenfield.Storage.Common.BucketStatus@ -}
data EventCreateBucket
  = EventCreateBucket'_constructor {_EventCreateBucket'owner :: !Data.Text.Text,
                                    _EventCreateBucket'bucketName :: !Data.Text.Text,
                                    _EventCreateBucket'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                    _EventCreateBucket'createAt :: !Data.Int.Int64,
                                    _EventCreateBucket'bucketId :: !Data.Text.Text,
                                    _EventCreateBucket'sourceType :: !Proto.Greenfield.Storage.Common.SourceType,
                                    _EventCreateBucket'chargedReadQuota :: !Data.Word.Word64,
                                    _EventCreateBucket'paymentAddress :: !Data.Text.Text,
                                    _EventCreateBucket'primarySpAddress :: !Data.Text.Text,
                                    _EventCreateBucket'status :: !Proto.Greenfield.Storage.Common.BucketStatus,
                                    _EventCreateBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCreateBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCreateBucket "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'owner
           (\ x__ y__ -> x__ {_EventCreateBucket'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'bucketName
           (\ x__ y__ -> x__ {_EventCreateBucket'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'visibility
           (\ x__ y__ -> x__ {_EventCreateBucket'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "createAt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'createAt
           (\ x__ y__ -> x__ {_EventCreateBucket'createAt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'bucketId
           (\ x__ y__ -> x__ {_EventCreateBucket'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "sourceType" Proto.Greenfield.Storage.Common.SourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'sourceType
           (\ x__ y__ -> x__ {_EventCreateBucket'sourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "chargedReadQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'chargedReadQuota
           (\ x__ y__ -> x__ {_EventCreateBucket'chargedReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "paymentAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'paymentAddress
           (\ x__ y__ -> x__ {_EventCreateBucket'paymentAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "primarySpAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'primarySpAddress
           (\ x__ y__ -> x__ {_EventCreateBucket'primarySpAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateBucket "status" Proto.Greenfield.Storage.Common.BucketStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateBucket'status
           (\ x__ y__ -> x__ {_EventCreateBucket'status = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCreateBucket where
  messageName _
    = Data.Text.pack "greenfield.storage.EventCreateBucket"
  packedMessageDescriptor _
    = "\n\
      \\DC1EventCreateBucket\DC2.\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2B\n\
      \\n\
      \visibility\CAN\ETX \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility\DC2\ESC\n\
      \\tcreate_at\CAN\EOT \SOH(\ETXR\bcreateAt\DC28\n\
      \\tbucket_id\CAN\ENQ \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
      \\vsource_type\CAN\ACK \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
      \sourceType\DC2,\n\
      \\DC2charged_read_quota\CAN\a \SOH(\EOTR\DLEchargedReadQuota\DC2A\n\
      \\SIpayment_address\CAN\b \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\DC2primary_sp_address\CAN\t \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
      \\ACKstatus\CAN\n\
      \ \SOH(\SO2 .greenfield.storage.BucketStatusR\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        createAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_at"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"createAt")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        sourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.SourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceType")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        chargedReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "charged_read_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"chargedReadQuota")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        paymentAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        primarySpAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"primarySpAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.BucketStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventCreateBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, visibility__field_descriptor),
           (Data.ProtoLens.Tag 4, createAt__field_descriptor),
           (Data.ProtoLens.Tag 5, bucketId__field_descriptor),
           (Data.ProtoLens.Tag 6, sourceType__field_descriptor),
           (Data.ProtoLens.Tag 7, chargedReadQuota__field_descriptor),
           (Data.ProtoLens.Tag 8, paymentAddress__field_descriptor),
           (Data.ProtoLens.Tag 9, primarySpAddress__field_descriptor),
           (Data.ProtoLens.Tag 10, status__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCreateBucket'_unknownFields
        (\ x__ y__ -> x__ {_EventCreateBucket'_unknownFields = y__})
  defMessage
    = EventCreateBucket'_constructor
        {_EventCreateBucket'owner = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'bucketName = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'visibility = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'createAt = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'bucketId = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'sourceType = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'chargedReadQuota = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'paymentAddress = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'primarySpAddress = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'status = Data.ProtoLens.fieldDefault,
         _EventCreateBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCreateBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCreateBucket
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "visibility"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"visibility") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "create_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createAt") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceType") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "charged_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chargedReadQuota") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "payment_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAddress") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "primary_sp_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpAddress") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventCreateBucket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"visibility") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"createAt") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"sourceType") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"chargedReadQuota") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"paymentAddress") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"primarySpAddress") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((Prelude..)
                                                 (\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                 Data.Text.Encoding.encodeUtf8 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"status") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral)
                                                    Prelude.fromEnum _v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData EventCreateBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCreateBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCreateBucket'owner x__)
                (Control.DeepSeq.deepseq
                   (_EventCreateBucket'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventCreateBucket'visibility x__)
                      (Control.DeepSeq.deepseq
                         (_EventCreateBucket'createAt x__)
                         (Control.DeepSeq.deepseq
                            (_EventCreateBucket'bucketId x__)
                            (Control.DeepSeq.deepseq
                               (_EventCreateBucket'sourceType x__)
                               (Control.DeepSeq.deepseq
                                  (_EventCreateBucket'chargedReadQuota x__)
                                  (Control.DeepSeq.deepseq
                                     (_EventCreateBucket'paymentAddress x__)
                                     (Control.DeepSeq.deepseq
                                        (_EventCreateBucket'primarySpAddress x__)
                                        (Control.DeepSeq.deepseq
                                           (_EventCreateBucket'status x__) ()))))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventCreateGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupName' @:: Lens' EventCreateGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupId' @:: Lens' EventCreateGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.sourceType' @:: Lens' EventCreateGroup Proto.Greenfield.Storage.Common.SourceType@
         * 'Proto.Greenfield.Storage.Events_Fields.members' @:: Lens' EventCreateGroup [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Events_Fields.vec'members' @:: Lens' EventCreateGroup (Data.Vector.Vector Data.Text.Text)@ -}
data EventCreateGroup
  = EventCreateGroup'_constructor {_EventCreateGroup'owner :: !Data.Text.Text,
                                   _EventCreateGroup'groupName :: !Data.Text.Text,
                                   _EventCreateGroup'groupId :: !Data.Text.Text,
                                   _EventCreateGroup'sourceType :: !Proto.Greenfield.Storage.Common.SourceType,
                                   _EventCreateGroup'members :: !(Data.Vector.Vector Data.Text.Text),
                                   _EventCreateGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCreateGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCreateGroup "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroup'owner
           (\ x__ y__ -> x__ {_EventCreateGroup'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateGroup "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroup'groupName
           (\ x__ y__ -> x__ {_EventCreateGroup'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateGroup "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroup'groupId
           (\ x__ y__ -> x__ {_EventCreateGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateGroup "sourceType" Proto.Greenfield.Storage.Common.SourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroup'sourceType
           (\ x__ y__ -> x__ {_EventCreateGroup'sourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateGroup "members" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroup'members
           (\ x__ y__ -> x__ {_EventCreateGroup'members = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventCreateGroup "vec'members" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroup'members
           (\ x__ y__ -> x__ {_EventCreateGroup'members = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCreateGroup where
  messageName _
    = Data.Text.pack "greenfield.storage.EventCreateGroup"
  packedMessageDescriptor _
    = "\n\
      \\DLEEventCreateGroup\DC2.\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\STX \SOH(\tR\tgroupName\DC26\n\
      \\bgroup_id\CAN\ETX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
      \\vsource_type\CAN\EOT \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
      \sourceType\DC22\n\
      \\amembers\CAN\ENQ \ETX(\tR\amembersB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventCreateGroup
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor EventCreateGroup
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor EventCreateGroup
        sourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.SourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceType")) ::
              Data.ProtoLens.FieldDescriptor EventCreateGroup
        members__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"members")) ::
              Data.ProtoLens.FieldDescriptor EventCreateGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, groupId__field_descriptor),
           (Data.ProtoLens.Tag 4, sourceType__field_descriptor),
           (Data.ProtoLens.Tag 5, members__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCreateGroup'_unknownFields
        (\ x__ y__ -> x__ {_EventCreateGroup'_unknownFields = y__})
  defMessage
    = EventCreateGroup'_constructor
        {_EventCreateGroup'owner = Data.ProtoLens.fieldDefault,
         _EventCreateGroup'groupName = Data.ProtoLens.fieldDefault,
         _EventCreateGroup'groupId = Data.ProtoLens.fieldDefault,
         _EventCreateGroup'sourceType = Data.ProtoLens.fieldDefault,
         _EventCreateGroup'members = Data.Vector.Generic.empty,
         _EventCreateGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCreateGroup
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser EventCreateGroup
        loop x mutable'members
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'members)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'members") frozen'members x))
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
                                       "owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                                  mutable'members
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
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                                  mutable'members
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                                  mutable'members
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceType") y x)
                                  mutable'members
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "members"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'members y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'members
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'members)
          "EventCreateGroup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"sourceType") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.Text.Encoding.encodeUtf8 _v))
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'members") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData EventCreateGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCreateGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCreateGroup'owner x__)
                (Control.DeepSeq.deepseq
                   (_EventCreateGroup'groupName x__)
                   (Control.DeepSeq.deepseq
                      (_EventCreateGroup'groupId x__)
                      (Control.DeepSeq.deepseq
                         (_EventCreateGroup'sourceType x__)
                         (Control.DeepSeq.deepseq (_EventCreateGroup'members x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.creator' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketId' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.primarySpAddress' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.payloadSize' @:: Lens' EventCreateObject Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Events_Fields.visibility' @:: Lens' EventCreateObject Proto.Greenfield.Storage.Common.VisibilityType@
         * 'Proto.Greenfield.Storage.Events_Fields.contentType' @:: Lens' EventCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.createAt' @:: Lens' EventCreateObject Data.Int.Int64@
         * 'Proto.Greenfield.Storage.Events_Fields.status' @:: Lens' EventCreateObject Proto.Greenfield.Storage.Common.ObjectStatus@
         * 'Proto.Greenfield.Storage.Events_Fields.redundancyType' @:: Lens' EventCreateObject Proto.Greenfield.Storage.Common.RedundancyType@
         * 'Proto.Greenfield.Storage.Events_Fields.sourceType' @:: Lens' EventCreateObject Proto.Greenfield.Storage.Common.SourceType@
         * 'Proto.Greenfield.Storage.Events_Fields.checksums' @:: Lens' EventCreateObject [Data.ByteString.ByteString]@
         * 'Proto.Greenfield.Storage.Events_Fields.vec'checksums' @:: Lens' EventCreateObject (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data EventCreateObject
  = EventCreateObject'_constructor {_EventCreateObject'creator :: !Data.Text.Text,
                                    _EventCreateObject'owner :: !Data.Text.Text,
                                    _EventCreateObject'bucketName :: !Data.Text.Text,
                                    _EventCreateObject'objectName :: !Data.Text.Text,
                                    _EventCreateObject'bucketId :: !Data.Text.Text,
                                    _EventCreateObject'objectId :: !Data.Text.Text,
                                    _EventCreateObject'primarySpAddress :: !Data.Text.Text,
                                    _EventCreateObject'payloadSize :: !Data.Word.Word64,
                                    _EventCreateObject'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                    _EventCreateObject'contentType :: !Data.Text.Text,
                                    _EventCreateObject'createAt :: !Data.Int.Int64,
                                    _EventCreateObject'status :: !Proto.Greenfield.Storage.Common.ObjectStatus,
                                    _EventCreateObject'redundancyType :: !Proto.Greenfield.Storage.Common.RedundancyType,
                                    _EventCreateObject'sourceType :: !Proto.Greenfield.Storage.Common.SourceType,
                                    _EventCreateObject'checksums :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                    _EventCreateObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCreateObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCreateObject "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'creator
           (\ x__ y__ -> x__ {_EventCreateObject'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'owner
           (\ x__ y__ -> x__ {_EventCreateObject'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'bucketName
           (\ x__ y__ -> x__ {_EventCreateObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'objectName
           (\ x__ y__ -> x__ {_EventCreateObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'bucketId
           (\ x__ y__ -> x__ {_EventCreateObject'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'objectId
           (\ x__ y__ -> x__ {_EventCreateObject'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "primarySpAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'primarySpAddress
           (\ x__ y__ -> x__ {_EventCreateObject'primarySpAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "payloadSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'payloadSize
           (\ x__ y__ -> x__ {_EventCreateObject'payloadSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'visibility
           (\ x__ y__ -> x__ {_EventCreateObject'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "contentType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'contentType
           (\ x__ y__ -> x__ {_EventCreateObject'contentType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "createAt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'createAt
           (\ x__ y__ -> x__ {_EventCreateObject'createAt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "status" Proto.Greenfield.Storage.Common.ObjectStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'status
           (\ x__ y__ -> x__ {_EventCreateObject'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "redundancyType" Proto.Greenfield.Storage.Common.RedundancyType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'redundancyType
           (\ x__ y__ -> x__ {_EventCreateObject'redundancyType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "sourceType" Proto.Greenfield.Storage.Common.SourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'sourceType
           (\ x__ y__ -> x__ {_EventCreateObject'sourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateObject "checksums" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'checksums
           (\ x__ y__ -> x__ {_EventCreateObject'checksums = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventCreateObject "vec'checksums" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateObject'checksums
           (\ x__ y__ -> x__ {_EventCreateObject'checksums = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCreateObject where
  messageName _
    = Data.Text.pack "greenfield.storage.EventCreateObject"
  packedMessageDescriptor _
    = "\n\
      \\DC1EventCreateObject\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\ETX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\EOT \SOH(\tR\n\
      \objectName\DC28\n\
      \\tbucket_id\CAN\ACK \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC28\n\
      \\tobject_id\CAN\a \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2F\n\
      \\DC2primary_sp_address\CAN\b \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2!\n\
      \\fpayload_size\CAN\t \SOH(\EOTR\vpayloadSize\DC2B\n\
      \\n\
      \visibility\CAN\n\
      \ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility\DC2!\n\
      \\fcontent_type\CAN\v \SOH(\tR\vcontentType\DC2\ESC\n\
      \\tcreate_at\CAN\f \SOH(\ETXR\bcreateAt\DC28\n\
      \\ACKstatus\CAN\r \SOH(\SO2 .greenfield.storage.ObjectStatusR\ACKstatus\DC2K\n\
      \\SIredundancy_type\CAN\SO \SOH(\SO2\".greenfield.storage.RedundancyTypeR\SOredundancyType\DC2?\n\
      \\vsource_type\CAN\SI \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
      \sourceType\DC2\FS\n\
      \\tchecksums\CAN\DLE \ETX(\fR\tchecksums"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"creator")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        primarySpAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"primarySpAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        payloadSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"payloadSize")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        contentType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"contentType")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        createAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_at"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"createAt")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.ObjectStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        redundancyType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redundancy_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.RedundancyType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"redundancyType")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        sourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.SourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceType")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
        checksums__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checksums"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"checksums")) ::
              Data.ProtoLens.FieldDescriptor EventCreateObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 4, objectName__field_descriptor),
           (Data.ProtoLens.Tag 6, bucketId__field_descriptor),
           (Data.ProtoLens.Tag 7, objectId__field_descriptor),
           (Data.ProtoLens.Tag 8, primarySpAddress__field_descriptor),
           (Data.ProtoLens.Tag 9, payloadSize__field_descriptor),
           (Data.ProtoLens.Tag 10, visibility__field_descriptor),
           (Data.ProtoLens.Tag 11, contentType__field_descriptor),
           (Data.ProtoLens.Tag 12, createAt__field_descriptor),
           (Data.ProtoLens.Tag 13, status__field_descriptor),
           (Data.ProtoLens.Tag 14, redundancyType__field_descriptor),
           (Data.ProtoLens.Tag 15, sourceType__field_descriptor),
           (Data.ProtoLens.Tag 16, checksums__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCreateObject'_unknownFields
        (\ x__ y__ -> x__ {_EventCreateObject'_unknownFields = y__})
  defMessage
    = EventCreateObject'_constructor
        {_EventCreateObject'creator = Data.ProtoLens.fieldDefault,
         _EventCreateObject'owner = Data.ProtoLens.fieldDefault,
         _EventCreateObject'bucketName = Data.ProtoLens.fieldDefault,
         _EventCreateObject'objectName = Data.ProtoLens.fieldDefault,
         _EventCreateObject'bucketId = Data.ProtoLens.fieldDefault,
         _EventCreateObject'objectId = Data.ProtoLens.fieldDefault,
         _EventCreateObject'primarySpAddress = Data.ProtoLens.fieldDefault,
         _EventCreateObject'payloadSize = Data.ProtoLens.fieldDefault,
         _EventCreateObject'visibility = Data.ProtoLens.fieldDefault,
         _EventCreateObject'contentType = Data.ProtoLens.fieldDefault,
         _EventCreateObject'createAt = Data.ProtoLens.fieldDefault,
         _EventCreateObject'status = Data.ProtoLens.fieldDefault,
         _EventCreateObject'redundancyType = Data.ProtoLens.fieldDefault,
         _EventCreateObject'sourceType = Data.ProtoLens.fieldDefault,
         _EventCreateObject'checksums = Data.Vector.Generic.empty,
         _EventCreateObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCreateObject
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser EventCreateObject
        loop x mutable'checksums
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'checksums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'checksums)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'checksums") frozen'checksums x))
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
                                       "creator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
                                  mutable'checksums
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
                                       "owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                                  mutable'checksums
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                                  mutable'checksums
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                                  mutable'checksums
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                                  mutable'checksums
                        58
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
                                  mutable'checksums
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "primary_sp_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpAddress") y x)
                                  mutable'checksums
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "payload_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payloadSize") y x)
                                  mutable'checksums
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "visibility"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"visibility") y x)
                                  mutable'checksums
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "content_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contentType") y x)
                                  mutable'checksums
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "create_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createAt") y x)
                                  mutable'checksums
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'checksums
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "redundancy_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redundancyType") y x)
                                  mutable'checksums
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceType") y x)
                                  mutable'checksums
                        130
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "checksums"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'checksums y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'checksums
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'checksums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'checksums)
          "EventCreateObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"creator") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"primarySpAddress") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"payloadSize") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"visibility") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                              ((Prelude..)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral)
                                                 Prelude.fromEnum _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"contentType") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                 ((Prelude..)
                                                    (\ bs
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               (Prelude.fromIntegral
                                                                  (Data.ByteString.length bs)))
                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                               bs))
                                                    Data.Text.Encoding.encodeUtf8 _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"createAt") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"status") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                                       ((Prelude..)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             Prelude.fromIntegral)
                                                          Prelude.fromEnum _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"redundancyType")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             112)
                                                          ((Prelude..)
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                Prelude.fromIntegral)
                                                             Prelude.fromEnum _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"sourceType")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                120)
                                                             ((Prelude..)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   Prelude.fromIntegral)
                                                                Prelude.fromEnum _v))
                                                    ((Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                          (\ _v
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     130)
                                                                  ((\ bs
                                                                      -> (Data.Monoid.<>)
                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                              (Prelude.fromIntegral
                                                                                 (Data.ByteString.length
                                                                                    bs)))
                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                              bs))
                                                                     _v))
                                                          (Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"vec'checksums")
                                                             _x))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData EventCreateObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCreateObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCreateObject'creator x__)
                (Control.DeepSeq.deepseq
                   (_EventCreateObject'owner x__)
                   (Control.DeepSeq.deepseq
                      (_EventCreateObject'bucketName x__)
                      (Control.DeepSeq.deepseq
                         (_EventCreateObject'objectName x__)
                         (Control.DeepSeq.deepseq
                            (_EventCreateObject'bucketId x__)
                            (Control.DeepSeq.deepseq
                               (_EventCreateObject'objectId x__)
                               (Control.DeepSeq.deepseq
                                  (_EventCreateObject'primarySpAddress x__)
                                  (Control.DeepSeq.deepseq
                                     (_EventCreateObject'payloadSize x__)
                                     (Control.DeepSeq.deepseq
                                        (_EventCreateObject'visibility x__)
                                        (Control.DeepSeq.deepseq
                                           (_EventCreateObject'contentType x__)
                                           (Control.DeepSeq.deepseq
                                              (_EventCreateObject'createAt x__)
                                              (Control.DeepSeq.deepseq
                                                 (_EventCreateObject'status x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_EventCreateObject'redundancyType x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_EventCreateObject'sourceType x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_EventCreateObject'checksums x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventDeleteBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventDeleteBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventDeleteBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketId' @:: Lens' EventDeleteBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.primarySpAddress' @:: Lens' EventDeleteBucket Data.Text.Text@ -}
data EventDeleteBucket
  = EventDeleteBucket'_constructor {_EventDeleteBucket'operator :: !Data.Text.Text,
                                    _EventDeleteBucket'owner :: !Data.Text.Text,
                                    _EventDeleteBucket'bucketName :: !Data.Text.Text,
                                    _EventDeleteBucket'bucketId :: !Data.Text.Text,
                                    _EventDeleteBucket'primarySpAddress :: !Data.Text.Text,
                                    _EventDeleteBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDeleteBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDeleteBucket "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteBucket'operator
           (\ x__ y__ -> x__ {_EventDeleteBucket'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteBucket "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteBucket'owner
           (\ x__ y__ -> x__ {_EventDeleteBucket'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteBucket "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteBucket'bucketName
           (\ x__ y__ -> x__ {_EventDeleteBucket'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteBucket "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteBucket'bucketId
           (\ x__ y__ -> x__ {_EventDeleteBucket'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteBucket "primarySpAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteBucket'primarySpAddress
           (\ x__ y__ -> x__ {_EventDeleteBucket'primarySpAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDeleteBucket where
  messageName _
    = Data.Text.pack "greenfield.storage.EventDeleteBucket"
  packedMessageDescriptor _
    = "\n\
      \\DC1EventDeleteBucket\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\ETX \SOH(\tR\n\
      \bucketName\DC28\n\
      \\tbucket_id\CAN\EOT \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2F\n\
      \\DC2primary_sp_address\CAN\ENQ \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteBucket
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteBucket
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteBucket
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteBucket
        primarySpAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"primarySpAddress")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 4, bucketId__field_descriptor),
           (Data.ProtoLens.Tag 5, primarySpAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDeleteBucket'_unknownFields
        (\ x__ y__ -> x__ {_EventDeleteBucket'_unknownFields = y__})
  defMessage
    = EventDeleteBucket'_constructor
        {_EventDeleteBucket'operator = Data.ProtoLens.fieldDefault,
         _EventDeleteBucket'owner = Data.ProtoLens.fieldDefault,
         _EventDeleteBucket'bucketName = Data.ProtoLens.fieldDefault,
         _EventDeleteBucket'bucketId = Data.ProtoLens.fieldDefault,
         _EventDeleteBucket'primarySpAddress = Data.ProtoLens.fieldDefault,
         _EventDeleteBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDeleteBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser EventDeleteBucket
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "primary_sp_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventDeleteBucket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"primarySpAddress") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData EventDeleteBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDeleteBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventDeleteBucket'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventDeleteBucket'owner x__)
                   (Control.DeepSeq.deepseq
                      (_EventDeleteBucket'bucketName x__)
                      (Control.DeepSeq.deepseq
                         (_EventDeleteBucket'bucketId x__)
                         (Control.DeepSeq.deepseq
                            (_EventDeleteBucket'primarySpAddress x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventDeleteGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupName' @:: Lens' EventDeleteGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupId' @:: Lens' EventDeleteGroup Data.Text.Text@ -}
data EventDeleteGroup
  = EventDeleteGroup'_constructor {_EventDeleteGroup'owner :: !Data.Text.Text,
                                   _EventDeleteGroup'groupName :: !Data.Text.Text,
                                   _EventDeleteGroup'groupId :: !Data.Text.Text,
                                   _EventDeleteGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDeleteGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDeleteGroup "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteGroup'owner
           (\ x__ y__ -> x__ {_EventDeleteGroup'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteGroup "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteGroup'groupName
           (\ x__ y__ -> x__ {_EventDeleteGroup'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteGroup "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteGroup'groupId
           (\ x__ y__ -> x__ {_EventDeleteGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDeleteGroup where
  messageName _
    = Data.Text.pack "greenfield.storage.EventDeleteGroup"
  packedMessageDescriptor _
    = "\n\
      \\DLEEventDeleteGroup\DC2.\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\ETX \SOH(\tR\tgroupName\DC26\n\
      \\bgroup_id\CAN\EOT \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteGroup
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteGroup
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, groupName__field_descriptor),
           (Data.ProtoLens.Tag 4, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDeleteGroup'_unknownFields
        (\ x__ y__ -> x__ {_EventDeleteGroup'_unknownFields = y__})
  defMessage
    = EventDeleteGroup'_constructor
        {_EventDeleteGroup'owner = Data.ProtoLens.fieldDefault,
         _EventDeleteGroup'groupName = Data.ProtoLens.fieldDefault,
         _EventDeleteGroup'groupId = Data.ProtoLens.fieldDefault,
         _EventDeleteGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDeleteGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser EventDeleteGroup
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventDeleteGroup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventDeleteGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDeleteGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventDeleteGroup'owner x__)
                (Control.DeepSeq.deepseq
                   (_EventDeleteGroup'groupName x__)
                   (Control.DeepSeq.deepseq (_EventDeleteGroup'groupId x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventDeleteObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventDeleteObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventDeleteObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventDeleteObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.primarySpAddress' @:: Lens' EventDeleteObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.secondarySpAddresses' @:: Lens' EventDeleteObject [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Events_Fields.vec'secondarySpAddresses' @:: Lens' EventDeleteObject (Data.Vector.Vector Data.Text.Text)@ -}
data EventDeleteObject
  = EventDeleteObject'_constructor {_EventDeleteObject'operator :: !Data.Text.Text,
                                    _EventDeleteObject'bucketName :: !Data.Text.Text,
                                    _EventDeleteObject'objectName :: !Data.Text.Text,
                                    _EventDeleteObject'objectId :: !Data.Text.Text,
                                    _EventDeleteObject'primarySpAddress :: !Data.Text.Text,
                                    _EventDeleteObject'secondarySpAddresses :: !(Data.Vector.Vector Data.Text.Text),
                                    _EventDeleteObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDeleteObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDeleteObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteObject'operator
           (\ x__ y__ -> x__ {_EventDeleteObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteObject'bucketName
           (\ x__ y__ -> x__ {_EventDeleteObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteObject'objectName
           (\ x__ y__ -> x__ {_EventDeleteObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteObject "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteObject'objectId
           (\ x__ y__ -> x__ {_EventDeleteObject'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteObject "primarySpAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteObject'primarySpAddress
           (\ x__ y__ -> x__ {_EventDeleteObject'primarySpAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeleteObject "secondarySpAddresses" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteObject'secondarySpAddresses
           (\ x__ y__ -> x__ {_EventDeleteObject'secondarySpAddresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventDeleteObject "vec'secondarySpAddresses" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeleteObject'secondarySpAddresses
           (\ x__ y__ -> x__ {_EventDeleteObject'secondarySpAddresses = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDeleteObject where
  messageName _
    = Data.Text.pack "greenfield.storage.EventDeleteObject"
  packedMessageDescriptor _
    = "\n\
      \\DC1EventDeleteObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC28\n\
      \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2F\n\
      \\DC2primary_sp_address\CAN\ENQ \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\SYNsecondary_sp_addresses\CAN\ACK \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteObject
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteObject
        primarySpAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"primarySpAddress")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteObject
        secondarySpAddresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_addresses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"secondarySpAddresses")) ::
              Data.ProtoLens.FieldDescriptor EventDeleteObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, objectId__field_descriptor),
           (Data.ProtoLens.Tag 5, primarySpAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, secondarySpAddresses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDeleteObject'_unknownFields
        (\ x__ y__ -> x__ {_EventDeleteObject'_unknownFields = y__})
  defMessage
    = EventDeleteObject'_constructor
        {_EventDeleteObject'operator = Data.ProtoLens.fieldDefault,
         _EventDeleteObject'bucketName = Data.ProtoLens.fieldDefault,
         _EventDeleteObject'objectName = Data.ProtoLens.fieldDefault,
         _EventDeleteObject'objectId = Data.ProtoLens.fieldDefault,
         _EventDeleteObject'primarySpAddress = Data.ProtoLens.fieldDefault,
         _EventDeleteObject'secondarySpAddresses = Data.Vector.Generic.empty,
         _EventDeleteObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDeleteObject
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser EventDeleteObject
        loop x mutable'secondarySpAddresses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'secondarySpAddresses)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'secondarySpAddresses")
                              frozen'secondarySpAddresses x))
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
                                  mutable'secondarySpAddresses
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                                  mutable'secondarySpAddresses
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                                  mutable'secondarySpAddresses
                        34
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
                                  mutable'secondarySpAddresses
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "primary_sp_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpAddress") y x)
                                  mutable'secondarySpAddresses
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "secondary_sp_addresses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'secondarySpAddresses y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'secondarySpAddresses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'secondarySpAddresses)
          "EventDeleteObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"primarySpAddress") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.Text.Encoding.encodeUtf8 _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'secondarySpAddresses") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData EventDeleteObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDeleteObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventDeleteObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventDeleteObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventDeleteObject'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_EventDeleteObject'objectId x__)
                         (Control.DeepSeq.deepseq
                            (_EventDeleteObject'primarySpAddress x__)
                            (Control.DeepSeq.deepseq
                               (_EventDeleteObject'secondarySpAddresses x__) ()))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.bucketId' @:: Lens' EventDiscontinueBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventDiscontinueBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.reason' @:: Lens' EventDiscontinueBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.deleteAt' @:: Lens' EventDiscontinueBucket Data.Int.Int64@ -}
data EventDiscontinueBucket
  = EventDiscontinueBucket'_constructor {_EventDiscontinueBucket'bucketId :: !Data.Text.Text,
                                         _EventDiscontinueBucket'bucketName :: !Data.Text.Text,
                                         _EventDiscontinueBucket'reason :: !Data.Text.Text,
                                         _EventDiscontinueBucket'deleteAt :: !Data.Int.Int64,
                                         _EventDiscontinueBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDiscontinueBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDiscontinueBucket "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueBucket'bucketId
           (\ x__ y__ -> x__ {_EventDiscontinueBucket'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDiscontinueBucket "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueBucket'bucketName
           (\ x__ y__ -> x__ {_EventDiscontinueBucket'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDiscontinueBucket "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueBucket'reason
           (\ x__ y__ -> x__ {_EventDiscontinueBucket'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDiscontinueBucket "deleteAt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueBucket'deleteAt
           (\ x__ y__ -> x__ {_EventDiscontinueBucket'deleteAt = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDiscontinueBucket where
  messageName _
    = Data.Text.pack "greenfield.storage.EventDiscontinueBucket"
  packedMessageDescriptor _
    = "\n\
      \\SYNEventDiscontinueBucket\DC28\n\
      \\tbucket_id\CAN\SOH \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\SYN\n\
      \\ACKreason\CAN\ETX \SOH(\tR\ACKreason\DC2\ESC\n\
      \\tdelete_at\CAN\EOT \SOH(\ETXR\bdeleteAt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueBucket
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueBucket
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueBucket
        deleteAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delete_at"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deleteAt")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketId__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, reason__field_descriptor),
           (Data.ProtoLens.Tag 4, deleteAt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDiscontinueBucket'_unknownFields
        (\ x__ y__ -> x__ {_EventDiscontinueBucket'_unknownFields = y__})
  defMessage
    = EventDiscontinueBucket'_constructor
        {_EventDiscontinueBucket'bucketId = Data.ProtoLens.fieldDefault,
         _EventDiscontinueBucket'bucketName = Data.ProtoLens.fieldDefault,
         _EventDiscontinueBucket'reason = Data.ProtoLens.fieldDefault,
         _EventDiscontinueBucket'deleteAt = Data.ProtoLens.fieldDefault,
         _EventDiscontinueBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDiscontinueBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser EventDiscontinueBucket
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
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delete_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deleteAt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventDiscontinueBucket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"deleteAt") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventDiscontinueBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDiscontinueBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventDiscontinueBucket'bucketId x__)
                (Control.DeepSeq.deepseq
                   (_EventDiscontinueBucket'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventDiscontinueBucket'reason x__)
                      (Control.DeepSeq.deepseq
                         (_EventDiscontinueBucket'deleteAt x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventDiscontinueObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventDiscontinueObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.reason' @:: Lens' EventDiscontinueObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.deleteAt' @:: Lens' EventDiscontinueObject Data.Int.Int64@ -}
data EventDiscontinueObject
  = EventDiscontinueObject'_constructor {_EventDiscontinueObject'bucketName :: !Data.Text.Text,
                                         _EventDiscontinueObject'objectId :: !Data.Text.Text,
                                         _EventDiscontinueObject'reason :: !Data.Text.Text,
                                         _EventDiscontinueObject'deleteAt :: !Data.Int.Int64,
                                         _EventDiscontinueObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDiscontinueObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDiscontinueObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueObject'bucketName
           (\ x__ y__ -> x__ {_EventDiscontinueObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDiscontinueObject "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueObject'objectId
           (\ x__ y__ -> x__ {_EventDiscontinueObject'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDiscontinueObject "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueObject'reason
           (\ x__ y__ -> x__ {_EventDiscontinueObject'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDiscontinueObject "deleteAt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDiscontinueObject'deleteAt
           (\ x__ y__ -> x__ {_EventDiscontinueObject'deleteAt = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDiscontinueObject where
  messageName _
    = Data.Text.pack "greenfield.storage.EventDiscontinueObject"
  packedMessageDescriptor _
    = "\n\
      \\SYNEventDiscontinueObject\DC2\US\n\
      \\vbucket_name\CAN\SOH \SOH(\tR\n\
      \bucketName\DC28\n\
      \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SYN\n\
      \\ACKreason\CAN\ETX \SOH(\tR\ACKreason\DC2\ESC\n\
      \\tdelete_at\CAN\EOT \SOH(\ETXR\bdeleteAt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueObject
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueObject
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueObject
        deleteAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delete_at"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deleteAt")) ::
              Data.ProtoLens.FieldDescriptor EventDiscontinueObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 2, objectId__field_descriptor),
           (Data.ProtoLens.Tag 3, reason__field_descriptor),
           (Data.ProtoLens.Tag 4, deleteAt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDiscontinueObject'_unknownFields
        (\ x__ y__ -> x__ {_EventDiscontinueObject'_unknownFields = y__})
  defMessage
    = EventDiscontinueObject'_constructor
        {_EventDiscontinueObject'bucketName = Data.ProtoLens.fieldDefault,
         _EventDiscontinueObject'objectId = Data.ProtoLens.fieldDefault,
         _EventDiscontinueObject'reason = Data.ProtoLens.fieldDefault,
         _EventDiscontinueObject'deleteAt = Data.ProtoLens.fieldDefault,
         _EventDiscontinueObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDiscontinueObject
          -> Data.ProtoLens.Encoding.Bytes.Parser EventDiscontinueObject
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delete_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deleteAt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventDiscontinueObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"deleteAt") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventDiscontinueObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDiscontinueObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventDiscontinueObject'bucketName x__)
                (Control.DeepSeq.deepseq
                   (_EventDiscontinueObject'objectId x__)
                   (Control.DeepSeq.deepseq
                      (_EventDiscontinueObject'reason x__)
                      (Control.DeepSeq.deepseq
                         (_EventDiscontinueObject'deleteAt x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.memberAddress' @:: Lens' EventLeaveGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventLeaveGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupName' @:: Lens' EventLeaveGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupId' @:: Lens' EventLeaveGroup Data.Text.Text@ -}
data EventLeaveGroup
  = EventLeaveGroup'_constructor {_EventLeaveGroup'memberAddress :: !Data.Text.Text,
                                  _EventLeaveGroup'owner :: !Data.Text.Text,
                                  _EventLeaveGroup'groupName :: !Data.Text.Text,
                                  _EventLeaveGroup'groupId :: !Data.Text.Text,
                                  _EventLeaveGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventLeaveGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventLeaveGroup "memberAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventLeaveGroup'memberAddress
           (\ x__ y__ -> x__ {_EventLeaveGroup'memberAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventLeaveGroup "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventLeaveGroup'owner
           (\ x__ y__ -> x__ {_EventLeaveGroup'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventLeaveGroup "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventLeaveGroup'groupName
           (\ x__ y__ -> x__ {_EventLeaveGroup'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventLeaveGroup "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventLeaveGroup'groupId
           (\ x__ y__ -> x__ {_EventLeaveGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventLeaveGroup where
  messageName _ = Data.Text.pack "greenfield.storage.EventLeaveGroup"
  packedMessageDescriptor _
    = "\n\
      \\SIEventLeaveGroup\DC2?\n\
      \\SOmember_address\CAN\SOH \SOH(\tR\rmemberAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\ETX \SOH(\tR\tgroupName\DC26\n\
      \\bgroup_id\CAN\EOT \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        memberAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"memberAddress")) ::
              Data.ProtoLens.FieldDescriptor EventLeaveGroup
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventLeaveGroup
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor EventLeaveGroup
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor EventLeaveGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, memberAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, groupName__field_descriptor),
           (Data.ProtoLens.Tag 4, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventLeaveGroup'_unknownFields
        (\ x__ y__ -> x__ {_EventLeaveGroup'_unknownFields = y__})
  defMessage
    = EventLeaveGroup'_constructor
        {_EventLeaveGroup'memberAddress = Data.ProtoLens.fieldDefault,
         _EventLeaveGroup'owner = Data.ProtoLens.fieldDefault,
         _EventLeaveGroup'groupName = Data.ProtoLens.fieldDefault,
         _EventLeaveGroup'groupId = Data.ProtoLens.fieldDefault,
         _EventLeaveGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventLeaveGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser EventLeaveGroup
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
                                       "member_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"memberAddress") y x)
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventLeaveGroup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"memberAddress") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventLeaveGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventLeaveGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventLeaveGroup'memberAddress x__)
                (Control.DeepSeq.deepseq
                   (_EventLeaveGroup'owner x__)
                   (Control.DeepSeq.deepseq
                      (_EventLeaveGroup'groupName x__)
                      (Control.DeepSeq.deepseq (_EventLeaveGroup'groupId x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventMirrorBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventMirrorBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketId' @:: Lens' EventMirrorBucket Data.Text.Text@ -}
data EventMirrorBucket
  = EventMirrorBucket'_constructor {_EventMirrorBucket'operator :: !Data.Text.Text,
                                    _EventMirrorBucket'bucketName :: !Data.Text.Text,
                                    _EventMirrorBucket'bucketId :: !Data.Text.Text,
                                    _EventMirrorBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventMirrorBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventMirrorBucket "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorBucket'operator
           (\ x__ y__ -> x__ {_EventMirrorBucket'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorBucket "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorBucket'bucketName
           (\ x__ y__ -> x__ {_EventMirrorBucket'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorBucket "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorBucket'bucketId
           (\ x__ y__ -> x__ {_EventMirrorBucket'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventMirrorBucket where
  messageName _
    = Data.Text.pack "greenfield.storage.EventMirrorBucket"
  packedMessageDescriptor _
    = "\n\
      \\DC1EventMirrorBucket\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC28\n\
      \\tbucket_id\CAN\EOT \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorBucket
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorBucket
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 4, bucketId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventMirrorBucket'_unknownFields
        (\ x__ y__ -> x__ {_EventMirrorBucket'_unknownFields = y__})
  defMessage
    = EventMirrorBucket'_constructor
        {_EventMirrorBucket'operator = Data.ProtoLens.fieldDefault,
         _EventMirrorBucket'bucketName = Data.ProtoLens.fieldDefault,
         _EventMirrorBucket'bucketId = Data.ProtoLens.fieldDefault,
         _EventMirrorBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventMirrorBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser EventMirrorBucket
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventMirrorBucket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventMirrorBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventMirrorBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventMirrorBucket'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventMirrorBucket'bucketName x__)
                   (Control.DeepSeq.deepseq (_EventMirrorBucket'bucketId x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.status' @:: Lens' EventMirrorBucketResult Data.Word.Word32@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventMirrorBucketResult Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketId' @:: Lens' EventMirrorBucketResult Data.Text.Text@ -}
data EventMirrorBucketResult
  = EventMirrorBucketResult'_constructor {_EventMirrorBucketResult'status :: !Data.Word.Word32,
                                          _EventMirrorBucketResult'bucketName :: !Data.Text.Text,
                                          _EventMirrorBucketResult'bucketId :: !Data.Text.Text,
                                          _EventMirrorBucketResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventMirrorBucketResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventMirrorBucketResult "status" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorBucketResult'status
           (\ x__ y__ -> x__ {_EventMirrorBucketResult'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorBucketResult "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorBucketResult'bucketName
           (\ x__ y__ -> x__ {_EventMirrorBucketResult'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorBucketResult "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorBucketResult'bucketId
           (\ x__ y__ -> x__ {_EventMirrorBucketResult'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventMirrorBucketResult where
  messageName _
    = Data.Text.pack "greenfield.storage.EventMirrorBucketResult"
  packedMessageDescriptor _
    = "\n\
      \\ETBEventMirrorBucketResult\DC2\SYN\n\
      \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC28\n\
      \\tbucket_id\CAN\EOT \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorBucketResult
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorBucketResult
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorBucketResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 4, bucketId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventMirrorBucketResult'_unknownFields
        (\ x__ y__ -> x__ {_EventMirrorBucketResult'_unknownFields = y__})
  defMessage
    = EventMirrorBucketResult'_constructor
        {_EventMirrorBucketResult'status = Data.ProtoLens.fieldDefault,
         _EventMirrorBucketResult'bucketName = Data.ProtoLens.fieldDefault,
         _EventMirrorBucketResult'bucketId = Data.ProtoLens.fieldDefault,
         _EventMirrorBucketResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventMirrorBucketResult
          -> Data.ProtoLens.Encoding.Bytes.Parser EventMirrorBucketResult
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventMirrorBucketResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventMirrorBucketResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventMirrorBucketResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventMirrorBucketResult'status x__)
                (Control.DeepSeq.deepseq
                   (_EventMirrorBucketResult'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventMirrorBucketResult'bucketId x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventMirrorGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupName' @:: Lens' EventMirrorGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupId' @:: Lens' EventMirrorGroup Data.Text.Text@ -}
data EventMirrorGroup
  = EventMirrorGroup'_constructor {_EventMirrorGroup'owner :: !Data.Text.Text,
                                   _EventMirrorGroup'groupName :: !Data.Text.Text,
                                   _EventMirrorGroup'groupId :: !Data.Text.Text,
                                   _EventMirrorGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventMirrorGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventMirrorGroup "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorGroup'owner
           (\ x__ y__ -> x__ {_EventMirrorGroup'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorGroup "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorGroup'groupName
           (\ x__ y__ -> x__ {_EventMirrorGroup'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorGroup "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorGroup'groupId
           (\ x__ y__ -> x__ {_EventMirrorGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventMirrorGroup where
  messageName _
    = Data.Text.pack "greenfield.storage.EventMirrorGroup"
  packedMessageDescriptor _
    = "\n\
      \\DLEEventMirrorGroup\DC2.\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\STX \SOH(\tR\tgroupName\DC26\n\
      \\bgroup_id\CAN\ETX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorGroup
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorGroup
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventMirrorGroup'_unknownFields
        (\ x__ y__ -> x__ {_EventMirrorGroup'_unknownFields = y__})
  defMessage
    = EventMirrorGroup'_constructor
        {_EventMirrorGroup'owner = Data.ProtoLens.fieldDefault,
         _EventMirrorGroup'groupName = Data.ProtoLens.fieldDefault,
         _EventMirrorGroup'groupId = Data.ProtoLens.fieldDefault,
         _EventMirrorGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventMirrorGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser EventMirrorGroup
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
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
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventMirrorGroup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventMirrorGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventMirrorGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventMirrorGroup'owner x__)
                (Control.DeepSeq.deepseq
                   (_EventMirrorGroup'groupName x__)
                   (Control.DeepSeq.deepseq (_EventMirrorGroup'groupId x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.status' @:: Lens' EventMirrorGroupResult Data.Word.Word32@
         * 'Proto.Greenfield.Storage.Events_Fields.groupName' @:: Lens' EventMirrorGroupResult Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupId' @:: Lens' EventMirrorGroupResult Data.Text.Text@ -}
data EventMirrorGroupResult
  = EventMirrorGroupResult'_constructor {_EventMirrorGroupResult'status :: !Data.Word.Word32,
                                         _EventMirrorGroupResult'groupName :: !Data.Text.Text,
                                         _EventMirrorGroupResult'groupId :: !Data.Text.Text,
                                         _EventMirrorGroupResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventMirrorGroupResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventMirrorGroupResult "status" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorGroupResult'status
           (\ x__ y__ -> x__ {_EventMirrorGroupResult'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorGroupResult "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorGroupResult'groupName
           (\ x__ y__ -> x__ {_EventMirrorGroupResult'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorGroupResult "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorGroupResult'groupId
           (\ x__ y__ -> x__ {_EventMirrorGroupResult'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventMirrorGroupResult where
  messageName _
    = Data.Text.pack "greenfield.storage.EventMirrorGroupResult"
  packedMessageDescriptor _
    = "\n\
      \\SYNEventMirrorGroupResult\DC2\SYN\n\
      \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus\DC2\GS\n\
      \\n\
      \group_name\CAN\STX \SOH(\tR\tgroupName\DC26\n\
      \\bgroup_id\CAN\ETX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorGroupResult
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorGroupResult
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorGroupResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventMirrorGroupResult'_unknownFields
        (\ x__ y__ -> x__ {_EventMirrorGroupResult'_unknownFields = y__})
  defMessage
    = EventMirrorGroupResult'_constructor
        {_EventMirrorGroupResult'status = Data.ProtoLens.fieldDefault,
         _EventMirrorGroupResult'groupName = Data.ProtoLens.fieldDefault,
         _EventMirrorGroupResult'groupId = Data.ProtoLens.fieldDefault,
         _EventMirrorGroupResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventMirrorGroupResult
          -> Data.ProtoLens.Encoding.Bytes.Parser EventMirrorGroupResult
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
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
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventMirrorGroupResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventMirrorGroupResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventMirrorGroupResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventMirrorGroupResult'status x__)
                (Control.DeepSeq.deepseq
                   (_EventMirrorGroupResult'groupName x__)
                   (Control.DeepSeq.deepseq
                      (_EventMirrorGroupResult'groupId x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventMirrorObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventMirrorObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventMirrorObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventMirrorObject Data.Text.Text@ -}
data EventMirrorObject
  = EventMirrorObject'_constructor {_EventMirrorObject'operator :: !Data.Text.Text,
                                    _EventMirrorObject'bucketName :: !Data.Text.Text,
                                    _EventMirrorObject'objectName :: !Data.Text.Text,
                                    _EventMirrorObject'objectId :: !Data.Text.Text,
                                    _EventMirrorObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventMirrorObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventMirrorObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObject'operator
           (\ x__ y__ -> x__ {_EventMirrorObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObject'bucketName
           (\ x__ y__ -> x__ {_EventMirrorObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObject'objectName
           (\ x__ y__ -> x__ {_EventMirrorObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorObject "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObject'objectId
           (\ x__ y__ -> x__ {_EventMirrorObject'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventMirrorObject where
  messageName _
    = Data.Text.pack "greenfield.storage.EventMirrorObject"
  packedMessageDescriptor _
    = "\n\
      \\DC1EventMirrorObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC28\n\
      \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObject
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, objectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventMirrorObject'_unknownFields
        (\ x__ y__ -> x__ {_EventMirrorObject'_unknownFields = y__})
  defMessage
    = EventMirrorObject'_constructor
        {_EventMirrorObject'operator = Data.ProtoLens.fieldDefault,
         _EventMirrorObject'bucketName = Data.ProtoLens.fieldDefault,
         _EventMirrorObject'objectName = Data.ProtoLens.fieldDefault,
         _EventMirrorObject'objectId = Data.ProtoLens.fieldDefault,
         _EventMirrorObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventMirrorObject
          -> Data.ProtoLens.Encoding.Bytes.Parser EventMirrorObject
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        34
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventMirrorObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventMirrorObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventMirrorObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventMirrorObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventMirrorObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventMirrorObject'objectName x__)
                      (Control.DeepSeq.deepseq (_EventMirrorObject'objectId x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.status' @:: Lens' EventMirrorObjectResult Data.Word.Word32@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventMirrorObjectResult Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventMirrorObjectResult Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventMirrorObjectResult Data.Text.Text@ -}
data EventMirrorObjectResult
  = EventMirrorObjectResult'_constructor {_EventMirrorObjectResult'status :: !Data.Word.Word32,
                                          _EventMirrorObjectResult'bucketName :: !Data.Text.Text,
                                          _EventMirrorObjectResult'objectName :: !Data.Text.Text,
                                          _EventMirrorObjectResult'objectId :: !Data.Text.Text,
                                          _EventMirrorObjectResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventMirrorObjectResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventMirrorObjectResult "status" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObjectResult'status
           (\ x__ y__ -> x__ {_EventMirrorObjectResult'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorObjectResult "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObjectResult'bucketName
           (\ x__ y__ -> x__ {_EventMirrorObjectResult'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorObjectResult "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObjectResult'objectName
           (\ x__ y__ -> x__ {_EventMirrorObjectResult'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMirrorObjectResult "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMirrorObjectResult'objectId
           (\ x__ y__ -> x__ {_EventMirrorObjectResult'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventMirrorObjectResult where
  messageName _
    = Data.Text.pack "greenfield.storage.EventMirrorObjectResult"
  packedMessageDescriptor _
    = "\n\
      \\ETBEventMirrorObjectResult\DC2\SYN\n\
      \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC28\n\
      \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObjectResult
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObjectResult
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObjectResult
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventMirrorObjectResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, objectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventMirrorObjectResult'_unknownFields
        (\ x__ y__ -> x__ {_EventMirrorObjectResult'_unknownFields = y__})
  defMessage
    = EventMirrorObjectResult'_constructor
        {_EventMirrorObjectResult'status = Data.ProtoLens.fieldDefault,
         _EventMirrorObjectResult'bucketName = Data.ProtoLens.fieldDefault,
         _EventMirrorObjectResult'objectName = Data.ProtoLens.fieldDefault,
         _EventMirrorObjectResult'objectId = Data.ProtoLens.fieldDefault,
         _EventMirrorObjectResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventMirrorObjectResult
          -> Data.ProtoLens.Encoding.Bytes.Parser EventMirrorObjectResult
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        34
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventMirrorObjectResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventMirrorObjectResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventMirrorObjectResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventMirrorObjectResult'status x__)
                (Control.DeepSeq.deepseq
                   (_EventMirrorObjectResult'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventMirrorObjectResult'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_EventMirrorObjectResult'objectId x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventRejectSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventRejectSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventRejectSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventRejectSealObject Data.Text.Text@ -}
data EventRejectSealObject
  = EventRejectSealObject'_constructor {_EventRejectSealObject'operator :: !Data.Text.Text,
                                        _EventRejectSealObject'bucketName :: !Data.Text.Text,
                                        _EventRejectSealObject'objectName :: !Data.Text.Text,
                                        _EventRejectSealObject'objectId :: !Data.Text.Text,
                                        _EventRejectSealObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventRejectSealObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventRejectSealObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventRejectSealObject'operator
           (\ x__ y__ -> x__ {_EventRejectSealObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventRejectSealObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventRejectSealObject'bucketName
           (\ x__ y__ -> x__ {_EventRejectSealObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventRejectSealObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventRejectSealObject'objectName
           (\ x__ y__ -> x__ {_EventRejectSealObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventRejectSealObject "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventRejectSealObject'objectId
           (\ x__ y__ -> x__ {_EventRejectSealObject'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventRejectSealObject where
  messageName _
    = Data.Text.pack "greenfield.storage.EventRejectSealObject"
  packedMessageDescriptor _
    = "\n\
      \\NAKEventRejectSealObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC28\n\
      \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventRejectSealObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventRejectSealObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventRejectSealObject
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventRejectSealObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, objectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventRejectSealObject'_unknownFields
        (\ x__ y__ -> x__ {_EventRejectSealObject'_unknownFields = y__})
  defMessage
    = EventRejectSealObject'_constructor
        {_EventRejectSealObject'operator = Data.ProtoLens.fieldDefault,
         _EventRejectSealObject'bucketName = Data.ProtoLens.fieldDefault,
         _EventRejectSealObject'objectName = Data.ProtoLens.fieldDefault,
         _EventRejectSealObject'objectId = Data.ProtoLens.fieldDefault,
         _EventRejectSealObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventRejectSealObject
          -> Data.ProtoLens.Encoding.Bytes.Parser EventRejectSealObject
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        34
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventRejectSealObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventRejectSealObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventRejectSealObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventRejectSealObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventRejectSealObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventRejectSealObject'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_EventRejectSealObject'objectId x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.status' @:: Lens' EventSealObject Proto.Greenfield.Storage.Common.ObjectStatus@
         * 'Proto.Greenfield.Storage.Events_Fields.secondarySpAddresses' @:: Lens' EventSealObject [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Events_Fields.vec'secondarySpAddresses' @:: Lens' EventSealObject (Data.Vector.Vector Data.Text.Text)@ -}
data EventSealObject
  = EventSealObject'_constructor {_EventSealObject'operator :: !Data.Text.Text,
                                  _EventSealObject'bucketName :: !Data.Text.Text,
                                  _EventSealObject'objectName :: !Data.Text.Text,
                                  _EventSealObject'objectId :: !Data.Text.Text,
                                  _EventSealObject'status :: !Proto.Greenfield.Storage.Common.ObjectStatus,
                                  _EventSealObject'secondarySpAddresses :: !(Data.Vector.Vector Data.Text.Text),
                                  _EventSealObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventSealObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventSealObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSealObject'operator
           (\ x__ y__ -> x__ {_EventSealObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSealObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSealObject'bucketName
           (\ x__ y__ -> x__ {_EventSealObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSealObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSealObject'objectName
           (\ x__ y__ -> x__ {_EventSealObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSealObject "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSealObject'objectId
           (\ x__ y__ -> x__ {_EventSealObject'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSealObject "status" Proto.Greenfield.Storage.Common.ObjectStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSealObject'status
           (\ x__ y__ -> x__ {_EventSealObject'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSealObject "secondarySpAddresses" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSealObject'secondarySpAddresses
           (\ x__ y__ -> x__ {_EventSealObject'secondarySpAddresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventSealObject "vec'secondarySpAddresses" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSealObject'secondarySpAddresses
           (\ x__ y__ -> x__ {_EventSealObject'secondarySpAddresses = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventSealObject where
  messageName _ = Data.Text.pack "greenfield.storage.EventSealObject"
  packedMessageDescriptor _
    = "\n\
      \\SIEventSealObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC28\n\
      \\tobject_id\CAN\ENQ \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC28\n\
      \\ACKstatus\CAN\ACK \SOH(\SO2 .greenfield.storage.ObjectStatusR\ACKstatus\DC2N\n\
      \\SYNsecondary_sp_addresses\CAN\a \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventSealObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventSealObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventSealObject
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventSealObject
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.ObjectStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventSealObject
        secondarySpAddresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_addresses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"secondarySpAddresses")) ::
              Data.ProtoLens.FieldDescriptor EventSealObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 5, objectId__field_descriptor),
           (Data.ProtoLens.Tag 6, status__field_descriptor),
           (Data.ProtoLens.Tag 7, secondarySpAddresses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventSealObject'_unknownFields
        (\ x__ y__ -> x__ {_EventSealObject'_unknownFields = y__})
  defMessage
    = EventSealObject'_constructor
        {_EventSealObject'operator = Data.ProtoLens.fieldDefault,
         _EventSealObject'bucketName = Data.ProtoLens.fieldDefault,
         _EventSealObject'objectName = Data.ProtoLens.fieldDefault,
         _EventSealObject'objectId = Data.ProtoLens.fieldDefault,
         _EventSealObject'status = Data.ProtoLens.fieldDefault,
         _EventSealObject'secondarySpAddresses = Data.Vector.Generic.empty,
         _EventSealObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventSealObject
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser EventSealObject
        loop x mutable'secondarySpAddresses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'secondarySpAddresses)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'secondarySpAddresses")
                              frozen'secondarySpAddresses x))
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
                                  mutable'secondarySpAddresses
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                                  mutable'secondarySpAddresses
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                                  mutable'secondarySpAddresses
                        42
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
                                  mutable'secondarySpAddresses
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'secondarySpAddresses
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "secondary_sp_addresses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'secondarySpAddresses y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'secondarySpAddresses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'secondarySpAddresses)
          "EventSealObject"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.Text.Encoding.encodeUtf8 _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'secondarySpAddresses") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData EventSealObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventSealObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventSealObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventSealObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventSealObject'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_EventSealObject'objectId x__)
                         (Control.DeepSeq.deepseq
                            (_EventSealObject'status x__)
                            (Control.DeepSeq.deepseq
                               (_EventSealObject'secondarySpAddresses x__) ()))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.blockNum' @:: Lens' EventStalePolicyCleanup Data.Int.Int64@
         * 'Proto.Greenfield.Storage.Events_Fields.deleteInfo' @:: Lens' EventStalePolicyCleanup Proto.Greenfield.Storage.Types.DeleteInfo@
         * 'Proto.Greenfield.Storage.Events_Fields.maybe'deleteInfo' @:: Lens' EventStalePolicyCleanup (Prelude.Maybe Proto.Greenfield.Storage.Types.DeleteInfo)@ -}
data EventStalePolicyCleanup
  = EventStalePolicyCleanup'_constructor {_EventStalePolicyCleanup'blockNum :: !Data.Int.Int64,
                                          _EventStalePolicyCleanup'deleteInfo :: !(Prelude.Maybe Proto.Greenfield.Storage.Types.DeleteInfo),
                                          _EventStalePolicyCleanup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventStalePolicyCleanup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventStalePolicyCleanup "blockNum" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStalePolicyCleanup'blockNum
           (\ x__ y__ -> x__ {_EventStalePolicyCleanup'blockNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStalePolicyCleanup "deleteInfo" Proto.Greenfield.Storage.Types.DeleteInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStalePolicyCleanup'deleteInfo
           (\ x__ y__ -> x__ {_EventStalePolicyCleanup'deleteInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventStalePolicyCleanup "maybe'deleteInfo" (Prelude.Maybe Proto.Greenfield.Storage.Types.DeleteInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStalePolicyCleanup'deleteInfo
           (\ x__ y__ -> x__ {_EventStalePolicyCleanup'deleteInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventStalePolicyCleanup where
  messageName _
    = Data.Text.pack "greenfield.storage.EventStalePolicyCleanup"
  packedMessageDescriptor _
    = "\n\
      \\ETBEventStalePolicyCleanup\DC2\SUB\n\
      \\bblockNum\CAN\SOH \SOH(\ETXR\bblockNum\DC2?\n\
      \\vdelete_info\CAN\STX \SOH(\v2\RS.greenfield.storage.DeleteInfoR\n\
      \deleteInfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blockNum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockNum")) ::
              Data.ProtoLens.FieldDescriptor EventStalePolicyCleanup
        deleteInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delete_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Types.DeleteInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deleteInfo")) ::
              Data.ProtoLens.FieldDescriptor EventStalePolicyCleanup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockNum__field_descriptor),
           (Data.ProtoLens.Tag 2, deleteInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventStalePolicyCleanup'_unknownFields
        (\ x__ y__ -> x__ {_EventStalePolicyCleanup'_unknownFields = y__})
  defMessage
    = EventStalePolicyCleanup'_constructor
        {_EventStalePolicyCleanup'blockNum = Data.ProtoLens.fieldDefault,
         _EventStalePolicyCleanup'deleteInfo = Prelude.Nothing,
         _EventStalePolicyCleanup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventStalePolicyCleanup
          -> Data.ProtoLens.Encoding.Bytes.Parser EventStalePolicyCleanup
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "blockNum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockNum") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "delete_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deleteInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventStalePolicyCleanup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"blockNum") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'deleteInfo") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EventStalePolicyCleanup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventStalePolicyCleanup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventStalePolicyCleanup'blockNum x__)
                (Control.DeepSeq.deepseq
                   (_EventStalePolicyCleanup'deleteInfo x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketId' @:: Lens' EventUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.chargedReadQuotaBefore' @:: Lens' EventUpdateBucketInfo Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Events_Fields.chargedReadQuotaAfter' @:: Lens' EventUpdateBucketInfo Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Events_Fields.paymentAddressBefore' @:: Lens' EventUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.paymentAddressAfter' @:: Lens' EventUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.visibility' @:: Lens' EventUpdateBucketInfo Proto.Greenfield.Storage.Common.VisibilityType@ -}
data EventUpdateBucketInfo
  = EventUpdateBucketInfo'_constructor {_EventUpdateBucketInfo'operator :: !Data.Text.Text,
                                        _EventUpdateBucketInfo'bucketName :: !Data.Text.Text,
                                        _EventUpdateBucketInfo'bucketId :: !Data.Text.Text,
                                        _EventUpdateBucketInfo'chargedReadQuotaBefore :: !Data.Word.Word64,
                                        _EventUpdateBucketInfo'chargedReadQuotaAfter :: !Data.Word.Word64,
                                        _EventUpdateBucketInfo'paymentAddressBefore :: !Data.Text.Text,
                                        _EventUpdateBucketInfo'paymentAddressAfter :: !Data.Text.Text,
                                        _EventUpdateBucketInfo'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                        _EventUpdateBucketInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventUpdateBucketInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'operator
           (\ x__ y__ -> x__ {_EventUpdateBucketInfo'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'bucketName
           (\ x__ y__ -> x__ {_EventUpdateBucketInfo'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'bucketId
           (\ x__ y__ -> x__ {_EventUpdateBucketInfo'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "chargedReadQuotaBefore" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'chargedReadQuotaBefore
           (\ x__ y__
              -> x__ {_EventUpdateBucketInfo'chargedReadQuotaBefore = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "chargedReadQuotaAfter" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'chargedReadQuotaAfter
           (\ x__ y__
              -> x__ {_EventUpdateBucketInfo'chargedReadQuotaAfter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "paymentAddressBefore" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'paymentAddressBefore
           (\ x__ y__
              -> x__ {_EventUpdateBucketInfo'paymentAddressBefore = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "paymentAddressAfter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'paymentAddressAfter
           (\ x__ y__
              -> x__ {_EventUpdateBucketInfo'paymentAddressAfter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateBucketInfo "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateBucketInfo'visibility
           (\ x__ y__ -> x__ {_EventUpdateBucketInfo'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventUpdateBucketInfo where
  messageName _
    = Data.Text.pack "greenfield.storage.EventUpdateBucketInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKEventUpdateBucketInfo\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC28\n\
      \\tbucket_id\CAN\ETX \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC29\n\
      \\EMcharged_read_quota_before\CAN\EOT \SOH(\EOTR\SYNchargedReadQuotaBefore\DC27\n\
      \\CANcharged_read_quota_after\CAN\ENQ \SOH(\EOTR\NAKchargedReadQuotaAfter\DC24\n\
      \\SYNpayment_address_before\CAN\ACK \SOH(\tR\DC4paymentAddressBefore\DC22\n\
      \\NAKpayment_address_after\CAN\a \SOH(\tR\DC3paymentAddressAfter\DC2B\n\
      \\n\
      \visibility\CAN\b \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
        bucketId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketId")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
        chargedReadQuotaBefore__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "charged_read_quota_before"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"chargedReadQuotaBefore")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
        chargedReadQuotaAfter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "charged_read_quota_after"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"chargedReadQuotaAfter")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
        paymentAddressBefore__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_address_before"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentAddressBefore")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
        paymentAddressAfter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_address_after"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentAddressAfter")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateBucketInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, bucketId__field_descriptor),
           (Data.ProtoLens.Tag 4, chargedReadQuotaBefore__field_descriptor),
           (Data.ProtoLens.Tag 5, chargedReadQuotaAfter__field_descriptor),
           (Data.ProtoLens.Tag 6, paymentAddressBefore__field_descriptor),
           (Data.ProtoLens.Tag 7, paymentAddressAfter__field_descriptor),
           (Data.ProtoLens.Tag 8, visibility__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventUpdateBucketInfo'_unknownFields
        (\ x__ y__ -> x__ {_EventUpdateBucketInfo'_unknownFields = y__})
  defMessage
    = EventUpdateBucketInfo'_constructor
        {_EventUpdateBucketInfo'operator = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'bucketName = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'bucketId = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'chargedReadQuotaBefore = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'chargedReadQuotaAfter = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'paymentAddressBefore = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'paymentAddressAfter = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'visibility = Data.ProtoLens.fieldDefault,
         _EventUpdateBucketInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventUpdateBucketInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser EventUpdateBucketInfo
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "bucket_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "charged_read_quota_before"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chargedReadQuotaBefore") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "charged_read_quota_after"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chargedReadQuotaAfter") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "payment_address_before"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAddressBefore") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "payment_address_after"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAddressAfter") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "visibility"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"visibility") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventUpdateBucketInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketId") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"chargedReadQuotaBefore") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"chargedReadQuotaAfter") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"paymentAddressBefore") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"paymentAddressAfter") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"visibility") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData EventUpdateBucketInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventUpdateBucketInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventUpdateBucketInfo'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventUpdateBucketInfo'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventUpdateBucketInfo'bucketId x__)
                      (Control.DeepSeq.deepseq
                         (_EventUpdateBucketInfo'chargedReadQuotaBefore x__)
                         (Control.DeepSeq.deepseq
                            (_EventUpdateBucketInfo'chargedReadQuotaAfter x__)
                            (Control.DeepSeq.deepseq
                               (_EventUpdateBucketInfo'paymentAddressBefore x__)
                               (Control.DeepSeq.deepseq
                                  (_EventUpdateBucketInfo'paymentAddressAfter x__)
                                  (Control.DeepSeq.deepseq
                                     (_EventUpdateBucketInfo'visibility x__) ()))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventUpdateGroupMember Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.owner' @:: Lens' EventUpdateGroupMember Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupName' @:: Lens' EventUpdateGroupMember Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.groupId' @:: Lens' EventUpdateGroupMember Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.membersToAdd' @:: Lens' EventUpdateGroupMember [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Events_Fields.vec'membersToAdd' @:: Lens' EventUpdateGroupMember (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Greenfield.Storage.Events_Fields.membersToDelete' @:: Lens' EventUpdateGroupMember [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Events_Fields.vec'membersToDelete' @:: Lens' EventUpdateGroupMember (Data.Vector.Vector Data.Text.Text)@ -}
data EventUpdateGroupMember
  = EventUpdateGroupMember'_constructor {_EventUpdateGroupMember'operator :: !Data.Text.Text,
                                         _EventUpdateGroupMember'owner :: !Data.Text.Text,
                                         _EventUpdateGroupMember'groupName :: !Data.Text.Text,
                                         _EventUpdateGroupMember'groupId :: !Data.Text.Text,
                                         _EventUpdateGroupMember'membersToAdd :: !(Data.Vector.Vector Data.Text.Text),
                                         _EventUpdateGroupMember'membersToDelete :: !(Data.Vector.Vector Data.Text.Text),
                                         _EventUpdateGroupMember'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventUpdateGroupMember where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'operator
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'owner
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'groupName
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'groupId
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "membersToAdd" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'membersToAdd
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'membersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "vec'membersToAdd" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'membersToAdd
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'membersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "membersToDelete" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'membersToDelete
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'membersToDelete = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventUpdateGroupMember "vec'membersToDelete" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupMember'membersToDelete
           (\ x__ y__ -> x__ {_EventUpdateGroupMember'membersToDelete = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventUpdateGroupMember where
  messageName _
    = Data.Text.pack "greenfield.storage.EventUpdateGroupMember"
  packedMessageDescriptor _
    = "\n\
      \\SYNEventUpdateGroupMember\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\ETX \SOH(\tR\tgroupName\DC26\n\
      \\bgroup_id\CAN\EOT \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2>\n\
      \\SOmembers_to_add\CAN\ENQ \ETX(\tR\fmembersToAddB\CAN\210\180-\DC4cosmos.AddressString\DC2D\n\
      \\DC1members_to_delete\CAN\ACK \ETX(\tR\SImembersToDeleteB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateGroupMember
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateGroupMember
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateGroupMember
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateGroupMember
        membersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members_to_add"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"membersToAdd")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateGroupMember
        membersToDelete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members_to_delete"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"membersToDelete")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateGroupMember
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, groupName__field_descriptor),
           (Data.ProtoLens.Tag 4, groupId__field_descriptor),
           (Data.ProtoLens.Tag 5, membersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 6, membersToDelete__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventUpdateGroupMember'_unknownFields
        (\ x__ y__ -> x__ {_EventUpdateGroupMember'_unknownFields = y__})
  defMessage
    = EventUpdateGroupMember'_constructor
        {_EventUpdateGroupMember'operator = Data.ProtoLens.fieldDefault,
         _EventUpdateGroupMember'owner = Data.ProtoLens.fieldDefault,
         _EventUpdateGroupMember'groupName = Data.ProtoLens.fieldDefault,
         _EventUpdateGroupMember'groupId = Data.ProtoLens.fieldDefault,
         _EventUpdateGroupMember'membersToAdd = Data.Vector.Generic.empty,
         _EventUpdateGroupMember'membersToDelete = Data.Vector.Generic.empty,
         _EventUpdateGroupMember'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventUpdateGroupMember
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser EventUpdateGroupMember
        loop x mutable'membersToAdd mutable'membersToDelete
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'membersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'membersToAdd)
                      frozen'membersToDelete <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'membersToDelete)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'membersToAdd")
                              frozen'membersToAdd
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'membersToDelete")
                                 frozen'membersToDelete x)))
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
                                  mutable'membersToAdd mutable'membersToDelete
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
                                       "owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                                  mutable'membersToAdd mutable'membersToDelete
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                                  mutable'membersToAdd mutable'membersToDelete
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "group_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                                  mutable'membersToAdd mutable'membersToDelete
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "members_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'membersToAdd y)
                                loop x v mutable'membersToDelete
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "members_to_delete"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'membersToDelete y)
                                loop x mutable'membersToAdd v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'membersToAdd mutable'membersToDelete
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'membersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'membersToDelete <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'membersToAdd
                mutable'membersToDelete)
          "EventUpdateGroupMember"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.Text.Encoding.encodeUtf8 _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'membersToAdd") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.Text.Encoding.encodeUtf8 _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'membersToDelete") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData EventUpdateGroupMember where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventUpdateGroupMember'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventUpdateGroupMember'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventUpdateGroupMember'owner x__)
                   (Control.DeepSeq.deepseq
                      (_EventUpdateGroupMember'groupName x__)
                      (Control.DeepSeq.deepseq
                         (_EventUpdateGroupMember'groupId x__)
                         (Control.DeepSeq.deepseq
                            (_EventUpdateGroupMember'membersToAdd x__)
                            (Control.DeepSeq.deepseq
                               (_EventUpdateGroupMember'membersToDelete x__) ()))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Events_Fields.operator' @:: Lens' EventUpdateObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.bucketName' @:: Lens' EventUpdateObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectName' @:: Lens' EventUpdateObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.objectId' @:: Lens' EventUpdateObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Events_Fields.visibility' @:: Lens' EventUpdateObjectInfo Proto.Greenfield.Storage.Common.VisibilityType@ -}
data EventUpdateObjectInfo
  = EventUpdateObjectInfo'_constructor {_EventUpdateObjectInfo'operator :: !Data.Text.Text,
                                        _EventUpdateObjectInfo'bucketName :: !Data.Text.Text,
                                        _EventUpdateObjectInfo'objectName :: !Data.Text.Text,
                                        _EventUpdateObjectInfo'objectId :: !Data.Text.Text,
                                        _EventUpdateObjectInfo'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                        _EventUpdateObjectInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventUpdateObjectInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventUpdateObjectInfo "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateObjectInfo'operator
           (\ x__ y__ -> x__ {_EventUpdateObjectInfo'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateObjectInfo "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateObjectInfo'bucketName
           (\ x__ y__ -> x__ {_EventUpdateObjectInfo'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateObjectInfo "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateObjectInfo'objectName
           (\ x__ y__ -> x__ {_EventUpdateObjectInfo'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateObjectInfo "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateObjectInfo'objectId
           (\ x__ y__ -> x__ {_EventUpdateObjectInfo'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventUpdateObjectInfo "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateObjectInfo'visibility
           (\ x__ y__ -> x__ {_EventUpdateObjectInfo'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventUpdateObjectInfo where
  messageName _
    = Data.Text.pack "greenfield.storage.EventUpdateObjectInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKEventUpdateObjectInfo\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC28\n\
      \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2B\n\
      \\n\
      \visibility\CAN\ENQ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operator")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateObjectInfo
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateObjectInfo
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateObjectInfo
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateObjectInfo
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor EventUpdateObjectInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, objectId__field_descriptor),
           (Data.ProtoLens.Tag 5, visibility__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventUpdateObjectInfo'_unknownFields
        (\ x__ y__ -> x__ {_EventUpdateObjectInfo'_unknownFields = y__})
  defMessage
    = EventUpdateObjectInfo'_constructor
        {_EventUpdateObjectInfo'operator = Data.ProtoLens.fieldDefault,
         _EventUpdateObjectInfo'bucketName = Data.ProtoLens.fieldDefault,
         _EventUpdateObjectInfo'objectName = Data.ProtoLens.fieldDefault,
         _EventUpdateObjectInfo'objectId = Data.ProtoLens.fieldDefault,
         _EventUpdateObjectInfo'visibility = Data.ProtoLens.fieldDefault,
         _EventUpdateObjectInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventUpdateObjectInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser EventUpdateObjectInfo
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
                                       "operator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operator") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        34
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
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "visibility"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"visibility") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventUpdateObjectInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"operator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"visibility") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData EventUpdateObjectInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventUpdateObjectInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventUpdateObjectInfo'operator x__)
                (Control.DeepSeq.deepseq
                   (_EventUpdateObjectInfo'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_EventUpdateObjectInfo'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_EventUpdateObjectInfo'objectId x__)
                         (Control.DeepSeq.deepseq
                            (_EventUpdateObjectInfo'visibility x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USgreenfield/storage/events.proto\DC2\DC2greenfield.storage\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgreenfield/storage/common.proto\SUB\RSgreenfield/storage/types.proto\"\179\EOT\n\
    \\DC1EventCreateBucket\DC2.\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2B\n\
    \\n\
    \visibility\CAN\ETX \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\DC2\ESC\n\
    \\tcreate_at\CAN\EOT \SOH(\ETXR\bcreateAt\DC28\n\
    \\tbucket_id\CAN\ENQ \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
    \\vsource_type\CAN\ACK \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
    \sourceType\DC2,\n\
    \\DC2charged_read_quota\CAN\a \SOH(\EOTR\DLEchargedReadQuota\DC2A\n\
    \\SIpayment_address\CAN\b \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\DC2primary_sp_address\CAN\t \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
    \\ACKstatus\CAN\n\
    \ \SOH(\SO2 .greenfield.storage.BucketStatusR\ACKstatus\"\156\STX\n\
    \\DC1EventDeleteBucket\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\ETX \SOH(\tR\n\
    \bucketName\DC28\n\
    \\tbucket_id\CAN\EOT \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2F\n\
    \\DC2primary_sp_address\CAN\ENQ \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\"\202\ETX\n\
    \\NAKEventUpdateBucketInfo\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC28\n\
    \\tbucket_id\CAN\ETX \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC29\n\
    \\EMcharged_read_quota_before\CAN\EOT \SOH(\EOTR\SYNchargedReadQuotaBefore\DC27\n\
    \\CANcharged_read_quota_after\CAN\ENQ \SOH(\EOTR\NAKchargedReadQuotaAfter\DC24\n\
    \\SYNpayment_address_before\CAN\ACK \SOH(\tR\DC4paymentAddressBefore\DC22\n\
    \\NAKpayment_address_after\CAN\a \SOH(\tR\DC3paymentAddressAfter\DC2B\n\
    \\n\
    \visibility\CAN\b \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\"\168\SOH\n\
    \\SYNEventDiscontinueBucket\DC28\n\
    \\tbucket_id\CAN\SOH \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\SYN\n\
    \\ACKreason\CAN\ETX \SOH(\tR\ACKreason\DC2\ESC\n\
    \\tdelete_at\CAN\EOT \SOH(\ETXR\bdeleteAt\"\130\ACK\n\
    \\DC1EventCreateObject\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\ETX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\EOT \SOH(\tR\n\
    \objectName\DC28\n\
    \\tbucket_id\CAN\ACK \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC28\n\
    \\tobject_id\CAN\a \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2F\n\
    \\DC2primary_sp_address\CAN\b \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2!\n\
    \\fpayload_size\CAN\t \SOH(\EOTR\vpayloadSize\DC2B\n\
    \\n\
    \visibility\CAN\n\
    \ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\DC2!\n\
    \\fcontent_type\CAN\v \SOH(\tR\vcontentType\DC2\ESC\n\
    \\tcreate_at\CAN\f \SOH(\ETXR\bcreateAt\DC28\n\
    \\ACKstatus\CAN\r \SOH(\SO2 .greenfield.storage.ObjectStatusR\ACKstatus\DC2K\n\
    \\SIredundancy_type\CAN\SO \SOH(\SO2\".greenfield.storage.RedundancyTypeR\SOredundancyType\DC2?\n\
    \\vsource_type\CAN\SI \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
    \sourceType\DC2\FS\n\
    \\tchecksums\CAN\DLE \ETX(\fR\tchecksums\"\147\STX\n\
    \\ETBEventCancelCreateObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC2F\n\
    \\DC2primary_sp_address\CAN\EOT \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
    \\tobject_id\CAN\ACK \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\205\STX\n\
    \\SIEventSealObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC28\n\
    \\tobject_id\CAN\ENQ \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC28\n\
    \\ACKstatus\CAN\ACK \SOH(\SO2 .greenfield.storage.ObjectStatusR\ACKstatus\DC2N\n\
    \\SYNsecondary_sp_addresses\CAN\a \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString\"\233\STX\n\
    \\SIEventCopyObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2&\n\
    \\SIsrc_bucket_name\CAN\STX \SOH(\tR\rsrcBucketName\DC2&\n\
    \\SIsrc_object_name\CAN\ETX \SOH(\tR\rsrcObjectName\DC2&\n\
    \\SIdst_bucket_name\CAN\EOT \SOH(\tR\rdstBucketName\DC2&\n\
    \\SIdst_object_name\CAN\ENQ \SOH(\tR\rdstObjectName\DC2?\n\
    \\rsrc_object_id\CAN\ACK \SOH(\tR\vsrcObjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
    \\rdst_object_id\CAN\a \SOH(\tR\vdstObjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\221\STX\n\
    \\DC1EventDeleteObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC28\n\
    \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2F\n\
    \\DC2primary_sp_address\CAN\ENQ \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\SYNsecondary_sp_addresses\CAN\ACK \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString\"\201\SOH\n\
    \\NAKEventRejectSealObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC28\n\
    \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\168\SOH\n\
    \\SYNEventDiscontinueObject\DC2\US\n\
    \\vbucket_name\CAN\SOH \SOH(\tR\n\
    \bucketName\DC28\n\
    \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SYN\n\
    \\ACKreason\CAN\ETX \SOH(\tR\ACKreason\DC2\ESC\n\
    \\tdelete_at\CAN\EOT \SOH(\ETXR\bdeleteAt\"\141\STX\n\
    \\NAKEventUpdateObjectInfo\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC28\n\
    \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2B\n\
    \\n\
    \visibility\CAN\ENQ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\"\142\STX\n\
    \\DLEEventCreateGroup\DC2.\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\STX \SOH(\tR\tgroupName\DC26\n\
    \\bgroup_id\CAN\ETX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
    \\vsource_type\CAN\EOT \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
    \sourceType\DC22\n\
    \\amembers\CAN\ENQ \ETX(\tR\amembersB\CAN\210\180-\DC4cosmos.AddressString\"\153\SOH\n\
    \\DLEEventDeleteGroup\DC2.\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\ETX \SOH(\tR\tgroupName\DC26\n\
    \\bgroup_id\CAN\EOT \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\217\SOH\n\
    \\SIEventLeaveGroup\DC2?\n\
    \\SOmember_address\CAN\SOH \SOH(\tR\rmemberAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\ETX \SOH(\tR\tgroupName\DC26\n\
    \\bgroup_id\CAN\EOT \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\219\STX\n\
    \\SYNEventUpdateGroupMember\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\ETX \SOH(\tR\tgroupName\DC26\n\
    \\bgroup_id\CAN\EOT \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2>\n\
    \\SOmembers_to_add\CAN\ENQ \ETX(\tR\fmembersToAddB\CAN\210\180-\DC4cosmos.AddressString\DC2D\n\
    \\DC1members_to_delete\CAN\ACK \ETX(\tR\SImembersToDeleteB\CAN\210\180-\DC4cosmos.AddressString\"\164\SOH\n\
    \\DC1EventMirrorBucket\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC28\n\
    \\tbucket_id\CAN\EOT \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\140\SOH\n\
    \\ETBEventMirrorBucketResult\DC2\SYN\n\
    \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC28\n\
    \\tbucket_id\CAN\EOT \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\197\SOH\n\
    \\DC1EventMirrorObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC28\n\
    \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\173\SOH\n\
    \\ETBEventMirrorObjectResult\DC2\SYN\n\
    \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC28\n\
    \\tobject_id\CAN\EOT \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\153\SOH\n\
    \\DLEEventMirrorGroup\DC2.\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\STX \SOH(\tR\tgroupName\DC26\n\
    \\bgroup_id\CAN\ETX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\135\SOH\n\
    \\SYNEventMirrorGroupResult\DC2\SYN\n\
    \\ACKstatus\CAN\SOH \SOH(\rR\ACKstatus\DC2\GS\n\
    \\n\
    \group_name\CAN\STX \SOH(\tR\tgroupName\DC26\n\
    \\bgroup_id\CAN\ETX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"v\n\
    \\ETBEventStalePolicyCleanup\DC2\SUB\n\
    \\bblockNum\CAN\SOH \SOH(\ETXR\bblockNum\DC2?\n\
    \\vdelete_info\CAN\STX \SOH(\v2\RS.greenfield.storage.DeleteInfoR\n\
    \deleteInfoB1Z/github.com/bnb-chain/greenfield/x/storage/typesJ\223\141\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\176\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULF\n\
    \=\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL$\SOH\SUB1 EventCreateBucket is emitted on MsgCreateBucket\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\EM\n\
    \?\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STXD\SUB2 owner define the account address of bucket owner\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\r\DC3C\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\r\DC4B\n\
    \>\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SI\STX\EM\SUB1 bucket_name is a globally unique name of bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SI\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SI\ETB\CAN\n\
    \\132\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC1\STX \SUBw visibility defines the highest permissions for bucket. When a bucket is public, everyone can get the object under it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DC1\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC1\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC1\RS\US\n\
    \T\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC3\STX\SYN\SUBG create_at define the block timestamp when the bucket has been created\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC3\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC3\DC4\NAK\n\
    \\\\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\NAK\STX\EM\EOT\SUBN bucket_id is the unique u256 for bucket. Not global, only unique in buckets.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\NAK\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\NAK\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\EOT\NAK\ETB\EM\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\202\214\ENQ\DC2\ETX\SYN\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\235\251\ETX\DC2\ETX\ETB\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX\CAN\EOT \n\
    \[\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\ESC\STX\GS\SUBN source_type define the source of the bucket. CrossChain or Greenfield origin\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX\ESC\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\ESC\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\ESC\ESC\FS\n\
    \\132\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\GS\STX \SUBw read_quota defines the charged traffic quota for read, not include free quota which provided by each storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\GS\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\GS\RS\US\n\
    \D\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\US\STXN\SUB7 payment_address is the address of the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\US\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\US\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\b\DC2\ETX\US\GSM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\a\b\202\214\ENQ\DC2\ETX\US\RSL\n\
    \L\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX!\STXQ\SUB? primary_sp_address is the operator address of the primary sp.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX!\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX!\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\ETX! P\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\202\214\ENQ\DC2\ETX!!O\n\
    \6\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX#\STX\ESC\SUB) status define the status of the bucket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETX#\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX#\SI\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX#\CAN\SUB\n\
    \=\n\
    \\STX\EOT\SOH\DC2\EOT'\NUL6\SOH\SUB1 EventDeleteBucket is emitted on MsgDeleteBucket\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b\EM\n\
    \T\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX)\STXG\SUBG operator define the account address of operator who delete the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX)\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX)\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX)\SYNF\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX)\ETBE\n\
    \C\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX+\STXD\SUB6 owner define the account address of the bucket owner\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX+\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX+\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX+\DC3C\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETX+\DC4B\n\
    \@\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX-\STX\EM\SUB3 bucket_name define the name of the deleted bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX-\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX-\ETB\CAN\n\
    \6\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT/\STX3\EOT\SUB( bucket_id define an u256 id for bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX/\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX/\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT/\ETB3\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\202\214\ENQ\DC2\ETX0\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\235\251\ETX\DC2\ETX1\EOT#\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\233\251\ETX\DC2\ETX2\EOT \n\
    \J\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX5\STXQ\SUB= primary_sp_address define the account address of primary sp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX5\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX5\RS\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETX5 P\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\202\214\ENQ\DC2\ETX5!O\n\
    \E\n\
    \\STX\EOT\STX\DC2\EOT9\NULN\SOH\SUB9 EventUpdateBucketInfo is emitted on MsgUpdateBucketInfo\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX9\b\GS\n\
    \T\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX;\STXG\SUBG operator define the account address of operator who update the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX;\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX;\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX;\SYNF\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX;\ETBE\n\
    \8\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX=\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX=\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX=\ETB\CAN\n\
    \6\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT?\STXC\EOT\SUB( bucket_id define an u256 id for bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX?\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX?\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOT?\ETBC\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\202\214\ENQ\DC2\ETX@\EOT)\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\235\251\ETX\DC2\ETXA\EOT#\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\233\251\ETX\DC2\ETXB\EOT \n\
    \M\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXE\STX'\SUB@ charged_read_quota_before define the read quota before updated\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXE\t\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXE%&\n\
    \K\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXG\STX&\SUB> charged_read_quota_after define the read quota after updated\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXG\t!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXG$%\n\
    \O\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXI\STX$\SUBB payment_address_before define the payment address before updated\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXI\t\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXI\"#\n\
    \M\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXK\STX#\SUB@ payment_address_after define the payment address after updated\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETXK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXK\t\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXK!\"\n\
    \C\n\
    \\EOT\EOT\STX\STX\a\DC2\ETXM\STX \SUB6 visibility defines the highest permission of object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\ETXM\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETXM\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETXM\RS\US\n\
    \G\n\
    \\STX\EOT\ETX\DC2\EOTQ\NUL^\SOH\SUB; EventDiscontinueBucket is emitted on MsgDiscontinueBucket\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXQ\b\RS\n\
    \1\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOTS\STXW\EOT\SUB# bucket_id define id of the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXS\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXS\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOTS\ETBW\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETXT\EOT)\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\235\251\ETX\DC2\ETXU\EOT#\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETXV\EOT \n\
    \8\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXY\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXY\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXY\ETB\CAN\n\
    \\EM\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX[\STX\DC4\SUB\f the reason\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX[\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX[\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX[\DC2\DC3\n\
    \E\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX]\STX\SYN\SUB8 the timestamp after which the metadata will be deleted\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX]\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX]\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX]\DC4\NAK\n\
    \>\n\
    \\STX\EOT\EOT\DC2\ENQa\NUL\136\SOH\SOH\SUB1 EventCreateObject is emitted on MsgCreateObject\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXa\b\EM\n\
    \@\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXc\STXF\SUB3 creator define the account address of msg creator\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXc\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXc\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXc\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXc\NAKE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXc\SYND\n\
    \?\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXe\STXD\SUB2 owner define the account address of object owner\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXe\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXe\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXe\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXe\DC3C\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXe\DC4B\n\
    \4\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXg\STX\EM\SUB' bucket_name define the name of bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXg\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXg\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXg\ETB\CAN\n\
    \4\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXi\STX\EM\SUB' object_name define the name of object\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETXi\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXi\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXi\ETB\CAN\n\
    \6\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOTk\STXo\EOT\SUB( bucket_id define an u256 id for object\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETXk\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXk\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXk\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\b\DC2\EOTk\ETBo\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\EOT\b\202\214\ENQ\DC2\ETXl\EOT)\n\
    \\SI\n\
    \\b\EOT\EOT\STX\EOT\b\235\251\ETX\DC2\ETXm\EOT#\n\
    \\SI\n\
    \\b\EOT\EOT\STX\EOT\b\233\251\ETX\DC2\ETXn\EOT \n\
    \6\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOTq\STXu\EOT\SUB( object_id define an u256 id for object\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETXq\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXq\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXq\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\b\DC2\EOTq\ETBu\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ENQ\b\202\214\ENQ\DC2\ETXr\EOT)\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ENQ\b\235\251\ETX\DC2\ETXs\EOT#\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ENQ\b\233\251\ETX\DC2\ETXt\EOT \n\
    \J\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETXw\STXQ\SUB= primary_sp_address define the account address of primary sp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ENQ\DC2\ETXw\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETXw\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETXw\RS\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\b\DC2\ETXw P\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ACK\b\202\214\ENQ\DC2\ETXw!O\n\
    \Q\n\
    \\EOT\EOT\EOT\STX\a\DC2\ETXy\STX\SUB\SUBD payload_size define the size of payload data which you want upload\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\ETXy\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\ETXy\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\ETXy\CAN\EM\n\
    \C\n\
    \\EOT\EOT\EOT\STX\b\DC2\ETX{\STX!\SUB6 visibility defines the highest permission of object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ACK\DC2\ETX{\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\ETX{\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\ETX{\RS \n\
    \G\n\
    \\EOT\EOT\EOT\STX\t\DC2\ETX}\STX\ESC\SUB: content_type define the content type of the payload data\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ENQ\DC2\ETX}\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\ETX}\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\ETX}\CAN\SUB\n\
    \K\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\ETX\DEL\STX\ETB\SUB> create_at define the block timestamp when the object created\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ENQ\DC2\ETX\DEL\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\ETX\DEL\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\ETX\DEL\DC4\SYN\n\
    \T\n\
    \\EOT\EOT\EOT\STX\v\DC2\EOT\129\SOH\STX\ESC\SUBF status define the status of the object. INIT or IN_SERVICE or others\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ACK\DC2\EOT\129\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\SOH\DC2\EOT\129\SOH\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ETX\DC2\EOT\129\SOH\CAN\SUB\n\
    \P\n\
    \\EOT\EOT\EOT\STX\f\DC2\EOT\131\SOH\STX&\SUBB redundancy_type define the type of redundancy. Replication or EC\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ACK\DC2\EOT\131\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\SOH\DC2\EOT\131\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ETX\DC2\EOT\131\SOH#%\n\
    \]\n\
    \\EOT\EOT\EOT\STX\r\DC2\EOT\133\SOH\STX\RS\SUBO source_type define the source of the object.  CrossChain or Greenfield origin\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\ACK\DC2\EOT\133\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\SOH\DC2\EOT\133\SOH\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\r\ETX\DC2\EOT\133\SOH\ESC\GS\n\
    \`\n\
    \\EOT\EOT\EOT\STX\SO\DC2\EOT\135\SOH\STX \SUBR checksums define the total checksums of the object which generated by redundancy\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SO\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SO\ENQ\DC2\EOT\135\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SO\SOH\DC2\EOT\135\SOH\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SO\ETX\DC2\EOT\135\SOH\GS\US\n\
    \;\n\
    \\STX\EOT\ENQ\DC2\ACK\139\SOH\NUL\154\SOH\SOH\SUB- EventSealObject is emitted on MsgSealObject\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\139\SOH\b\US\n\
    \X\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\141\SOH\STXG\SUBJ operator define the account address of operator who cancel create object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\141\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\141\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\141\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\141\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\202\214\ENQ\DC2\EOT\141\SOH\ETBE\n\
    \9\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\143\SOH\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\143\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\143\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\143\SOH\ETB\CAN\n\
    \9\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\145\SOH\STX\EM\SUB+ object_name define the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\145\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\145\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\145\SOH\ETB\CAN\n\
    \P\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\147\SOH\STXQ\SUBB primary_sp_address define the operator account address of the sp\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\147\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\147\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\b\DC2\EOT\147\SOH P\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\ETX\b\202\214\ENQ\DC2\EOT\147\SOH!O\n\
    \1\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ACK\149\SOH\STX\153\SOH\EOT\SUB! id define an u256 id for object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\EOT\149\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\149\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\149\SOH\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\ENQ\STX\EOT\b\DC2\ACK\149\SOH\ETB\153\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\EOT\b\202\214\ENQ\DC2\EOT\150\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\EOT\b\235\251\ETX\DC2\EOT\151\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\EOT\b\233\251\ETX\DC2\EOT\152\SOH\EOT \n\
    \;\n\
    \\STX\EOT\ACK\DC2\ACK\157\SOH\NUL\174\SOH\SOH\SUB- EventSealObject is emitted on MsgSealObject\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\157\SOH\b\ETB\n\
    \O\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\159\SOH\STXG\SUBA operator define the account address of operator who seal object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\159\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\159\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\159\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\159\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\EOT\159\SOH\ETBE\n\
    \9\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\161\SOH\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\161\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\161\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\161\SOH\ETB\CAN\n\
    \9\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\163\SOH\STX\EM\SUB+ object_name define the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\163\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\163\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\163\SOH\ETB\CAN\n\
    \1\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ACK\165\SOH\STX\169\SOH\EOT\SUB! id define an u256 id for object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\EOT\165\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\165\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\165\SOH\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\ACK\STX\ETX\b\DC2\ACK\165\SOH\ETB\169\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\ETX\b\202\214\ENQ\DC2\EOT\166\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\ETX\b\235\251\ETX\DC2\EOT\167\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\ETX\b\233\251\ETX\DC2\EOT\168\SOH\EOT \n\
    \T\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\EOT\171\SOH\STX\SUB\SUBF status define the status of the object. INIT or IN_SERVICE or others\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\ACK\DC2\EOT\171\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\EOT\171\SOH\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\EOT\171\SOH\CAN\EM\n\
    \Y\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\EOT\173\SOH\STX^\SUBK secondary_sp_address define all the operator address of the secondary sps\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\EOT\DC2\EOT\173\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\EOT\173\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\EOT\173\SOH\DC2(\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\EOT\173\SOH+,\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ENQ\b\DC2\EOT\173\SOH-]\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\ENQ\b\202\214\ENQ\DC2\EOT\173\SOH.\\\n\
    \;\n\
    \\STX\EOT\a\DC2\ACK\177\SOH\NUL\200\SOH\SOH\SUB- EventCopyObject is emitted on MsgCopyObject\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\177\SOH\b\ETB\n\
    \S\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\179\SOH\STXG\SUBE operator define the account address of operator who copy the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\179\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\179\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\179\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\179\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\202\214\ENQ\DC2\EOT\179\SOH\ETBE\n\
    \A\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\181\SOH\STX\GS\SUB3 src_bucket_name define the name of the src bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\181\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\181\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\181\SOH\ESC\FS\n\
    \A\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\183\SOH\STX\GS\SUB3 src_object_name define the name of the src object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\183\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\183\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\183\SOH\ESC\FS\n\
    \A\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\185\SOH\STX\GS\SUB3 dst_bucket_name define the name of the dst bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\EOT\185\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\185\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\185\SOH\ESC\FS\n\
    \A\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\187\SOH\STX\GS\SUB3 dst_object_name define the name of the dst object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\EOT\187\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\187\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\187\SOH\ESC\FS\n\
    \A\n\
    \\EOT\EOT\a\STX\ENQ\DC2\ACK\189\SOH\STX\193\SOH\EOT\SUB1 src_object_id define the u256 id for src object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ENQ\DC2\EOT\189\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\EOT\189\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\EOT\189\SOH\EM\SUB\n\
    \\SI\n\
    \\ENQ\EOT\a\STX\ENQ\b\DC2\ACK\189\SOH\ESC\193\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\a\STX\ENQ\b\202\214\ENQ\DC2\EOT\190\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\a\STX\ENQ\b\235\251\ETX\DC2\EOT\191\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\a\STX\ENQ\b\233\251\ETX\DC2\EOT\192\SOH\EOT \n\
    \A\n\
    \\EOT\EOT\a\STX\ACK\DC2\ACK\195\SOH\STX\199\SOH\EOT\SUB1 dst_object_id define the u256 id for dst object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ENQ\DC2\EOT\195\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\SOH\DC2\EOT\195\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ETX\DC2\EOT\195\SOH\EM\SUB\n\
    \\SI\n\
    \\ENQ\EOT\a\STX\ACK\b\DC2\ACK\195\SOH\ESC\199\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\a\STX\ACK\b\202\214\ENQ\DC2\EOT\196\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\a\STX\ACK\b\235\251\ETX\DC2\EOT\197\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\a\STX\ACK\b\233\251\ETX\DC2\EOT\198\SOH\EOT \n\
    \?\n\
    \\STX\EOT\b\DC2\ACK\203\SOH\NUL\220\SOH\SOH\SUB1 EventDeleteObject is emitted on MsgDeleteObject\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\203\SOH\b\EM\n\
    \U\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\205\SOH\STXG\SUBG operator define the account address of operator who delete the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\205\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\205\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\205\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\205\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\205\SOH\ETBE\n\
    \9\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\207\SOH\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\207\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\207\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\207\SOH\ETB\CAN\n\
    \9\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\209\SOH\STX\EM\SUB+ object_name define the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\209\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\209\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\209\SOH\ETB\CAN\n\
    \1\n\
    \\EOT\EOT\b\STX\ETX\DC2\ACK\211\SOH\STX\215\SOH\EOT\SUB! id define an u256 id for object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\211\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\211\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\211\SOH\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\ACK\211\SOH\ETB\215\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\202\214\ENQ\DC2\EOT\212\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\235\251\ETX\DC2\EOT\213\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\233\251\ETX\DC2\EOT\214\SOH\EOT \n\
    \P\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\217\SOH\STXQ\SUBB primary_sp_address define the operator account address of the sp\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\EOT\217\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\217\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\217\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\b\DC2\EOT\217\SOH P\n\
    \\DLE\n\
    \\b\EOT\b\STX\EOT\b\202\214\ENQ\DC2\EOT\217\SOH!O\n\
    \Y\n\
    \\EOT\EOT\b\STX\ENQ\DC2\EOT\219\SOH\STX^\SUBK secondary_sp_address define all the operator address of the secondary sps\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\EOT\DC2\EOT\219\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\EOT\219\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\EOT\219\SOH\DC2(\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\EOT\219\SOH+,\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\b\DC2\EOT\219\SOH-]\n\
    \\DLE\n\
    \\b\EOT\b\STX\ENQ\b\202\214\ENQ\DC2\EOT\219\SOH.\\\n\
    \G\n\
    \\STX\EOT\t\DC2\ACK\223\SOH\NUL\236\SOH\SOH\SUB9 EventRejectSealObject is emitted on MsgRejectSealObject\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\223\SOH\b\GS\n\
    \V\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\225\SOH\STXG\SUBH operator define the account address of operator who reject seal object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\225\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\225\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\225\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\225\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\202\214\ENQ\DC2\EOT\225\SOH\ETBE\n\
    \9\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\227\SOH\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\227\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\227\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\227\SOH\ETB\CAN\n\
    \9\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\229\SOH\STX\EM\SUB+ object_name define the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\EOT\229\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\229\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\229\SOH\ETB\CAN\n\
    \1\n\
    \\EOT\EOT\t\STX\ETX\DC2\ACK\231\SOH\STX\235\SOH\EOT\SUB! id define an u256 id for object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ENQ\DC2\EOT\231\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\EOT\231\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\EOT\231\SOH\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\t\STX\ETX\b\DC2\ACK\231\SOH\ETB\235\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\t\STX\ETX\b\202\214\ENQ\DC2\EOT\232\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\t\STX\ETX\b\235\251\ETX\DC2\EOT\233\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\t\STX\ETX\b\233\251\ETX\DC2\EOT\234\SOH\EOT \n\
    \I\n\
    \\STX\EOT\n\
    \\DC2\ACK\239\SOH\NUL\252\SOH\SOH\SUB; EventDiscontinueObject is emitted on MsgDiscontinueObject\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\239\SOH\b\RS\n\
    \9\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\241\SOH\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\241\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\241\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\241\SOH\ETB\CAN\n\
    \4\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ACK\243\SOH\STX\247\SOH\EOT\SUB$ object_id defines id of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\243\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\243\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\243\SOH\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\ACK\243\SOH\ETB\247\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\244\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\235\251\ETX\DC2\EOT\245\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\233\251\ETX\DC2\EOT\246\SOH\EOT \n\
    \\SUB\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\249\SOH\STX\DC4\SUB\f the reason\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\249\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\249\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\249\SOH\DC2\DC3\n\
    \F\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\251\SOH\STX\SYN\SUB8 the timestamp after which the metadata will be deleted\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\251\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\251\SOH\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\251\SOH\DC4\NAK\n\
    \G\n\
    \\STX\EOT\v\DC2\ACK\255\SOH\NUL\142\STX\SOH\SUB9 EventUpdateObjectInfo is emitted on MsgUpdateObjectInfo\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\255\SOH\b\GS\n\
    \U\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\129\STX\STXG\SUBG operator define the account address of operator who update the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\129\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\129\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\129\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\EOT\129\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\202\214\ENQ\DC2\EOT\129\STX\ETBE\n\
    \9\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\131\STX\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\131\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\131\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\131\STX\ETB\CAN\n\
    \9\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\133\STX\STX\EM\SUB+ object_name define the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\EOT\133\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\133\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\133\STX\ETB\CAN\n\
    \8\n\
    \\EOT\EOT\v\STX\ETX\DC2\ACK\135\STX\STX\139\STX\EOT\SUB( object_id define an u256 id for object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\EOT\135\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\135\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\135\STX\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\v\STX\ETX\b\DC2\ACK\135\STX\ETB\139\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\v\STX\ETX\b\202\214\ENQ\DC2\EOT\136\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\v\STX\ETX\b\235\251\ETX\DC2\EOT\137\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\v\STX\ETX\b\233\251\ETX\DC2\EOT\138\STX\EOT \n\
    \D\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\141\STX\STX \SUB6 visibility defines the highest permission of object.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ACK\DC2\EOT\141\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\141\STX\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\141\STX\RS\US\n\
    \=\n\
    \\STX\EOT\f\DC2\ACK\145\STX\NUL\160\STX\SOH\SUB/ EventCreateGroup is emitted on MsgCreateGroup\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\145\STX\b\CAN\n\
    \?\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\147\STX\STXD\SUB1 owner define the account address of group owner\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\147\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\147\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\147\STX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\147\STX\DC3C\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\202\214\ENQ\DC2\EOT\147\STX\DC4B\n\
    \7\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\149\STX\STX\CAN\SUB) group_name define the name of the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\149\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\149\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\149\STX\SYN\ETB\n\
    \0\n\
    \\EOT\EOT\f\STX\STX\DC2\ACK\151\STX\STX\155\STX\EOT\SUB  id define an u256 id for group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\EOT\151\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\151\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\151\STX\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\f\STX\STX\b\DC2\ACK\151\STX\SYN\155\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\202\214\ENQ\DC2\EOT\152\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\235\251\ETX\DC2\EOT\153\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\233\251\ETX\DC2\EOT\154\STX\EOT \n\
    \[\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\157\STX\STX\GS\SUBM source_type define the source of the group. CrossChain or Greenfield origin\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ACK\DC2\EOT\157\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\157\STX\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\157\STX\ESC\FS\n\
    \B\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\159\STX\STXO\SUB4 members define the all the address of the members.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\EOT\DC2\EOT\159\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\159\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\159\STX\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\159\STX\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\b\DC2\EOT\159\STX\RSN\n\
    \\DLE\n\
    \\b\EOT\f\STX\EOT\b\202\214\ENQ\DC2\EOT\159\STX\USM\n\
    \=\n\
    \\STX\EOT\r\DC2\ACK\163\STX\NUL\174\STX\SOH\SUB/ EventDeleteGroup is emitted on MsgDeleteGroup\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\163\STX\b\CAN\n\
    \?\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\165\STX\STXD\SUB1 owner define the account address of group owner\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\165\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\165\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\165\STX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\165\STX\DC3C\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\202\214\ENQ\DC2\EOT\165\STX\DC4B\n\
    \7\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\167\STX\STX\CAN\SUB) group_name define the name of the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\167\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\167\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\167\STX\SYN\ETB\n\
    \0\n\
    \\EOT\EOT\r\STX\STX\DC2\ACK\169\STX\STX\173\STX\EOT\SUB  id define an u256 id for group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\169\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\169\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\169\STX\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\r\STX\STX\b\DC2\ACK\169\STX\SYN\173\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\202\214\ENQ\DC2\EOT\170\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\235\251\ETX\DC2\EOT\171\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\233\251\ETX\DC2\EOT\172\STX\EOT \n\
    \;\n\
    \\STX\EOT\SO\DC2\ACK\177\STX\NUL\190\STX\SOH\SUB- EventLeaveGroup is emitted on MsgLeaveGroup\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\177\STX\b\ETB\n\
    \S\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\179\STX\STXM\SUBE member_address define the address of the member who leave the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\179\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\179\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\179\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\b\DC2\EOT\179\STX\FSL\n\
    \\DLE\n\
    \\b\EOT\SO\STX\NUL\b\202\214\ENQ\DC2\EOT\179\STX\GSK\n\
    \?\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\181\STX\STXD\SUB1 owner define the account address of group owner\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\181\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\181\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\181\STX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\b\DC2\EOT\181\STX\DC3C\n\
    \\DLE\n\
    \\b\EOT\SO\STX\SOH\b\202\214\ENQ\DC2\EOT\181\STX\DC4B\n\
    \7\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\183\STX\STX\CAN\SUB) group_name define the name of the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\183\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\183\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\183\STX\SYN\ETB\n\
    \0\n\
    \\EOT\EOT\SO\STX\ETX\DC2\ACK\185\STX\STX\189\STX\EOT\SUB  id define an u256 id for group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ENQ\DC2\EOT\185\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\EOT\185\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\EOT\185\STX\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\SO\STX\ETX\b\DC2\ACK\185\STX\SYN\189\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\SO\STX\ETX\b\202\214\ENQ\DC2\EOT\186\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\SO\STX\ETX\b\235\251\ETX\DC2\EOT\187\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\SO\STX\ETX\b\233\251\ETX\DC2\EOT\188\STX\EOT \n\
    \I\n\
    \\STX\EOT\SI\DC2\ACK\193\STX\NUL\210\STX\SOH\SUB; EventUpdateGroupMember is emitted on MsgUpdateGroupMember\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\193\STX\b\RS\n\
    \[\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\195\STX\STXG\SUBM operator define the account address of operator who update the group member\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\195\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\195\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\195\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\b\DC2\EOT\195\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\202\214\ENQ\DC2\EOT\195\STX\ETBE\n\
    \?\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\197\STX\STXD\SUB1 owner define the account address of group owner\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\197\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\197\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\197\STX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\b\DC2\EOT\197\STX\DC3C\n\
    \\DLE\n\
    \\b\EOT\SI\STX\SOH\b\202\214\ENQ\DC2\EOT\197\STX\DC4B\n\
    \7\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\199\STX\STX\CAN\SUB) group_name define the name of the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\199\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\199\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\199\STX\SYN\ETB\n\
    \0\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ACK\201\STX\STX\205\STX\EOT\SUB  id define an u256 id for group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\201\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\201\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\201\STX\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\SI\STX\ETX\b\DC2\ACK\201\STX\SYN\205\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ETX\b\202\214\ENQ\DC2\EOT\202\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ETX\b\235\251\ETX\DC2\EOT\203\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ETX\b\233\251\ETX\DC2\EOT\204\STX\EOT \n\
    \O\n\
    \\EOT\EOT\SI\STX\EOT\DC2\EOT\207\STX\STXV\SUBA members_to_add defines all the members to be added to the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\EOT\DC2\EOT\207\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\EOT\207\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\207\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\207\STX#$\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\b\DC2\EOT\207\STX%U\n\
    \\DLE\n\
    \\b\EOT\SI\STX\EOT\b\202\214\ENQ\DC2\EOT\207\STX&T\n\
    \S\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\EOT\209\STX\STXY\SUBE members_to_add defines all the members to be deleted from the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\EOT\DC2\EOT\209\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ENQ\DC2\EOT\209\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\209\STX\DC2#\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\209\STX&'\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\b\DC2\EOT\209\STX(X\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\202\214\ENQ\DC2\EOT\209\STX)W\n\
    \<\n\
    \\STX\EOT\DLE\DC2\ACK\213\STX\NUL\224\STX\SOH\SUB. EventMirrorBucket is emitted on MirrorBucket\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\213\STX\b\EM\n\
    \U\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\215\STX\STXG\SUBG operator define the account address of operator who mirror the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\215\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\215\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\215\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\b\DC2\EOT\215\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\NUL\b\202\214\ENQ\DC2\EOT\215\STX\ETBE\n\
    \:\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\217\STX\STX\EM\SUB, bucket_name defines the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\217\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\217\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\217\STX\ETB\CAN\n\
    \8\n\
    \\EOT\EOT\DLE\STX\STX\DC2\ACK\219\STX\STX\223\STX\EOT\SUB( bucket_id define an u256 id for bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\219\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\219\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\219\STX\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\DLE\STX\STX\b\DC2\ACK\219\STX\ETB\223\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\202\214\ENQ\DC2\EOT\220\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\235\251\ETX\DC2\EOT\221\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\233\251\ETX\DC2\EOT\222\STX\EOT \n\
    \b\n\
    \\STX\EOT\DC1\DC2\ACK\227\STX\NUL\238\STX\SOH\SUBT EventMirrorBucketResult is emitted on receiving ack package from destination chain\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\227\STX\b\US\n\
    \6\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\229\STX\STX\DC4\SUB( status define the status of the result\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\229\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\229\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\229\STX\DC2\DC3\n\
    \:\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\231\STX\STX\EM\SUB, bucket_name defines the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\231\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\231\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\231\STX\ETB\CAN\n\
    \8\n\
    \\EOT\EOT\DC1\STX\STX\DC2\ACK\233\STX\STX\237\STX\EOT\SUB( bucket_id define an u256 id for bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\EOT\233\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\233\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\233\STX\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\DC1\STX\STX\b\DC2\ACK\233\STX\ETB\237\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\STX\b\202\214\ENQ\DC2\EOT\234\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\STX\b\235\251\ETX\DC2\EOT\235\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\STX\b\233\251\ETX\DC2\EOT\236\STX\EOT \n\
    \<\n\
    \\STX\EOT\DC2\DC2\ACK\241\STX\NUL\254\STX\SOH\SUB. EventMirrorObject is emitted on MirrorObject\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\241\STX\b\EM\n\
    \U\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\243\STX\STXG\SUBG operator define the account address of operator who delete the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\243\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\243\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\243\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\243\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\202\214\ENQ\DC2\EOT\243\STX\ETBE\n\
    \9\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\245\STX\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\245\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\245\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\245\STX\ETB\CAN\n\
    \9\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\247\STX\STX\EM\SUB+ object_name define the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\247\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\247\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\247\STX\ETB\CAN\n\
    \8\n\
    \\EOT\EOT\DC2\STX\ETX\DC2\ACK\249\STX\STX\253\STX\EOT\SUB( object_id define an u256 id for object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ENQ\DC2\EOT\249\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\SOH\DC2\EOT\249\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ETX\DC2\EOT\249\STX\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\DC2\STX\ETX\b\DC2\ACK\249\STX\ETB\253\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\ETX\b\202\214\ENQ\DC2\EOT\250\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\ETX\b\235\251\ETX\DC2\EOT\251\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\ETX\b\233\251\ETX\DC2\EOT\252\STX\EOT \n\
    \b\n\
    \\STX\EOT\DC3\DC2\ACK\129\ETX\NUL\142\ETX\SOH\SUBT EventMirrorObjectResult is emitted on receiving ack package from destination chain\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\129\ETX\b\US\n\
    \6\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\131\ETX\STX\DC4\SUB( status define the status of the result\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\131\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\131\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\131\ETX\DC2\DC3\n\
    \9\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\133\ETX\STX\EM\SUB+ bucket_name define the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\133\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\133\ETX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\133\ETX\ETB\CAN\n\
    \9\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\135\ETX\STX\EM\SUB+ object_name define the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\135\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\135\ETX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\135\ETX\ETB\CAN\n\
    \8\n\
    \\EOT\EOT\DC3\STX\ETX\DC2\ACK\137\ETX\STX\141\ETX\EOT\SUB( object_id define an u256 id for object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ENQ\DC2\EOT\137\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\SOH\DC2\EOT\137\ETX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ETX\DC2\EOT\137\ETX\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\DC3\STX\ETX\b\DC2\ACK\137\ETX\ETB\141\ETX\ETX\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\ETX\b\202\214\ENQ\DC2\EOT\138\ETX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\ETX\b\235\251\ETX\DC2\EOT\139\ETX\EOT#\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\ETX\b\233\251\ETX\DC2\EOT\140\ETX\EOT \n\
    \:\n\
    \\STX\EOT\DC4\DC2\ACK\145\ETX\NUL\156\ETX\SOH\SUB, EventMirrorGroup is emitted on MirrorGroup\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\145\ETX\b\CAN\n\
    \?\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\147\ETX\STXD\SUB1 owner define the account address of group owner\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\147\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\147\ETX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\147\ETX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\b\DC2\EOT\147\ETX\DC3C\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\NUL\b\202\214\ENQ\DC2\EOT\147\ETX\DC4B\n\
    \7\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\149\ETX\STX\CAN\SUB) group_name define the name of the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ENQ\DC2\EOT\149\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\149\ETX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\149\ETX\SYN\ETB\n\
    \6\n\
    \\EOT\EOT\DC4\STX\STX\DC2\ACK\151\ETX\STX\155\ETX\EOT\SUB& group_id define an u256 id for group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\ENQ\DC2\EOT\151\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\SOH\DC2\EOT\151\ETX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\ETX\DC2\EOT\151\ETX\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\DC4\STX\STX\b\DC2\ACK\151\ETX\SYN\155\ETX\ETX\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\STX\b\202\214\ENQ\DC2\EOT\152\ETX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\STX\b\235\251\ETX\DC2\EOT\153\ETX\EOT#\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\STX\b\233\251\ETX\DC2\EOT\154\ETX\EOT \n\
    \a\n\
    \\STX\EOT\NAK\DC2\ACK\159\ETX\NUL\170\ETX\SOH\SUBS EventMirrorGroupResult is emitted on receiving ack package from destination chain\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\159\ETX\b\RS\n\
    \6\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\161\ETX\STX\DC4\SUB( status define the status of the result\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\161\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\161\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\161\ETX\DC2\DC3\n\
    \7\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\163\ETX\STX\CAN\SUB) group_name define the name of the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\EOT\163\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\163\ETX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\163\ETX\SYN\ETB\n\
    \6\n\
    \\EOT\EOT\NAK\STX\STX\DC2\ACK\165\ETX\STX\169\ETX\EOT\SUB& group_id define an u256 id for group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ENQ\DC2\EOT\165\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\EOT\165\ETX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\EOT\165\ETX\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\NAK\STX\STX\b\DC2\ACK\165\ETX\SYN\169\ETX\ETX\n\
    \\DLE\n\
    \\b\EOT\NAK\STX\STX\b\202\214\ENQ\DC2\EOT\166\ETX\EOT)\n\
    \\DLE\n\
    \\b\EOT\NAK\STX\STX\b\235\251\ETX\DC2\EOT\167\ETX\EOT#\n\
    \\DLE\n\
    \\b\EOT\NAK\STX\STX\b\233\251\ETX\DC2\EOT\168\ETX\EOT \n\
    \|\n\
    \\STX\EOT\SYN\DC2\ACK\173\ETX\NUL\176\ETX\SOH\SUBn EventStalePolicyCleanup is emitted when specified block height's stale policies need to be Garbage collected\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\173\ETX\b\US\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\174\ETX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\174\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\174\ETX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\174\ETX\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\175\ETX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\175\ETX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\175\ETX\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\175\ETX\ESC\FSb\ACKproto3"