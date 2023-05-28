{- This file was auto-generated from greenfield/storage/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Storage.Types (
        BillingInfo(), BucketInfo(), BucketMetaData(), DeleteInfo(),
        GroupInfo(), GroupMetaData(), Ids(), ObjectInfo(),
        ObjectMetaData(), SecondarySpObjectsSize(), Trait()
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
import qualified Proto.Greenfield.Payment.Base
import qualified Proto.Greenfield.Storage.Common
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.priceTime' @:: Lens' BillingInfo Data.Int.Int64@
         * 'Proto.Greenfield.Storage.Types_Fields.totalChargeSize' @:: Lens' BillingInfo Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Types_Fields.secondarySpObjectsSize' @:: Lens' BillingInfo [SecondarySpObjectsSize]@
         * 'Proto.Greenfield.Storage.Types_Fields.vec'secondarySpObjectsSize' @:: Lens' BillingInfo (Data.Vector.Vector SecondarySpObjectsSize)@ -}
data BillingInfo
  = BillingInfo'_constructor {_BillingInfo'priceTime :: !Data.Int.Int64,
                              _BillingInfo'totalChargeSize :: !Data.Word.Word64,
                              _BillingInfo'secondarySpObjectsSize :: !(Data.Vector.Vector SecondarySpObjectsSize),
                              _BillingInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BillingInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BillingInfo "priceTime" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BillingInfo'priceTime
           (\ x__ y__ -> x__ {_BillingInfo'priceTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BillingInfo "totalChargeSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BillingInfo'totalChargeSize
           (\ x__ y__ -> x__ {_BillingInfo'totalChargeSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BillingInfo "secondarySpObjectsSize" [SecondarySpObjectsSize] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BillingInfo'secondarySpObjectsSize
           (\ x__ y__ -> x__ {_BillingInfo'secondarySpObjectsSize = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BillingInfo "vec'secondarySpObjectsSize" (Data.Vector.Vector SecondarySpObjectsSize) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BillingInfo'secondarySpObjectsSize
           (\ x__ y__ -> x__ {_BillingInfo'secondarySpObjectsSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message BillingInfo where
  messageName _ = Data.Text.pack "greenfield.storage.BillingInfo"
  packedMessageDescriptor _
    = "\n\
      \\vBillingInfo\DC2\GS\n\
      \\n\
      \price_time\CAN\SOH \SOH(\ETXR\tpriceTime\DC2*\n\
      \\DC1total_charge_size\CAN\STX \SOH(\EOTR\SItotalChargeSize\DC2k\n\
      \\EMsecondary_sp_objects_size\CAN\ETX \ETX(\v2*.greenfield.storage.SecondarySpObjectsSizeR\SYNsecondarySpObjectsSizeB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        priceTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "price_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"priceTime")) ::
              Data.ProtoLens.FieldDescriptor BillingInfo
        totalChargeSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_charge_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalChargeSize")) ::
              Data.ProtoLens.FieldDescriptor BillingInfo
        secondarySpObjectsSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_objects_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SecondarySpObjectsSize)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"secondarySpObjectsSize")) ::
              Data.ProtoLens.FieldDescriptor BillingInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, priceTime__field_descriptor),
           (Data.ProtoLens.Tag 2, totalChargeSize__field_descriptor),
           (Data.ProtoLens.Tag 3, secondarySpObjectsSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BillingInfo'_unknownFields
        (\ x__ y__ -> x__ {_BillingInfo'_unknownFields = y__})
  defMessage
    = BillingInfo'_constructor
        {_BillingInfo'priceTime = Data.ProtoLens.fieldDefault,
         _BillingInfo'totalChargeSize = Data.ProtoLens.fieldDefault,
         _BillingInfo'secondarySpObjectsSize = Data.Vector.Generic.empty,
         _BillingInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BillingInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SecondarySpObjectsSize
             -> Data.ProtoLens.Encoding.Bytes.Parser BillingInfo
        loop x mutable'secondarySpObjectsSize
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'secondarySpObjectsSize <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'secondarySpObjectsSize)
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
                              (Data.ProtoLens.Field.field @"vec'secondarySpObjectsSize")
                              frozen'secondarySpObjectsSize x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "price_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priceTime") y x)
                                  mutable'secondarySpObjectsSize
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_charge_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalChargeSize") y x)
                                  mutable'secondarySpObjectsSize
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "secondary_sp_objects_size"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'secondarySpObjectsSize y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'secondarySpObjectsSize
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'secondarySpObjectsSize <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'secondarySpObjectsSize)
          "BillingInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"priceTime") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"totalChargeSize") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'secondarySpObjectsSize") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData BillingInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BillingInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BillingInfo'priceTime x__)
                (Control.DeepSeq.deepseq
                   (_BillingInfo'totalChargeSize x__)
                   (Control.DeepSeq.deepseq
                      (_BillingInfo'secondarySpObjectsSize x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.owner' @:: Lens' BucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.bucketName' @:: Lens' BucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.visibility' @:: Lens' BucketInfo Proto.Greenfield.Storage.Common.VisibilityType@
         * 'Proto.Greenfield.Storage.Types_Fields.id' @:: Lens' BucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.sourceType' @:: Lens' BucketInfo Proto.Greenfield.Storage.Common.SourceType@
         * 'Proto.Greenfield.Storage.Types_Fields.createAt' @:: Lens' BucketInfo Data.Int.Int64@
         * 'Proto.Greenfield.Storage.Types_Fields.paymentAddress' @:: Lens' BucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.primarySpAddress' @:: Lens' BucketInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.chargedReadQuota' @:: Lens' BucketInfo Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Types_Fields.billingInfo' @:: Lens' BucketInfo BillingInfo@
         * 'Proto.Greenfield.Storage.Types_Fields.maybe'billingInfo' @:: Lens' BucketInfo (Prelude.Maybe BillingInfo)@
         * 'Proto.Greenfield.Storage.Types_Fields.bucketStatus' @:: Lens' BucketInfo Proto.Greenfield.Storage.Common.BucketStatus@ -}
data BucketInfo
  = BucketInfo'_constructor {_BucketInfo'owner :: !Data.Text.Text,
                             _BucketInfo'bucketName :: !Data.Text.Text,
                             _BucketInfo'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                             _BucketInfo'id :: !Data.Text.Text,
                             _BucketInfo'sourceType :: !Proto.Greenfield.Storage.Common.SourceType,
                             _BucketInfo'createAt :: !Data.Int.Int64,
                             _BucketInfo'paymentAddress :: !Data.Text.Text,
                             _BucketInfo'primarySpAddress :: !Data.Text.Text,
                             _BucketInfo'chargedReadQuota :: !Data.Word.Word64,
                             _BucketInfo'billingInfo :: !(Prelude.Maybe BillingInfo),
                             _BucketInfo'bucketStatus :: !Proto.Greenfield.Storage.Common.BucketStatus,
                             _BucketInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BucketInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BucketInfo "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'owner (\ x__ y__ -> x__ {_BucketInfo'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'bucketName
           (\ x__ y__ -> x__ {_BucketInfo'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'visibility
           (\ x__ y__ -> x__ {_BucketInfo'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'id (\ x__ y__ -> x__ {_BucketInfo'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "sourceType" Proto.Greenfield.Storage.Common.SourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'sourceType
           (\ x__ y__ -> x__ {_BucketInfo'sourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "createAt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'createAt
           (\ x__ y__ -> x__ {_BucketInfo'createAt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "paymentAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'paymentAddress
           (\ x__ y__ -> x__ {_BucketInfo'paymentAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "primarySpAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'primarySpAddress
           (\ x__ y__ -> x__ {_BucketInfo'primarySpAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "chargedReadQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'chargedReadQuota
           (\ x__ y__ -> x__ {_BucketInfo'chargedReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "billingInfo" BillingInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'billingInfo
           (\ x__ y__ -> x__ {_BucketInfo'billingInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BucketInfo "maybe'billingInfo" (Prelude.Maybe BillingInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'billingInfo
           (\ x__ y__ -> x__ {_BucketInfo'billingInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketInfo "bucketStatus" Proto.Greenfield.Storage.Common.BucketStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketInfo'bucketStatus
           (\ x__ y__ -> x__ {_BucketInfo'bucketStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message BucketInfo where
  messageName _ = Data.Text.pack "greenfield.storage.BucketInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \BucketInfo\DC2.\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2B\n\
      \\n\
      \visibility\CAN\ETX \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility\DC2+\n\
      \\STXid\CAN\EOT \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
      \\vsource_type\CAN\ENQ \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
      \sourceType\DC2\ESC\n\
      \\tcreate_at\CAN\ACK \SOH(\ETXR\bcreateAt\DC2A\n\
      \\SIpayment_address\CAN\a \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\DC2primary_sp_address\CAN\b \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
      \\DC2charged_read_quota\CAN\t \SOH(\EOTR\DLEchargedReadQuota\DC2H\n\
      \\fbilling_info\CAN\n\
      \ \SOH(\v2\US.greenfield.storage.BillingInfoR\vbillingInfoB\EOT\200\222\US\NUL\DC2E\n\
      \\rbucket_status\CAN\v \SOH(\SO2 .greenfield.storage.BucketStatusR\fbucketStatus"
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
              Data.ProtoLens.FieldDescriptor BucketInfo
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        sourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.SourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceType")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        createAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_at"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"createAt")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        paymentAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentAddress")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        primarySpAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"primarySpAddress")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        chargedReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "charged_read_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"chargedReadQuota")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        billingInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "billing_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BillingInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'billingInfo")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
        bucketStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.BucketStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketStatus")) ::
              Data.ProtoLens.FieldDescriptor BucketInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, visibility__field_descriptor),
           (Data.ProtoLens.Tag 4, id__field_descriptor),
           (Data.ProtoLens.Tag 5, sourceType__field_descriptor),
           (Data.ProtoLens.Tag 6, createAt__field_descriptor),
           (Data.ProtoLens.Tag 7, paymentAddress__field_descriptor),
           (Data.ProtoLens.Tag 8, primarySpAddress__field_descriptor),
           (Data.ProtoLens.Tag 9, chargedReadQuota__field_descriptor),
           (Data.ProtoLens.Tag 10, billingInfo__field_descriptor),
           (Data.ProtoLens.Tag 11, bucketStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BucketInfo'_unknownFields
        (\ x__ y__ -> x__ {_BucketInfo'_unknownFields = y__})
  defMessage
    = BucketInfo'_constructor
        {_BucketInfo'owner = Data.ProtoLens.fieldDefault,
         _BucketInfo'bucketName = Data.ProtoLens.fieldDefault,
         _BucketInfo'visibility = Data.ProtoLens.fieldDefault,
         _BucketInfo'id = Data.ProtoLens.fieldDefault,
         _BucketInfo'sourceType = Data.ProtoLens.fieldDefault,
         _BucketInfo'createAt = Data.ProtoLens.fieldDefault,
         _BucketInfo'paymentAddress = Data.ProtoLens.fieldDefault,
         _BucketInfo'primarySpAddress = Data.ProtoLens.fieldDefault,
         _BucketInfo'chargedReadQuota = Data.ProtoLens.fieldDefault,
         _BucketInfo'billingInfo = Prelude.Nothing,
         _BucketInfo'bucketStatus = Data.ProtoLens.fieldDefault,
         _BucketInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BucketInfo -> Data.ProtoLens.Encoding.Bytes.Parser BucketInfo
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceType") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "create_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createAt") y x)
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
                                       "payment_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAddress") y x)
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
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "charged_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chargedReadQuota") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "billing_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"billingInfo") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "bucket_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bucketStatus") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BucketInfo"
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
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"sourceType") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"createAt") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
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
                                              (Data.ProtoLens.Field.field @"chargedReadQuota") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'billingInfo") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
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
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"bucketStatus") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       Prelude.fromEnum _v))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData BucketInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BucketInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BucketInfo'owner x__)
                (Control.DeepSeq.deepseq
                   (_BucketInfo'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_BucketInfo'visibility x__)
                      (Control.DeepSeq.deepseq
                         (_BucketInfo'id x__)
                         (Control.DeepSeq.deepseq
                            (_BucketInfo'sourceType x__)
                            (Control.DeepSeq.deepseq
                               (_BucketInfo'createAt x__)
                               (Control.DeepSeq.deepseq
                                  (_BucketInfo'paymentAddress x__)
                                  (Control.DeepSeq.deepseq
                                     (_BucketInfo'primarySpAddress x__)
                                     (Control.DeepSeq.deepseq
                                        (_BucketInfo'chargedReadQuota x__)
                                        (Control.DeepSeq.deepseq
                                           (_BucketInfo'billingInfo x__)
                                           (Control.DeepSeq.deepseq
                                              (_BucketInfo'bucketStatus x__) ())))))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.description' @:: Lens' BucketMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.externalUrl' @:: Lens' BucketMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.bucketName' @:: Lens' BucketMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.image' @:: Lens' BucketMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.attributes' @:: Lens' BucketMetaData [Trait]@
         * 'Proto.Greenfield.Storage.Types_Fields.vec'attributes' @:: Lens' BucketMetaData (Data.Vector.Vector Trait)@ -}
data BucketMetaData
  = BucketMetaData'_constructor {_BucketMetaData'description :: !Data.Text.Text,
                                 _BucketMetaData'externalUrl :: !Data.Text.Text,
                                 _BucketMetaData'bucketName :: !Data.Text.Text,
                                 _BucketMetaData'image :: !Data.Text.Text,
                                 _BucketMetaData'attributes :: !(Data.Vector.Vector Trait),
                                 _BucketMetaData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BucketMetaData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BucketMetaData "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketMetaData'description
           (\ x__ y__ -> x__ {_BucketMetaData'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketMetaData "externalUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketMetaData'externalUrl
           (\ x__ y__ -> x__ {_BucketMetaData'externalUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketMetaData "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketMetaData'bucketName
           (\ x__ y__ -> x__ {_BucketMetaData'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketMetaData "image" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketMetaData'image
           (\ x__ y__ -> x__ {_BucketMetaData'image = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BucketMetaData "attributes" [Trait] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketMetaData'attributes
           (\ x__ y__ -> x__ {_BucketMetaData'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BucketMetaData "vec'attributes" (Data.Vector.Vector Trait) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BucketMetaData'attributes
           (\ x__ y__ -> x__ {_BucketMetaData'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message BucketMetaData where
  messageName _ = Data.Text.pack "greenfield.storage.BucketMetaData"
  packedMessageDescriptor _
    = "\n\
      \\SOBucketMetaData\DC2 \n\
      \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2!\n\
      \\fexternal_url\CAN\STX \SOH(\tR\vexternalUrl\DC2\US\n\
      \\vbucket_name\CAN\ETX \SOH(\tR\n\
      \bucketName\DC2\DC4\n\
      \\ENQimage\CAN\EOT \SOH(\tR\ENQimage\DC2?\n\
      \\n\
      \attributes\CAN\ENQ \ETX(\v2\EM.greenfield.storage.TraitR\n\
      \attributesB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor BucketMetaData
        externalUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"externalUrl")) ::
              Data.ProtoLens.FieldDescriptor BucketMetaData
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor BucketMetaData
        image__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "image"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"image")) ::
              Data.ProtoLens.FieldDescriptor BucketMetaData
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Trait)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"attributes")) ::
              Data.ProtoLens.FieldDescriptor BucketMetaData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, externalUrl__field_descriptor),
           (Data.ProtoLens.Tag 3, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 4, image__field_descriptor),
           (Data.ProtoLens.Tag 5, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BucketMetaData'_unknownFields
        (\ x__ y__ -> x__ {_BucketMetaData'_unknownFields = y__})
  defMessage
    = BucketMetaData'_constructor
        {_BucketMetaData'description = Data.ProtoLens.fieldDefault,
         _BucketMetaData'externalUrl = Data.ProtoLens.fieldDefault,
         _BucketMetaData'bucketName = Data.ProtoLens.fieldDefault,
         _BucketMetaData'image = Data.ProtoLens.fieldDefault,
         _BucketMetaData'attributes = Data.Vector.Generic.empty,
         _BucketMetaData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BucketMetaData
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Trait
             -> Data.ProtoLens.Encoding.Bytes.Parser BucketMetaData
        loop x mutable'attributes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'attributes)
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
                              (Data.ProtoLens.Field.field @"vec'attributes") frozen'attributes
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'attributes
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
                                       "external_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"externalUrl") y x)
                                  mutable'attributes
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
                                  mutable'attributes
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
                                       "image"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"image") y x)
                                  mutable'attributes
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "attributes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'attributes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'attributes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'attributes)
          "BucketMetaData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"externalUrl") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"image") _x
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
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'attributes") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData BucketMetaData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BucketMetaData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BucketMetaData'description x__)
                (Control.DeepSeq.deepseq
                   (_BucketMetaData'externalUrl x__)
                   (Control.DeepSeq.deepseq
                      (_BucketMetaData'bucketName x__)
                      (Control.DeepSeq.deepseq
                         (_BucketMetaData'image x__)
                         (Control.DeepSeq.deepseq (_BucketMetaData'attributes x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.bucketIds' @:: Lens' DeleteInfo Ids@
         * 'Proto.Greenfield.Storage.Types_Fields.maybe'bucketIds' @:: Lens' DeleteInfo (Prelude.Maybe Ids)@
         * 'Proto.Greenfield.Storage.Types_Fields.objectIds' @:: Lens' DeleteInfo Ids@
         * 'Proto.Greenfield.Storage.Types_Fields.maybe'objectIds' @:: Lens' DeleteInfo (Prelude.Maybe Ids)@
         * 'Proto.Greenfield.Storage.Types_Fields.groupIds' @:: Lens' DeleteInfo Ids@
         * 'Proto.Greenfield.Storage.Types_Fields.maybe'groupIds' @:: Lens' DeleteInfo (Prelude.Maybe Ids)@ -}
data DeleteInfo
  = DeleteInfo'_constructor {_DeleteInfo'bucketIds :: !(Prelude.Maybe Ids),
                             _DeleteInfo'objectIds :: !(Prelude.Maybe Ids),
                             _DeleteInfo'groupIds :: !(Prelude.Maybe Ids),
                             _DeleteInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeleteInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeleteInfo "bucketIds" Ids where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteInfo'bucketIds
           (\ x__ y__ -> x__ {_DeleteInfo'bucketIds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeleteInfo "maybe'bucketIds" (Prelude.Maybe Ids) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteInfo'bucketIds
           (\ x__ y__ -> x__ {_DeleteInfo'bucketIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeleteInfo "objectIds" Ids where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteInfo'objectIds
           (\ x__ y__ -> x__ {_DeleteInfo'objectIds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeleteInfo "maybe'objectIds" (Prelude.Maybe Ids) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteInfo'objectIds
           (\ x__ y__ -> x__ {_DeleteInfo'objectIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeleteInfo "groupIds" Ids where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteInfo'groupIds
           (\ x__ y__ -> x__ {_DeleteInfo'groupIds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeleteInfo "maybe'groupIds" (Prelude.Maybe Ids) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteInfo'groupIds
           (\ x__ y__ -> x__ {_DeleteInfo'groupIds = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeleteInfo where
  messageName _ = Data.Text.pack "greenfield.storage.DeleteInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DeleteInfo\DC26\n\
      \\n\
      \bucket_ids\CAN\SOH \SOH(\v2\ETB.greenfield.storage.IdsR\tbucketIds\DC26\n\
      \\n\
      \object_ids\CAN\STX \SOH(\v2\ETB.greenfield.storage.IdsR\tobjectIds\DC24\n\
      \\tgroup_ids\CAN\ETX \SOH(\v2\ETB.greenfield.storage.IdsR\bgroupIds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bucketIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Ids)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bucketIds")) ::
              Data.ProtoLens.FieldDescriptor DeleteInfo
        objectIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Ids)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'objectIds")) ::
              Data.ProtoLens.FieldDescriptor DeleteInfo
        groupIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Ids)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'groupIds")) ::
              Data.ProtoLens.FieldDescriptor DeleteInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bucketIds__field_descriptor),
           (Data.ProtoLens.Tag 2, objectIds__field_descriptor),
           (Data.ProtoLens.Tag 3, groupIds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeleteInfo'_unknownFields
        (\ x__ y__ -> x__ {_DeleteInfo'_unknownFields = y__})
  defMessage
    = DeleteInfo'_constructor
        {_DeleteInfo'bucketIds = Prelude.Nothing,
         _DeleteInfo'objectIds = Prelude.Nothing,
         _DeleteInfo'groupIds = Prelude.Nothing,
         _DeleteInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeleteInfo -> Data.ProtoLens.Encoding.Bytes.Parser DeleteInfo
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
                                       "bucket_ids"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketIds") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "object_ids"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectIds") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "group_ids"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupIds") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DeleteInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bucketIds") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'objectIds") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'groupIds") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DeleteInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeleteInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeleteInfo'bucketIds x__)
                (Control.DeepSeq.deepseq
                   (_DeleteInfo'objectIds x__)
                   (Control.DeepSeq.deepseq (_DeleteInfo'groupIds x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.owner' @:: Lens' GroupInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.groupName' @:: Lens' GroupInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.sourceType' @:: Lens' GroupInfo Proto.Greenfield.Storage.Common.SourceType@
         * 'Proto.Greenfield.Storage.Types_Fields.id' @:: Lens' GroupInfo Data.Text.Text@ -}
data GroupInfo
  = GroupInfo'_constructor {_GroupInfo'owner :: !Data.Text.Text,
                            _GroupInfo'groupName :: !Data.Text.Text,
                            _GroupInfo'sourceType :: !Proto.Greenfield.Storage.Common.SourceType,
                            _GroupInfo'id :: !Data.Text.Text,
                            _GroupInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GroupInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GroupInfo "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'owner (\ x__ y__ -> x__ {_GroupInfo'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'groupName
           (\ x__ y__ -> x__ {_GroupInfo'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "sourceType" Proto.Greenfield.Storage.Common.SourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'sourceType
           (\ x__ y__ -> x__ {_GroupInfo'sourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'id (\ x__ y__ -> x__ {_GroupInfo'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message GroupInfo where
  messageName _ = Data.Text.pack "greenfield.storage.GroupInfo"
  packedMessageDescriptor _
    = "\n\
      \\tGroupInfo\DC2.\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
      \\n\
      \group_name\CAN\STX \SOH(\tR\tgroupName\DC2?\n\
      \\vsource_type\CAN\ETX \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
      \sourceType\DC2+\n\
      \\STXid\CAN\EOT \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
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
              Data.ProtoLens.FieldDescriptor GroupInfo
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
        sourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.SourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceType")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, groupName__field_descriptor),
           (Data.ProtoLens.Tag 3, sourceType__field_descriptor),
           (Data.ProtoLens.Tag 4, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GroupInfo'_unknownFields
        (\ x__ y__ -> x__ {_GroupInfo'_unknownFields = y__})
  defMessage
    = GroupInfo'_constructor
        {_GroupInfo'owner = Data.ProtoLens.fieldDefault,
         _GroupInfo'groupName = Data.ProtoLens.fieldDefault,
         _GroupInfo'sourceType = Data.ProtoLens.fieldDefault,
         _GroupInfo'id = Data.ProtoLens.fieldDefault,
         _GroupInfo'_unknownFields = []}
  parseMessage
    = let
        loop :: GroupInfo -> Data.ProtoLens.Encoding.Bytes.Parser GroupInfo
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
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceType") y x)
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
          (do loop Data.ProtoLens.defMessage) "GroupInfo"
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"sourceType") _x
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
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
instance Control.DeepSeq.NFData GroupInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GroupInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GroupInfo'owner x__)
                (Control.DeepSeq.deepseq
                   (_GroupInfo'groupName x__)
                   (Control.DeepSeq.deepseq
                      (_GroupInfo'sourceType x__)
                      (Control.DeepSeq.deepseq (_GroupInfo'id x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.description' @:: Lens' GroupMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.externalUrl' @:: Lens' GroupMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.groupName' @:: Lens' GroupMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.image' @:: Lens' GroupMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.attributes' @:: Lens' GroupMetaData [Trait]@
         * 'Proto.Greenfield.Storage.Types_Fields.vec'attributes' @:: Lens' GroupMetaData (Data.Vector.Vector Trait)@ -}
data GroupMetaData
  = GroupMetaData'_constructor {_GroupMetaData'description :: !Data.Text.Text,
                                _GroupMetaData'externalUrl :: !Data.Text.Text,
                                _GroupMetaData'groupName :: !Data.Text.Text,
                                _GroupMetaData'image :: !Data.Text.Text,
                                _GroupMetaData'attributes :: !(Data.Vector.Vector Trait),
                                _GroupMetaData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GroupMetaData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GroupMetaData "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMetaData'description
           (\ x__ y__ -> x__ {_GroupMetaData'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupMetaData "externalUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMetaData'externalUrl
           (\ x__ y__ -> x__ {_GroupMetaData'externalUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupMetaData "groupName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMetaData'groupName
           (\ x__ y__ -> x__ {_GroupMetaData'groupName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupMetaData "image" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMetaData'image
           (\ x__ y__ -> x__ {_GroupMetaData'image = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupMetaData "attributes" [Trait] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMetaData'attributes
           (\ x__ y__ -> x__ {_GroupMetaData'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GroupMetaData "vec'attributes" (Data.Vector.Vector Trait) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMetaData'attributes
           (\ x__ y__ -> x__ {_GroupMetaData'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message GroupMetaData where
  messageName _ = Data.Text.pack "greenfield.storage.GroupMetaData"
  packedMessageDescriptor _
    = "\n\
      \\rGroupMetaData\DC2 \n\
      \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2!\n\
      \\fexternal_url\CAN\STX \SOH(\tR\vexternalUrl\DC2\GS\n\
      \\n\
      \group_name\CAN\ETX \SOH(\tR\tgroupName\DC2\DC4\n\
      \\ENQimage\CAN\EOT \SOH(\tR\ENQimage\DC2?\n\
      \\n\
      \attributes\CAN\ENQ \ETX(\v2\EM.greenfield.storage.TraitR\n\
      \attributesB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor GroupMetaData
        externalUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"externalUrl")) ::
              Data.ProtoLens.FieldDescriptor GroupMetaData
        groupName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupName")) ::
              Data.ProtoLens.FieldDescriptor GroupMetaData
        image__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "image"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"image")) ::
              Data.ProtoLens.FieldDescriptor GroupMetaData
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Trait)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"attributes")) ::
              Data.ProtoLens.FieldDescriptor GroupMetaData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, externalUrl__field_descriptor),
           (Data.ProtoLens.Tag 3, groupName__field_descriptor),
           (Data.ProtoLens.Tag 4, image__field_descriptor),
           (Data.ProtoLens.Tag 5, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GroupMetaData'_unknownFields
        (\ x__ y__ -> x__ {_GroupMetaData'_unknownFields = y__})
  defMessage
    = GroupMetaData'_constructor
        {_GroupMetaData'description = Data.ProtoLens.fieldDefault,
         _GroupMetaData'externalUrl = Data.ProtoLens.fieldDefault,
         _GroupMetaData'groupName = Data.ProtoLens.fieldDefault,
         _GroupMetaData'image = Data.ProtoLens.fieldDefault,
         _GroupMetaData'attributes = Data.Vector.Generic.empty,
         _GroupMetaData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GroupMetaData
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Trait
             -> Data.ProtoLens.Encoding.Bytes.Parser GroupMetaData
        loop x mutable'attributes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'attributes)
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
                              (Data.ProtoLens.Field.field @"vec'attributes") frozen'attributes
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'attributes
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
                                       "external_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"externalUrl") y x)
                                  mutable'attributes
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
                                  mutable'attributes
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
                                       "image"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"image") y x)
                                  mutable'attributes
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "attributes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'attributes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'attributes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'attributes)
          "GroupMetaData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"externalUrl") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"image") _x
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
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'attributes") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData GroupMetaData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GroupMetaData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GroupMetaData'description x__)
                (Control.DeepSeq.deepseq
                   (_GroupMetaData'externalUrl x__)
                   (Control.DeepSeq.deepseq
                      (_GroupMetaData'groupName x__)
                      (Control.DeepSeq.deepseq
                         (_GroupMetaData'image x__)
                         (Control.DeepSeq.deepseq (_GroupMetaData'attributes x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.id' @:: Lens' Ids [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Types_Fields.vec'id' @:: Lens' Ids (Data.Vector.Vector Data.Text.Text)@ -}
data Ids
  = Ids'_constructor {_Ids'id :: !(Data.Vector.Vector Data.Text.Text),
                      _Ids'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Ids where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Ids "id" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Ids'id (\ x__ y__ -> x__ {_Ids'id = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Ids "vec'id" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Ids'id (\ x__ y__ -> x__ {_Ids'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message Ids where
  messageName _ = Data.Text.pack "greenfield.storage.Ids"
  packedMessageDescriptor _
    = "\n\
      \\ETXIds\DC2+\n\
      \\STXid\CAN\SOH \ETX(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Ids
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Ids'_unknownFields (\ x__ y__ -> x__ {_Ids'_unknownFields = y__})
  defMessage
    = Ids'_constructor
        {_Ids'id = Data.Vector.Generic.empty, _Ids'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Ids
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Ids
        loop x mutable'id
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'id <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'id)
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
                              (Data.ProtoLens.Field.field @"vec'id") frozen'id x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "id"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'id y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'id
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'id <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'id)
          "Ids"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'id") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Ids where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Ids'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Ids'id x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.owner' @:: Lens' ObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.bucketName' @:: Lens' ObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.objectName' @:: Lens' ObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.id' @:: Lens' ObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.payloadSize' @:: Lens' ObjectInfo Data.Word.Word64@
         * 'Proto.Greenfield.Storage.Types_Fields.visibility' @:: Lens' ObjectInfo Proto.Greenfield.Storage.Common.VisibilityType@
         * 'Proto.Greenfield.Storage.Types_Fields.contentType' @:: Lens' ObjectInfo Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.createAt' @:: Lens' ObjectInfo Data.Int.Int64@
         * 'Proto.Greenfield.Storage.Types_Fields.objectStatus' @:: Lens' ObjectInfo Proto.Greenfield.Storage.Common.ObjectStatus@
         * 'Proto.Greenfield.Storage.Types_Fields.redundancyType' @:: Lens' ObjectInfo Proto.Greenfield.Storage.Common.RedundancyType@
         * 'Proto.Greenfield.Storage.Types_Fields.sourceType' @:: Lens' ObjectInfo Proto.Greenfield.Storage.Common.SourceType@
         * 'Proto.Greenfield.Storage.Types_Fields.checksums' @:: Lens' ObjectInfo [Data.ByteString.ByteString]@
         * 'Proto.Greenfield.Storage.Types_Fields.vec'checksums' @:: Lens' ObjectInfo (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Greenfield.Storage.Types_Fields.secondarySpAddresses' @:: Lens' ObjectInfo [Data.Text.Text]@
         * 'Proto.Greenfield.Storage.Types_Fields.vec'secondarySpAddresses' @:: Lens' ObjectInfo (Data.Vector.Vector Data.Text.Text)@ -}
data ObjectInfo
  = ObjectInfo'_constructor {_ObjectInfo'owner :: !Data.Text.Text,
                             _ObjectInfo'bucketName :: !Data.Text.Text,
                             _ObjectInfo'objectName :: !Data.Text.Text,
                             _ObjectInfo'id :: !Data.Text.Text,
                             _ObjectInfo'payloadSize :: !Data.Word.Word64,
                             _ObjectInfo'visibility :: !Proto.Greenfield.Storage.Common.VisibilityType,
                             _ObjectInfo'contentType :: !Data.Text.Text,
                             _ObjectInfo'createAt :: !Data.Int.Int64,
                             _ObjectInfo'objectStatus :: !Proto.Greenfield.Storage.Common.ObjectStatus,
                             _ObjectInfo'redundancyType :: !Proto.Greenfield.Storage.Common.RedundancyType,
                             _ObjectInfo'sourceType :: !Proto.Greenfield.Storage.Common.SourceType,
                             _ObjectInfo'checksums :: !(Data.Vector.Vector Data.ByteString.ByteString),
                             _ObjectInfo'secondarySpAddresses :: !(Data.Vector.Vector Data.Text.Text),
                             _ObjectInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ObjectInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ObjectInfo "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'owner (\ x__ y__ -> x__ {_ObjectInfo'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'bucketName
           (\ x__ y__ -> x__ {_ObjectInfo'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'objectName
           (\ x__ y__ -> x__ {_ObjectInfo'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'id (\ x__ y__ -> x__ {_ObjectInfo'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "payloadSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'payloadSize
           (\ x__ y__ -> x__ {_ObjectInfo'payloadSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "visibility" Proto.Greenfield.Storage.Common.VisibilityType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'visibility
           (\ x__ y__ -> x__ {_ObjectInfo'visibility = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "contentType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'contentType
           (\ x__ y__ -> x__ {_ObjectInfo'contentType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "createAt" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'createAt
           (\ x__ y__ -> x__ {_ObjectInfo'createAt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "objectStatus" Proto.Greenfield.Storage.Common.ObjectStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'objectStatus
           (\ x__ y__ -> x__ {_ObjectInfo'objectStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "redundancyType" Proto.Greenfield.Storage.Common.RedundancyType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'redundancyType
           (\ x__ y__ -> x__ {_ObjectInfo'redundancyType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "sourceType" Proto.Greenfield.Storage.Common.SourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'sourceType
           (\ x__ y__ -> x__ {_ObjectInfo'sourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "checksums" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'checksums
           (\ x__ y__ -> x__ {_ObjectInfo'checksums = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ObjectInfo "vec'checksums" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'checksums
           (\ x__ y__ -> x__ {_ObjectInfo'checksums = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectInfo "secondarySpAddresses" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'secondarySpAddresses
           (\ x__ y__ -> x__ {_ObjectInfo'secondarySpAddresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ObjectInfo "vec'secondarySpAddresses" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectInfo'secondarySpAddresses
           (\ x__ y__ -> x__ {_ObjectInfo'secondarySpAddresses = y__}))
        Prelude.id
instance Data.ProtoLens.Message ObjectInfo where
  messageName _ = Data.Text.pack "greenfield.storage.ObjectInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ObjectInfo\DC2.\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\STX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC2+\n\
      \\STXid\CAN\EOT \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2!\n\
      \\fpayload_size\CAN\ENQ \SOH(\EOTR\vpayloadSize\DC2B\n\
      \\n\
      \visibility\CAN\ACK \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
      \visibility\DC2!\n\
      \\fcontent_type\CAN\a \SOH(\tR\vcontentType\DC2\ESC\n\
      \\tcreate_at\CAN\b \SOH(\ETXR\bcreateAt\DC2E\n\
      \\robject_status\CAN\t \SOH(\SO2 .greenfield.storage.ObjectStatusR\fobjectStatus\DC2K\n\
      \\SIredundancy_type\CAN\n\
      \ \SOH(\SO2\".greenfield.storage.RedundancyTypeR\SOredundancyType\DC2?\n\
      \\vsource_type\CAN\v \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
      \sourceType\DC2/\n\
      \\tchecksums\CAN\f \ETX(\fR\tchecksumsB\DC1\242\222\US\rtraits:\"omit\"\DC2N\n\
      \\SYNsecondary_sp_addresses\CAN\r \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor ObjectInfo
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        payloadSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"payloadSize")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        visibility__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "visibility"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.VisibilityType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"visibility")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        contentType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"contentType")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        createAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_at"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"createAt")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        objectStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.ObjectStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectStatus")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        redundancyType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redundancy_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.RedundancyType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"redundancyType")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        sourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Storage.Common.SourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sourceType")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        checksums__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "checksums"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"checksums")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
        secondarySpAddresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_addresses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"secondarySpAddresses")) ::
              Data.ProtoLens.FieldDescriptor ObjectInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, id__field_descriptor),
           (Data.ProtoLens.Tag 5, payloadSize__field_descriptor),
           (Data.ProtoLens.Tag 6, visibility__field_descriptor),
           (Data.ProtoLens.Tag 7, contentType__field_descriptor),
           (Data.ProtoLens.Tag 8, createAt__field_descriptor),
           (Data.ProtoLens.Tag 9, objectStatus__field_descriptor),
           (Data.ProtoLens.Tag 10, redundancyType__field_descriptor),
           (Data.ProtoLens.Tag 11, sourceType__field_descriptor),
           (Data.ProtoLens.Tag 12, checksums__field_descriptor),
           (Data.ProtoLens.Tag 13, secondarySpAddresses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ObjectInfo'_unknownFields
        (\ x__ y__ -> x__ {_ObjectInfo'_unknownFields = y__})
  defMessage
    = ObjectInfo'_constructor
        {_ObjectInfo'owner = Data.ProtoLens.fieldDefault,
         _ObjectInfo'bucketName = Data.ProtoLens.fieldDefault,
         _ObjectInfo'objectName = Data.ProtoLens.fieldDefault,
         _ObjectInfo'id = Data.ProtoLens.fieldDefault,
         _ObjectInfo'payloadSize = Data.ProtoLens.fieldDefault,
         _ObjectInfo'visibility = Data.ProtoLens.fieldDefault,
         _ObjectInfo'contentType = Data.ProtoLens.fieldDefault,
         _ObjectInfo'createAt = Data.ProtoLens.fieldDefault,
         _ObjectInfo'objectStatus = Data.ProtoLens.fieldDefault,
         _ObjectInfo'redundancyType = Data.ProtoLens.fieldDefault,
         _ObjectInfo'sourceType = Data.ProtoLens.fieldDefault,
         _ObjectInfo'checksums = Data.Vector.Generic.empty,
         _ObjectInfo'secondarySpAddresses = Data.Vector.Generic.empty,
         _ObjectInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ObjectInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser ObjectInfo
        loop x mutable'checksums mutable'secondarySpAddresses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'checksums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'checksums)
                      frozen'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'checksums") frozen'checksums
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'secondarySpAddresses")
                                 frozen'secondarySpAddresses x)))
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
                                  mutable'checksums mutable'secondarySpAddresses
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
                                  mutable'checksums mutable'secondarySpAddresses
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
                                  mutable'checksums mutable'secondarySpAddresses
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
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'checksums mutable'secondarySpAddresses
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "payload_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payloadSize") y x)
                                  mutable'checksums mutable'secondarySpAddresses
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "visibility"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"visibility") y x)
                                  mutable'checksums mutable'secondarySpAddresses
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
                                       "content_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contentType") y x)
                                  mutable'checksums mutable'secondarySpAddresses
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "create_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createAt") y x)
                                  mutable'checksums mutable'secondarySpAddresses
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "object_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"objectStatus") y x)
                                  mutable'checksums mutable'secondarySpAddresses
                        80
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
                                  mutable'checksums mutable'secondarySpAddresses
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceType") y x)
                                  mutable'checksums mutable'secondarySpAddresses
                        98
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "checksums"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'checksums y)
                                loop x v mutable'secondarySpAddresses
                        106
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
                                loop x mutable'checksums v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'checksums mutable'secondarySpAddresses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'checksums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'secondarySpAddresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'checksums
                mutable'secondarySpAddresses)
          "ObjectInfo"
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
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"payloadSize") _x
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
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"visibility") _x
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
                                        (Data.ProtoLens.Field.field @"contentType") _x
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
                                           (Data.ProtoLens.Field.field @"createAt") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"objectStatus") _x
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
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"redundancyType") _x
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
                                                    (Data.ProtoLens.Field.field @"sourceType") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
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
                                                            98)
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
                                                    (Data.ProtoLens.Field.field @"vec'checksums")
                                                    _x))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               106)
                                                            ((Prelude..)
                                                               (\ bs
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (Prelude.fromIntegral
                                                                             (Data.ByteString.length
                                                                                bs)))
                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                          bs))
                                                               Data.Text.Encoding.encodeUtf8 _v))
                                                    (Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"vec'secondarySpAddresses")
                                                       _x))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData ObjectInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ObjectInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ObjectInfo'owner x__)
                (Control.DeepSeq.deepseq
                   (_ObjectInfo'bucketName x__)
                   (Control.DeepSeq.deepseq
                      (_ObjectInfo'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_ObjectInfo'id x__)
                         (Control.DeepSeq.deepseq
                            (_ObjectInfo'payloadSize x__)
                            (Control.DeepSeq.deepseq
                               (_ObjectInfo'visibility x__)
                               (Control.DeepSeq.deepseq
                                  (_ObjectInfo'contentType x__)
                                  (Control.DeepSeq.deepseq
                                     (_ObjectInfo'createAt x__)
                                     (Control.DeepSeq.deepseq
                                        (_ObjectInfo'objectStatus x__)
                                        (Control.DeepSeq.deepseq
                                           (_ObjectInfo'redundancyType x__)
                                           (Control.DeepSeq.deepseq
                                              (_ObjectInfo'sourceType x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ObjectInfo'checksums x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ObjectInfo'secondarySpAddresses x__)
                                                    ())))))))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.description' @:: Lens' ObjectMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.externalUrl' @:: Lens' ObjectMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.objectName' @:: Lens' ObjectMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.image' @:: Lens' ObjectMetaData Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.attributes' @:: Lens' ObjectMetaData [Trait]@
         * 'Proto.Greenfield.Storage.Types_Fields.vec'attributes' @:: Lens' ObjectMetaData (Data.Vector.Vector Trait)@ -}
data ObjectMetaData
  = ObjectMetaData'_constructor {_ObjectMetaData'description :: !Data.Text.Text,
                                 _ObjectMetaData'externalUrl :: !Data.Text.Text,
                                 _ObjectMetaData'objectName :: !Data.Text.Text,
                                 _ObjectMetaData'image :: !Data.Text.Text,
                                 _ObjectMetaData'attributes :: !(Data.Vector.Vector Trait),
                                 _ObjectMetaData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ObjectMetaData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ObjectMetaData "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectMetaData'description
           (\ x__ y__ -> x__ {_ObjectMetaData'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectMetaData "externalUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectMetaData'externalUrl
           (\ x__ y__ -> x__ {_ObjectMetaData'externalUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectMetaData "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectMetaData'objectName
           (\ x__ y__ -> x__ {_ObjectMetaData'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectMetaData "image" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectMetaData'image
           (\ x__ y__ -> x__ {_ObjectMetaData'image = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ObjectMetaData "attributes" [Trait] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectMetaData'attributes
           (\ x__ y__ -> x__ {_ObjectMetaData'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ObjectMetaData "vec'attributes" (Data.Vector.Vector Trait) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ObjectMetaData'attributes
           (\ x__ y__ -> x__ {_ObjectMetaData'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message ObjectMetaData where
  messageName _ = Data.Text.pack "greenfield.storage.ObjectMetaData"
  packedMessageDescriptor _
    = "\n\
      \\SOObjectMetaData\DC2 \n\
      \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2!\n\
      \\fexternal_url\CAN\STX \SOH(\tR\vexternalUrl\DC2\US\n\
      \\vobject_name\CAN\ETX \SOH(\tR\n\
      \objectName\DC2\DC4\n\
      \\ENQimage\CAN\EOT \SOH(\tR\ENQimage\DC2?\n\
      \\n\
      \attributes\CAN\ENQ \ETX(\v2\EM.greenfield.storage.TraitR\n\
      \attributesB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor ObjectMetaData
        externalUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "external_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"externalUrl")) ::
              Data.ProtoLens.FieldDescriptor ObjectMetaData
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor ObjectMetaData
        image__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "image"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"image")) ::
              Data.ProtoLens.FieldDescriptor ObjectMetaData
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Trait)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"attributes")) ::
              Data.ProtoLens.FieldDescriptor ObjectMetaData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, externalUrl__field_descriptor),
           (Data.ProtoLens.Tag 3, objectName__field_descriptor),
           (Data.ProtoLens.Tag 4, image__field_descriptor),
           (Data.ProtoLens.Tag 5, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ObjectMetaData'_unknownFields
        (\ x__ y__ -> x__ {_ObjectMetaData'_unknownFields = y__})
  defMessage
    = ObjectMetaData'_constructor
        {_ObjectMetaData'description = Data.ProtoLens.fieldDefault,
         _ObjectMetaData'externalUrl = Data.ProtoLens.fieldDefault,
         _ObjectMetaData'objectName = Data.ProtoLens.fieldDefault,
         _ObjectMetaData'image = Data.ProtoLens.fieldDefault,
         _ObjectMetaData'attributes = Data.Vector.Generic.empty,
         _ObjectMetaData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ObjectMetaData
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Trait
             -> Data.ProtoLens.Encoding.Bytes.Parser ObjectMetaData
        loop x mutable'attributes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'attributes)
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
                              (Data.ProtoLens.Field.field @"vec'attributes") frozen'attributes
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'attributes
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
                                       "external_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"externalUrl") y x)
                                  mutable'attributes
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
                                  mutable'attributes
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
                                       "image"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"image") y x)
                                  mutable'attributes
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "attributes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'attributes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'attributes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'attributes)
          "ObjectMetaData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"externalUrl") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"image") _x
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
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'attributes") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ObjectMetaData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ObjectMetaData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ObjectMetaData'description x__)
                (Control.DeepSeq.deepseq
                   (_ObjectMetaData'externalUrl x__)
                   (Control.DeepSeq.deepseq
                      (_ObjectMetaData'objectName x__)
                      (Control.DeepSeq.deepseq
                         (_ObjectMetaData'image x__)
                         (Control.DeepSeq.deepseq (_ObjectMetaData'attributes x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.spAddress' @:: Lens' SecondarySpObjectsSize Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.totalChargeSize' @:: Lens' SecondarySpObjectsSize Data.Word.Word64@ -}
data SecondarySpObjectsSize
  = SecondarySpObjectsSize'_constructor {_SecondarySpObjectsSize'spAddress :: !Data.Text.Text,
                                         _SecondarySpObjectsSize'totalChargeSize :: !Data.Word.Word64,
                                         _SecondarySpObjectsSize'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SecondarySpObjectsSize where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SecondarySpObjectsSize "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondarySpObjectsSize'spAddress
           (\ x__ y__ -> x__ {_SecondarySpObjectsSize'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecondarySpObjectsSize "totalChargeSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondarySpObjectsSize'totalChargeSize
           (\ x__ y__ -> x__ {_SecondarySpObjectsSize'totalChargeSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message SecondarySpObjectsSize where
  messageName _
    = Data.Text.pack "greenfield.storage.SecondarySpObjectsSize"
  packedMessageDescriptor _
    = "\n\
      \\SYNSecondarySpObjectsSize\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2*\n\
      \\DC1total_charge_size\CAN\STX \SOH(\EOTR\SItotalChargeSize"
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
              Data.ProtoLens.FieldDescriptor SecondarySpObjectsSize
        totalChargeSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_charge_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalChargeSize")) ::
              Data.ProtoLens.FieldDescriptor SecondarySpObjectsSize
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, totalChargeSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SecondarySpObjectsSize'_unknownFields
        (\ x__ y__ -> x__ {_SecondarySpObjectsSize'_unknownFields = y__})
  defMessage
    = SecondarySpObjectsSize'_constructor
        {_SecondarySpObjectsSize'spAddress = Data.ProtoLens.fieldDefault,
         _SecondarySpObjectsSize'totalChargeSize = Data.ProtoLens.fieldDefault,
         _SecondarySpObjectsSize'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SecondarySpObjectsSize
          -> Data.ProtoLens.Encoding.Bytes.Parser SecondarySpObjectsSize
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_charge_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalChargeSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SecondarySpObjectsSize"
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"totalChargeSize") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SecondarySpObjectsSize where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SecondarySpObjectsSize'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SecondarySpObjectsSize'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_SecondarySpObjectsSize'totalChargeSize x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Storage.Types_Fields.traitType' @:: Lens' Trait Data.Text.Text@
         * 'Proto.Greenfield.Storage.Types_Fields.value' @:: Lens' Trait Data.Text.Text@ -}
data Trait
  = Trait'_constructor {_Trait'traitType :: !Data.Text.Text,
                        _Trait'value :: !Data.Text.Text,
                        _Trait'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Trait where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Trait "traitType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trait'traitType (\ x__ y__ -> x__ {_Trait'traitType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Trait "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trait'value (\ x__ y__ -> x__ {_Trait'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Trait where
  messageName _ = Data.Text.pack "greenfield.storage.Trait"
  packedMessageDescriptor _
    = "\n\
      \\ENQTrait\DC2\GS\n\
      \\n\
      \trait_type\CAN\SOH \SOH(\tR\ttraitType\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        traitType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trait_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"traitType")) ::
              Data.ProtoLens.FieldDescriptor Trait
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Trait
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, traitType__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Trait'_unknownFields
        (\ x__ y__ -> x__ {_Trait'_unknownFields = y__})
  defMessage
    = Trait'_constructor
        {_Trait'traitType = Data.ProtoLens.fieldDefault,
         _Trait'value = Data.ProtoLens.fieldDefault,
         _Trait'_unknownFields = []}
  parseMessage
    = let
        loop :: Trait -> Data.ProtoLens.Encoding.Bytes.Parser Trait
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
                                       "trait_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traitType") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Trait"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"traitType") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData Trait where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Trait'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Trait'traitType x__)
                (Control.DeepSeq.deepseq (_Trait'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSgreenfield/storage/types.proto\DC2\DC2greenfield.storage\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\GSgreenfield/payment/base.proto\SUB\USgreenfield/storage/common.proto\"\246\EOT\n\
    \\n\
    \BucketInfo\DC2.\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2B\n\
    \\n\
    \visibility\CAN\ETX \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\DC2+\n\
    \\STXid\CAN\EOT \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2?\n\
    \\vsource_type\CAN\ENQ \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
    \sourceType\DC2\ESC\n\
    \\tcreate_at\CAN\ACK \SOH(\ETXR\bcreateAt\DC2A\n\
    \\SIpayment_address\CAN\a \SOH(\tR\SOpaymentAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\DC2primary_sp_address\CAN\b \SOH(\tR\DLEprimarySpAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
    \\DC2charged_read_quota\CAN\t \SOH(\EOTR\DLEchargedReadQuota\DC2H\n\
    \\fbilling_info\CAN\n\
    \ \SOH(\v2\US.greenfield.storage.BillingInfoR\vbillingInfoB\EOT\200\222\US\NUL\DC2E\n\
    \\rbucket_status\CAN\v \SOH(\SO2 .greenfield.storage.BucketStatusR\fbucketStatus\"\197\SOH\n\
    \\vBillingInfo\DC2\GS\n\
    \\n\
    \price_time\CAN\SOH \SOH(\ETXR\tpriceTime\DC2*\n\
    \\DC1total_charge_size\CAN\STX \SOH(\EOTR\SItotalChargeSize\DC2k\n\
    \\EMsecondary_sp_objects_size\CAN\ETX \ETX(\v2*.greenfield.storage.SecondarySpObjectsSizeR\SYNsecondarySpObjectsSizeB\EOT\200\222\US\NUL\"}\n\
    \\SYNSecondarySpObjectsSize\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2*\n\
    \\DC1total_charge_size\CAN\STX \SOH(\EOTR\SItotalChargeSize\"\168\ENQ\n\
    \\n\
    \ObjectInfo\DC2.\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\STX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC2+\n\
    \\STXid\CAN\EOT \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2!\n\
    \\fpayload_size\CAN\ENQ \SOH(\EOTR\vpayloadSize\DC2B\n\
    \\n\
    \visibility\CAN\ACK \SOH(\SO2\".greenfield.storage.VisibilityTypeR\n\
    \visibility\DC2!\n\
    \\fcontent_type\CAN\a \SOH(\tR\vcontentType\DC2\ESC\n\
    \\tcreate_at\CAN\b \SOH(\ETXR\bcreateAt\DC2E\n\
    \\robject_status\CAN\t \SOH(\SO2 .greenfield.storage.ObjectStatusR\fobjectStatus\DC2K\n\
    \\SIredundancy_type\CAN\n\
    \ \SOH(\SO2\".greenfield.storage.RedundancyTypeR\SOredundancyType\DC2?\n\
    \\vsource_type\CAN\v \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
    \sourceType\DC2/\n\
    \\tchecksums\CAN\f \ETX(\fR\tchecksumsB\DC1\242\222\US\rtraits:\"omit\"\DC2N\n\
    \\SYNsecondary_sp_addresses\CAN\r \ETX(\tR\DC4secondarySpAddressesB\CAN\210\180-\DC4cosmos.AddressString\"\200\SOH\n\
    \\tGroupInfo\DC2.\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\GS\n\
    \\n\
    \group_name\CAN\STX \SOH(\tR\tgroupName\DC2?\n\
    \\vsource_type\CAN\ETX \SOH(\SO2\RS.greenfield.storage.SourceTypeR\n\
    \sourceType\DC2+\n\
    \\STXid\CAN\EOT \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"<\n\
    \\ENQTrait\DC2\GS\n\
    \\n\
    \trait_type\CAN\SOH \SOH(\tR\ttraitType\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue\"\205\SOH\n\
    \\SOBucketMetaData\DC2 \n\
    \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2!\n\
    \\fexternal_url\CAN\STX \SOH(\tR\vexternalUrl\DC2\US\n\
    \\vbucket_name\CAN\ETX \SOH(\tR\n\
    \bucketName\DC2\DC4\n\
    \\ENQimage\CAN\EOT \SOH(\tR\ENQimage\DC2?\n\
    \\n\
    \attributes\CAN\ENQ \ETX(\v2\EM.greenfield.storage.TraitR\n\
    \attributesB\EOT\200\222\US\NUL\"\205\SOH\n\
    \\SOObjectMetaData\DC2 \n\
    \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2!\n\
    \\fexternal_url\CAN\STX \SOH(\tR\vexternalUrl\DC2\US\n\
    \\vobject_name\CAN\ETX \SOH(\tR\n\
    \objectName\DC2\DC4\n\
    \\ENQimage\CAN\EOT \SOH(\tR\ENQimage\DC2?\n\
    \\n\
    \attributes\CAN\ENQ \ETX(\v2\EM.greenfield.storage.TraitR\n\
    \attributesB\EOT\200\222\US\NUL\"\202\SOH\n\
    \\rGroupMetaData\DC2 \n\
    \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2!\n\
    \\fexternal_url\CAN\STX \SOH(\tR\vexternalUrl\DC2\GS\n\
    \\n\
    \group_name\CAN\ETX \SOH(\tR\tgroupName\DC2\DC4\n\
    \\ENQimage\CAN\EOT \SOH(\tR\ENQimage\DC2?\n\
    \\n\
    \attributes\CAN\ENQ \ETX(\v2\EM.greenfield.storage.TraitR\n\
    \attributesB\EOT\200\222\US\NUL\"2\n\
    \\ETXIds\DC2+\n\
    \\STXid\CAN\SOH \ETX(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\178\SOH\n\
    \\n\
    \DeleteInfo\DC26\n\
    \\n\
    \bucket_ids\CAN\SOH \SOH(\v2\ETB.greenfield.storage.IdsR\tbucketIds\DC26\n\
    \\n\
    \object_ids\CAN\STX \SOH(\v2\ETB.greenfield.storage.IdsR\tobjectIds\DC24\n\
    \\tgroup_ids\CAN\ETX \SOH(\v2\ETB.greenfield.storage.IdsR\bgroupIdsB1Z/github.com/bnb-chain/greenfield/x/storage/typesJ\237\&6\n\
    \\a\DC2\ENQ\NUL\NUL\165\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULF\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL(\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC2\n\
    \[\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STXD\SUBN owner is the account address of bucket creator, it is also the bucket owner.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\f\DC3C\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\f\DC4B\n\
    \>\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX\EM\SUB1 bucket_name is a globally unique name of bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\ETB\CAN\n\
    \\134\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\STX \SUBy visibility defines the highest permissions for bucket. When a bucket is public, everyone can get storage objects in it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DLE\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE\RS\US\n\
    \;\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\DC2\STX\SYN\EOT\SUB- id is the unique identification for bucket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC2\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC2\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT\DC2\DLE\SYN\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\DC3\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\235\251\ETX\DC2\ETX\DC4\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\NAK\EOT \n\
    \i\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\CAN\STX\GS\SUB\\ source_type defines which chain the user should send the bucket management transactions to\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\CAN\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\CAN\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\CAN\ESC\FS\n\
    \L\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\SUB\STX\SYN\SUB? create_at define the block timestamp when the bucket created.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\SUB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\SUB\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\SUB\DC4\NAK\n\
    \D\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\FS\STXN\SUB7 payment_address is the address of the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\FS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\FS\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\FS\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETX\FS\GSM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\202\214\ENQ\DC2\ETX\FS\RSL\n\
    \\174\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\US\STXQ\SUB\160\SOH primary_sp_address is the address of the primary sp. Objects belongs to this bucket will never\n\
    \ leave this SP, unless you explicitly shift them to another SP.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\US\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\US\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\b\DC2\ETX\US P\n\
    \\SI\n\
    \\b\EOT\NUL\STX\a\b\202\214\ENQ\DC2\ETX\US!O\n\
    \\217\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX#\STX \SUB\203\SOH charged_read_quota defines the traffic quota for read in bytes per month.\n\
    \ The available read data for each user is the sum of the free read data provided by SP and\n\
    \ the ChargeReadQuota specified here.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX#\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX#\RS\US\n\
    \)\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX%\STX?\SUB\FS billing info of the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETX%\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX%\SO\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX%\GS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\b\DC2\ETX% >\n\
    \\SI\n\
    \\b\EOT\NUL\STX\t\b\233\251\ETX\DC2\ETX%!=\n\
    \=\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX'\STX\"\SUB0 bucket_status define the status of the bucket.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETX'\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX'\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX'\US!\n\
    \B\n\
    \\STX\EOT\SOH\DC2\EOT+\NUL2\SOH\SUB6 BillingInfo is the billing information of the bucket\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX+\b\DC3\n\
    \]\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX-\STX\ETB\SUBP the time of the payment price, used to calculate the charge rate of the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX-\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX-\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX-\NAK\SYN\n\
    \k\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX/\STX\US\SUB^ the total size of the objects in the bucket, used to calculate the charge rate of the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX/\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX/\GS\RS\n\
    \3\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX1\STX_\SUB& secondary sp objects size statistics\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX1\v!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX1\";\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX1>?\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX1@^\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX1A]\n\
    \2\n\
    \\STX\EOT\STX\DC2\EOT5\NUL:\SOH\SUB& secondary sp objects size statistics\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX5\b\RS\n\
    \9\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX7\STXI\SUB, address is the address of the secondary sp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX7\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX7\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX7\CANH\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX7\EMG\n\
    \H\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX9\STX\US\SUB; size is the total size of the objects in the secondary sp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX9\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX9\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT<\NUL[\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX<\b\DC2\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX=\STXD\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX=\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX=\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX=\DC3C\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETX=\DC4B\n\
    \4\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX?\STX\EM\SUB' bucket_name is the name of the bucket\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX?\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX?\ETB\CAN\n\
    \0\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXA\STX\EM\SUB# object_name is the name of object\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXA\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXA\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXA\ETB\CAN\n\
    \5\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOTC\STXG\EOT\SUB' id is the unique identifier of object\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXC\t\v\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXC\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\b\DC2\EOTC\DLEG\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ETX\b\202\214\ENQ\DC2\ETXD\EOT)\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ETX\b\235\251\ETX\DC2\ETXE\EOT#\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ETX\b\233\251\ETX\DC2\ETXF\EOT \n\
    \B\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXI\STX\SUB\SUB5 payloadSize is the total size of the object payload\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXI\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXI\CAN\EM\n\
    \w\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXK\STX \SUBj visibility defines the highest permissions for object. When an object is public, everyone can access it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETXK\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXK\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXK\RS\US\n\
    \a\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETXM\STX\SUB\SUBT content_type define the format of the object which should be a standard MIME type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETXM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXM\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXM\CAN\EM\n\
    \N\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETXO\STX\SYN\SUBA create_at define the block timestamp when the object is created\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\ETXO\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETXO\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETXO\DC4\NAK\n\
    \D\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETXQ\STX!\SUB7 object_status define the upload status of the object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\ETXQ\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETXQ\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETXQ\US \n\
    \f\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETXS\STX&\SUBY redundancy_type define the type of the redundancy which can be multi-replication or EC.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ACK\DC2\ETXS\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETXS\DC1 \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETXS#%\n\
    \;\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETXU\STX\RS\SUB. source_type define the source of the object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\ETXU\STX\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETXU\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETXU\ESC\GS\n\
    \\146\SOH\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETXX\STXK\SUB\132\SOH checksums define the root hash of the pieces which stored in a SP.\n\
    \ add omit tag to omit the field when converting to NFT metadata\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ENQ\DC2\ETXX\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETXX\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETXX\GS\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\b\DC2\ETXX J\n\
    \\SI\n\
    \\b\EOT\ETX\STX\v\b\238\251\ETX\DC2\ETXX!I\n\
    \K\n\
    \\EOT\EOT\ETX\STX\f\DC2\ETXZ\STX_\SUB> secondary_sp_addresses define the addresses of secondary_sps\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ENQ\DC2\ETXZ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\ETXZ\DC2(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\ETXZ+-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\b\DC2\ETXZ.^\n\
    \\SI\n\
    \\b\EOT\ETX\STX\f\b\202\214\ENQ\DC2\ETXZ/]\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT]\NULj\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX]\b\DC1\n\
    \S\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX_\STXD\SUBF owner is the owner of the group. It can not changed once it created.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX_\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX_\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX_\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETX_\DC3C\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETX_\DC4B\n\
    \P\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXa\STX\CAN\SUBC group_name is the name of group which is unique under an account.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXa\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXa\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXa\SYN\ETB\n\
    \\SUB\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXc\STX\GS\SUB\r source_type\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXc\STX\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXc\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXc\ESC\FS\n\
    \4\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOTe\STXi\EOT\SUB& id is the unique identifier of group\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETXe\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXe\t\v\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXe\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\b\DC2\EOTe\DLEi\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ETX\b\202\214\ENQ\DC2\ETXf\EOT)\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ETX\b\235\251\ETX\DC2\ETXg\EOT#\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ETX\b\233\251\ETX\DC2\ETXh\EOT \n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOTl\NULo\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXl\b\r\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXm\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXm\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXm\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXm\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXn\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXn\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXn\DC1\DC2\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTq\NUL|\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXq\b\SYN\n\
    \\SUB\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXs\STX\EM\SUB\r description\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXs\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXs\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXs\ETB\CAN\n\
    \>\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXu\STX\SUB\SUB1 externalUrl a link to external site to view NFT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXu\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXu\CAN\EM\n\
    \!\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXw\STX\EM\SUB\DC4 name of bucket NFT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXw\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXw\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXw\ETB\CAN\n\
    \)\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXy\STX\DC3\SUB\FS image is the link to image\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETXy\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXy\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXy\DC1\DC2\n\
    \\EM\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETX{\STX?\SUB\f attributes\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\EOT\DC2\ETX{\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ACK\DC2\ETX{\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETX{\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETX{\RS\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\b\DC2\ETX{ >\n\
    \\SI\n\
    \\b\EOT\ACK\STX\EOT\b\233\251\ETX\DC2\ETX{!=\n\
    \\v\n\
    \\STX\EOT\a\DC2\ENQ~\NUL\137\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX~\b\SYN\n\
    \\ESC\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\128\SOH\STX\EM\SUB\r description\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\128\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\128\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\128\SOH\ETB\CAN\n\
    \?\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\130\SOH\STX\SUB\SUB1 externalUrl a link to external site to view NFT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\130\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\130\SOH\CAN\EM\n\
    \\"\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\132\SOH\STX\EM\SUB\DC4 name of object NFT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\132\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\132\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\132\SOH\ETB\CAN\n\
    \*\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\134\SOH\STX\DC3\SUB\FS image is the link to image\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\134\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\134\SOH\DC1\DC2\n\
    \\SUB\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\136\SOH\STX?\SUB\f attributes\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\EOT\DC2\EOT\136\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ACK\DC2\EOT\136\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\136\SOH\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\136\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\b\DC2\EOT\136\SOH >\n\
    \\DLE\n\
    \\b\EOT\a\STX\EOT\b\233\251\ETX\DC2\EOT\136\SOH!=\n\
    \\f\n\
    \\STX\EOT\b\DC2\ACK\139\SOH\NUL\150\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\139\SOH\b\NAK\n\
    \\ESC\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\141\SOH\STX\EM\SUB\r description\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\141\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\141\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\141\SOH\ETB\CAN\n\
    \?\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\143\SOH\STX\SUB\SUB1 externalUrl a link to external site to view NFT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\143\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\143\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\143\SOH\CAN\EM\n\
    \!\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\145\SOH\STX\CAN\SUB\DC3 name of group NFT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\145\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\145\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\145\SOH\SYN\ETB\n\
    \*\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\147\SOH\STX\DC3\SUB\FS image is the link to image\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\147\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\147\SOH\DC1\DC2\n\
    \\SUB\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\149\SOH\STX?\SUB\f attributes\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\EOT\149\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ACK\DC2\EOT\149\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\149\SOH\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\149\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\b\DC2\EOT\149\SOH >\n\
    \\DLE\n\
    \\b\EOT\b\STX\EOT\b\233\251\ETX\DC2\EOT\149\SOH!=\n\
    \\f\n\
    \\STX\EOT\t\DC2\ACK\152\SOH\NUL\159\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\152\SOH\b\v\n\
    \/\n\
    \\EOT\EOT\t\STX\NUL\DC2\ACK\154\SOH\STX\158\SOH\EOT\SUB\US ids of the objects or buckets\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\154\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\154\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\154\SOH\DC2\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\154\SOH\ETB\CAN\n\
    \\SI\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\ACK\154\SOH\EM\158\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\202\214\ENQ\DC2\EOT\155\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\235\251\ETX\DC2\EOT\156\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\EOT\157\SOH\EOT \n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\161\SOH\NUL\165\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\161\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\162\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\162\SOH\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\162\SOH\ACK\DLE\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\162\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\163\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\163\SOH\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\163\SOH\ACK\DLE\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\163\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\164\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\164\SOH\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\164\SOH\ACK\SI\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\164\SOH\DC2\DC3b\ACKproto3"