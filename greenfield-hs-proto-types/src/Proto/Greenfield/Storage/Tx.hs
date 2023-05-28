{- This file was auto-generated from greenfield/storage/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Tx (
        Msg(..), MsgCancelCreateObject(), MsgCancelCreateObjectResponse(),
        MsgCopyObject(), MsgCopyObjectResponse(), MsgCreateBucket(),
        MsgCreateBucketResponse(), MsgCreateGroup(),
        MsgCreateGroupResponse(), MsgCreateObject(),
        MsgCreateObjectResponse(), MsgDeleteBucket(),
        MsgDeleteBucketResponse(), MsgDeleteGroup(),
        MsgDeleteGroupResponse(), MsgDeleteObject(),
        MsgDeleteObjectResponse(), MsgDeletePolicy(),
        MsgDeletePolicyResponse(), MsgDiscontinueBucket(),
        MsgDiscontinueBucketResponse(), MsgDiscontinueObject(),
        MsgDiscontinueObjectResponse(), MsgLeaveGroup(),
        MsgLeaveGroupResponse(), MsgMirrorBucket(),
        MsgMirrorBucketResponse(), MsgMirrorGroup(),
        MsgMirrorGroupResponse(), MsgMirrorObject(),
        MsgMirrorObjectResponse(), MsgPutPolicy(), MsgPutPolicyResponse(),
        MsgRejectSealObject(), MsgRejectSealObjectResponse(),
        MsgSealObject(), MsgSealObjectResponse(), MsgUpdateBucketInfo(),
        MsgUpdateBucketInfoResponse(), MsgUpdateGroupMember(),
        MsgUpdateGroupMemberResponse(), MsgUpdateObjectInfo(),
        MsgUpdateObjectInfoResponse(), MsgUpdateParams(),
        MsgUpdateParamsResponse()
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Greenfield.Common.Wrapper
import qualified Proto.Greenfield.Permission.Common
import qualified Proto.Greenfield.Storage.Common
import qualified Proto.Greenfield.Storage.Params
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgCancelCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgCancelCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.objectName' @:: Lens' MsgCancelCreateObject Data.Text.Text@ -}
data MsgCancelCreateObject
  = MsgCancelCreateObject'_constructor {_MsgCancelCreateObject'operator :: !Data.Text.Text,
                                        _MsgCancelCreateObject'bucketName :: !Data.Text.Text,
                                        _MsgCancelCreateObject'objectName :: !Data.Text.Text,
                                        _MsgCancelCreateObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelCreateObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCancelCreateObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelCreateObject'operator
           (\ x__ y__ -> x__ {_MsgCancelCreateObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelCreateObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelCreateObject'bucketName
           (\ x__ y__ -> x__ {_MsgCancelCreateObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelCreateObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelCreateObject'objectName
           (\ x__ y__ -> x__ {_MsgCancelCreateObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCancelCreateObject where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgCancelCreateObject"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgCancelCreateObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgCancelCreateObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelCreateObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelCreateObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelCreateObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgCancelCreateObject'_unknownFields = y__})
  defMessage
    = MsgCancelCreateObject'_constructor
        {_MsgCancelCreateObject'operator = Data.ProtoLens.fieldDefault,
         _MsgCancelCreateObject'bucketName = Data.ProtoLens.fieldDefault,
         _MsgCancelCreateObject'objectName = Data.ProtoLens.fieldDefault,
         _MsgCancelCreateObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelCreateObject
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelCreateObject
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCancelCreateObject"
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgCancelCreateObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelCreateObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCancelCreateObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgCancelCreateObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCancelCreateObject'objectName x__) ())))
{- | Fields :
      -}
data MsgCancelCreateObjectResponse
  = MsgCancelCreateObjectResponse'_constructor {_MsgCancelCreateObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelCreateObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCancelCreateObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgCancelCreateObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSMsgCancelCreateObjectResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelCreateObjectResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCancelCreateObjectResponse'_unknownFields = y__})
  defMessage
    = MsgCancelCreateObjectResponse'_constructor
        {_MsgCancelCreateObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelCreateObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelCreateObjectResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCancelCreateObjectResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCancelCreateObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelCreateObjectResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.srcBucketName' @:: Lens' MsgCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.dstBucketName' @:: Lens' MsgCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.srcObjectName' @:: Lens' MsgCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.dstObjectName' @:: Lens' MsgCopyObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.dstPrimarySpApproval' @:: Lens' MsgCopyObject Proto.Greenfield.Storage.Common.Approval@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'dstPrimarySpApproval' @:: Lens' MsgCopyObject (Prelude.Maybe Proto.Greenfield.Storage.Common.Approval)@ -}
data MsgCopyObject
  = MsgCopyObject'_constructor {_MsgCopyObject'operator :: !Data.Text.Text,
                                _MsgCopyObject'srcBucketName :: !Data.Text.Text,
                                _MsgCopyObject'dstBucketName :: !Data.Text.Text,
                                _MsgCopyObject'srcObjectName :: !Data.Text.Text,
                                _MsgCopyObject'dstObjectName :: !Data.Text.Text,
                                _MsgCopyObject'dstPrimarySpApproval :: !(Prelude.Maybe Proto.Greenfield.Storage.Common.Approval),
                                _MsgCopyObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCopyObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCopyObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObject'operator
           (\ x__ y__ -> x__ {_MsgCopyObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCopyObject "srcBucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObject'srcBucketName
           (\ x__ y__ -> x__ {_MsgCopyObject'srcBucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCopyObject "dstBucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObject'dstBucketName
           (\ x__ y__ -> x__ {_MsgCopyObject'dstBucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCopyObject "srcObjectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObject'srcObjectName
           (\ x__ y__ -> x__ {_MsgCopyObject'srcObjectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCopyObject "dstObjectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObject'dstObjectName
           (\ x__ y__ -> x__ {_MsgCopyObject'dstObjectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCopyObject "dstPrimarySpApproval" Proto.Greenfield.Storage.Common.Approval where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObject'dstPrimarySpApproval
           (\ x__ y__ -> x__ {_MsgCopyObject'dstPrimarySpApproval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCopyObject "maybe'dstPrimarySpApproval" (Prelude.Maybe Proto.Greenfield.Storage.Common.Approval) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObject'dstPrimarySpApproval
           (\ x__ y__ -> x__ {_MsgCopyObject'dstPrimarySpApproval = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCopyObject where
  messageName _ = Data.Text.pack "greenfield.storage.MsgCopyObject"
  packedMessageDescriptor _
    = "\n\
      \\rMsgCopyObject\DC2\SUB\n\
      \\boperator\CAN\SOH \SOH(\tR\boperator\DC2&\n\
      \\SIsrc_bucket_name\CAN\STX \SOH(\tR\rsrcBucketName\DC2&\n\
      \\SIdst_bucket_name\CAN\ETX \SOH(\tR\rdstBucketName\DC2&\n\
      \\SIsrc_object_name\CAN\EOT \SOH(\tR\rsrcObjectName\DC2&\n\
      \\SIdst_object_name\CAN\ENQ \SOH(\tR\rdstObjectName\DC2S\n\
      \\ETBdst_primary_sp_approval\CAN\ACK \SOH(\v2\FS.greenfield.storage.ApprovalR\DC4dstPrimarySpApproval:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgCopyObject
        srcBucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"srcBucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgCopyObject
        dstBucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dstBucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgCopyObject
        srcObjectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"srcObjectName")) ::
              Data.ProtoLens.FieldDescriptor MsgCopyObject
        dstObjectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dstObjectName")) ::
              Data.ProtoLens.FieldDescriptor MsgCopyObject
        dstPrimarySpApproval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_primary_sp_approval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.Approval)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstPrimarySpApproval")) ::
              Data.ProtoLens.FieldDescriptor MsgCopyObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, srcBucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, dstBucketName__field_descriptor),
           (Data.ProtoLens.Tag 4, srcObjectName__field_descriptor),
           (Data.ProtoLens.Tag 5, dstObjectName__field_descriptor),
           (Data.ProtoLens.Tag 6, dstPrimarySpApproval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCopyObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgCopyObject'_unknownFields = y__})
  defMessage
    = MsgCopyObject'_constructor
        {_MsgCopyObject'operator = Data.ProtoLens.fieldDefault,
         _MsgCopyObject'srcBucketName = Data.ProtoLens.fieldDefault,
         _MsgCopyObject'dstBucketName = Data.ProtoLens.fieldDefault,
         _MsgCopyObject'srcObjectName = Data.ProtoLens.fieldDefault,
         _MsgCopyObject'dstObjectName = Data.ProtoLens.fieldDefault,
         _MsgCopyObject'dstPrimarySpApproval = Prelude.Nothing,
         _MsgCopyObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCopyObject -> Data.ProtoLens.Encoding.Bytes.Parser MsgCopyObject
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
                                       "dst_bucket_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dstBucketName") y x)
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
                                       "src_object_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"srcObjectName") y x)
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dst_primary_sp_approval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dstPrimarySpApproval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCopyObject"
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
                            (Data.ProtoLens.Field.field @"dstBucketName") _x
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
                               (Data.ProtoLens.Field.field @"srcObjectName") _x
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
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'dstPrimarySpApproval") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MsgCopyObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCopyObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCopyObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgCopyObject'srcBucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCopyObject'dstBucketName x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCopyObject'srcObjectName x__)
                         (Control.DeepSeq.deepseq
                            (_MsgCopyObject'dstObjectName x__)
                            (Control.DeepSeq.deepseq
                               (_MsgCopyObject'dstPrimarySpApproval x__) ()))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.objectId' @:: Lens' MsgCopyObjectResponse Data.Text.Text@ -}
data MsgCopyObjectResponse
  = MsgCopyObjectResponse'_constructor {_MsgCopyObjectResponse'objectId :: !Data.Text.Text,
                                        _MsgCopyObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCopyObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCopyObjectResponse "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCopyObjectResponse'objectId
           (\ x__ y__ -> x__ {_MsgCopyObjectResponse'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCopyObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgCopyObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgCopyObjectResponse\DC28\n\
      \\tobject_id\CAN\SOH \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor MsgCopyObjectResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, objectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCopyObjectResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgCopyObjectResponse'_unknownFields = y__})
  defMessage
    = MsgCopyObjectResponse'_constructor
        {_MsgCopyObjectResponse'objectId = Data.ProtoLens.fieldDefault,
         _MsgCopyObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCopyObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCopyObjectResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCopyObjectResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"objectId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgCopyObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCopyObjectResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgCopyObjectResponse'objectId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.creator' @:: Lens' MsgCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.visibility' @:: Lens' MsgCreateBucket Proto.Greenfield.Storage.Common.VisibilityType@
         * 'Proto.Greenfield.Storage.Tx_Fields.paymentAddress' @:: Lens' MsgCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.primarySpAddress' @:: Lens' MsgCreateBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.primarySpApproval' @:: Lens' MsgCreateBucket Proto.Greenfield.Storage.Common.Approval@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'primarySpApproval' @:: Lens' MsgCreateBucket (Prelude.Maybe Proto.Greenfield.Storage.Common.Approval)@
         * 'Proto.Greenfield.Storage.Tx_Fields.chargedReadQuota' @:: Lens' MsgCreateBucket Data.Word.Word64@ -}
data MsgCreateBucket
  = MsgCreateBucket'_constructor {_MsgCreateBucket'creator :: !Data.Text.Text,
                                  _MsgCreateBucket'bucketName :: !Data.Text.Text,
                                  _MsgCreateBucket'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                  _MsgCreateBucket'paymentAddress :: !Data.Text.Text,
                                  _MsgCreateBucket'primarySpAddress :: !Data.Text.Text,
                                  _MsgCreateBucket'primarySpApproval :: !(Prelude.Maybe Proto.Greenfield.Storage.Common.Approval),
                                  _MsgCreateBucket'chargedReadQuota :: !Data.Word.Word64,
                                  _MsgCreateBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateBucket "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'creator
           (\ x__ y__ -> x__ {_MsgCreateBucket'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateBucket "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'bucketName
           (\ x__ y__ -> x__ {_MsgCreateBucket'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateBucket "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'visibility
           (\ x__ y__ -> x__ {_MsgCreateBucket'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateBucket "paymentAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'paymentAddress
           (\ x__ y__ -> x__ {_MsgCreateBucket'paymentAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateBucket "primarySpAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'primarySpAddress
           (\ x__ y__ -> x__ {_MsgCreateBucket'primarySpAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateBucket "primarySpApproval" Proto.Greenfield.Storage.Common.Approval where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'primarySpApproval
           (\ x__ y__ -> x__ {_MsgCreateBucket'primarySpApproval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateBucket "maybe'primarySpApproval" (Prelude.Maybe Proto.Greenfield.Storage.Common.Approval) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'primarySpApproval
           (\ x__ y__ -> x__ {_MsgCreateBucket'primarySpApproval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateBucket "chargedReadQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucket'chargedReadQuota
           (\ x__ y__ -> x__ {_MsgCreateBucket'chargedReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateBucket where
  messageName _ = Data.Text.pack "greenfield.storage.MsgCreateBucket"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgCreateBucket\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2B\n\
      \\n\
      \visibility\CAN\ETX \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility\DC2A\n\
      \\SIpayment_address\CAN\EOT \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\DC2primary_sp_address\CAN\ACK \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
      \\DC3primary_sp_approval\CAN\a \SOH(\v2\FS.greenfield.storage.ApprovalR\DC1primarySpApproval\DC2,\n\
      \\DC2charged_read_quota\CAN\b \SOH(\EOTR\DLEchargedReadQuota:\f\130\231\176*\acreator"
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
              Data.ProtoLens.FieldDescriptor MsgCreateBucket
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateBucket
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateBucket
        paymentAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateBucket
        primarySpAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"primarySpAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateBucket
        primarySpApproval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_approval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.Approval)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'primarySpApproval")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateBucket
        chargedReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "charged_read_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"chargedReadQuota")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, visibility__field_descriptor),
           (Data.ProtoLens.Tag 4, paymentAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, primarySpAddress__field_descriptor),
           (Data.ProtoLens.Tag 7, primarySpApproval__field_descriptor),
           (Data.ProtoLens.Tag 8, chargedReadQuota__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateBucket'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateBucket'_unknownFields = y__})
  defMessage
    = MsgCreateBucket'_constructor
        {_MsgCreateBucket'creator = Data.ProtoLens.fieldDefault,
         _MsgCreateBucket'bucketName = Data.ProtoLens.fieldDefault,
         _MsgCreateBucket'visibility = Data.ProtoLens.fieldDefault,
         _MsgCreateBucket'paymentAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateBucket'primarySpAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateBucket'primarySpApproval = Prelude.Nothing,
         _MsgCreateBucket'chargedReadQuota = Data.ProtoLens.fieldDefault,
         _MsgCreateBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateBucket
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
                                       "creator"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
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
                                       "payment_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAddress") y x)
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
                                       "primary_sp_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpAddress") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "primary_sp_approval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpApproval") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "charged_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chargedReadQuota") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCreateBucket"
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
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"paymentAddress") _x
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
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'primarySpApproval") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
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
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData MsgCreateBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateBucket'creator x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateBucket'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreateBucket'visibility x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreateBucket'paymentAddress x__)
                         (Control.DeepSeq.deepseq
                            (_MsgCreateBucket'primarySpAddress x__)
                            (Control.DeepSeq.deepseq
                               (_MsgCreateBucket'primarySpApproval x__)
                               (Control.DeepSeq.deepseq
                                  (_MsgCreateBucket'chargedReadQuota x__) ())))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketId' @:: Lens' MsgCreateBucketResponse Data.Text.Text@ -}
data MsgCreateBucketResponse
  = MsgCreateBucketResponse'_constructor {_MsgCreateBucketResponse'bucketId :: !Data.Text.Text,
                                          _MsgCreateBucketResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateBucketResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateBucketResponse "bucketId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateBucketResponse'bucketId
           (\ x__ y__ -> x__ {_MsgCreateBucketResponse'bucketId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateBucketResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgCreateBucketResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgCreateBucketResponse\DC28\n\
      \\tbucket_id\CAN\SOH \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
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
              Data.ProtoLens.FieldDescriptor MsgCreateBucketResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateBucketResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateBucketResponse'_unknownFields = y__})
  defMessage
    = MsgCreateBucketResponse'_constructor
        {_MsgCreateBucketResponse'bucketId = Data.ProtoLens.fieldDefault,
         _MsgCreateBucketResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateBucketResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateBucketResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCreateBucketResponse"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgCreateBucketResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateBucketResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateBucketResponse'bucketId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.creator' @:: Lens' MsgCreateGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.groupName' @:: Lens' MsgCreateGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.members' @:: Lens' MsgCreateGroup [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'members' @:: Lens' MsgCreateGroup (Data.Vector.Vector Data.Text.Text)@ -}
data MsgCreateGroup
  = MsgCreateGroup'_constructor {_MsgCreateGroup'creator :: !Data.Text.Text,
                                 _MsgCreateGroup'groupName :: !Data.Text.Text,
                                 _MsgCreateGroup'members :: !(Data.Vector.Vector Data.Text.Text),
                                 _MsgCreateGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroup "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'creator
           (\ x__ y__ -> x__ {_MsgCreateGroup'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroup "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'groupName
           (\ x__ y__ -> x__ {_MsgCreateGroup'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroup "members" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'members
           (\ x__ y__ -> x__ {_MsgCreateGroup'members = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreateGroup "vec'members" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'members
           (\ x__ y__ -> x__ {_MsgCreateGroup'members = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroup where
  messageName _ = Data.Text.pack "greenfield.storage.MsgCreateGroup"
  packedMessageDescriptor _
    = "\n\
      \\SOMsgCreateGroup\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\STX \SOH(\tR\tgroupName\DC22\n\
      \\amembers\CAN\ETX \ETX(\tR\amembersB\CAN\210\180-\DC4cosmos.AddressString:\f\130\231\176*\acreator"
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
              Data.ProtoLens.FieldDescriptor MsgCreateGroup
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroup
        members__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"members")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, members__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroup'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateGroup'_unknownFields = y__})
  defMessage
    = MsgCreateGroup'_constructor
        {_MsgCreateGroup'creator = Data.ProtoLens.fieldDefault,
         _MsgCreateGroup'groupName = Data.ProtoLens.fieldDefault,
         _MsgCreateGroup'members = Data.Vector.Generic.empty,
         _MsgCreateGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroup
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroup
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
                                       "creator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
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
          "MsgCreateGroup"
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'members") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgCreateGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateGroup'creator x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateGroup'groupName x__)
                   (Control.DeepSeq.deepseq (_MsgCreateGroup'members x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.groupId' @:: Lens' MsgCreateGroupResponse Data.Text.Text@ -}
data MsgCreateGroupResponse
  = MsgCreateGroupResponse'_constructor {_MsgCreateGroupResponse'groupId :: !Data.Text.Text,
                                         _MsgCreateGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroupResponse "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupResponse'groupId
           (\ x__ y__ -> x__ {_MsgCreateGroupResponse'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroupResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgCreateGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNMsgCreateGroupResponse\DC26\n\
      \\bgroup_id\CAN\SOH \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateGroupResponse'_unknownFields = y__})
  defMessage
    = MsgCreateGroupResponse'_constructor
        {_MsgCreateGroupResponse'groupId = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroupResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCreateGroupResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgCreateGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroupResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgCreateGroupResponse'groupId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.creator' @:: Lens' MsgCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.objectName' @:: Lens' MsgCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.payloadSize' @:: Lens' MsgCreateObject Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Tx_Fields.visibility' @:: Lens' MsgCreateObject Proto.Greenfield.Storage.Common.VisibilityType@
         * 'Proto.Greenfield.Storage.Tx_Fields.contentType' @:: Lens' MsgCreateObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.primarySpApproval' @:: Lens' MsgCreateObject Proto.Greenfield.Storage.Common.Approval@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'primarySpApproval' @:: Lens' MsgCreateObject (Prelude.Maybe Proto.Greenfield.Storage.Common.Approval)@
         * 'Proto.Greenfield.Storage.Tx_Fields.expectChecksums' @:: Lens' MsgCreateObject [Data.ByteString.ByteString]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'expectChecksums' @:: Lens' MsgCreateObject (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Greenfield.Storage.Tx_Fields.redundancyType' @:: Lens' MsgCreateObject Proto.Greenfield.Storage.Common.RedundancyType@
         * 'Proto.Greenfield.Storage.Tx_Fields.expectSecondarySpAddresses' @:: Lens' MsgCreateObject [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'expectSecondarySpAddresses' @:: Lens' MsgCreateObject (Data.Vector.Vector Data.Text.Text)@ -}
data MsgCreateObject
  = MsgCreateObject'_constructor {_MsgCreateObject'creator :: !Data.Text.Text,
                                  _MsgCreateObject'bucketName :: !Data.Text.Text,
                                  _MsgCreateObject'objectName :: !Data.Text.Text,
                                  _MsgCreateObject'payloadSize :: !Data.Word.Word64,
                                  _MsgCreateObject'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                  _MsgCreateObject'contentType :: !Data.Text.Text,
                                  _MsgCreateObject'primarySpApproval :: !(Prelude.Maybe Proto.Greenfield.Storage.Common.Approval),
                                  _MsgCreateObject'expectChecksums :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                  _MsgCreateObject'redundancyType :: !Proto.Greenfield.Storage.Common.RedundancyType,
                                  _MsgCreateObject'expectSecondarySpAddresses :: !(Data.Vector.Vector Data.Text.Text),
                                  _MsgCreateObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateObject "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'creator
           (\ x__ y__ -> x__ {_MsgCreateObject'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'bucketName
           (\ x__ y__ -> x__ {_MsgCreateObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'objectName
           (\ x__ y__ -> x__ {_MsgCreateObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "payloadSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'payloadSize
           (\ x__ y__ -> x__ {_MsgCreateObject'payloadSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'visibility
           (\ x__ y__ -> x__ {_MsgCreateObject'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "contentType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'contentType
           (\ x__ y__ -> x__ {_MsgCreateObject'contentType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "primarySpApproval" Proto.Greenfield.Storage.Common.Approval where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'primarySpApproval
           (\ x__ y__ -> x__ {_MsgCreateObject'primarySpApproval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateObject "maybe'primarySpApproval" (Prelude.Maybe Proto.Greenfield.Storage.Common.Approval) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'primarySpApproval
           (\ x__ y__ -> x__ {_MsgCreateObject'primarySpApproval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "expectChecksums" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'expectChecksums
           (\ x__ y__ -> x__ {_MsgCreateObject'expectChecksums = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreateObject "vec'expectChecksums" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'expectChecksums
           (\ x__ y__ -> x__ {_MsgCreateObject'expectChecksums = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "redundancyType" Proto.Greenfield.Storage.Common.RedundancyType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'redundancyType
           (\ x__ y__ -> x__ {_MsgCreateObject'redundancyType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateObject "expectSecondarySpAddresses" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'expectSecondarySpAddresses
           (\ x__ y__
              -> x__ {_MsgCreateObject'expectSecondarySpAddresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreateObject "vec'expectSecondarySpAddresses" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObject'expectSecondarySpAddresses
           (\ x__ y__
              -> x__ {_MsgCreateObject'expectSecondarySpAddresses = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateObject where
  messageName _ = Data.Text.pack "greenfield.storage.MsgCreateObject"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgCreateObject\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC2!\n\
      \\fpayload_size\CAN\EOT \SOH(\EOTR\vpayloadSize\DC2B\n\
      \\n\
      \visibility\CAN\ENQ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility\DC2!\n\
      \\fcontent_type\CAN\ACK \SOH(\tR\vcontentType\DC2L\n\
      \\DC3primary_sp_approval\CAN\a \SOH(\v2\FS.greenfield.storage.ApprovalR\DC1primarySpApproval\DC2)\n\
      \\DLEexpect_checksums\CAN\b \ETX(\fR\SIexpectChecksums\DC2K\n\
      \\SIredundancy_type\CAN\t \SOH(\SO2\".greenfield.storage.RedundancyTypeR\SOredundancyType\DC2[\n\
      \\GSexpect_secondary_sp_addresses\CAN\n\
      \ \ETX(\tR\SUBexpectSecondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString:\f\130\231\176*\acreator"
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
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        payloadSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"payloadSize")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        contentType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"contentType")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        primarySpApproval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_approval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.Approval)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'primarySpApproval")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        expectChecksums__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expect_checksums"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"expectChecksums")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        redundancyType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redundancy_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.RedundancyType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"redundancyType")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
        expectSecondarySpAddresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expect_secondary_sp_addresses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"expectSecondarySpAddresses")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, payloadSize__field_descriptor),
           (Data.ProtoLens.Tag 5, visibility__field_descriptor),
           (Data.ProtoLens.Tag 6, contentType__field_descriptor),
           (Data.ProtoLens.Tag 7, primarySpApproval__field_descriptor),
           (Data.ProtoLens.Tag 8, expectChecksums__field_descriptor),
           (Data.ProtoLens.Tag 9, redundancyType__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            expectSecondarySpAddresses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateObject'_unknownFields = y__})
  defMessage
    = MsgCreateObject'_constructor
        {_MsgCreateObject'creator = Data.ProtoLens.fieldDefault,
         _MsgCreateObject'bucketName = Data.ProtoLens.fieldDefault,
         _MsgCreateObject'objectName = Data.ProtoLens.fieldDefault,
         _MsgCreateObject'payloadSize = Data.ProtoLens.fieldDefault,
         _MsgCreateObject'visibility = Data.ProtoLens.fieldDefault,
         _MsgCreateObject'contentType = Data.ProtoLens.fieldDefault,
         _MsgCreateObject'primarySpApproval = Prelude.Nothing,
         _MsgCreateObject'expectChecksums = Data.Vector.Generic.empty,
         _MsgCreateObject'redundancyType = Data.ProtoLens.fieldDefault,
         _MsgCreateObject'expectSecondarySpAddresses = Data.Vector.Generic.empty,
         _MsgCreateObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateObject
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateObject
        loop x mutable'expectChecksums mutable'expectSecondarySpAddresses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'expectChecksums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'expectChecksums)
                      frozen'expectSecondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                mutable'expectSecondarySpAddresses)
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
                              (Data.ProtoLens.Field.field @"vec'expectChecksums")
                              frozen'expectChecksums
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'expectSecondarySpAddresses")
                                 frozen'expectSecondarySpAddresses x)))
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
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
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
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
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
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "payload_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payloadSize") y x)
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
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
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
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
                                       "content_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contentType") y x)
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "primary_sp_approval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primarySpApproval") y x)
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "expect_checksums"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'expectChecksums y)
                                loop x v mutable'expectSecondarySpAddresses
                        72
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
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "expect_secondary_sp_addresses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'expectSecondarySpAddresses y)
                                loop x mutable'expectChecksums v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'expectChecksums mutable'expectSecondarySpAddresses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'expectChecksums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'expectSecondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'expectChecksums
                mutable'expectSecondarySpAddresses)
          "MsgCreateObject"
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"payloadSize") _x
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
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"contentType") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'primarySpApproval") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'expectChecksums") _x))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"redundancyType") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral)
                                                 Prelude.fromEnum _v))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                   ((Prelude..)
                                                      (\ bs
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 (Prelude.fromIntegral
                                                                    (Data.ByteString.length bs)))
                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                 bs))
                                                      Data.Text.Encoding.encodeUtf8 _v))
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field
                                                 @"vec'expectSecondarySpAddresses")
                                              _x))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData MsgCreateObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateObject'creator x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreateObject'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreateObject'payloadSize x__)
                         (Control.DeepSeq.deepseq
                            (_MsgCreateObject'visibility x__)
                            (Control.DeepSeq.deepseq
                               (_MsgCreateObject'contentType x__)
                               (Control.DeepSeq.deepseq
                                  (_MsgCreateObject'primarySpApproval x__)
                                  (Control.DeepSeq.deepseq
                                     (_MsgCreateObject'expectChecksums x__)
                                     (Control.DeepSeq.deepseq
                                        (_MsgCreateObject'redundancyType x__)
                                        (Control.DeepSeq.deepseq
                                           (_MsgCreateObject'expectSecondarySpAddresses x__)
                                           ()))))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.objectId' @:: Lens' MsgCreateObjectResponse Data.Text.Text@ -}
data MsgCreateObjectResponse
  = MsgCreateObjectResponse'_constructor {_MsgCreateObjectResponse'objectId :: !Data.Text.Text,
                                          _MsgCreateObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateObjectResponse "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateObjectResponse'objectId
           (\ x__ y__ -> x__ {_MsgCreateObjectResponse'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgCreateObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgCreateObjectResponse\DC28\n\
      \\tobject_id\CAN\SOH \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateObjectResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, objectId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateObjectResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateObjectResponse'_unknownFields = y__})
  defMessage
    = MsgCreateObjectResponse'_constructor
        {_MsgCreateObjectResponse'objectId = Data.ProtoLens.fieldDefault,
         _MsgCreateObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateObjectResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCreateObjectResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"objectId") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgCreateObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateObjectResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateObjectResponse'objectId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgDeleteBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgDeleteBucket Data.Text.Text@ -}
data MsgDeleteBucket
  = MsgDeleteBucket'_constructor {_MsgDeleteBucket'operator :: !Data.Text.Text,
                                  _MsgDeleteBucket'bucketName :: !Data.Text.Text,
                                  _MsgDeleteBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeleteBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeleteBucket "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeleteBucket'operator
           (\ x__ y__ -> x__ {_MsgDeleteBucket'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeleteBucket "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeleteBucket'bucketName
           (\ x__ y__ -> x__ {_MsgDeleteBucket'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeleteBucket where
  messageName _ = Data.Text.pack "greenfield.storage.MsgDeleteBucket"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgDeleteBucket\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgDeleteBucket
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgDeleteBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeleteBucket'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeleteBucket'_unknownFields = y__})
  defMessage
    = MsgDeleteBucket'_constructor
        {_MsgDeleteBucket'operator = Data.ProtoLens.fieldDefault,
         _MsgDeleteBucket'bucketName = Data.ProtoLens.fieldDefault,
         _MsgDeleteBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeleteBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeleteBucket
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeleteBucket"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgDeleteBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeleteBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeleteBucket'operator x__)
                (Control.DeepSeq.deepseq (_MsgDeleteBucket'bucketName x__) ()))
{- | Fields :
      -}
data MsgDeleteBucketResponse
  = MsgDeleteBucketResponse'_constructor {_MsgDeleteBucketResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeleteBucketResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDeleteBucketResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDeleteBucketResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgDeleteBucketResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeleteBucketResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeleteBucketResponse'_unknownFields = y__})
  defMessage
    = MsgDeleteBucketResponse'_constructor
        {_MsgDeleteBucketResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeleteBucketResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeleteBucketResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeleteBucketResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDeleteBucketResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeleteBucketResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgDeleteGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.groupName' @:: Lens' MsgDeleteGroup Data.Text.Text@ -}
data MsgDeleteGroup
  = MsgDeleteGroup'_constructor {_MsgDeleteGroup'operator :: !Data.Text.Text,
                                 _MsgDeleteGroup'groupName :: !Data.Text.Text,
                                 _MsgDeleteGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeleteGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeleteGroup "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeleteGroup'operator
           (\ x__ y__ -> x__ {_MsgDeleteGroup'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeleteGroup "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeleteGroup'groupName
           (\ x__ y__ -> x__ {_MsgDeleteGroup'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeleteGroup where
  messageName _ = Data.Text.pack "greenfield.storage.MsgDeleteGroup"
  packedMessageDescriptor _
    = "\n\
      \\SOMsgDeleteGroup\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\STX \SOH(\tR\tgroupName:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgDeleteGroup
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor MsgDeleteGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeleteGroup'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeleteGroup'_unknownFields = y__})
  defMessage
    = MsgDeleteGroup'_constructor
        {_MsgDeleteGroup'operator = Data.ProtoLens.fieldDefault,
         _MsgDeleteGroup'groupName = Data.ProtoLens.fieldDefault,
         _MsgDeleteGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeleteGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeleteGroup
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
                                       "group_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeleteGroup"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgDeleteGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeleteGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeleteGroup'operator x__)
                (Control.DeepSeq.deepseq (_MsgDeleteGroup'groupName x__) ()))
{- | Fields :
      -}
data MsgDeleteGroupResponse
  = MsgDeleteGroupResponse'_constructor {_MsgDeleteGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeleteGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDeleteGroupResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDeleteGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNMsgDeleteGroupResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeleteGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeleteGroupResponse'_unknownFields = y__})
  defMessage
    = MsgDeleteGroupResponse'_constructor
        {_MsgDeleteGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeleteGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeleteGroupResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeleteGroupResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDeleteGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeleteGroupResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgDeleteObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgDeleteObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.objectName' @:: Lens' MsgDeleteObject Data.Text.Text@ -}
data MsgDeleteObject
  = MsgDeleteObject'_constructor {_MsgDeleteObject'operator :: !Data.Text.Text,
                                  _MsgDeleteObject'bucketName :: !Data.Text.Text,
                                  _MsgDeleteObject'objectName :: !Data.Text.Text,
                                  _MsgDeleteObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeleteObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeleteObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeleteObject'operator
           (\ x__ y__ -> x__ {_MsgDeleteObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeleteObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeleteObject'bucketName
           (\ x__ y__ -> x__ {_MsgDeleteObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeleteObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeleteObject'objectName
           (\ x__ y__ -> x__ {_MsgDeleteObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeleteObject where
  messageName _ = Data.Text.pack "greenfield.storage.MsgDeleteObject"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgDeleteObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgDeleteObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgDeleteObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor MsgDeleteObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeleteObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeleteObject'_unknownFields = y__})
  defMessage
    = MsgDeleteObject'_constructor
        {_MsgDeleteObject'operator = Data.ProtoLens.fieldDefault,
         _MsgDeleteObject'bucketName = Data.ProtoLens.fieldDefault,
         _MsgDeleteObject'objectName = Data.ProtoLens.fieldDefault,
         _MsgDeleteObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeleteObject
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeleteObject
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeleteObject"
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgDeleteObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeleteObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeleteObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgDeleteObject'bucketName x__)
                   (Control.DeepSeq.deepseq (_MsgDeleteObject'objectName x__) ())))
{- | Fields :
      -}
data MsgDeleteObjectResponse
  = MsgDeleteObjectResponse'_constructor {_MsgDeleteObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeleteObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDeleteObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDeleteObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgDeleteObjectResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeleteObjectResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeleteObjectResponse'_unknownFields = y__})
  defMessage
    = MsgDeleteObjectResponse'_constructor
        {_MsgDeleteObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeleteObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeleteObjectResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeleteObjectResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDeleteObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeleteObjectResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgDeletePolicy Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.principal' @:: Lens' MsgDeletePolicy Proto.Greenfield.Permission.Common.Principal@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'principal' @:: Lens' MsgDeletePolicy (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal)@
         * 'Proto.Greenfield.Storage.Tx_Fields.resource' @:: Lens' MsgDeletePolicy Data.Text.Text@ -}
data MsgDeletePolicy
  = MsgDeletePolicy'_constructor {_MsgDeletePolicy'operator :: !Data.Text.Text,
                                  _MsgDeletePolicy'principal :: !(Prelude.Maybe Proto.Greenfield.Permission.Common.Principal),
                                  _MsgDeletePolicy'resource :: !Data.Text.Text,
                                  _MsgDeletePolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeletePolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeletePolicy "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeletePolicy'operator
           (\ x__ y__ -> x__ {_MsgDeletePolicy'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeletePolicy "principal" Proto.Greenfield.Permission.Common.Principal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeletePolicy'principal
           (\ x__ y__ -> x__ {_MsgDeletePolicy'principal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgDeletePolicy "maybe'principal" (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeletePolicy'principal
           (\ x__ y__ -> x__ {_MsgDeletePolicy'principal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeletePolicy "resource" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeletePolicy'resource
           (\ x__ y__ -> x__ {_MsgDeletePolicy'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeletePolicy where
  messageName _ = Data.Text.pack "greenfield.storage.MsgDeletePolicy"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgDeletePolicy\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
      \\tprincipal\CAN\STX \SOH(\v2 .greenfield.permission.PrincipalR\tprincipal\DC2\SUB\n\
      \\bresource\CAN\ETX \SOH(\tR\bresource:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgDeletePolicy
        principal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Principal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'principal")) ::
              Data.ProtoLens.FieldDescriptor MsgDeletePolicy
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resource")) ::
              Data.ProtoLens.FieldDescriptor MsgDeletePolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, principal__field_descriptor),
           (Data.ProtoLens.Tag 3, resource__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeletePolicy'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeletePolicy'_unknownFields = y__})
  defMessage
    = MsgDeletePolicy'_constructor
        {_MsgDeletePolicy'operator = Data.ProtoLens.fieldDefault,
         _MsgDeletePolicy'principal = Prelude.Nothing,
         _MsgDeletePolicy'resource = Data.ProtoLens.fieldDefault,
         _MsgDeletePolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeletePolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeletePolicy
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "principal"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"principal") y x)
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
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeletePolicy"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'principal") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"resource") _x
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
instance Control.DeepSeq.NFData MsgDeletePolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeletePolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeletePolicy'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgDeletePolicy'principal x__)
                   (Control.DeepSeq.deepseq (_MsgDeletePolicy'resource x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.policyId' @:: Lens' MsgDeletePolicyResponse Data.Text.Text@ -}
data MsgDeletePolicyResponse
  = MsgDeletePolicyResponse'_constructor {_MsgDeletePolicyResponse'policyId :: !Data.Text.Text,
                                          _MsgDeletePolicyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeletePolicyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeletePolicyResponse "policyId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeletePolicyResponse'policyId
           (\ x__ y__ -> x__ {_MsgDeletePolicyResponse'policyId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeletePolicyResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDeletePolicyResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgDeletePolicyResponse\DC28\n\
      \\tpolicy_id\CAN\EOT \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policyId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"policyId")) ::
              Data.ProtoLens.FieldDescriptor MsgDeletePolicyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 4, policyId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeletePolicyResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeletePolicyResponse'_unknownFields = y__})
  defMessage
    = MsgDeletePolicyResponse'_constructor
        {_MsgDeletePolicyResponse'policyId = Data.ProtoLens.fieldDefault,
         _MsgDeletePolicyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeletePolicyResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeletePolicyResponse
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
                                       "policy_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policyId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeletePolicyResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"policyId") _x
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgDeletePolicyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeletePolicyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeletePolicyResponse'policyId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgDiscontinueBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgDiscontinueBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.reason' @:: Lens' MsgDiscontinueBucket Data.Text.Text@ -}
data MsgDiscontinueBucket
  = MsgDiscontinueBucket'_constructor {_MsgDiscontinueBucket'operator :: !Data.Text.Text,
                                       _MsgDiscontinueBucket'bucketName :: !Data.Text.Text,
                                       _MsgDiscontinueBucket'reason :: !Data.Text.Text,
                                       _MsgDiscontinueBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDiscontinueBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDiscontinueBucket "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueBucket'operator
           (\ x__ y__ -> x__ {_MsgDiscontinueBucket'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDiscontinueBucket "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueBucket'bucketName
           (\ x__ y__ -> x__ {_MsgDiscontinueBucket'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDiscontinueBucket "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueBucket'reason
           (\ x__ y__ -> x__ {_MsgDiscontinueBucket'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDiscontinueBucket where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDiscontinueBucket"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgDiscontinueBucket\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\SYN\n\
      \\ACKreason\CAN\ETX \SOH(\tR\ACKreason:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgDiscontinueBucket
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgDiscontinueBucket
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor MsgDiscontinueBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDiscontinueBucket'_unknownFields
        (\ x__ y__ -> x__ {_MsgDiscontinueBucket'_unknownFields = y__})
  defMessage
    = MsgDiscontinueBucket'_constructor
        {_MsgDiscontinueBucket'operator = Data.ProtoLens.fieldDefault,
         _MsgDiscontinueBucket'bucketName = Data.ProtoLens.fieldDefault,
         _MsgDiscontinueBucket'reason = Data.ProtoLens.fieldDefault,
         _MsgDiscontinueBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDiscontinueBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDiscontinueBucket
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDiscontinueBucket"
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgDiscontinueBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDiscontinueBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDiscontinueBucket'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgDiscontinueBucket'bucketName x__)
                   (Control.DeepSeq.deepseq (_MsgDiscontinueBucket'reason x__) ())))
{- | Fields :
      -}
data MsgDiscontinueBucketResponse
  = MsgDiscontinueBucketResponse'_constructor {_MsgDiscontinueBucketResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDiscontinueBucketResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDiscontinueBucketResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDiscontinueBucketResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgDiscontinueBucketResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDiscontinueBucketResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgDiscontinueBucketResponse'_unknownFields = y__})
  defMessage
    = MsgDiscontinueBucketResponse'_constructor
        {_MsgDiscontinueBucketResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDiscontinueBucketResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDiscontinueBucketResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDiscontinueBucketResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDiscontinueBucketResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDiscontinueBucketResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgDiscontinueObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgDiscontinueObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.objectIds' @:: Lens' MsgDiscontinueObject [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'objectIds' @:: Lens' MsgDiscontinueObject (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Greenfield.Storage.Tx_Fields.reason' @:: Lens' MsgDiscontinueObject Data.Text.Text@ -}
data MsgDiscontinueObject
  = MsgDiscontinueObject'_constructor {_MsgDiscontinueObject'operator :: !Data.Text.Text,
                                       _MsgDiscontinueObject'bucketName :: !Data.Text.Text,
                                       _MsgDiscontinueObject'objectIds :: !(Data.Vector.Vector Data.Text.Text),
                                       _MsgDiscontinueObject'reason :: !Data.Text.Text,
                                       _MsgDiscontinueObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDiscontinueObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDiscontinueObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueObject'operator
           (\ x__ y__ -> x__ {_MsgDiscontinueObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDiscontinueObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueObject'bucketName
           (\ x__ y__ -> x__ {_MsgDiscontinueObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDiscontinueObject "objectIds" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueObject'objectIds
           (\ x__ y__ -> x__ {_MsgDiscontinueObject'objectIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgDiscontinueObject "vec'objectIds" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueObject'objectIds
           (\ x__ y__ -> x__ {_MsgDiscontinueObject'objectIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDiscontinueObject "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDiscontinueObject'reason
           (\ x__ y__ -> x__ {_MsgDiscontinueObject'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDiscontinueObject where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDiscontinueObject"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgDiscontinueObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2:\n\
      \\n\
      \object_ids\CAN\ETX \ETX(\tR\tobjectIdsB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SYN\n\
      \\ACKreason\CAN\EOT \SOH(\tR\ACKreason:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgDiscontinueObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgDiscontinueObject
        objectIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"objectIds")) ::
              Data.ProtoLens.FieldDescriptor MsgDiscontinueObject
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor MsgDiscontinueObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectIds__field_descriptor),
           (Data.ProtoLens.Tag 4, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDiscontinueObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgDiscontinueObject'_unknownFields = y__})
  defMessage
    = MsgDiscontinueObject'_constructor
        {_MsgDiscontinueObject'operator = Data.ProtoLens.fieldDefault,
         _MsgDiscontinueObject'bucketName = Data.ProtoLens.fieldDefault,
         _MsgDiscontinueObject'objectIds = Data.Vector.Generic.empty,
         _MsgDiscontinueObject'reason = Data.ProtoLens.fieldDefault,
         _MsgDiscontinueObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDiscontinueObject
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgDiscontinueObject
        loop x mutable'objectIds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'objectIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'objectIds)
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
                              (Data.ProtoLens.Field.field @"vec'objectIds") frozen'objectIds x))
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
                                  mutable'objectIds
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
                                  mutable'objectIds
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "object_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'objectIds y)
                                loop x v
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
                                       "reason"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                                  mutable'objectIds
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'objectIds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'objectIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'objectIds)
          "MsgDiscontinueObject"
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'objectIds") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
instance Control.DeepSeq.NFData MsgDiscontinueObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDiscontinueObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDiscontinueObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgDiscontinueObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgDiscontinueObject'objectIds x__)
                      (Control.DeepSeq.deepseq (_MsgDiscontinueObject'reason x__) ()))))
{- | Fields :
      -}
data MsgDiscontinueObjectResponse
  = MsgDiscontinueObjectResponse'_constructor {_MsgDiscontinueObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDiscontinueObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDiscontinueObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgDiscontinueObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgDiscontinueObjectResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDiscontinueObjectResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgDiscontinueObjectResponse'_unknownFields = y__})
  defMessage
    = MsgDiscontinueObjectResponse'_constructor
        {_MsgDiscontinueObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDiscontinueObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDiscontinueObjectResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDiscontinueObjectResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDiscontinueObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDiscontinueObjectResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.member' @:: Lens' MsgLeaveGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.groupOwner' @:: Lens' MsgLeaveGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.groupName' @:: Lens' MsgLeaveGroup Data.Text.Text@ -}
data MsgLeaveGroup
  = MsgLeaveGroup'_constructor {_MsgLeaveGroup'member :: !Data.Text.Text,
                                _MsgLeaveGroup'groupOwner :: !Data.Text.Text,
                                _MsgLeaveGroup'groupName :: !Data.Text.Text,
                                _MsgLeaveGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgLeaveGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgLeaveGroup "member" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgLeaveGroup'member
           (\ x__ y__ -> x__ {_MsgLeaveGroup'member = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgLeaveGroup "groupOwner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgLeaveGroup'groupOwner
           (\ x__ y__ -> x__ {_MsgLeaveGroup'groupOwner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgLeaveGroup "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgLeaveGroup'groupName
           (\ x__ y__ -> x__ {_MsgLeaveGroup'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgLeaveGroup where
  messageName _ = Data.Text.pack "greenfield.storage.MsgLeaveGroup"
  packedMessageDescriptor _
    = "\n\
      \\rMsgLeaveGroup\DC20\n\
      \\ACKmember\CAN\SOH \SOH(\tR\ACKmemberB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
      \\vgroup_owner\CAN\STX \SOH(\tR\n\
      \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\ETX \SOH(\tR\tgroupName:\v\130\231\176*\ACKmember"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        member__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"member")) ::
              Data.ProtoLens.FieldDescriptor MsgLeaveGroup
        groupOwner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupOwner")) ::
              Data.ProtoLens.FieldDescriptor MsgLeaveGroup
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor MsgLeaveGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, member__field_descriptor),
           (Data.ProtoLens.Tag 2, groupOwner__field_descriptor),
           (Data.ProtoLens.Tag 3, groupName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgLeaveGroup'_unknownFields
        (\ x__ y__ -> x__ {_MsgLeaveGroup'_unknownFields = y__})
  defMessage
    = MsgLeaveGroup'_constructor
        {_MsgLeaveGroup'member = Data.ProtoLens.fieldDefault,
         _MsgLeaveGroup'groupOwner = Data.ProtoLens.fieldDefault,
         _MsgLeaveGroup'groupName = Data.ProtoLens.fieldDefault,
         _MsgLeaveGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgLeaveGroup -> Data.ProtoLens.Encoding.Bytes.Parser MsgLeaveGroup
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
                                       "member"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"member") y x)
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
                                       "group_owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupOwner") y x)
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgLeaveGroup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"member") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"groupOwner") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgLeaveGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgLeaveGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgLeaveGroup'member x__)
                (Control.DeepSeq.deepseq
                   (_MsgLeaveGroup'groupOwner x__)
                   (Control.DeepSeq.deepseq (_MsgLeaveGroup'groupName x__) ())))
{- | Fields :
      -}
data MsgLeaveGroupResponse
  = MsgLeaveGroupResponse'_constructor {_MsgLeaveGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgLeaveGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgLeaveGroupResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgLeaveGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgLeaveGroupResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgLeaveGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgLeaveGroupResponse'_unknownFields = y__})
  defMessage
    = MsgLeaveGroupResponse'_constructor
        {_MsgLeaveGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgLeaveGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgLeaveGroupResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgLeaveGroupResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgLeaveGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgLeaveGroupResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgMirrorBucket Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.id' @:: Lens' MsgMirrorBucket Data.Text.Text@ -}
data MsgMirrorBucket
  = MsgMirrorBucket'_constructor {_MsgMirrorBucket'operator :: !Data.Text.Text,
                                  _MsgMirrorBucket'id :: !Data.Text.Text,
                                  _MsgMirrorBucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMirrorBucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgMirrorBucket "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMirrorBucket'operator
           (\ x__ y__ -> x__ {_MsgMirrorBucket'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgMirrorBucket "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMirrorBucket'id (\ x__ y__ -> x__ {_MsgMirrorBucket'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgMirrorBucket where
  messageName _ = Data.Text.pack "greenfield.storage.MsgMirrorBucket"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgMirrorBucket\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2+\n\
      \\STXid\CAN\STX \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgMirrorBucket
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor MsgMirrorBucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMirrorBucket'_unknownFields
        (\ x__ y__ -> x__ {_MsgMirrorBucket'_unknownFields = y__})
  defMessage
    = MsgMirrorBucket'_constructor
        {_MsgMirrorBucket'operator = Data.ProtoLens.fieldDefault,
         _MsgMirrorBucket'id = Data.ProtoLens.fieldDefault,
         _MsgMirrorBucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMirrorBucket
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgMirrorBucket
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgMirrorBucket"
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgMirrorBucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMirrorBucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgMirrorBucket'operator x__)
                (Control.DeepSeq.deepseq (_MsgMirrorBucket'id x__) ()))
{- | Fields :
      -}
data MsgMirrorBucketResponse
  = MsgMirrorBucketResponse'_constructor {_MsgMirrorBucketResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMirrorBucketResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgMirrorBucketResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgMirrorBucketResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgMirrorBucketResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMirrorBucketResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgMirrorBucketResponse'_unknownFields = y__})
  defMessage
    = MsgMirrorBucketResponse'_constructor
        {_MsgMirrorBucketResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMirrorBucketResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgMirrorBucketResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgMirrorBucketResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgMirrorBucketResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMirrorBucketResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgMirrorGroup Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.id' @:: Lens' MsgMirrorGroup Data.Text.Text@ -}
data MsgMirrorGroup
  = MsgMirrorGroup'_constructor {_MsgMirrorGroup'operator :: !Data.Text.Text,
                                 _MsgMirrorGroup'id :: !Data.Text.Text,
                                 _MsgMirrorGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMirrorGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgMirrorGroup "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMirrorGroup'operator
           (\ x__ y__ -> x__ {_MsgMirrorGroup'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgMirrorGroup "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMirrorGroup'id (\ x__ y__ -> x__ {_MsgMirrorGroup'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgMirrorGroup where
  messageName _ = Data.Text.pack "greenfield.storage.MsgMirrorGroup"
  packedMessageDescriptor _
    = "\n\
      \\SOMsgMirrorGroup\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2+\n\
      \\STXid\CAN\STX \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgMirrorGroup
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor MsgMirrorGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMirrorGroup'_unknownFields
        (\ x__ y__ -> x__ {_MsgMirrorGroup'_unknownFields = y__})
  defMessage
    = MsgMirrorGroup'_constructor
        {_MsgMirrorGroup'operator = Data.ProtoLens.fieldDefault,
         _MsgMirrorGroup'id = Data.ProtoLens.fieldDefault,
         _MsgMirrorGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMirrorGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgMirrorGroup
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgMirrorGroup"
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgMirrorGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMirrorGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgMirrorGroup'operator x__)
                (Control.DeepSeq.deepseq (_MsgMirrorGroup'id x__) ()))
{- | Fields :
      -}
data MsgMirrorGroupResponse
  = MsgMirrorGroupResponse'_constructor {_MsgMirrorGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMirrorGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgMirrorGroupResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgMirrorGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNMsgMirrorGroupResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMirrorGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgMirrorGroupResponse'_unknownFields = y__})
  defMessage
    = MsgMirrorGroupResponse'_constructor
        {_MsgMirrorGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMirrorGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgMirrorGroupResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgMirrorGroupResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgMirrorGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMirrorGroupResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgMirrorObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.id' @:: Lens' MsgMirrorObject Data.Text.Text@ -}
data MsgMirrorObject
  = MsgMirrorObject'_constructor {_MsgMirrorObject'operator :: !Data.Text.Text,
                                  _MsgMirrorObject'id :: !Data.Text.Text,
                                  _MsgMirrorObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMirrorObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgMirrorObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMirrorObject'operator
           (\ x__ y__ -> x__ {_MsgMirrorObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgMirrorObject "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMirrorObject'id (\ x__ y__ -> x__ {_MsgMirrorObject'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgMirrorObject where
  messageName _ = Data.Text.pack "greenfield.storage.MsgMirrorObject"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgMirrorObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2+\n\
      \\STXid\CAN\STX \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgMirrorObject
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor MsgMirrorObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMirrorObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgMirrorObject'_unknownFields = y__})
  defMessage
    = MsgMirrorObject'_constructor
        {_MsgMirrorObject'operator = Data.ProtoLens.fieldDefault,
         _MsgMirrorObject'id = Data.ProtoLens.fieldDefault,
         _MsgMirrorObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMirrorObject
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgMirrorObject
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgMirrorObject"
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgMirrorObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMirrorObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgMirrorObject'operator x__)
                (Control.DeepSeq.deepseq (_MsgMirrorObject'id x__) ()))
{- | Fields :
      -}
data MsgMirrorObjectResponse
  = MsgMirrorObjectResponse'_constructor {_MsgMirrorObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMirrorObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgMirrorObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgMirrorObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgMirrorObjectResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMirrorObjectResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgMirrorObjectResponse'_unknownFields = y__})
  defMessage
    = MsgMirrorObjectResponse'_constructor
        {_MsgMirrorObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMirrorObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgMirrorObjectResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgMirrorObjectResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgMirrorObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMirrorObjectResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgPutPolicy Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.principal' @:: Lens' MsgPutPolicy Proto.Greenfield.Permission.Common.Principal@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'principal' @:: Lens' MsgPutPolicy (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal)@
         * 'Proto.Greenfield.Storage.Tx_Fields.resource' @:: Lens' MsgPutPolicy Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.statements' @:: Lens' MsgPutPolicy [Proto.Greenfield.Permission.Common.Statement]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'statements' @:: Lens' MsgPutPolicy (Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement)@
         * 'Proto.Greenfield.Storage.Tx_Fields.expirationTime' @:: Lens' MsgPutPolicy Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'expirationTime' @:: Lens' MsgPutPolicy (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data MsgPutPolicy
  = MsgPutPolicy'_constructor {_MsgPutPolicy'operator :: !Data.Text.Text,
                               _MsgPutPolicy'principal :: !(Prelude.Maybe Proto.Greenfield.Permission.Common.Principal),
                               _MsgPutPolicy'resource :: !Data.Text.Text,
                               _MsgPutPolicy'statements :: !(Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement),
                               _MsgPutPolicy'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                               _MsgPutPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgPutPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgPutPolicy "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'operator
           (\ x__ y__ -> x__ {_MsgPutPolicy'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgPutPolicy "principal" Proto.Greenfield.Permission.Common.Principal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'principal
           (\ x__ y__ -> x__ {_MsgPutPolicy'principal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgPutPolicy "maybe'principal" (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'principal
           (\ x__ y__ -> x__ {_MsgPutPolicy'principal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgPutPolicy "resource" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'resource
           (\ x__ y__ -> x__ {_MsgPutPolicy'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgPutPolicy "statements" [Proto.Greenfield.Permission.Common.Statement] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'statements
           (\ x__ y__ -> x__ {_MsgPutPolicy'statements = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgPutPolicy "vec'statements" (Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'statements
           (\ x__ y__ -> x__ {_MsgPutPolicy'statements = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgPutPolicy "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'expirationTime
           (\ x__ y__ -> x__ {_MsgPutPolicy'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgPutPolicy "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicy'expirationTime
           (\ x__ y__ -> x__ {_MsgPutPolicy'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgPutPolicy where
  messageName _ = Data.Text.pack "greenfield.storage.MsgPutPolicy"
  packedMessageDescriptor _
    = "\n\
      \\fMsgPutPolicy\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
      \\tprincipal\CAN\STX \SOH(\v2 .greenfield.permission.PrincipalR\tprincipal\DC2\SUB\n\
      \\bresource\CAN\ETX \SOH(\tR\bresource\DC2@\n\
      \\n\
      \statements\CAN\EOT \ETX(\v2 .greenfield.permission.StatementR\n\
      \statements\DC2M\n\
      \\SIexpiration_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTimeB\b\200\222\US\SOH\144\223\US\SOH:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgPutPolicy
        principal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Principal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'principal")) ::
              Data.ProtoLens.FieldDescriptor MsgPutPolicy
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resource")) ::
              Data.ProtoLens.FieldDescriptor MsgPutPolicy
        statements__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "statements"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Statement)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"statements")) ::
              Data.ProtoLens.FieldDescriptor MsgPutPolicy
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor MsgPutPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, principal__field_descriptor),
           (Data.ProtoLens.Tag 3, resource__field_descriptor),
           (Data.ProtoLens.Tag 4, statements__field_descriptor),
           (Data.ProtoLens.Tag 7, expirationTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgPutPolicy'_unknownFields
        (\ x__ y__ -> x__ {_MsgPutPolicy'_unknownFields = y__})
  defMessage
    = MsgPutPolicy'_constructor
        {_MsgPutPolicy'operator = Data.ProtoLens.fieldDefault,
         _MsgPutPolicy'principal = Prelude.Nothing,
         _MsgPutPolicy'resource = Data.ProtoLens.fieldDefault,
         _MsgPutPolicy'statements = Data.Vector.Generic.empty,
         _MsgPutPolicy'expirationTime = Prelude.Nothing,
         _MsgPutPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgPutPolicy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Permission.Common.Statement
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgPutPolicy
        loop x mutable'statements
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'statements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'statements)
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
                              (Data.ProtoLens.Field.field @"vec'statements") frozen'statements
                              x))
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
                                  mutable'statements
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "principal"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"principal") y x)
                                  mutable'statements
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
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
                                  mutable'statements
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "statements"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'statements y)
                                loop x v
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expirationTime") y x)
                                  mutable'statements
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'statements
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'statements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'statements)
          "MsgPutPolicy"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'principal") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"resource") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'statements") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'expirationTime") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MsgPutPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgPutPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgPutPolicy'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgPutPolicy'principal x__)
                   (Control.DeepSeq.deepseq
                      (_MsgPutPolicy'resource x__)
                      (Control.DeepSeq.deepseq
                         (_MsgPutPolicy'statements x__)
                         (Control.DeepSeq.deepseq (_MsgPutPolicy'expirationTime x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.policyId' @:: Lens' MsgPutPolicyResponse Data.Text.Text@ -}
data MsgPutPolicyResponse
  = MsgPutPolicyResponse'_constructor {_MsgPutPolicyResponse'policyId :: !Data.Text.Text,
                                       _MsgPutPolicyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgPutPolicyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgPutPolicyResponse "policyId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgPutPolicyResponse'policyId
           (\ x__ y__ -> x__ {_MsgPutPolicyResponse'policyId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgPutPolicyResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgPutPolicyResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgPutPolicyResponse\DC28\n\
      \\tpolicy_id\CAN\EOT \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policyId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"policyId")) ::
              Data.ProtoLens.FieldDescriptor MsgPutPolicyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 4, policyId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgPutPolicyResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgPutPolicyResponse'_unknownFields = y__})
  defMessage
    = MsgPutPolicyResponse'_constructor
        {_MsgPutPolicyResponse'policyId = Data.ProtoLens.fieldDefault,
         _MsgPutPolicyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgPutPolicyResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgPutPolicyResponse
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
                                       "policy_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policyId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgPutPolicyResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"policyId") _x
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgPutPolicyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgPutPolicyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgPutPolicyResponse'policyId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgRejectSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgRejectSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.objectName' @:: Lens' MsgRejectSealObject Data.Text.Text@ -}
data MsgRejectSealObject
  = MsgRejectSealObject'_constructor {_MsgRejectSealObject'operator :: !Data.Text.Text,
                                      _MsgRejectSealObject'bucketName :: !Data.Text.Text,
                                      _MsgRejectSealObject'objectName :: !Data.Text.Text,
                                      _MsgRejectSealObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgRejectSealObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgRejectSealObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRejectSealObject'operator
           (\ x__ y__ -> x__ {_MsgRejectSealObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgRejectSealObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRejectSealObject'bucketName
           (\ x__ y__ -> x__ {_MsgRejectSealObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgRejectSealObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRejectSealObject'objectName
           (\ x__ y__ -> x__ {_MsgRejectSealObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgRejectSealObject where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgRejectSealObject"
  packedMessageDescriptor _
    = "\n\
      \\DC3MsgRejectSealObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgRejectSealObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgRejectSealObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor MsgRejectSealObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgRejectSealObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgRejectSealObject'_unknownFields = y__})
  defMessage
    = MsgRejectSealObject'_constructor
        {_MsgRejectSealObject'operator = Data.ProtoLens.fieldDefault,
         _MsgRejectSealObject'bucketName = Data.ProtoLens.fieldDefault,
         _MsgRejectSealObject'objectName = Data.ProtoLens.fieldDefault,
         _MsgRejectSealObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgRejectSealObject
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgRejectSealObject
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgRejectSealObject"
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgRejectSealObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgRejectSealObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgRejectSealObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgRejectSealObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgRejectSealObject'objectName x__) ())))
{- | Fields :
      -}
data MsgRejectSealObjectResponse
  = MsgRejectSealObjectResponse'_constructor {_MsgRejectSealObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgRejectSealObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgRejectSealObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgRejectSealObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCMsgRejectSealObjectResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgRejectSealObjectResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgRejectSealObjectResponse'_unknownFields = y__})
  defMessage
    = MsgRejectSealObjectResponse'_constructor
        {_MsgRejectSealObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgRejectSealObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgRejectSealObjectResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgRejectSealObjectResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgRejectSealObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgRejectSealObjectResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.objectName' @:: Lens' MsgSealObject Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.secondarySpAddresses' @:: Lens' MsgSealObject [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'secondarySpAddresses' @:: Lens' MsgSealObject (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Greenfield.Storage.Tx_Fields.secondarySpSignatures' @:: Lens' MsgSealObject [Data.ByteString.ByteString]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'secondarySpSignatures' @:: Lens' MsgSealObject (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data MsgSealObject
  = MsgSealObject'_constructor {_MsgSealObject'operator :: !Data.Text.Text,
                                _MsgSealObject'bucketName :: !Data.Text.Text,
                                _MsgSealObject'objectName :: !Data.Text.Text,
                                _MsgSealObject'secondarySpAddresses :: !(Data.Vector.Vector Data.Text.Text),
                                _MsgSealObject'secondarySpSignatures :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                _MsgSealObject'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSealObject where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSealObject "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSealObject'operator
           (\ x__ y__ -> x__ {_MsgSealObject'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSealObject "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSealObject'bucketName
           (\ x__ y__ -> x__ {_MsgSealObject'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSealObject "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSealObject'objectName
           (\ x__ y__ -> x__ {_MsgSealObject'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSealObject "secondarySpAddresses" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSealObject'secondarySpAddresses
           (\ x__ y__ -> x__ {_MsgSealObject'secondarySpAddresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSealObject "vec'secondarySpAddresses" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSealObject'secondarySpAddresses
           (\ x__ y__ -> x__ {_MsgSealObject'secondarySpAddresses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSealObject "secondarySpSignatures" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSealObject'secondarySpSignatures
           (\ x__ y__ -> x__ {_MsgSealObject'secondarySpSignatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSealObject "vec'secondarySpSignatures" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSealObject'secondarySpSignatures
           (\ x__ y__ -> x__ {_MsgSealObject'secondarySpSignatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSealObject where
  messageName _ = Data.Text.pack "greenfield.storage.MsgSealObject"
  packedMessageDescriptor _
    = "\n\
      \\rMsgSealObject\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC2N\n\
      \\SYNsecondary_sp_addresses\CAN\EOT \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
      \\ETBsecondary_sp_signatures\CAN\ENQ \ETX(\fR\NAKsecondarySpSignatures:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgSealObject
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgSealObject
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor MsgSealObject
        secondarySpAddresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_addresses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"secondarySpAddresses")) ::
              Data.ProtoLens.FieldDescriptor MsgSealObject
        secondarySpSignatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_signatures"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"secondarySpSignatures")) ::
              Data.ProtoLens.FieldDescriptor MsgSealObject
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, secondarySpAddresses__field_descriptor),
           (Data.ProtoLens.Tag 5, secondarySpSignatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSealObject'_unknownFields
        (\ x__ y__ -> x__ {_MsgSealObject'_unknownFields = y__})
  defMessage
    = MsgSealObject'_constructor
        {_MsgSealObject'operator = Data.ProtoLens.fieldDefault,
         _MsgSealObject'bucketName = Data.ProtoLens.fieldDefault,
         _MsgSealObject'objectName = Data.ProtoLens.fieldDefault,
         _MsgSealObject'secondarySpAddresses = Data.Vector.Generic.empty,
         _MsgSealObject'secondarySpSignatures = Data.Vector.Generic.empty,
         _MsgSealObject'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSealObject
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
                -> Data.ProtoLens.Encoding.Bytes.Parser MsgSealObject
        loop x mutable'secondarySpAddresses mutable'secondarySpSignatures
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'secondarySpAddresses)
                      frozen'secondarySpSignatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'secondarySpSignatures)
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
                              frozen'secondarySpAddresses
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'secondarySpSignatures")
                                 frozen'secondarySpSignatures x)))
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
                                  mutable'secondarySpAddresses mutable'secondarySpSignatures
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
                                  mutable'secondarySpAddresses mutable'secondarySpSignatures
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
                                  mutable'secondarySpAddresses mutable'secondarySpSignatures
                        34
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
                                loop x v mutable'secondarySpSignatures
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "secondary_sp_signatures"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'secondarySpSignatures y)
                                loop x mutable'secondarySpAddresses v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'secondarySpAddresses mutable'secondarySpSignatures
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'secondarySpSignatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'secondarySpAddresses
                mutable'secondarySpSignatures)
          "MsgSealObject"
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.Text.Encoding.encodeUtf8 _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'secondarySpAddresses") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'secondarySpSignatures") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MsgSealObject where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSealObject'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSealObject'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgSealObject'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgSealObject'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_MsgSealObject'secondarySpAddresses x__)
                         (Control.DeepSeq.deepseq
                            (_MsgSealObject'secondarySpSignatures x__) ())))))
{- | Fields :
      -}
data MsgSealObjectResponse
  = MsgSealObjectResponse'_constructor {_MsgSealObjectResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSealObjectResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgSealObjectResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgSealObjectResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgSealObjectResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSealObjectResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgSealObjectResponse'_unknownFields = y__})
  defMessage
    = MsgSealObjectResponse'_constructor
        {_MsgSealObjectResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSealObjectResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSealObjectResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSealObjectResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgSealObjectResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSealObjectResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.chargedReadQuota' @:: Lens' MsgUpdateBucketInfo Proto.Greenfield.Common.Wrapper.UInt64Value@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'chargedReadQuota' @:: Lens' MsgUpdateBucketInfo (Prelude.Maybe Proto.Greenfield.Common.Wrapper.UInt64Value)@
         * 'Proto.Greenfield.Storage.Tx_Fields.paymentAddress' @:: Lens' MsgUpdateBucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.visibility' @:: Lens' MsgUpdateBucketInfo Proto.Greenfield.Storage.Common.VisibilityType@ -}
data MsgUpdateBucketInfo
  = MsgUpdateBucketInfo'_constructor {_MsgUpdateBucketInfo'operator :: !Data.Text.Text,
                                      _MsgUpdateBucketInfo'bucketName :: !Data.Text.Text,
                                      _MsgUpdateBucketInfo'chargedReadQuota :: !(Prelude.Maybe Proto.Greenfield.Common.Wrapper.UInt64Value),
                                      _MsgUpdateBucketInfo'paymentAddress :: !Data.Text.Text,
                                      _MsgUpdateBucketInfo'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                      _MsgUpdateBucketInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateBucketInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateBucketInfo "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateBucketInfo'operator
           (\ x__ y__ -> x__ {_MsgUpdateBucketInfo'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateBucketInfo "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateBucketInfo'bucketName
           (\ x__ y__ -> x__ {_MsgUpdateBucketInfo'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateBucketInfo "chargedReadQuota" Proto.Greenfield.Common.Wrapper.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateBucketInfo'chargedReadQuota
           (\ x__ y__ -> x__ {_MsgUpdateBucketInfo'chargedReadQuota = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateBucketInfo "maybe'chargedReadQuota" (Prelude.Maybe Proto.Greenfield.Common.Wrapper.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateBucketInfo'chargedReadQuota
           (\ x__ y__ -> x__ {_MsgUpdateBucketInfo'chargedReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateBucketInfo "paymentAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateBucketInfo'paymentAddress
           (\ x__ y__ -> x__ {_MsgUpdateBucketInfo'paymentAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateBucketInfo "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateBucketInfo'visibility
           (\ x__ y__ -> x__ {_MsgUpdateBucketInfo'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateBucketInfo where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgUpdateBucketInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC3MsgUpdateBucketInfo\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2L\n\
      \\DC2charged_read_quota\CAN\ETX \SOH(\v2\RS.greenfield.common.UInt64ValueR\DLEchargedReadQuota\DC2A\n\
      \\SIpayment_address\CAN\EOT \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2B\n\
      \\n\
      \visibility\CAN\ENQ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgUpdateBucketInfo
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateBucketInfo
        chargedReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "charged_read_quota"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Common.Wrapper.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chargedReadQuota")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateBucketInfo
        paymentAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateBucketInfo
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateBucketInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, chargedReadQuota__field_descriptor),
           (Data.ProtoLens.Tag 4, paymentAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, visibility__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateBucketInfo'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateBucketInfo'_unknownFields = y__})
  defMessage
    = MsgUpdateBucketInfo'_constructor
        {_MsgUpdateBucketInfo'operator = Data.ProtoLens.fieldDefault,
         _MsgUpdateBucketInfo'bucketName = Data.ProtoLens.fieldDefault,
         _MsgUpdateBucketInfo'chargedReadQuota = Prelude.Nothing,
         _MsgUpdateBucketInfo'paymentAddress = Data.ProtoLens.fieldDefault,
         _MsgUpdateBucketInfo'visibility = Data.ProtoLens.fieldDefault,
         _MsgUpdateBucketInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateBucketInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateBucketInfo
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "charged_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chargedReadQuota") y x)
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
                                       "payment_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAddress") y x)
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateBucketInfo"
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'chargedReadQuota") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
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
instance Control.DeepSeq.NFData MsgUpdateBucketInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateBucketInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateBucketInfo'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateBucketInfo'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateBucketInfo'chargedReadQuota x__)
                      (Control.DeepSeq.deepseq
                         (_MsgUpdateBucketInfo'paymentAddress x__)
                         (Control.DeepSeq.deepseq
                            (_MsgUpdateBucketInfo'visibility x__) ())))))
{- | Fields :
      -}
data MsgUpdateBucketInfoResponse
  = MsgUpdateBucketInfoResponse'_constructor {_MsgUpdateBucketInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateBucketInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateBucketInfoResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgUpdateBucketInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCMsgUpdateBucketInfoResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateBucketInfoResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateBucketInfoResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateBucketInfoResponse'_constructor
        {_MsgUpdateBucketInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateBucketInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateBucketInfoResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateBucketInfoResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateBucketInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateBucketInfoResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgUpdateGroupMember Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.groupOwner' @:: Lens' MsgUpdateGroupMember Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.groupName' @:: Lens' MsgUpdateGroupMember Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.membersToAdd' @:: Lens' MsgUpdateGroupMember [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'membersToAdd' @:: Lens' MsgUpdateGroupMember (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Greenfield.Storage.Tx_Fields.membersToDelete' @:: Lens' MsgUpdateGroupMember [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Tx_Fields.vec'membersToDelete' @:: Lens' MsgUpdateGroupMember (Data.Vector.Vector Data.Text.Text)@ -}
data MsgUpdateGroupMember
  = MsgUpdateGroupMember'_constructor {_MsgUpdateGroupMember'operator :: !Data.Text.Text,
                                       _MsgUpdateGroupMember'groupOwner :: !Data.Text.Text,
                                       _MsgUpdateGroupMember'groupName :: !Data.Text.Text,
                                       _MsgUpdateGroupMember'membersToAdd :: !(Data.Vector.Vector Data.Text.Text),
                                       _MsgUpdateGroupMember'membersToDelete :: !(Data.Vector.Vector Data.Text.Text),
                                       _MsgUpdateGroupMember'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupMember where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMember "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMember'operator
           (\ x__ y__ -> x__ {_MsgUpdateGroupMember'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMember "groupOwner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMember'groupOwner
           (\ x__ y__ -> x__ {_MsgUpdateGroupMember'groupOwner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMember "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMember'groupName
           (\ x__ y__ -> x__ {_MsgUpdateGroupMember'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMember "membersToAdd" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMember'membersToAdd
           (\ x__ y__ -> x__ {_MsgUpdateGroupMember'membersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMember "vec'membersToAdd" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMember'membersToAdd
           (\ x__ y__ -> x__ {_MsgUpdateGroupMember'membersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMember "membersToDelete" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMember'membersToDelete
           (\ x__ y__ -> x__ {_MsgUpdateGroupMember'membersToDelete = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMember "vec'membersToDelete" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMember'membersToDelete
           (\ x__ y__ -> x__ {_MsgUpdateGroupMember'membersToDelete = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateGroupMember where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgUpdateGroupMember"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgUpdateGroupMember\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
      \\vgroup_owner\CAN\STX \SOH(\tR\n\
      \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\ETX \SOH(\tR\tgroupName\DC2>\n\
      \\SOmembers_to_add\CAN\EOT \ETX(\tR\fmembersToAddB\CAN\210\180-\DC4cosmos.AddressString\DC2D\n\
      \\DC1members_to_delete\CAN\ENQ \ETX(\tR\SImembersToDeleteB\CAN\210\180-\DC4cosmos.AddressString:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMember
        groupOwner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupOwner")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMember
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMember
        membersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members_to_add"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"membersToAdd")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMember
        membersToDelete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members_to_delete"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"membersToDelete")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMember
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, groupOwner__field_descriptor),
           (Data.ProtoLens.Tag 3, groupName__field_descriptor),
           (Data.ProtoLens.Tag 4, membersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 5, membersToDelete__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupMember'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateGroupMember'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupMember'_constructor
        {_MsgUpdateGroupMember'operator = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMember'groupOwner = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMember'groupName = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMember'membersToAdd = Data.Vector.Generic.empty,
         _MsgUpdateGroupMember'membersToDelete = Data.Vector.Generic.empty,
         _MsgUpdateGroupMember'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupMember
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupMember
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
                                       "group_owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupOwner") y x)
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
          "MsgUpdateGroupMember"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"groupOwner") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.Text.Encoding.encodeUtf8 _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'membersToAdd") _x))
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
                               (Data.ProtoLens.Field.field @"vec'membersToDelete") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MsgUpdateGroupMember where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupMember'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateGroupMember'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateGroupMember'groupOwner x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateGroupMember'groupName x__)
                      (Control.DeepSeq.deepseq
                         (_MsgUpdateGroupMember'membersToAdd x__)
                         (Control.DeepSeq.deepseq
                            (_MsgUpdateGroupMember'membersToDelete x__) ())))))
{- | Fields :
      -}
data MsgUpdateGroupMemberResponse
  = MsgUpdateGroupMemberResponse'_constructor {_MsgUpdateGroupMemberResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupMemberResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateGroupMemberResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgUpdateGroupMemberResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgUpdateGroupMemberResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupMemberResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupMemberResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupMemberResponse'_constructor
        {_MsgUpdateGroupMemberResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupMemberResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupMemberResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateGroupMemberResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateGroupMemberResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupMemberResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.operator' @:: Lens' MsgUpdateObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.bucketName' @:: Lens' MsgUpdateObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.objectName' @:: Lens' MsgUpdateObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.visibility' @:: Lens' MsgUpdateObjectInfo Proto.Greenfield.Storage.Common.VisibilityType@ -}
data MsgUpdateObjectInfo
  = MsgUpdateObjectInfo'_constructor {_MsgUpdateObjectInfo'operator :: !Data.Text.Text,
                                      _MsgUpdateObjectInfo'bucketName :: !Data.Text.Text,
                                      _MsgUpdateObjectInfo'objectName :: !Data.Text.Text,
                                      _MsgUpdateObjectInfo'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                                      _MsgUpdateObjectInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateObjectInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateObjectInfo "operator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateObjectInfo'operator
           (\ x__ y__ -> x__ {_MsgUpdateObjectInfo'operator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateObjectInfo "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateObjectInfo'bucketName
           (\ x__ y__ -> x__ {_MsgUpdateObjectInfo'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateObjectInfo "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateObjectInfo'objectName
           (\ x__ y__ -> x__ {_MsgUpdateObjectInfo'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateObjectInfo "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateObjectInfo'visibility
           (\ x__ y__ -> x__ {_MsgUpdateObjectInfo'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateObjectInfo where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgUpdateObjectInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC3MsgUpdateObjectInfo\DC24\n\
      \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC2B\n\
      \\n\
      \visibility\CAN\EOT \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility:\r\130\231\176*\boperator"
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
              Data.ProtoLens.FieldDescriptor MsgUpdateObjectInfo
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateObjectInfo
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateObjectInfo
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateObjectInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operator__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, visibility__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateObjectInfo'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateObjectInfo'_unknownFields = y__})
  defMessage
    = MsgUpdateObjectInfo'_constructor
        {_MsgUpdateObjectInfo'operator = Data.ProtoLens.fieldDefault,
         _MsgUpdateObjectInfo'bucketName = Data.ProtoLens.fieldDefault,
         _MsgUpdateObjectInfo'objectName = Data.ProtoLens.fieldDefault,
         _MsgUpdateObjectInfo'visibility = Data.ProtoLens.fieldDefault,
         _MsgUpdateObjectInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateObjectInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateObjectInfo
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
                        32
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateObjectInfo"
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"visibility") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MsgUpdateObjectInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateObjectInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateObjectInfo'operator x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateObjectInfo'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateObjectInfo'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_MsgUpdateObjectInfo'visibility x__) ()))))
{- | Fields :
      -}
data MsgUpdateObjectInfoResponse
  = MsgUpdateObjectInfoResponse'_constructor {_MsgUpdateObjectInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateObjectInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateObjectInfoResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgUpdateObjectInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCMsgUpdateObjectInfoResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateObjectInfoResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateObjectInfoResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateObjectInfoResponse'_constructor
        {_MsgUpdateObjectInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateObjectInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateObjectInfoResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateObjectInfoResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateObjectInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateObjectInfoResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Greenfield.Storage.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Greenfield.Storage.Params.Params@
         * 'Proto.Greenfield.Storage.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Greenfield.Storage.Params.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Greenfield.Storage.Params.Params),
                                  _MsgUpdateParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateParams "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'authority
           (\ x__ y__ -> x__ {_MsgUpdateParams'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Greenfield.Storage.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Greenfield.Storage.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _ = Data.Text.pack "greenfield.storage.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
      \\ACKparams\CAN\STX \SOH(\v2\SUB.greenfield.storage.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Params.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParams'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParams'_unknownFields = y__})
  defMessage
    = MsgUpdateParams'_constructor
        {_MsgUpdateParams'authority = Data.ProtoLens.fieldDefault,
         _MsgUpdateParams'params = Prelude.Nothing,
         _MsgUpdateParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParams
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParams
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
instance Control.DeepSeq.NFData MsgUpdateParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateParams'authority x__)
                (Control.DeepSeq.deepseq (_MsgUpdateParams'params x__) ()))
{- | Fields :
      -}
data MsgUpdateParamsResponse
  = MsgUpdateParamsResponse'_constructor {_MsgUpdateParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateParamsResponse where
  messageName _
    = Data.Text.pack "greenfield.storage.MsgUpdateParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgUpdateParamsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParamsResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateParamsResponse'_constructor
        {_MsgUpdateParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParamsResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParamsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParamsResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "greenfield.storage"
  type ServiceMethods Msg = '["cancelCreateObject",
                              "copyObject",
                              "createBucket",
                              "createGroup",
                              "createObject",
                              "deleteBucket",
                              "deleteGroup",
                              "deleteObject",
                              "deletePolicy",
                              "discontinueBucket",
                              "discontinueObject",
                              "leaveGroup",
                              "mirrorBucket",
                              "mirrorGroup",
                              "mirrorObject",
                              "putPolicy",
                              "rejectSealObject",
                              "sealObject",
                              "updateBucketInfo",
                              "updateGroupMember",
                              "updateObjectInfo",
                              "updateParams"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2`\n\
      \\fCreateBucket\DC2#.greenfield.storage.MsgCreateBucket\SUB+.greenfield.storage.MsgCreateBucketResponse\DC2`\n\
      \\fDeleteBucket\DC2#.greenfield.storage.MsgDeleteBucket\SUB+.greenfield.storage.MsgDeleteBucketResponse\DC2l\n\
      \\DLEUpdateBucketInfo\DC2'.greenfield.storage.MsgUpdateBucketInfo\SUB/.greenfield.storage.MsgUpdateBucketInfoResponse\DC2`\n\
      \\fMirrorBucket\DC2#.greenfield.storage.MsgMirrorBucket\SUB+.greenfield.storage.MsgMirrorBucketResponse\DC2o\n\
      \\DC1DiscontinueBucket\DC2(.greenfield.storage.MsgDiscontinueBucket\SUB0.greenfield.storage.MsgDiscontinueBucketResponse\DC2`\n\
      \\fCreateObject\DC2#.greenfield.storage.MsgCreateObject\SUB+.greenfield.storage.MsgCreateObjectResponse\DC2Z\n\
      \\n\
      \SealObject\DC2!.greenfield.storage.MsgSealObject\SUB).greenfield.storage.MsgSealObjectResponse\DC2l\n\
      \\DLERejectSealObject\DC2'.greenfield.storage.MsgRejectSealObject\SUB/.greenfield.storage.MsgRejectSealObjectResponse\DC2Z\n\
      \\n\
      \CopyObject\DC2!.greenfield.storage.MsgCopyObject\SUB).greenfield.storage.MsgCopyObjectResponse\DC2`\n\
      \\fDeleteObject\DC2#.greenfield.storage.MsgDeleteObject\SUB+.greenfield.storage.MsgDeleteObjectResponse\DC2r\n\
      \\DC2CancelCreateObject\DC2).greenfield.storage.MsgCancelCreateObject\SUB1.greenfield.storage.MsgCancelCreateObjectResponse\DC2`\n\
      \\fMirrorObject\DC2#.greenfield.storage.MsgMirrorObject\SUB+.greenfield.storage.MsgMirrorObjectResponse\DC2o\n\
      \\DC1DiscontinueObject\DC2(.greenfield.storage.MsgDiscontinueObject\SUB0.greenfield.storage.MsgDiscontinueObjectResponse\DC2l\n\
      \\DLEUpdateObjectInfo\DC2'.greenfield.storage.MsgUpdateObjectInfo\SUB/.greenfield.storage.MsgUpdateObjectInfoResponse\DC2]\n\
      \\vCreateGroup\DC2\".greenfield.storage.MsgCreateGroup\SUB*.greenfield.storage.MsgCreateGroupResponse\DC2]\n\
      \\vDeleteGroup\DC2\".greenfield.storage.MsgDeleteGroup\SUB*.greenfield.storage.MsgDeleteGroupResponse\DC2o\n\
      \\DC1UpdateGroupMember\DC2(.greenfield.storage.MsgUpdateGroupMember\SUB0.greenfield.storage.MsgUpdateGroupMemberResponse\DC2Z\n\
      \\n\
      \LeaveGroup\DC2!.greenfield.storage.MsgLeaveGroup\SUB).greenfield.storage.MsgLeaveGroupResponse\DC2]\n\
      \\vMirrorGroup\DC2\".greenfield.storage.MsgMirrorGroup\SUB*.greenfield.storage.MsgMirrorGroupResponse\DC2W\n\
      \\tPutPolicy\DC2 .greenfield.storage.MsgPutPolicy\SUB(.greenfield.storage.MsgPutPolicyResponse\DC2`\n\
      \\fDeletePolicy\DC2#.greenfield.storage.MsgDeletePolicy\SUB+.greenfield.storage.MsgDeletePolicyResponse\DC2`\n\
      \\fUpdateParams\DC2#.greenfield.storage.MsgUpdateParams\SUB+.greenfield.storage.MsgUpdateParamsResponse"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createBucket" where
  type MethodName Msg "createBucket" = "CreateBucket"
  type MethodInput Msg "createBucket" = MsgCreateBucket
  type MethodOutput Msg "createBucket" = MsgCreateBucketResponse
  type MethodStreamingType Msg "createBucket" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "deleteBucket" where
  type MethodName Msg "deleteBucket" = "DeleteBucket"
  type MethodInput Msg "deleteBucket" = MsgDeleteBucket
  type MethodOutput Msg "deleteBucket" = MsgDeleteBucketResponse
  type MethodStreamingType Msg "deleteBucket" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateBucketInfo" where
  type MethodName Msg "updateBucketInfo" = "UpdateBucketInfo"
  type MethodInput Msg "updateBucketInfo" = MsgUpdateBucketInfo
  type MethodOutput Msg "updateBucketInfo" = MsgUpdateBucketInfoResponse
  type MethodStreamingType Msg "updateBucketInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "mirrorBucket" where
  type MethodName Msg "mirrorBucket" = "MirrorBucket"
  type MethodInput Msg "mirrorBucket" = MsgMirrorBucket
  type MethodOutput Msg "mirrorBucket" = MsgMirrorBucketResponse
  type MethodStreamingType Msg "mirrorBucket" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "discontinueBucket" where
  type MethodName Msg "discontinueBucket" = "DiscontinueBucket"
  type MethodInput Msg "discontinueBucket" = MsgDiscontinueBucket
  type MethodOutput Msg "discontinueBucket" = MsgDiscontinueBucketResponse
  type MethodStreamingType Msg "discontinueBucket" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createObject" where
  type MethodName Msg "createObject" = "CreateObject"
  type MethodInput Msg "createObject" = MsgCreateObject
  type MethodOutput Msg "createObject" = MsgCreateObjectResponse
  type MethodStreamingType Msg "createObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "sealObject" where
  type MethodName Msg "sealObject" = "SealObject"
  type MethodInput Msg "sealObject" = MsgSealObject
  type MethodOutput Msg "sealObject" = MsgSealObjectResponse
  type MethodStreamingType Msg "sealObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "rejectSealObject" where
  type MethodName Msg "rejectSealObject" = "RejectSealObject"
  type MethodInput Msg "rejectSealObject" = MsgRejectSealObject
  type MethodOutput Msg "rejectSealObject" = MsgRejectSealObjectResponse
  type MethodStreamingType Msg "rejectSealObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "copyObject" where
  type MethodName Msg "copyObject" = "CopyObject"
  type MethodInput Msg "copyObject" = MsgCopyObject
  type MethodOutput Msg "copyObject" = MsgCopyObjectResponse
  type MethodStreamingType Msg "copyObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "deleteObject" where
  type MethodName Msg "deleteObject" = "DeleteObject"
  type MethodInput Msg "deleteObject" = MsgDeleteObject
  type MethodOutput Msg "deleteObject" = MsgDeleteObjectResponse
  type MethodStreamingType Msg "deleteObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "cancelCreateObject" where
  type MethodName Msg "cancelCreateObject" = "CancelCreateObject"
  type MethodInput Msg "cancelCreateObject" = MsgCancelCreateObject
  type MethodOutput Msg "cancelCreateObject" = MsgCancelCreateObjectResponse
  type MethodStreamingType Msg "cancelCreateObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "mirrorObject" where
  type MethodName Msg "mirrorObject" = "MirrorObject"
  type MethodInput Msg "mirrorObject" = MsgMirrorObject
  type MethodOutput Msg "mirrorObject" = MsgMirrorObjectResponse
  type MethodStreamingType Msg "mirrorObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "discontinueObject" where
  type MethodName Msg "discontinueObject" = "DiscontinueObject"
  type MethodInput Msg "discontinueObject" = MsgDiscontinueObject
  type MethodOutput Msg "discontinueObject" = MsgDiscontinueObjectResponse
  type MethodStreamingType Msg "discontinueObject" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateObjectInfo" where
  type MethodName Msg "updateObjectInfo" = "UpdateObjectInfo"
  type MethodInput Msg "updateObjectInfo" = MsgUpdateObjectInfo
  type MethodOutput Msg "updateObjectInfo" = MsgUpdateObjectInfoResponse
  type MethodStreamingType Msg "updateObjectInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createGroup" where
  type MethodName Msg "createGroup" = "CreateGroup"
  type MethodInput Msg "createGroup" = MsgCreateGroup
  type MethodOutput Msg "createGroup" = MsgCreateGroupResponse
  type MethodStreamingType Msg "createGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "deleteGroup" where
  type MethodName Msg "deleteGroup" = "DeleteGroup"
  type MethodInput Msg "deleteGroup" = MsgDeleteGroup
  type MethodOutput Msg "deleteGroup" = MsgDeleteGroupResponse
  type MethodStreamingType Msg "deleteGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateGroupMember" where
  type MethodName Msg "updateGroupMember" = "UpdateGroupMember"
  type MethodInput Msg "updateGroupMember" = MsgUpdateGroupMember
  type MethodOutput Msg "updateGroupMember" = MsgUpdateGroupMemberResponse
  type MethodStreamingType Msg "updateGroupMember" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "leaveGroup" where
  type MethodName Msg "leaveGroup" = "LeaveGroup"
  type MethodInput Msg "leaveGroup" = MsgLeaveGroup
  type MethodOutput Msg "leaveGroup" = MsgLeaveGroupResponse
  type MethodStreamingType Msg "leaveGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "mirrorGroup" where
  type MethodName Msg "mirrorGroup" = "MirrorGroup"
  type MethodInput Msg "mirrorGroup" = MsgMirrorGroup
  type MethodOutput Msg "mirrorGroup" = MsgMirrorGroupResponse
  type MethodStreamingType Msg "mirrorGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "putPolicy" where
  type MethodName Msg "putPolicy" = "PutPolicy"
  type MethodInput Msg "putPolicy" = MsgPutPolicy
  type MethodOutput Msg "putPolicy" = MsgPutPolicyResponse
  type MethodStreamingType Msg "putPolicy" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "deletePolicy" where
  type MethodName Msg "deletePolicy" = "DeletePolicy"
  type MethodInput Msg "deletePolicy" = MsgDeletePolicy
  type MethodOutput Msg "deletePolicy" = MsgDeletePolicyResponse
  type MethodStreamingType Msg "deletePolicy" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCgreenfield/storage/tx.proto\DC2\DC2greenfield.storage\SUB\ETBcosmos/msg/v1/msg.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\USgreenfield/common/wrapper.proto\SUB\"greenfield/permission/common.proto\SUB\USgreenfield/storage/common.proto\SUB\USgreenfield/storage/params.proto\"\191\ETX\n\
    \\SIMsgCreateBucket\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2B\n\
    \\n\
    \visibility\CAN\ETX \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\DC2A\n\
    \\SIpayment_address\CAN\EOT \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\DC2primary_sp_address\CAN\ACK \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
    \\DC3primary_sp_approval\CAN\a \SOH(\v2\FS.greenfield.storage.ApprovalR\DC1primarySpApproval\DC2,\n\
    \\DC2charged_read_quota\CAN\b \SOH(\EOTR\DLEchargedReadQuota:\f\130\231\176*\acreator\"S\n\
    \\ETBMsgCreateBucketResponse\DC28\n\
    \\tbucket_id\CAN\SOH \SOH(\tR\bbucketIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"w\n\
    \\SIMsgDeleteBucket\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName:\r\130\231\176*\boperator\"\EM\n\
    \\ETBMsgDeleteBucketResponse\"\148\SOH\n\
    \\DC4MsgDiscontinueBucket\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\SYN\n\
    \\ACKreason\CAN\ETX \SOH(\tR\ACKreason:\r\130\231\176*\boperator\"\RS\n\
    \\FSMsgDiscontinueBucketResponse\"\194\EOT\n\
    \\SIMsgCreateObject\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC2!\n\
    \\fpayload_size\CAN\EOT \SOH(\EOTR\vpayloadSize\DC2B\n\
    \\n\
    \visibility\CAN\ENQ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\DC2!\n\
    \\fcontent_type\CAN\ACK \SOH(\tR\vcontentType\DC2L\n\
    \\DC3primary_sp_approval\CAN\a \SOH(\v2\FS.greenfield.storage.ApprovalR\DC1primarySpApproval\DC2)\n\
    \\DLEexpect_checksums\CAN\b \ETX(\fR\SIexpectChecksums\DC2K\n\
    \\SIredundancy_type\CAN\t \SOH(\SO2\".greenfield.storage.RedundancyTypeR\SOredundancyType\DC2[\n\
    \\GSexpect_secondary_sp_addresses\CAN\n\
    \ \ETX(\tR\SUBexpectSecondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString:\f\130\231\176*\acreator\"S\n\
    \\ETBMsgCreateObjectResponse\DC28\n\
    \\tobject_id\CAN\SOH \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\158\STX\n\
    \\rMsgSealObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC2N\n\
    \\SYNsecondary_sp_addresses\CAN\EOT \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
    \\ETBsecondary_sp_signatures\CAN\ENQ \ETX(\fR\NAKsecondarySpSignatures:\r\130\231\176*\boperator\"\ETB\n\
    \\NAKMsgSealObjectResponse\"\156\SOH\n\
    \\DC3MsgRejectSealObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName:\r\130\231\176*\boperator\"\GS\n\
    \\ESCMsgRejectSealObjectResponse\"\175\STX\n\
    \\rMsgCopyObject\DC2\SUB\n\
    \\boperator\CAN\SOH \SOH(\tR\boperator\DC2&\n\
    \\SIsrc_bucket_name\CAN\STX \SOH(\tR\rsrcBucketName\DC2&\n\
    \\SIdst_bucket_name\CAN\ETX \SOH(\tR\rdstBucketName\DC2&\n\
    \\SIsrc_object_name\CAN\EOT \SOH(\tR\rsrcObjectName\DC2&\n\
    \\SIdst_object_name\CAN\ENQ \SOH(\tR\rdstObjectName\DC2S\n\
    \\ETBdst_primary_sp_approval\CAN\ACK \SOH(\v2\FS.greenfield.storage.ApprovalR\DC4dstPrimarySpApproval:\r\130\231\176*\boperator\"Q\n\
    \\NAKMsgCopyObjectResponse\DC28\n\
    \\tobject_id\CAN\SOH \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\152\SOH\n\
    \\SIMsgDeleteObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName:\r\130\231\176*\boperator\"\EM\n\
    \\ETBMsgDeleteObjectResponse\"\208\SOH\n\
    \\DC4MsgDiscontinueObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2:\n\
    \\n\
    \object_ids\CAN\ETX \ETX(\tR\tobjectIdsB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SYN\n\
    \\ACKreason\CAN\EOT \SOH(\tR\ACKreason:\r\130\231\176*\boperator\"\RS\n\
    \\FSMsgDiscontinueObjectResponse\"\165\SOH\n\
    \\SOMsgCreateGroup\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\STX \SOH(\tR\tgroupName\DC22\n\
    \\amembers\CAN\ETX \ETX(\tR\amembersB\CAN\210\180-\DC4cosmos.AddressString:\f\130\231\176*\acreator\"P\n\
    \\SYNMsgCreateGroupResponse\DC26\n\
    \\bgroup_id\CAN\SOH \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"t\n\
    \\SOMsgDeleteGroup\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\STX \SOH(\tR\tgroupName:\r\130\231\176*\boperator\"\CAN\n\
    \\SYNMsgDeleteGroupResponse\"\187\STX\n\
    \\DC4MsgUpdateGroupMember\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
    \\vgroup_owner\CAN\STX \SOH(\tR\n\
    \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\ETX \SOH(\tR\tgroupName\DC2>\n\
    \\SOmembers_to_add\CAN\EOT \ETX(\tR\fmembersToAddB\CAN\210\180-\DC4cosmos.AddressString\DC2D\n\
    \\DC1members_to_delete\CAN\ENQ \ETX(\tR\SImembersToDeleteB\CAN\210\180-\DC4cosmos.AddressString:\r\130\231\176*\boperator\"\RS\n\
    \\FSMsgUpdateGroupMemberResponse\"\168\SOH\n\
    \\rMsgLeaveGroup\DC20\n\
    \\ACKmember\CAN\SOH \SOH(\tR\ACKmemberB\CAN\210\180-\DC4cosmos.AddressString\DC29\n\
    \\vgroup_owner\CAN\STX \SOH(\tR\n\
    \groupOwnerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\ETX \SOH(\tR\tgroupName:\v\130\231\176*\ACKmember\"\ETB\n\
    \\NAKMsgLeaveGroupResponse\"\208\STX\n\
    \\DC3MsgUpdateBucketInfo\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2L\n\
    \\DC2charged_read_quota\CAN\ETX \SOH(\v2\RS.greenfield.common.UInt64ValueR\DLEchargedReadQuota\DC2A\n\
    \\SIpayment_address\CAN\EOT \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2B\n\
    \\n\
    \visibility\CAN\ENQ \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility:\r\130\231\176*\boperator\"\GS\n\
    \\ESCMsgUpdateBucketInfoResponse\"\158\SOH\n\
    \\NAKMsgCancelCreateObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName:\r\130\231\176*\boperator\"\US\n\
    \\GSMsgCancelCreateObjectResponse\"\192\STX\n\
    \\fMsgPutPolicy\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
    \\tprincipal\CAN\STX \SOH(\v2 .greenfield.permission.PrincipalR\tprincipal\DC2\SUB\n\
    \\bresource\CAN\ETX \SOH(\tR\bresource\DC2@\n\
    \\n\
    \statements\CAN\EOT \ETX(\v2 .greenfield.permission.StatementR\n\
    \statements\DC2M\n\
    \\SIexpiration_time\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTimeB\b\200\222\US\SOH\144\223\US\SOH:\r\130\231\176*\boperator\"P\n\
    \\DC4MsgPutPolicyResponse\DC28\n\
    \\tpolicy_id\CAN\EOT \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\178\SOH\n\
    \\SIMsgDeletePolicy\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
    \\tprincipal\CAN\STX \SOH(\v2 .greenfield.permission.PrincipalR\tprincipal\DC2\SUB\n\
    \\bresource\CAN\ETX \SOH(\tR\bresource:\r\130\231\176*\boperator\"S\n\
    \\ETBMsgDeletePolicyResponse\DC28\n\
    \\tpolicy_id\CAN\EOT \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\131\SOH\n\
    \\SIMsgMirrorObject\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2+\n\
    \\STXid\CAN\STX \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint:\r\130\231\176*\boperator\"\EM\n\
    \\ETBMsgMirrorObjectResponse\"\131\SOH\n\
    \\SIMsgMirrorBucket\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2+\n\
    \\STXid\CAN\STX \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint:\r\130\231\176*\boperator\"\GS\n\
    \\ESCMsgUpdateObjectInfoResponse\"\224\SOH\n\
    \\DC3MsgUpdateObjectInfo\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC2B\n\
    \\n\
    \visibility\CAN\EOT \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility:\r\130\231\176*\boperator\"\EM\n\
    \\ETBMsgMirrorBucketResponse\"\130\SOH\n\
    \\SOMsgMirrorGroup\DC24\n\
    \\boperator\CAN\SOH \SOH(\tR\boperatorB\CAN\210\180-\DC4cosmos.AddressString\DC2+\n\
    \\STXid\CAN\STX \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint:\r\130\231\176*\boperator\"\CAN\n\
    \\SYNMsgMirrorGroupResponse\"\147\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
    \\ACKparams\CAN\STX \SOH(\v2\SUB.greenfield.storage.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority\"\EM\n\
    \\ETBMsgUpdateParamsResponse2\176\DC1\n\
    \\ETXMsg\DC2`\n\
    \\fCreateBucket\DC2#.greenfield.storage.MsgCreateBucket\SUB+.greenfield.storage.MsgCreateBucketResponse\DC2`\n\
    \\fDeleteBucket\DC2#.greenfield.storage.MsgDeleteBucket\SUB+.greenfield.storage.MsgDeleteBucketResponse\DC2l\n\
    \\DLEUpdateBucketInfo\DC2'.greenfield.storage.MsgUpdateBucketInfo\SUB/.greenfield.storage.MsgUpdateBucketInfoResponse\DC2`\n\
    \\fMirrorBucket\DC2#.greenfield.storage.MsgMirrorBucket\SUB+.greenfield.storage.MsgMirrorBucketResponse\DC2o\n\
    \\DC1DiscontinueBucket\DC2(.greenfield.storage.MsgDiscontinueBucket\SUB0.greenfield.storage.MsgDiscontinueBucketResponse\DC2`\n\
    \\fCreateObject\DC2#.greenfield.storage.MsgCreateObject\SUB+.greenfield.storage.MsgCreateObjectResponse\DC2Z\n\
    \\n\
    \SealObject\DC2!.greenfield.storage.MsgSealObject\SUB).greenfield.storage.MsgSealObjectResponse\DC2l\n\
    \\DLERejectSealObject\DC2'.greenfield.storage.MsgRejectSealObject\SUB/.greenfield.storage.MsgRejectSealObjectResponse\DC2Z\n\
    \\n\
    \CopyObject\DC2!.greenfield.storage.MsgCopyObject\SUB).greenfield.storage.MsgCopyObjectResponse\DC2`\n\
    \\fDeleteObject\DC2#.greenfield.storage.MsgDeleteObject\SUB+.greenfield.storage.MsgDeleteObjectResponse\DC2r\n\
    \\DC2CancelCreateObject\DC2).greenfield.storage.MsgCancelCreateObject\SUB1.greenfield.storage.MsgCancelCreateObjectResponse\DC2`\n\
    \\fMirrorObject\DC2#.greenfield.storage.MsgMirrorObject\SUB+.greenfield.storage.MsgMirrorObjectResponse\DC2o\n\
    \\DC1DiscontinueObject\DC2(.greenfield.storage.MsgDiscontinueObject\SUB0.greenfield.storage.MsgDiscontinueObjectResponse\DC2l\n\
    \\DLEUpdateObjectInfo\DC2'.greenfield.storage.MsgUpdateObjectInfo\SUB/.greenfield.storage.MsgUpdateObjectInfoResponse\DC2]\n\
    \\vCreateGroup\DC2\".greenfield.storage.MsgCreateGroup\SUB*.greenfield.storage.MsgCreateGroupResponse\DC2]\n\
    \\vDeleteGroup\DC2\".greenfield.storage.MsgDeleteGroup\SUB*.greenfield.storage.MsgDeleteGroupResponse\DC2o\n\
    \\DC1UpdateGroupMember\DC2(.greenfield.storage.MsgUpdateGroupMember\SUB0.greenfield.storage.MsgUpdateGroupMemberResponse\DC2Z\n\
    \\n\
    \LeaveGroup\DC2!.greenfield.storage.MsgLeaveGroup\SUB).greenfield.storage.MsgLeaveGroupResponse\DC2]\n\
    \\vMirrorGroup\DC2\".greenfield.storage.MsgMirrorGroup\SUB*.greenfield.storage.MsgMirrorGroupResponse\DC2W\n\
    \\tPutPolicy\DC2 .greenfield.storage.MsgPutPolicy\SUB(.greenfield.storage.MsgPutPolicyResponse\DC2`\n\
    \\fDeletePolicy\DC2#.greenfield.storage.MsgDeletePolicy\SUB+.greenfield.storage.MsgDeletePolicyResponse\DC2`\n\
    \\fUpdateParams\DC2#.greenfield.storage.MsgUpdateParams\SUB+.greenfield.storage.MsgUpdateParamsResponseB1Z/github.com/bnb-chain/greenfield/x/storage/typesJ\237\141\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\185\ETX\"\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL!\n\
    \H\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\SUB= this line is used by starport scaffolding # proto/tx/import\n\
    \\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL)\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL,\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\f\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\SO\NULF\n\
    \*\n\
    \\STX\ACK\NUL\DC2\EOT\DC1\NUL4\SOH\SUB\RS Msg defines the Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC1\b\v\n\
    \(\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC3\STXF\SUB\ESC basic operation of bucket\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC3-D\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DC4\STXF\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC4\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC4\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC4-D\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\NAK\STXR\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\NAK\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\NAK\ETB*\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\NAK5P\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\SYN\STXF\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\SYN\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\SYN\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\SYN-D\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX\ETB\STXU\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX\ETB\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX\ETB\CAN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX\ETB7S\n\
    \(\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ETX\SUB\STXF\SUB\ESC basic operation of object\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX\SUB\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX\SUB\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX\SUB-D\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\ETX\ESC\STX@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX\ESC\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX\ESC\DC1\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX\ESC)>\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\a\DC2\ETX\FS\STXR\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX\FS\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX\FS\ETB*\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX\FS5P\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\b\DC2\ETX\GS\STX@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX\GS\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX\GS\DC1\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX\GS)>\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\t\DC2\ETX\RS\STXF\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETX\RS\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETX\RS\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETX\RS-D\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\n\
    \\DC2\ETX\US\STXX\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\SOH\DC2\ETX\US\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\STX\DC2\ETX\US\EM.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\ETX\DC2\ETX\US9V\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\v\DC2\ETX \STXF\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\SOH\DC2\ETX \ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\STX\DC2\ETX \DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\ETX\DC2\ETX -D\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\f\DC2\ETX!\STXU\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\SOH\DC2\ETX!\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\STX\DC2\ETX!\CAN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\ETX\DC2\ETX!7S\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\r\DC2\ETX\"\STXR\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\SOH\DC2\ETX\"\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\STX\DC2\ETX\"\ETB*\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\ETX\DC2\ETX\"5P\n\
    \'\n\
    \\EOT\ACK\NUL\STX\SO\DC2\ETX%\STXC\SUB\SUB basic operation of group\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\SOH\DC2\ETX%\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\STX\DC2\ETX%\DC2 \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\ETX\DC2\ETX%+A\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SI\DC2\ETX&\STXC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\SOH\DC2\ETX&\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\STX\DC2\ETX&\DC2 \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\ETX\DC2\ETX&+A\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\DLE\DC2\ETX'\STXU\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DLE\SOH\DC2\ETX'\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DLE\STX\DC2\ETX'\CAN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DLE\ETX\DC2\ETX'7S\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\DC1\DC2\ETX(\STX@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC1\SOH\DC2\ETX(\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC1\STX\DC2\ETX(\DC1\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC1\ETX\DC2\ETX()>\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\DC2\DC2\ETX)\STXC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC2\SOH\DC2\ETX)\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC2\STX\DC2\ETX)\DC2 \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC2\ETX\DC2\ETX)+A\n\
    \(\n\
    \\EOT\ACK\NUL\STX\DC3\DC2\ETX+\STX=\SUB\ESC basic operation of policy\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC3\SOH\DC2\ETX+\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC3\STX\DC2\ETX+\DLE\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC3\ETX\DC2\ETX+';\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\DC4\DC2\ETX,\STXF\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC4\SOH\DC2\ETX,\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC4\STX\DC2\ETX,\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\DC4\ETX\DC2\ETX,-D\n\
    \\231\SOH\n\
    \\EOT\ACK\NUL\STX\NAK\DC2\ETX2\STXF\SUB\157\SOH UpdateParams defines a governance operation for updating the x/storage module parameters.\n\
    \ The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\": this line is used by starport scaffolding # proto/tx/rpc\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NAK\SOH\DC2\ETX2\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NAK\STX\DC2\ETX2\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NAK\ETX\DC2\ETX2-D\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT5\NULI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX5\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX6\STX,\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX6\STX,\n\
    \b\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX9\STXF\SUBU creator defines the account address of bucket creator, it is also the bucket owner.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX9\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX9\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX9\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX9\SYND\n\
    \C\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX;\STX\EM\SUB6 bucket_name defines a globally unique name of bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX;\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX;\ETB\CAN\n\
    \\165\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX>\STX \SUB\151\SOH visibility means the bucket is private or public. if private, only bucket owner or grantee can read it,\n\
    \ otherwise every greenfield user can read it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX>\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX>\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX>\RS\US\n\
    \y\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX@\STXN\SUBl payment_address defines an account address specified by bucket owner to pay the read fee. Default: creator\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX@\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX@\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX@\GSM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX@\RSL\n\
    \D\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXB\STXQ\SUB7 primary_sp_address defines the address of primary sp.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXB\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXB\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETXB P\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\202\214\ENQ\DC2\ETXB!O\n\
    \\138\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXD\STX#\SUB} primary_sp_approval defines the approval info of the primary SP which indicates that primary sp confirm the user's request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXD\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXD!\"\n\
    \\231\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXH\STX \SUB\217\SOH charged_read_quota defines the read data that users are charged for, measured in bytes.\n\
    \ The available read data for each user is the sum of the free read data provided by SP and\n\
    \ the ChargeReadQuota specified here.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXH\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXH\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOTK\NULQ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXK\b\US\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOTL\STXP\EOT\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXL\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXL\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOTL\ETBP\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETXM\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\235\251\ETX\DC2\ETXN\EOT#\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETXO\EOT \n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOTS\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXS\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXT\STX-\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETXT\STX-\n\
    \\130\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXW\STXG\SUBu creator defines the account address of the grantee who has the DeleteBucket permission of the bucket to be deleted.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXW\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXW\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXW\SYNF\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETXW\ETBE\n\
    \H\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXY\STX\EM\SUB; bucket_name defines the name of the bucket to be deleted.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXY\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXY\ETB\CAN\n\
    \\t\n\
    \\STX\EOT\ETX\DC2\ETX\\\NUL\"\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\\\b\US\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT^\NULg\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX^\b\FS\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETX_\STX-\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETX_\STX-\n\
    \G\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXb\STXG\SUB: operator is the sp who wants to stop serving the bucket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXb\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXb\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXb\SYNF\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXb\ETBE\n\
    \n\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXd\STX\EM\SUBa bucket_name defines the name of the bucket where the object which to be discontinued is stored.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXd\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXd\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXd\ETB\CAN\n\
    \*\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXf\STX\DC4\SUB\GS the reason for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXf\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXf\t\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXf\DC2\DC3\n\
    \\t\n\
    \\STX\EOT\ENQ\DC2\ETXi\NUL'\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXi\b$\n\
    \\v\n\
    \\STX\EOT\ACK\DC2\ENQk\NUL\131\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXk\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXl\STX,\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETXl\STX,\n\
    \E\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXo\STXF\SUB8 creator defines the account address of object uploader\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXo\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXo\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXo\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXo\NAKE\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\ETXo\SYND\n\
    \U\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXq\STX\EM\SUBH bucket_name defines the name of the bucket where the object is stored.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXq\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXq\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXq\ETB\CAN\n\
    \5\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXs\STX\EM\SUB( object_name defines the name of object\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXs\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXs\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXs\ETB\CAN\n\
    \@\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXu\STX\SUB\SUB3 payload_size defines size of the object's payload\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXu\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXu\CAN\EM\n\
    \\169\SOH\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETXx\STX \SUB\155\SOH visibility means the object is private or public. if private, only object owner or grantee can access it,\n\
    \ otherwise every greenfield user can access it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ACK\DC2\ETXx\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETXx\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETXx\RS\US\n\
    \]\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETXz\STX\SUB\SUBP content_type defines a standard MIME type describing the format of the object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\ETXz\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETXz\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETXz\CAN\EM\n\
    \\138\SOH\n\
    \\EOT\EOT\ACK\STX\ACK\DC2\ETX|\STX#\SUB} primary_sp_approval defines the approval info of the primary SP which indicates that primary sp confirm the user's request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ACK\DC2\ETX|\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\SOH\DC2\ETX|\v\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ETX\DC2\ETX|!\"\n\
    \d\n\
    \\EOT\EOT\ACK\STX\a\DC2\ETX~\STX&\SUBW expect_checksums defines a list of hashes which was generate by redundancy algorithm.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\ENQ\DC2\ETX~\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\SOH\DC2\ETX~\DC1!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\ETX\DC2\ETX~$%\n\
    \4\n\
    \\EOT\EOT\ACK\STX\b\DC2\EOT\128\SOH\STX%\SUB& redundancy_type can be ec or replica\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\b\ACK\DC2\EOT\128\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\b\SOH\DC2\EOT\128\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\b\ETX\DC2\EOT\128\SOH#$\n\
    \`\n\
    \\EOT\EOT\ACK\STX\t\DC2\EOT\130\SOH\STXf\SUBR expect_secondarySPs defines a list of StorageProvider address, which is optional\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\EOT\DC2\EOT\130\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\ENQ\DC2\EOT\130\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\SOH\DC2\EOT\130\SOH\DC2/\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\ETX\DC2\EOT\130\SOH24\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\t\b\DC2\EOT\130\SOH5e\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\t\b\202\214\ENQ\DC2\EOT\130\SOH6d\n\
    \\f\n\
    \\STX\EOT\a\DC2\ACK\133\SOH\NUL\139\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\133\SOH\b\US\n\
    \\SO\n\
    \\EOT\EOT\a\STX\NUL\DC2\ACK\134\SOH\STX\138\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\134\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\134\SOH\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\ACK\134\SOH\ETB\138\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\202\214\ENQ\DC2\EOT\135\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\235\251\ETX\DC2\EOT\136\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\EOT\137\SOH\EOT \n\
    \\f\n\
    \\STX\EOT\b\DC2\ACK\141\SOH\NUL\155\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\141\SOH\b\NAK\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\142\SOH\STX-\n\
    \\DLE\n\
    \\b\EOT\b\a\240\140\166\ENQ\NUL\DC2\EOT\142\SOH\STX-\n\
    \B\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\145\SOH\STXG\SUB4 operator defines the account address of primary SP\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\145\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\145\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\145\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\145\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\145\SOH\ETBE\n\
    \V\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\147\SOH\STX\EM\SUBH bucket_name defines the name of the bucket where the object is stored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\147\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\147\SOH\ETB\CAN\n\
    \D\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\149\SOH\STX\EM\SUB6 object_name defines the name of object to be sealed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\149\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\149\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\149\SOH\ETB\CAN\n\
    \i\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\151\SOH\STX^\SUB[ secondary_sp_addresses defines a list of storage provider which store the redundant data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\EOT\151\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\151\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\151\SOH\DC2(\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\151\SOH+,\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\EOT\151\SOH-]\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\202\214\ENQ\DC2\EOT\151\SOH.\\\n\
    \\151\SOH\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\154\SOH\STX-\SUB\136\SOH secondary_sp_signatures defines the signature of the secondary sp that can\n\
    \ acknowledge that the payload data has received and stored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\EOT\154\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\EOT\154\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\154\SOH\DC1(\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\154\SOH+,\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOT\157\SOH\NUL \n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\157\SOH\b\GS\n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\159\SOH\NUL\168\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\159\SOH\b\ESC\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\160\SOH\STX-\n\
    \\DLE\n\
    \\b\EOT\n\
    \\a\240\140\166\ENQ\NUL\DC2\EOT\160\SOH\STX-\n\
    \H\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\163\SOH\STXG\SUB: operator defines the account address of the object owner\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\163\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\163\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\163\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\163\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\163\SOH\ETBE\n\
    \V\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\165\SOH\STX\EM\SUBH bucket_name defines the name of the bucket where the object is stored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\165\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\165\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\165\SOH\ETB\CAN\n\
    \M\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\167\SOH\STX\EM\SUB? object_name defines the name of unsealed object to be reject.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\167\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\167\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\167\SOH\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT\170\SOH\NUL&\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\170\SOH\b#\n\
    \\f\n\
    \\STX\EOT\f\DC2\ACK\172\SOH\NUL\187\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\172\SOH\b\NAK\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\173\SOH\STX-\n\
    \\DLE\n\
    \\b\EOT\f\a\240\140\166\ENQ\NUL\DC2\EOT\173\SOH\STX-\n\
    \\131\SOH\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\176\SOH\STX\SYN\SUBu operator defines the account address of the operator who has the CopyObject permission of the object to be deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\176\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\176\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\176\SOH\DC4\NAK\n\
    \g\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\178\SOH\STX\GS\SUBY src_bucket_name defines the name of the bucket where the object to be copied is located\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\178\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\178\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\178\SOH\ESC\FS\n\
    \]\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\180\SOH\STX\GS\SUBO dst_bucket_name defines the name of the bucket where the object is copied to.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\EOT\180\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\180\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\180\SOH\ESC\FS\n\
    \Q\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\182\SOH\STX\GS\SUBC src_object_name defines the name of the object which to be copied\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\EOT\182\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\182\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\182\SOH\ESC\FS\n\
    \Q\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\184\SOH\STX\GS\SUBC dst_object_name defines the name of the object which is copied to\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\184\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\184\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\184\SOH\ESC\FS\n\
    \\139\SOH\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\186\SOH\STX'\SUB} primary_sp_approval defines the approval info of the primary SP which indicates that primary sp confirm the user's request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ACK\DC2\EOT\186\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\186\SOH\v\"\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\186\SOH%&\n\
    \\f\n\
    \\STX\EOT\r\DC2\ACK\189\SOH\NUL\195\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\189\SOH\b\GS\n\
    \\SO\n\
    \\EOT\EOT\r\STX\NUL\DC2\ACK\190\SOH\STX\194\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\190\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\190\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\190\SOH\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\ACK\190\SOH\ETB\194\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\202\214\ENQ\DC2\EOT\191\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\235\251\ETX\DC2\EOT\192\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\233\251\ETX\DC2\EOT\193\SOH\EOT \n\
    \\f\n\
    \\STX\EOT\SO\DC2\ACK\197\SOH\NUL\206\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\197\SOH\b\ETB\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\198\SOH\STX-\n\
    \\DLE\n\
    \\b\EOT\SO\a\240\140\166\ENQ\NUL\DC2\EOT\198\SOH\STX-\n\
    \\133\SOH\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\201\SOH\STXG\SUBw operator defines the account address of the operator who has the DeleteObject permission of the object to be deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\201\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\201\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\201\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\b\DC2\EOT\201\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\SO\STX\NUL\b\202\214\ENQ\DC2\EOT\201\SOH\ETBE\n\
    \j\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\203\SOH\STX\EM\SUB\\ bucket_name defines the name of the bucket where the object which to be deleted is stored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\203\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\203\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\203\SOH\ETB\CAN\n\
    \O\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\205\SOH\STX\EM\SUBA object_name defines the name of the object which to be deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\205\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\205\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\205\SOH\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\SI\DC2\EOT\208\SOH\NUL\"\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\208\SOH\b\US\n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\210\SOH\NUL\225\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\210\SOH\b\FS\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\211\SOH\STX-\n\
    \\DLE\n\
    \\b\EOT\DLE\a\240\140\166\ENQ\NUL\DC2\EOT\211\SOH\STX-\n\
    \I\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\214\SOH\STXG\SUB; operator is the sp who wants to stop serving the objects.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\214\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\214\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\214\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\b\DC2\EOT\214\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\NUL\b\202\214\ENQ\DC2\EOT\214\SOH\ETBE\n\
    \o\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\216\SOH\STX\EM\SUBa bucket_name defines the name of the bucket where the object which to be discontinued is stored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\216\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\216\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\216\SOH\ETB\CAN\n\
    \8\n\
    \\EOT\EOT\DLE\STX\STX\DC2\ACK\218\SOH\STX\222\SOH\EOT\SUB( object_ids are the ids of object info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\EOT\218\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\218\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\218\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\218\SOH\US \n\
    \\SI\n\
    \\ENQ\EOT\DLE\STX\STX\b\DC2\ACK\218\SOH!\222\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\202\214\ENQ\DC2\EOT\219\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\235\251\ETX\DC2\EOT\220\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\233\251\ETX\DC2\EOT\221\SOH\EOT \n\
    \+\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\224\SOH\STX\DC4\SUB\GS the reason for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\EOT\224\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\224\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\224\SOH\DC2\DC3\n\
    \\n\
    \\n\
    \\STX\EOT\DC1\DC2\EOT\227\SOH\NUL'\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\227\SOH\b$\n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\229\SOH\NUL\238\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\229\SOH\b\SYN\n\
    \\v\n\
    \\ETX\EOT\DC2\a\DC2\EOT\230\SOH\STX,\n\
    \\DLE\n\
    \\b\EOT\DC2\a\240\140\166\ENQ\NUL\DC2\EOT\230\SOH\STX,\n\
    \U\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\233\SOH\STXF\SUBG owner defines the account address of group owner who create the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\233\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\233\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\233\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\233\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\202\214\ENQ\DC2\EOT\233\SOH\SYND\n\
    \S\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\235\SOH\STX\CAN\SUBE group_name defines the name of the group. it's not globally unique.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\235\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\235\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\235\SOH\SYN\ETB\n\
    \Q\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\237\SOH\STXO\SUBC member_request defines a list of member which to be add or remove\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\EOT\DC2\EOT\237\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\237\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\237\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\237\SOH\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\b\DC2\EOT\237\SOH\RSN\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\STX\b\202\214\ENQ\DC2\EOT\237\SOH\USM\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\240\SOH\NUL\246\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\240\SOH\b\RS\n\
    \\SO\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\ACK\241\SOH\STX\245\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\241\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\241\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\241\SOH\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\DC3\STX\NUL\b\DC2\ACK\241\SOH\SYN\245\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\202\214\ENQ\DC2\EOT\242\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\235\251\ETX\DC2\EOT\243\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\233\251\ETX\DC2\EOT\244\SOH\EOT \n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\248\SOH\NUL\255\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\248\SOH\b\SYN\n\
    \\v\n\
    \\ETX\EOT\DC4\a\DC2\EOT\249\SOH\STX-\n\
    \\DLE\n\
    \\b\EOT\DC4\a\240\140\166\ENQ\NUL\DC2\EOT\249\SOH\STX-\n\
    \\131\SOH\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\252\SOH\STXG\SUBu operator defines the account address of the operator who has the DeleteGroup permission of the group to be deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\252\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\252\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\252\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\b\DC2\EOT\252\SOH\SYNF\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\NUL\b\202\214\ENQ\DC2\EOT\252\SOH\ETBE\n\
    \L\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\254\SOH\STX\CAN\SUB> group_name defines the name of the group which to be deleted\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ENQ\DC2\EOT\254\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\254\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\254\SOH\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\NAK\DC2\EOT\129\STX\NUL!\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\129\STX\b\RS\n\
    \\f\n\
    \\STX\EOT\SYN\DC2\ACK\131\STX\NUL\144\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\131\STX\b\FS\n\
    \\v\n\
    \\ETX\EOT\SYN\a\DC2\EOT\132\STX\STX-\n\
    \\DLE\n\
    \\b\EOT\SYN\a\240\140\166\ENQ\NUL\DC2\EOT\132\STX\STX-\n\
    \{\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\135\STX\STXG\SUBm operator defines the account address of the operator who has the UpdateGroupMember permission of the group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\135\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\135\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\135\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\b\DC2\EOT\135\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\SYN\STX\NUL\b\202\214\ENQ\DC2\EOT\135\STX\ETBE\n\
    \J\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\137\STX\STXJ\SUB< group_owner defines the account address of the group owner\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ENQ\DC2\EOT\137\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\137\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\137\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\b\DC2\EOT\137\STX\EMI\n\
    \\DLE\n\
    \\b\EOT\SYN\STX\SOH\b\202\214\ENQ\DC2\EOT\137\STX\SUBH\n\
    \L\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\139\STX\STX\CAN\SUB> group_name defines the name of the group which to be updated\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ENQ\DC2\EOT\139\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\139\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\139\STX\SYN\ETB\n\
    \g\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\EOT\141\STX\STXV\SUBY members_to_add defines a list of members account address which will be add to the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\EOT\DC2\EOT\141\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ENQ\DC2\EOT\141\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\EOT\141\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\EOT\141\STX#$\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\b\DC2\EOT\141\STX%U\n\
    \\DLE\n\
    \\b\EOT\SYN\STX\ETX\b\202\214\ENQ\DC2\EOT\141\STX&T\n\
    \o\n\
    \\EOT\EOT\SYN\STX\EOT\DC2\EOT\143\STX\STXY\SUBa members_to_delete defines a list of members account address which will be remove from the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\EOT\DC2\EOT\143\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ENQ\DC2\EOT\143\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\SOH\DC2\EOT\143\STX\DC2#\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ETX\DC2\EOT\143\STX&'\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\b\DC2\EOT\143\STX(X\n\
    \\DLE\n\
    \\b\EOT\SYN\STX\EOT\b\202\214\ENQ\DC2\EOT\143\STX)W\n\
    \\n\
    \\n\
    \\STX\EOT\ETB\DC2\EOT\146\STX\NUL'\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\146\STX\b$\n\
    \\f\n\
    \\STX\EOT\CAN\DC2\ACK\148\STX\NUL\157\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\148\STX\b\NAK\n\
    \\v\n\
    \\ETX\EOT\CAN\a\DC2\EOT\149\STX\STX+\n\
    \\DLE\n\
    \\b\EOT\CAN\a\240\140\166\ENQ\NUL\DC2\EOT\149\STX\STX+\n\
    \\\\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\152\STX\STXE\SUBN member defines the account address of the member who want to leave the group\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\152\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\152\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\152\STX\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\b\DC2\EOT\152\STX\DC4D\n\
    \\DLE\n\
    \\b\EOT\CAN\STX\NUL\b\202\214\ENQ\DC2\EOT\152\STX\NAKC\n\
    \L\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\154\STX\STXJ\SUB> group_owner defines the owner of the group you want to leave\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\154\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\154\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\154\STX\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\b\DC2\EOT\154\STX\EMI\n\
    \\DLE\n\
    \\b\EOT\CAN\STX\SOH\b\202\214\ENQ\DC2\EOT\154\STX\SUBH\n\
    \J\n\
    \\EOT\EOT\CAN\STX\STX\DC2\EOT\156\STX\STX\CAN\SUB< group_name defines the name of the group you want to leave\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ENQ\DC2\EOT\156\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\SOH\DC2\EOT\156\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ETX\DC2\EOT\156\STX\SYN\ETB\n\
    \\n\
    \\n\
    \\STX\EOT\EM\DC2\EOT\159\STX\NUL \n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\159\STX\b\GS\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\161\STX\NUL\177\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\161\STX\b\ESC\n\
    \\v\n\
    \\ETX\EOT\SUB\a\DC2\EOT\162\STX\STX-\n\
    \\DLE\n\
    \\b\EOT\SUB\a\240\140\166\ENQ\NUL\DC2\EOT\162\STX\STX-\n\
    \D\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\165\STX\STXG\SUB6 operator defines the account address of the operator\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ENQ\DC2\EOT\165\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\165\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\165\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\b\DC2\EOT\165\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\SUB\STX\NUL\b\202\214\ENQ\DC2\EOT\165\STX\ETBE\n\
    \J\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\EOT\167\STX\STX\EM\SUB< bucket_name defines the name of bucket which you'll update\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\EOT\167\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\EOT\167\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\EOT\167\STX\ETB\CAN\n\
    \\151\SOH\n\
    \\EOT\EOT\SUB\STX\STX\DC2\EOT\170\STX\STX,\SUB\136\SOH charged_read_quota defines the traffic quota that you read from primary sp\n\
    \ if read_quota is nil, it means don't change the read_quota\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ACK\DC2\EOT\170\STX\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\SOH\DC2\EOT\170\STX\NAK'\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ETX\DC2\EOT\170\STX*+\n\
    \\155\SOH\n\
    \\EOT\EOT\SUB\STX\ETX\DC2\EOT\173\STX\STXN\SUB\140\SOH payment_address defines the account address of the payment account\n\
    \ if payment_address is empty, it means don't change the payment_address\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\ENQ\DC2\EOT\173\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\SOH\DC2\EOT\173\STX\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\ETX\DC2\EOT\173\STX\ESC\FS\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\b\DC2\EOT\173\STX\GSM\n\
    \\DLE\n\
    \\b\EOT\SUB\STX\ETX\b\202\214\ENQ\DC2\EOT\173\STX\RSL\n\
    \\166\SOH\n\
    \\EOT\EOT\SUB\STX\EOT\DC2\EOT\176\STX\STX \SUB\151\SOH visibility means the bucket is private or public. if private, only bucket owner or grantee can read it,\n\
    \ otherwise every greenfield user can read it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\EOT\ACK\DC2\EOT\176\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\EOT\SOH\DC2\EOT\176\STX\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\EOT\ETX\DC2\EOT\176\STX\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ESC\DC2\EOT\179\STX\NUL&\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\179\STX\b#\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\181\STX\NUL\190\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\181\STX\b\GS\n\
    \\v\n\
    \\ETX\EOT\FS\a\DC2\EOT\182\STX\STX-\n\
    \\DLE\n\
    \\b\EOT\FS\a\240\140\166\ENQ\NUL\DC2\EOT\182\STX\STX-\n\
    \D\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\185\STX\STXG\SUB6 operator defines the account address of the operator\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ENQ\DC2\EOT\185\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\185\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\185\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\b\DC2\EOT\185\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\FS\STX\NUL\b\202\214\ENQ\DC2\EOT\185\STX\ETBE\n\
    \:\n\
    \\EOT\EOT\FS\STX\SOH\DC2\EOT\187\STX\STX\EM\SUB, bucket_name defines the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ENQ\DC2\EOT\187\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\SOH\DC2\EOT\187\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ETX\DC2\EOT\187\STX\ETB\CAN\n\
    \:\n\
    \\EOT\EOT\FS\STX\STX\DC2\EOT\189\STX\STX\EM\SUB, object_name defines the name of the object\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ENQ\DC2\EOT\189\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\SOH\DC2\EOT\189\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ETX\DC2\EOT\189\STX\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\GS\DC2\EOT\192\STX\NUL(\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\192\STX\b%\n\
    \\f\n\
    \\STX\EOT\RS\DC2\ACK\194\STX\NUL\211\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\194\STX\b\DC4\n\
    \\v\n\
    \\ETX\EOT\RS\a\DC2\EOT\195\STX\STX-\n\
    \\DLE\n\
    \\b\EOT\RS\a\240\140\166\ENQ\NUL\DC2\EOT\195\STX\STX-\n\
    \Z\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\198\STX\STXG\SUBL operator defines the granter who grant the permission to another principal\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ENQ\DC2\EOT\198\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\198\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\198\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\b\DC2\EOT\198\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\RS\STX\NUL\b\202\214\ENQ\DC2\EOT\198\STX\ETBE\n\
    \n\n\
    \\EOT\EOT\RS\STX\SOH\DC2\EOT\200\STX\STX%\SUB` Principal defines the roles that can grant permissions. Currently, it can be account or group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ACK\DC2\EOT\200\STX\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\SOH\DC2\EOT\200\STX\ETB \n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ETX\DC2\EOT\200\STX#$\n\
    \k\n\
    \\EOT\EOT\RS\STX\STX\DC2\EOT\202\STX\STX\SYN\SUB] resource defines a greenfield standard resource name that can be generated by GRN structure\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\ENQ\DC2\EOT\202\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\SOH\DC2\EOT\202\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\ETX\DC2\EOT\202\STX\DC4\NAK\n\
    \k\n\
    \\EOT\EOT\RS\STX\ETX\DC2\EOT\204\STX\STX/\SUB] statements defines a list of individual statement which describe the detail rules of policy\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\EOT\DC2\EOT\204\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\ACK\DC2\EOT\204\STX\v\US\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\SOH\DC2\EOT\204\STX *\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\ETX\DC2\EOT\204\STX-.\n\
    \\170\SOH\n\
    \\EOT\EOT\RS\STX\EOT\DC2\ACK\207\STX\STX\210\STX\EOT\SUB\153\SOH expiration_time defines the whole expiration time of all the statements.\n\
    \ Notices: Its priority is higher than the expiration time inside the Statement\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\ACK\DC2\EOT\207\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\SOH\DC2\EOT\207\STX\FS+\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\ETX\DC2\EOT\207\STX./\n\
    \\SI\n\
    \\ENQ\EOT\RS\STX\EOT\b\DC2\ACK\207\STX0\210\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\RS\STX\EOT\b\242\251\ETX\DC2\EOT\208\STX\EOT\RS\n\
    \\DLE\n\
    \\b\EOT\RS\STX\EOT\b\233\251\ETX\DC2\EOT\209\STX\EOT\US\n\
    \\f\n\
    \\STX\EOT\US\DC2\ACK\213\STX\NUL\219\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\US\SOH\DC2\EOT\213\STX\b\FS\n\
    \\SO\n\
    \\EOT\EOT\US\STX\NUL\DC2\ACK\214\STX\STX\218\STX\EOT\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ENQ\DC2\EOT\214\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\SOH\DC2\EOT\214\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ETX\DC2\EOT\214\STX\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT\US\STX\NUL\b\DC2\ACK\214\STX\ETB\218\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\US\STX\NUL\b\202\214\ENQ\DC2\EOT\215\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\US\STX\NUL\b\235\251\ETX\DC2\EOT\216\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\US\STX\NUL\b\233\251\ETX\DC2\EOT\217\STX\EOT \n\
    \\f\n\
    \\STX\EOT \DC2\ACK\221\STX\NUL\230\STX\SOH\n\
    \\v\n\
    \\ETX\EOT \SOH\DC2\EOT\221\STX\b\ETB\n\
    \\v\n\
    \\ETX\EOT \a\DC2\EOT\222\STX\STX-\n\
    \\DLE\n\
    \\b\EOT \a\240\140\166\ENQ\NUL\DC2\EOT\222\STX\STX-\n\
    \Z\n\
    \\EOT\EOT \STX\NUL\DC2\EOT\225\STX\STXG\SUBL operator defines the granter who grant the permission to another principal\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ENQ\DC2\EOT\225\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\SOH\DC2\EOT\225\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ETX\DC2\EOT\225\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\b\DC2\EOT\225\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT \STX\NUL\b\202\214\ENQ\DC2\EOT\225\STX\ETBE\n\
    \n\n\
    \\EOT\EOT \STX\SOH\DC2\EOT\227\STX\STX%\SUB` Principal defines the roles that can grant permissions. Currently, it can be account or group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ACK\DC2\EOT\227\STX\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\SOH\DC2\EOT\227\STX\ETB \n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ETX\DC2\EOT\227\STX#$\n\
    \k\n\
    \\EOT\EOT \STX\STX\DC2\EOT\229\STX\STX\SYN\SUB] resource defines a greenfield standard resource name that can be generated by GRN structure\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ENQ\DC2\EOT\229\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\SOH\DC2\EOT\229\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ETX\DC2\EOT\229\STX\DC4\NAK\n\
    \\f\n\
    \\STX\EOT!\DC2\ACK\232\STX\NUL\238\STX\SOH\n\
    \\v\n\
    \\ETX\EOT!\SOH\DC2\EOT\232\STX\b\US\n\
    \\SO\n\
    \\EOT\EOT!\STX\NUL\DC2\ACK\233\STX\STX\237\STX\EOT\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ENQ\DC2\EOT\233\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\SOH\DC2\EOT\233\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ETX\DC2\EOT\233\STX\NAK\SYN\n\
    \\SI\n\
    \\ENQ\EOT!\STX\NUL\b\DC2\ACK\233\STX\ETB\237\STX\ETX\n\
    \\DLE\n\
    \\b\EOT!\STX\NUL\b\202\214\ENQ\DC2\EOT\234\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT!\STX\NUL\b\235\251\ETX\DC2\EOT\235\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT!\STX\NUL\b\233\251\ETX\DC2\EOT\236\STX\EOT \n\
    \\f\n\
    \\STX\EOT\"\DC2\ACK\240\STX\NUL\250\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\"\SOH\DC2\EOT\240\STX\b\ETB\n\
    \\v\n\
    \\ETX\EOT\"\a\DC2\EOT\241\STX\STX-\n\
    \\DLE\n\
    \\b\EOT\"\a\240\140\166\ENQ\NUL\DC2\EOT\241\STX\STX-\n\
    \\133\SOH\n\
    \\EOT\EOT\"\STX\NUL\DC2\EOT\243\STX\STXG\SUBw operator defines the account address of the operator who has the DeleteObject permission of the object to be deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ENQ\DC2\EOT\243\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\SOH\DC2\EOT\243\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ETX\DC2\EOT\243\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\b\DC2\EOT\243\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\"\STX\NUL\b\202\214\ENQ\DC2\EOT\243\STX\ETBE\n\
    \8\n\
    \\EOT\EOT\"\STX\SOH\DC2\ACK\245\STX\STX\249\STX\EOT\SUB( id defines the unique u256 for object.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ENQ\DC2\EOT\245\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\SOH\DC2\EOT\245\STX\t\v\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ETX\DC2\EOT\245\STX\SO\SI\n\
    \\SI\n\
    \\ENQ\EOT\"\STX\SOH\b\DC2\ACK\245\STX\DLE\249\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\"\STX\SOH\b\202\214\ENQ\DC2\EOT\246\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\"\STX\SOH\b\235\251\ETX\DC2\EOT\247\STX\EOT#\n\
    \\DLE\n\
    \\b\EOT\"\STX\SOH\b\233\251\ETX\DC2\EOT\248\STX\EOT \n\
    \\n\
    \\n\
    \\STX\EOT#\DC2\EOT\252\STX\NUL\"\n\
    \\v\n\
    \\ETX\EOT#\SOH\DC2\EOT\252\STX\b\US\n\
    \\f\n\
    \\STX\EOT$\DC2\ACK\254\STX\NUL\136\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT$\SOH\DC2\EOT\254\STX\b\ETB\n\
    \\v\n\
    \\ETX\EOT$\a\DC2\EOT\255\STX\STX-\n\
    \\DLE\n\
    \\b\EOT$\a\240\140\166\ENQ\NUL\DC2\EOT\255\STX\STX-\n\
    \\131\SOH\n\
    \\EOT\EOT$\STX\NUL\DC2\EOT\129\ETX\STXG\SUBu creator defines the account address of the grantee who has the DeleteBucket permission of the bucket to be deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ENQ\DC2\EOT\129\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\SOH\DC2\EOT\129\ETX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ETX\DC2\EOT\129\ETX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\b\DC2\EOT\129\ETX\SYNF\n\
    \\DLE\n\
    \\b\EOT$\STX\NUL\b\202\214\ENQ\DC2\EOT\129\ETX\ETBE\n\
    \8\n\
    \\EOT\EOT$\STX\SOH\DC2\ACK\131\ETX\STX\135\ETX\EOT\SUB( id defines the unique u256 for bucket.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ENQ\DC2\EOT\131\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\SOH\DC2\EOT\131\ETX\t\v\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ETX\DC2\EOT\131\ETX\SO\SI\n\
    \\SI\n\
    \\ENQ\EOT$\STX\SOH\b\DC2\ACK\131\ETX\DLE\135\ETX\ETX\n\
    \\DLE\n\
    \\b\EOT$\STX\SOH\b\202\214\ENQ\DC2\EOT\132\ETX\EOT)\n\
    \\DLE\n\
    \\b\EOT$\STX\SOH\b\235\251\ETX\DC2\EOT\133\ETX\EOT#\n\
    \\DLE\n\
    \\b\EOT$\STX\SOH\b\233\251\ETX\DC2\EOT\134\ETX\EOT \n\
    \\n\
    \\n\
    \\STX\EOT%\DC2\EOT\138\ETX\NUL&\n\
    \\v\n\
    \\ETX\EOT%\SOH\DC2\EOT\138\ETX\b#\n\
    \\f\n\
    \\STX\EOT&\DC2\ACK\140\ETX\NUL\152\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT&\SOH\DC2\EOT\140\ETX\b\ESC\n\
    \\v\n\
    \\ETX\EOT&\a\DC2\EOT\141\ETX\STX-\n\
    \\DLE\n\
    \\b\EOT&\a\240\140\166\ENQ\NUL\DC2\EOT\141\ETX\STX-\n\
    \D\n\
    \\EOT\EOT&\STX\NUL\DC2\EOT\144\ETX\STXG\SUB6 operator defines the account address of the operator\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ENQ\DC2\EOT\144\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\SOH\DC2\EOT\144\ETX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ETX\DC2\EOT\144\ETX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\b\DC2\EOT\144\ETX\SYNF\n\
    \\DLE\n\
    \\b\EOT&\STX\NUL\b\202\214\ENQ\DC2\EOT\144\ETX\ETBE\n\
    \5\n\
    \\EOT\EOT&\STX\SOH\DC2\EOT\146\ETX\STX\EM\SUB' bucket_name is the name of the bucket\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ENQ\DC2\EOT\146\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\SOH\DC2\EOT\146\ETX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ETX\DC2\EOT\146\ETX\ETB\CAN\n\
    \J\n\
    \\EOT\EOT&\STX\STX\DC2\EOT\148\ETX\STX\EM\SUB< object_name defines the name of bucket which you'll update\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ENQ\DC2\EOT\148\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\SOH\DC2\EOT\148\ETX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ETX\DC2\EOT\148\ETX\ETB\CAN\n\
    \\166\SOH\n\
    \\EOT\EOT&\STX\ETX\DC2\EOT\151\ETX\STX \SUB\151\SOH visibility means the object is private or public. if private, only bucket owner or grantee can read it,\n\
    \ otherwise every greenfield user can read it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\ETX\ACK\DC2\EOT\151\ETX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT&\STX\ETX\SOH\DC2\EOT\151\ETX\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT&\STX\ETX\ETX\DC2\EOT\151\ETX\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT'\DC2\EOT\154\ETX\NUL\"\n\
    \\v\n\
    \\ETX\EOT'\SOH\DC2\EOT\154\ETX\b\US\n\
    \\f\n\
    \\STX\EOT(\DC2\ACK\156\ETX\NUL\166\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT(\SOH\DC2\EOT\156\ETX\b\SYN\n\
    \\v\n\
    \\ETX\EOT(\a\DC2\EOT\157\ETX\STX-\n\
    \\DLE\n\
    \\b\EOT(\a\240\140\166\ENQ\NUL\DC2\EOT\157\ETX\STX-\n\
    \\131\SOH\n\
    \\EOT\EOT(\STX\NUL\DC2\EOT\159\ETX\STXG\SUBu operator defines the account address of the operator who has the DeleteGroup permission of the group to be deleted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ENQ\DC2\EOT\159\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\SOH\DC2\EOT\159\ETX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ETX\DC2\EOT\159\ETX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\b\DC2\EOT\159\ETX\SYNF\n\
    \\DLE\n\
    \\b\EOT(\STX\NUL\b\202\214\ENQ\DC2\EOT\159\ETX\ETBE\n\
    \7\n\
    \\EOT\EOT(\STX\SOH\DC2\ACK\161\ETX\STX\165\ETX\EOT\SUB' id defines the unique u256 for group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ENQ\DC2\EOT\161\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\SOH\DC2\EOT\161\ETX\t\v\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ETX\DC2\EOT\161\ETX\SO\SI\n\
    \\SI\n\
    \\ENQ\EOT(\STX\SOH\b\DC2\ACK\161\ETX\DLE\165\ETX\ETX\n\
    \\DLE\n\
    \\b\EOT(\STX\SOH\b\202\214\ENQ\DC2\EOT\162\ETX\EOT)\n\
    \\DLE\n\
    \\b\EOT(\STX\SOH\b\235\251\ETX\DC2\EOT\163\ETX\EOT#\n\
    \\DLE\n\
    \\b\EOT(\STX\SOH\b\233\251\ETX\DC2\EOT\164\ETX\EOT \n\
    \\n\
    \\n\
    \\STX\EOT)\DC2\EOT\168\ETX\NUL!\n\
    \\v\n\
    \\ETX\EOT)\SOH\DC2\EOT\168\ETX\b\RS\n\
    \E\n\
    \\STX\EOT*\DC2\ACK\171\ETX\NUL\181\ETX\SOH\SUB7 MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT*\SOH\DC2\EOT\171\ETX\b\ETB\n\
    \\v\n\
    \\ETX\EOT*\a\DC2\EOT\172\ETX\STX.\n\
    \\DLE\n\
    \\b\EOT*\a\240\140\166\ENQ\NUL\DC2\EOT\172\ETX\STX.\n\
    \i\n\
    \\EOT\EOT*\STX\NUL\DC2\EOT\175\ETX\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ENQ\DC2\EOT\175\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\SOH\DC2\EOT\175\ETX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ETX\DC2\EOT\175\ETX\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\b\DC2\EOT\175\ETX\ETBG\n\
    \\DLE\n\
    \\b\EOT*\STX\NUL\b\202\214\ENQ\DC2\EOT\175\ETX\CANF\n\
    \k\n\
    \\EOT\EOT*\STX\SOH\DC2\EOT\180\ETX\STX3\SUB] params defines the x/storage parameters to update.\n\
    \\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ACK\DC2\EOT\180\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\SOH\DC2\EOT\180\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ETX\DC2\EOT\180\ETX\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\b\DC2\EOT\180\ETX\DC42\n\
    \\DLE\n\
    \\b\EOT*\STX\SOH\b\233\251\ETX\DC2\EOT\180\ETX\NAK1\n\
    \n\n\
    \\STX\EOT+\DC2\EOT\185\ETX\NUL\"\SUBb MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \\v\n\
    \\ETX\EOT+\SOH\DC2\EOT\185\ETX\b\USb\ACKproto3"