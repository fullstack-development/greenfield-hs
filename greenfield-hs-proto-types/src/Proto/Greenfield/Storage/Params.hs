{- This file was auto-generated from greenfield/storage/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Params (
        Params(), VersionedParams()
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
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Params_Fields.versionedParams' @:: Lens' Params VersionedParams@
         * 'Proto.Greenfield.Storage.Params_Fields.maybe'versionedParams' @:: Lens' Params (Prelude.Maybe VersionedParams)@
         * 'Proto.Greenfield.Storage.Params_Fields.maxPayloadSize' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Params_Fields.mirrorBucketRelayerFee' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Storage.Params_Fields.mirrorBucketAckRelayerFee' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Storage.Params_Fields.mirrorObjectRelayerFee' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Storage.Params_Fields.mirrorObjectAckRelayerFee' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Storage.Params_Fields.mirrorGroupRelayerFee' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Storage.Params_Fields.mirrorGroupAckRelayerFee' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Storage.Params_Fields.maxBucketsPerAccount' @:: Lens' Params Data.Word.Word32@
         * 'Proto.Greenfield.Storage.Params_Fields.discontinueCountingWindow' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Params_Fields.discontinueObjectMax' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Params_Fields.discontinueBucketMax' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Params_Fields.discontinueConfirmPeriod' @:: Lens' Params Data.Int.Int64@
         * 'Proto.Greenfield.Storage.Params_Fields.discontinueDeletionMax' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Params_Fields.stalePolicyCleanupMax' @:: Lens' Params Data.Word.Word64@ -}
data Params
  = Params'_constructor {_Params'versionedParams :: !(Prelude.Maybe VersionedParams),
                         _Params'maxPayloadSize :: !Data.Word.Word64,
                         _Params'mirrorBucketRelayerFee :: !Data.Text.Text,
                         _Params'mirrorBucketAckRelayerFee :: !Data.Text.Text,
                         _Params'mirrorObjectRelayerFee :: !Data.Text.Text,
                         _Params'mirrorObjectAckRelayerFee :: !Data.Text.Text,
                         _Params'mirrorGroupRelayerFee :: !Data.Text.Text,
                         _Params'mirrorGroupAckRelayerFee :: !Data.Text.Text,
                         _Params'maxBucketsPerAccount :: !Data.Word.Word32,
                         _Params'discontinueCountingWindow :: !Data.Word.Word64,
                         _Params'discontinueObjectMax :: !Data.Word.Word64,
                         _Params'discontinueBucketMax :: !Data.Word.Word64,
                         _Params'discontinueConfirmPeriod :: !Data.Int.Int64,
                         _Params'discontinueDeletionMax :: !Data.Word.Word64,
                         _Params'stalePolicyCleanupMax :: !Data.Word.Word64,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "versionedParams" VersionedParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'versionedParams
           (\ x__ y__ -> x__ {_Params'versionedParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Params "maybe'versionedParams" (Prelude.Maybe VersionedParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'versionedParams
           (\ x__ y__ -> x__ {_Params'versionedParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "maxPayloadSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxPayloadSize
           (\ x__ y__ -> x__ {_Params'maxPayloadSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "mirrorBucketRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'mirrorBucketRelayerFee
           (\ x__ y__ -> x__ {_Params'mirrorBucketRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "mirrorBucketAckRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'mirrorBucketAckRelayerFee
           (\ x__ y__ -> x__ {_Params'mirrorBucketAckRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "mirrorObjectRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'mirrorObjectRelayerFee
           (\ x__ y__ -> x__ {_Params'mirrorObjectRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "mirrorObjectAckRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'mirrorObjectAckRelayerFee
           (\ x__ y__ -> x__ {_Params'mirrorObjectAckRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "mirrorGroupRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'mirrorGroupRelayerFee
           (\ x__ y__ -> x__ {_Params'mirrorGroupRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "mirrorGroupAckRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'mirrorGroupAckRelayerFee
           (\ x__ y__ -> x__ {_Params'mirrorGroupAckRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "maxBucketsPerAccount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxBucketsPerAccount
           (\ x__ y__ -> x__ {_Params'maxBucketsPerAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "discontinueCountingWindow" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'discontinueCountingWindow
           (\ x__ y__ -> x__ {_Params'discontinueCountingWindow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "discontinueObjectMax" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'discontinueObjectMax
           (\ x__ y__ -> x__ {_Params'discontinueObjectMax = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "discontinueBucketMax" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'discontinueBucketMax
           (\ x__ y__ -> x__ {_Params'discontinueBucketMax = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "discontinueConfirmPeriod" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'discontinueConfirmPeriod
           (\ x__ y__ -> x__ {_Params'discontinueConfirmPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "discontinueDeletionMax" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'discontinueDeletionMax
           (\ x__ y__ -> x__ {_Params'discontinueDeletionMax = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "stalePolicyCleanupMax" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'stalePolicyCleanupMax
           (\ x__ y__ -> x__ {_Params'stalePolicyCleanupMax = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "greenfield.storage.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2T\n\
      \\DLEversioned_params\CAN\SOH \SOH(\v2#.greenfield.storage.VersionedParamsR\SIversionedParamsB\EOT\200\222\US\NUL\DC2(\n\
      \\DLEmax_payload_size\CAN\STX \SOH(\EOTR\SOmaxPayloadSize\DC29\n\
      \\EMmirror_bucket_relayer_fee\CAN\ETX \SOH(\tR\SYNmirrorBucketRelayerFee\DC2@\n\
      \\GSmirror_bucket_ack_relayer_fee\CAN\EOT \SOH(\tR\EMmirrorBucketAckRelayerFee\DC29\n\
      \\EMmirror_object_relayer_fee\CAN\ENQ \SOH(\tR\SYNmirrorObjectRelayerFee\DC2@\n\
      \\GSmirror_object_ack_relayer_fee\CAN\ACK \SOH(\tR\EMmirrorObjectAckRelayerFee\DC27\n\
      \\CANmirror_group_relayer_fee\CAN\a \SOH(\tR\NAKmirrorGroupRelayerFee\DC2>\n\
      \\FSmirror_group_ack_relayer_fee\CAN\b \SOH(\tR\CANmirrorGroupAckRelayerFee\DC25\n\
      \\ETBmax_buckets_per_account\CAN\t \SOH(\rR\DC4maxBucketsPerAccount\DC2>\n\
      \\ESCdiscontinue_counting_window\CAN\n\
      \ \SOH(\EOTR\EMdiscontinueCountingWindow\DC24\n\
      \\SYNdiscontinue_object_max\CAN\v \SOH(\EOTR\DC4discontinueObjectMax\DC24\n\
      \\SYNdiscontinue_bucket_max\CAN\f \SOH(\EOTR\DC4discontinueBucketMax\DC2<\n\
      \\SUBdiscontinue_confirm_period\CAN\r \SOH(\ETXR\CANdiscontinueConfirmPeriod\DC28\n\
      \\CANdiscontinue_deletion_max\CAN\SO \SOH(\EOTR\SYNdiscontinueDeletionMax\DC27\n\
      \\CANstale_policy_cleanup_max\CAN\SI \SOH(\EOTR\NAKstalePolicyCleanupMax:\EOT\152\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        versionedParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "versioned_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VersionedParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'versionedParams")) ::
              Data.ProtoLens.FieldDescriptor Params
        maxPayloadSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_payload_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxPayloadSize")) ::
              Data.ProtoLens.FieldDescriptor Params
        mirrorBucketRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mirror_bucket_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mirrorBucketRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
        mirrorBucketAckRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mirror_bucket_ack_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mirrorBucketAckRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
        mirrorObjectRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mirror_object_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mirrorObjectRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
        mirrorObjectAckRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mirror_object_ack_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mirrorObjectAckRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
        mirrorGroupRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mirror_group_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mirrorGroupRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
        mirrorGroupAckRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mirror_group_ack_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mirrorGroupAckRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
        maxBucketsPerAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_buckets_per_account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxBucketsPerAccount")) ::
              Data.ProtoLens.FieldDescriptor Params
        discontinueCountingWindow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "discontinue_counting_window"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"discontinueCountingWindow")) ::
              Data.ProtoLens.FieldDescriptor Params
        discontinueObjectMax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "discontinue_object_max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"discontinueObjectMax")) ::
              Data.ProtoLens.FieldDescriptor Params
        discontinueBucketMax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "discontinue_bucket_max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"discontinueBucketMax")) ::
              Data.ProtoLens.FieldDescriptor Params
        discontinueConfirmPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "discontinue_confirm_period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"discontinueConfirmPeriod")) ::
              Data.ProtoLens.FieldDescriptor Params
        discontinueDeletionMax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "discontinue_deletion_max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"discontinueDeletionMax")) ::
              Data.ProtoLens.FieldDescriptor Params
        stalePolicyCleanupMax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stale_policy_cleanup_max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stalePolicyCleanupMax")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, versionedParams__field_descriptor),
           (Data.ProtoLens.Tag 2, maxPayloadSize__field_descriptor),
           (Data.ProtoLens.Tag 3, mirrorBucketRelayerFee__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            mirrorBucketAckRelayerFee__field_descriptor),
           (Data.ProtoLens.Tag 5, mirrorObjectRelayerFee__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            mirrorObjectAckRelayerFee__field_descriptor),
           (Data.ProtoLens.Tag 7, mirrorGroupRelayerFee__field_descriptor),
           (Data.ProtoLens.Tag 8, mirrorGroupAckRelayerFee__field_descriptor),
           (Data.ProtoLens.Tag 9, maxBucketsPerAccount__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            discontinueCountingWindow__field_descriptor),
           (Data.ProtoLens.Tag 11, discontinueObjectMax__field_descriptor),
           (Data.ProtoLens.Tag 12, discontinueBucketMax__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            discontinueConfirmPeriod__field_descriptor),
           (Data.ProtoLens.Tag 14, discontinueDeletionMax__field_descriptor),
           (Data.ProtoLens.Tag 15, stalePolicyCleanupMax__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'versionedParams = Prelude.Nothing,
         _Params'maxPayloadSize = Data.ProtoLens.fieldDefault,
         _Params'mirrorBucketRelayerFee = Data.ProtoLens.fieldDefault,
         _Params'mirrorBucketAckRelayerFee = Data.ProtoLens.fieldDefault,
         _Params'mirrorObjectRelayerFee = Data.ProtoLens.fieldDefault,
         _Params'mirrorObjectAckRelayerFee = Data.ProtoLens.fieldDefault,
         _Params'mirrorGroupRelayerFee = Data.ProtoLens.fieldDefault,
         _Params'mirrorGroupAckRelayerFee = Data.ProtoLens.fieldDefault,
         _Params'maxBucketsPerAccount = Data.ProtoLens.fieldDefault,
         _Params'discontinueCountingWindow = Data.ProtoLens.fieldDefault,
         _Params'discontinueObjectMax = Data.ProtoLens.fieldDefault,
         _Params'discontinueBucketMax = Data.ProtoLens.fieldDefault,
         _Params'discontinueConfirmPeriod = Data.ProtoLens.fieldDefault,
         _Params'discontinueDeletionMax = Data.ProtoLens.fieldDefault,
         _Params'stalePolicyCleanupMax = Data.ProtoLens.fieldDefault,
         _Params'_unknownFields = []}
  parseMessage
    = let
        loop :: Params -> Data.ProtoLens.Encoding.Bytes.Parser Params
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "versioned_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"versionedParams") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_payload_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxPayloadSize") y x)
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
                                       "mirror_bucket_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mirrorBucketRelayerFee") y x)
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
                                       "mirror_bucket_ack_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mirrorBucketAckRelayerFee") y x)
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
                                       "mirror_object_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mirrorObjectRelayerFee") y x)
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
                                       "mirror_object_ack_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mirrorObjectAckRelayerFee") y x)
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
                                       "mirror_group_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mirrorGroupRelayerFee") y x)
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
                                       "mirror_group_ack_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mirrorGroupAckRelayerFee") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_buckets_per_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxBucketsPerAccount") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "discontinue_counting_window"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"discontinueCountingWindow") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "discontinue_object_max"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"discontinueObjectMax") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "discontinue_bucket_max"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"discontinueBucketMax") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "discontinue_confirm_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"discontinueConfirmPeriod") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "discontinue_deletion_max"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"discontinueDeletionMax") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "stale_policy_cleanup_max"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stalePolicyCleanupMax") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Params"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'versionedParams") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                         (Data.ProtoLens.Field.field @"maxPayloadSize") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"mirrorBucketRelayerFee") _x
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
                               (Data.ProtoLens.Field.field @"mirrorBucketAckRelayerFee") _x
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
                                  (Data.ProtoLens.Field.field @"mirrorObjectRelayerFee") _x
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
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"mirrorObjectAckRelayerFee") _x
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
                                        (Data.ProtoLens.Field.field @"mirrorGroupRelayerFee") _x
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
                                           (Data.ProtoLens.Field.field @"mirrorGroupAckRelayerFee")
                                           _x
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
                                              (Data.ProtoLens.Field.field @"maxBucketsPerAccount")
                                              _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field
                                                    @"discontinueCountingWindow")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"discontinueObjectMax")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"discontinueBucketMax")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"discontinueConfirmPeriod")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             104)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"discontinueDeletionMax")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                112)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"stalePolicyCleanupMax")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   120)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'versionedParams x__)
                (Control.DeepSeq.deepseq
                   (_Params'maxPayloadSize x__)
                   (Control.DeepSeq.deepseq
                      (_Params'mirrorBucketRelayerFee x__)
                      (Control.DeepSeq.deepseq
                         (_Params'mirrorBucketAckRelayerFee x__)
                         (Control.DeepSeq.deepseq
                            (_Params'mirrorObjectRelayerFee x__)
                            (Control.DeepSeq.deepseq
                               (_Params'mirrorObjectAckRelayerFee x__)
                               (Control.DeepSeq.deepseq
                                  (_Params'mirrorGroupRelayerFee x__)
                                  (Control.DeepSeq.deepseq
                                     (_Params'mirrorGroupAckRelayerFee x__)
                                     (Control.DeepSeq.deepseq
                                        (_Params'maxBucketsPerAccount x__)
                                        (Control.DeepSeq.deepseq
                                           (_Params'discontinueCountingWindow x__)
                                           (Control.DeepSeq.deepseq
                                              (_Params'discontinueObjectMax x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Params'discontinueBucketMax x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Params'discontinueConfirmPeriod x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Params'discontinueDeletionMax x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Params'stalePolicyCleanupMax x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Params_Fields.maxSegmentSize' @:: Lens' VersionedParams Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Params_Fields.redundantDataChunkNum' @:: Lens' VersionedParams Data.Word.Word32@
         * 'Proto.Greenfield.Storage.Params_Fields.redundantParityChunkNum' @:: Lens' VersionedParams Data.Word.Word32@
         * 'Proto.Greenfield.Storage.Params_Fields.minChargeSize' @:: Lens' VersionedParams Data.Word.Word64@ -}
data VersionedParams
  = VersionedParams'_constructor {_VersionedParams'maxSegmentSize :: !Data.Word.Word64,
                                  _VersionedParams'redundantDataChunkNum :: !Data.Word.Word32,
                                  _VersionedParams'redundantParityChunkNum :: !Data.Word.Word32,
                                  _VersionedParams'minChargeSize :: !Data.Word.Word64,
                                  _VersionedParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VersionedParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VersionedParams "maxSegmentSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionedParams'maxSegmentSize
           (\ x__ y__ -> x__ {_VersionedParams'maxSegmentSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionedParams "redundantDataChunkNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionedParams'redundantDataChunkNum
           (\ x__ y__ -> x__ {_VersionedParams'redundantDataChunkNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionedParams "redundantParityChunkNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionedParams'redundantParityChunkNum
           (\ x__ y__
              -> x__ {_VersionedParams'redundantParityChunkNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionedParams "minChargeSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionedParams'minChargeSize
           (\ x__ y__ -> x__ {_VersionedParams'minChargeSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message VersionedParams where
  messageName _ = Data.Text.pack "greenfield.storage.VersionedParams"
  packedMessageDescriptor _
    = "\n\
      \\SIVersionedParams\DC2(\n\
      \\DLEmax_segment_size\CAN\SOH \SOH(\EOTR\SOmaxSegmentSize\DC27\n\
      \\CANredundant_data_chunk_num\CAN\STX \SOH(\rR\NAKredundantDataChunkNum\DC2;\n\
      \\SUBredundant_parity_chunk_num\CAN\ETX \SOH(\rR\ETBredundantParityChunkNum\DC2&\n\
      \\SImin_charge_size\CAN\EOT \SOH(\EOTR\rminChargeSize:\EOT\152\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxSegmentSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_segment_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxSegmentSize")) ::
              Data.ProtoLens.FieldDescriptor VersionedParams
        redundantDataChunkNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redundant_data_chunk_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"redundantDataChunkNum")) ::
              Data.ProtoLens.FieldDescriptor VersionedParams
        redundantParityChunkNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redundant_parity_chunk_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"redundantParityChunkNum")) ::
              Data.ProtoLens.FieldDescriptor VersionedParams
        minChargeSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_charge_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minChargeSize")) ::
              Data.ProtoLens.FieldDescriptor VersionedParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxSegmentSize__field_descriptor),
           (Data.ProtoLens.Tag 2, redundantDataChunkNum__field_descriptor),
           (Data.ProtoLens.Tag 3, redundantParityChunkNum__field_descriptor),
           (Data.ProtoLens.Tag 4, minChargeSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VersionedParams'_unknownFields
        (\ x__ y__ -> x__ {_VersionedParams'_unknownFields = y__})
  defMessage
    = VersionedParams'_constructor
        {_VersionedParams'maxSegmentSize = Data.ProtoLens.fieldDefault,
         _VersionedParams'redundantDataChunkNum = Data.ProtoLens.fieldDefault,
         _VersionedParams'redundantParityChunkNum = Data.ProtoLens.fieldDefault,
         _VersionedParams'minChargeSize = Data.ProtoLens.fieldDefault,
         _VersionedParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VersionedParams
          -> Data.ProtoLens.Encoding.Bytes.Parser VersionedParams
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_segment_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxSegmentSize") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "redundant_data_chunk_num"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redundantDataChunkNum") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "redundant_parity_chunk_num"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redundantParityChunkNum") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "min_charge_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minChargeSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VersionedParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"maxSegmentSize") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"redundantDataChunkNum") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"redundantParityChunkNum") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"minChargeSize") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData VersionedParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VersionedParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VersionedParams'maxSegmentSize x__)
                (Control.DeepSeq.deepseq
                   (_VersionedParams'redundantDataChunkNum x__)
                   (Control.DeepSeq.deepseq
                      (_VersionedParams'redundantParityChunkNum x__)
                      (Control.DeepSeq.deepseq
                         (_VersionedParams'minChargeSize x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USgreenfield/storage/params.proto\DC2\DC2greenfield.storage\SUB\DC4gogoproto/gogo.proto\"\149\a\n\
    \\ACKParams\DC2T\n\
    \\DLEversioned_params\CAN\SOH \SOH(\v2#.greenfield.storage.VersionedParamsR\SIversionedParamsB\EOT\200\222\US\NUL\DC2(\n\
    \\DLEmax_payload_size\CAN\STX \SOH(\EOTR\SOmaxPayloadSize\DC29\n\
    \\EMmirror_bucket_relayer_fee\CAN\ETX \SOH(\tR\SYNmirrorBucketRelayerFee\DC2@\n\
    \\GSmirror_bucket_ack_relayer_fee\CAN\EOT \SOH(\tR\EMmirrorBucketAckRelayerFee\DC29\n\
    \\EMmirror_object_relayer_fee\CAN\ENQ \SOH(\tR\SYNmirrorObjectRelayerFee\DC2@\n\
    \\GSmirror_object_ack_relayer_fee\CAN\ACK \SOH(\tR\EMmirrorObjectAckRelayerFee\DC27\n\
    \\CANmirror_group_relayer_fee\CAN\a \SOH(\tR\NAKmirrorGroupRelayerFee\DC2>\n\
    \\FSmirror_group_ack_relayer_fee\CAN\b \SOH(\tR\CANmirrorGroupAckRelayerFee\DC25\n\
    \\ETBmax_buckets_per_account\CAN\t \SOH(\rR\DC4maxBucketsPerAccount\DC2>\n\
    \\ESCdiscontinue_counting_window\CAN\n\
    \ \SOH(\EOTR\EMdiscontinueCountingWindow\DC24\n\
    \\SYNdiscontinue_object_max\CAN\v \SOH(\EOTR\DC4discontinueObjectMax\DC24\n\
    \\SYNdiscontinue_bucket_max\CAN\f \SOH(\EOTR\DC4discontinueBucketMax\DC2<\n\
    \\SUBdiscontinue_confirm_period\CAN\r \SOH(\ETXR\CANdiscontinueConfirmPeriod\DC28\n\
    \\CANdiscontinue_deletion_max\CAN\SO \SOH(\EOTR\SYNdiscontinueDeletionMax\DC27\n\
    \\CANstale_policy_cleanup_max\CAN\SI \SOH(\EOTR\NAKstalePolicyCleanupMax:\EOT\152\160\US\NUL\"\223\SOH\n\
    \\SIVersionedParams\DC2(\n\
    \\DLEmax_segment_size\CAN\SOH \SOH(\EOTR\SOmaxSegmentSize\DC27\n\
    \\CANredundant_data_chunk_num\CAN\STX \SOH(\rR\NAKredundantDataChunkNum\DC2;\n\
    \\SUBredundant_parity_chunk_num\CAN\ETX \SOH(\rR\ETBredundantParityChunkNum\DC2&\n\
    \\SImin_charge_size\CAN\EOT \SOH(\EOTR\rminChargeSize:\EOT\152\160\US\NULB1Z/github.com/bnb-chain/greenfield/x/storage/typesJ\128\DC4\n\
    \\ACK\DC2\EOT\NUL\NUL6\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NULF\n\
    \;\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL(\SOH\SUB/ Params defines the parameters for the module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\t\STX.\n\
    \\r\n\
    \\ACK\EOT\NUL\a\131\244\ETX\DC2\ETX\t\STX.\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\STXF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\n\
    \\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\n\
    \'E\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\n\
    \(D\n\
    \O\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\r\STX\RS\SUBB max_payload_size is the maximum size of the payload, default: 2G\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\r\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\r\FS\GS\n\
    \3\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SI\STX'\SUB& relayer fee for the mirror bucket tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SI\t\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SI%&\n\
    \R\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC1\STX+\SUBE relayer fee for the ACK or FAIL_ACK package of the mirror bucket tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC1\t&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC1)*\n\
    \3\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\DC3\STX'\SUB& relayer fee for the mirror object tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\DC3\t\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\DC3%&\n\
    \R\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\NAK\STX+\SUBE Relayer fee for the ACK or FAIL_ACK package of the mirror object tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\NAK\t&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\NAK)*\n\
    \3\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\ETB\STX&\SUB& relayer fee for the mirror object tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\ETB\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\ETB$%\n\
    \R\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\EM\STX*\SUBE Relayer fee for the ACK or FAIL_ACK package of the mirror object tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\EM\t%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\EM()\n\
    \L\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX\ESC\STX%\SUB? The maximum number of buckets that can be created per account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX\ESC\t \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX\ESC#$\n\
    \F\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX\GS\STX*\SUB9 The window to count the discontinued objects or buckets\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX\GS\t$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX\GS')\n\
    \;\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX\US\STX%\SUB. The max objects can be requested in a window\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX\US\t\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX\US\"$\n\
    \;\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX!\STX%\SUB. The max buckets can be requested in a window\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX!\t\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX!\"$\n\
    \M\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETX#\STX(\SUB@ The object will be deleted after the confirm period in seconds\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ENQ\DC2\ETX#\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETX#\b\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETX#%'\n\
    \7\n\
    \\EOT\EOT\NUL\STX\r\DC2\ETX%\STX'\SUB* The max delete objects in each end block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETX%\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETX%$&\n\
    \C\n\
    \\EOT\EOT\NUL\STX\SO\DC2\ETX'\STX'\SUB6 The max number for deleting policy in each end block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETX'\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETX'$&\n\
    \\141\SOH\n\
    \\STX\EOT\SOH\DC2\EOT+\NUL6\SOH\SUB\128\SOH VersionedParams defines the parameters for the storage module with multi version, each version store with different timestamp.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX+\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX,\STX.\n\
    \\r\n\
    \\ACK\EOT\SOH\a\131\244\ETX\DC2\ETX,\STX.\n\
    \N\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX/\STX\RS\SUBA max_segment_size is the maximum size of a segment. default: 16M\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX/\t\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX/\FS\GS\n\
    \\\\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX1\STX&\SUBO redundant_data_check_num is the num of data chunks of EC redundancy algorithm\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX1\t!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX1$%\n\
    \^\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX3\STX(\SUBQ redundant_data_check_num is the num of parity chunks of EC redundancy algorithm\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX3\t#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX3&'\n\
    \\133\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX5\STX\GS\SUBx min_charge_size is the minimum charge size of the payload, objects smaller than this size will be charged as this size\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX5\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX5\ESC\FSb\ACKproto3"