{- This file was auto-generated from greenfield/sp/events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Events (
        EventCreateStorageProvider(), EventDeposit(),
        EventEditStorageProvider(), EventSecondarySpStorePriceUpdate(),
        EventSpStoragePriceUpdate()
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Sp.Types
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Events_Fields.spAddress' @:: Lens' EventCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.fundingAddress' @:: Lens' EventCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.sealAddress' @:: Lens' EventCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.approvalAddress' @:: Lens' EventCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.gcAddress' @:: Lens' EventCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.endpoint' @:: Lens' EventCreateStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.totalDeposit' @:: Lens' EventCreateStorageProvider Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Sp.Events_Fields.maybe'totalDeposit' @:: Lens' EventCreateStorageProvider (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Greenfield.Sp.Events_Fields.status' @:: Lens' EventCreateStorageProvider Proto.Greenfield.Sp.Types.Status@
         * 'Proto.Greenfield.Sp.Events_Fields.description' @:: Lens' EventCreateStorageProvider Proto.Greenfield.Sp.Types.Description@
         * 'Proto.Greenfield.Sp.Events_Fields.maybe'description' @:: Lens' EventCreateStorageProvider (Prelude.Maybe Proto.Greenfield.Sp.Types.Description)@ -}
data EventCreateStorageProvider
  = EventCreateStorageProvider'_constructor {_EventCreateStorageProvider'spAddress :: !Data.Text.Text,
                                             _EventCreateStorageProvider'fundingAddress :: !Data.Text.Text,
                                             _EventCreateStorageProvider'sealAddress :: !Data.Text.Text,
                                             _EventCreateStorageProvider'approvalAddress :: !Data.Text.Text,
                                             _EventCreateStorageProvider'gcAddress :: !Data.Text.Text,
                                             _EventCreateStorageProvider'endpoint :: !Data.Text.Text,
                                             _EventCreateStorageProvider'totalDeposit :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                             _EventCreateStorageProvider'status :: !Proto.Greenfield.Sp.Types.Status,
                                             _EventCreateStorageProvider'description :: !(Prelude.Maybe Proto.Greenfield.Sp.Types.Description),
                                             _EventCreateStorageProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCreateStorageProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'spAddress
           (\ x__ y__ -> x__ {_EventCreateStorageProvider'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "fundingAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'fundingAddress
           (\ x__ y__
              -> x__ {_EventCreateStorageProvider'fundingAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "sealAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'sealAddress
           (\ x__ y__ -> x__ {_EventCreateStorageProvider'sealAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "approvalAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'approvalAddress
           (\ x__ y__
              -> x__ {_EventCreateStorageProvider'approvalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "gcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'gcAddress
           (\ x__ y__ -> x__ {_EventCreateStorageProvider'gcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'endpoint
           (\ x__ y__ -> x__ {_EventCreateStorageProvider'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "totalDeposit" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'totalDeposit
           (\ x__ y__
              -> x__ {_EventCreateStorageProvider'totalDeposit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "maybe'totalDeposit" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'totalDeposit
           (\ x__ y__
              -> x__ {_EventCreateStorageProvider'totalDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "status" Proto.Greenfield.Sp.Types.Status where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'status
           (\ x__ y__ -> x__ {_EventCreateStorageProvider'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "description" Proto.Greenfield.Sp.Types.Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'description
           (\ x__ y__ -> x__ {_EventCreateStorageProvider'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventCreateStorageProvider "maybe'description" (Prelude.Maybe Proto.Greenfield.Sp.Types.Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateStorageProvider'description
           (\ x__ y__ -> x__ {_EventCreateStorageProvider'description = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCreateStorageProvider where
  messageName _
    = Data.Text.pack "greenfield.sp.EventCreateStorageProvider"
  packedMessageDescriptor _
    = "\n\
      \\SUBEventCreateStorageProvider\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
      \\SIfunding_address\CAN\STX \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
      \\fseal_address\CAN\ETX \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\DLEapproval_address\CAN\EOT \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \gc_address\CAN\ENQ \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bendpoint\CAN\ACK \SOH(\tR\bendpoint\DC2>\n\
      \\rtotal_deposit\CAN\a \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ftotalDeposit\DC2-\n\
      \\ACKstatus\CAN\b \SOH(\SO2\NAK.greenfield.sp.StatusR\ACKstatus\DC2B\n\
      \\vdescription\CAN\t \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL"
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
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        fundingAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "funding_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fundingAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        sealAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seal_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sealAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        approvalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "approval_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"approvalAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        gcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gc_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gcAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        totalDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalDeposit")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.Status)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor EventCreateStorageProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, fundingAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, sealAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, approvalAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, gcAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 7, totalDeposit__field_descriptor),
           (Data.ProtoLens.Tag 8, status__field_descriptor),
           (Data.ProtoLens.Tag 9, description__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCreateStorageProvider'_unknownFields
        (\ x__ y__
           -> x__ {_EventCreateStorageProvider'_unknownFields = y__})
  defMessage
    = EventCreateStorageProvider'_constructor
        {_EventCreateStorageProvider'spAddress = Data.ProtoLens.fieldDefault,
         _EventCreateStorageProvider'fundingAddress = Data.ProtoLens.fieldDefault,
         _EventCreateStorageProvider'sealAddress = Data.ProtoLens.fieldDefault,
         _EventCreateStorageProvider'approvalAddress = Data.ProtoLens.fieldDefault,
         _EventCreateStorageProvider'gcAddress = Data.ProtoLens.fieldDefault,
         _EventCreateStorageProvider'endpoint = Data.ProtoLens.fieldDefault,
         _EventCreateStorageProvider'totalDeposit = Prelude.Nothing,
         _EventCreateStorageProvider'status = Data.ProtoLens.fieldDefault,
         _EventCreateStorageProvider'description = Prelude.Nothing,
         _EventCreateStorageProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCreateStorageProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCreateStorageProvider
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
                                       "funding_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fundingAddress") y x)
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
                                       "seal_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sealAddress") y x)
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
                                       "approval_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"approvalAddress") y x)
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
                                       "gc_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gcAddress") y x)
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
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "total_deposit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalDeposit") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventCreateStorageProvider"
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
                         (Data.ProtoLens.Field.field @"fundingAddress") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"sealAddress") _x
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
                               (Data.ProtoLens.Field.field @"approvalAddress") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gcAddress") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'totalDeposit") _x
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
                                       = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'description") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData EventCreateStorageProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCreateStorageProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCreateStorageProvider'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_EventCreateStorageProvider'fundingAddress x__)
                   (Control.DeepSeq.deepseq
                      (_EventCreateStorageProvider'sealAddress x__)
                      (Control.DeepSeq.deepseq
                         (_EventCreateStorageProvider'approvalAddress x__)
                         (Control.DeepSeq.deepseq
                            (_EventCreateStorageProvider'gcAddress x__)
                            (Control.DeepSeq.deepseq
                               (_EventCreateStorageProvider'endpoint x__)
                               (Control.DeepSeq.deepseq
                                  (_EventCreateStorageProvider'totalDeposit x__)
                                  (Control.DeepSeq.deepseq
                                     (_EventCreateStorageProvider'status x__)
                                     (Control.DeepSeq.deepseq
                                        (_EventCreateStorageProvider'description x__) ())))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Events_Fields.fundingAddress' @:: Lens' EventDeposit Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.deposit' @:: Lens' EventDeposit Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.totalDeposit' @:: Lens' EventDeposit Data.Text.Text@ -}
data EventDeposit
  = EventDeposit'_constructor {_EventDeposit'fundingAddress :: !Data.Text.Text,
                               _EventDeposit'deposit :: !Data.Text.Text,
                               _EventDeposit'totalDeposit :: !Data.Text.Text,
                               _EventDeposit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDeposit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDeposit "fundingAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeposit'fundingAddress
           (\ x__ y__ -> x__ {_EventDeposit'fundingAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeposit "deposit" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeposit'deposit
           (\ x__ y__ -> x__ {_EventDeposit'deposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeposit "totalDeposit" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeposit'totalDeposit
           (\ x__ y__ -> x__ {_EventDeposit'totalDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDeposit where
  messageName _ = Data.Text.pack "greenfield.sp.EventDeposit"
  packedMessageDescriptor _
    = "\n\
      \\fEventDeposit\DC2A\n\
      \\SIfunding_address\CAN\SOH \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\CAN\n\
      \\adeposit\CAN\STX \SOH(\tR\adeposit\DC2#\n\
      \\rtotal_deposit\CAN\ETX \SOH(\tR\ftotalDeposit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fundingAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "funding_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fundingAddress")) ::
              Data.ProtoLens.FieldDescriptor EventDeposit
        deposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"deposit")) ::
              Data.ProtoLens.FieldDescriptor EventDeposit
        totalDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_deposit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalDeposit")) ::
              Data.ProtoLens.FieldDescriptor EventDeposit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fundingAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, deposit__field_descriptor),
           (Data.ProtoLens.Tag 3, totalDeposit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDeposit'_unknownFields
        (\ x__ y__ -> x__ {_EventDeposit'_unknownFields = y__})
  defMessage
    = EventDeposit'_constructor
        {_EventDeposit'fundingAddress = Data.ProtoLens.fieldDefault,
         _EventDeposit'deposit = Data.ProtoLens.fieldDefault,
         _EventDeposit'totalDeposit = Data.ProtoLens.fieldDefault,
         _EventDeposit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDeposit -> Data.ProtoLens.Encoding.Bytes.Parser EventDeposit
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
                                       "funding_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fundingAddress") y x)
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
                                       "deposit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"deposit") y x)
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
                                       "total_deposit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalDeposit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventDeposit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"fundingAddress") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"deposit") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"totalDeposit") _x
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
instance Control.DeepSeq.NFData EventDeposit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDeposit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventDeposit'fundingAddress x__)
                (Control.DeepSeq.deepseq
                   (_EventDeposit'deposit x__)
                   (Control.DeepSeq.deepseq (_EventDeposit'totalDeposit x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Events_Fields.spAddress' @:: Lens' EventEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.endpoint' @:: Lens' EventEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.description' @:: Lens' EventEditStorageProvider Proto.Greenfield.Sp.Types.Description@
         * 'Proto.Greenfield.Sp.Events_Fields.maybe'description' @:: Lens' EventEditStorageProvider (Prelude.Maybe Proto.Greenfield.Sp.Types.Description)@
         * 'Proto.Greenfield.Sp.Events_Fields.sealAddress' @:: Lens' EventEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.approvalAddress' @:: Lens' EventEditStorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.gcAddress' @:: Lens' EventEditStorageProvider Data.Text.Text@ -}
data EventEditStorageProvider
  = EventEditStorageProvider'_constructor {_EventEditStorageProvider'spAddress :: !Data.Text.Text,
                                           _EventEditStorageProvider'endpoint :: !Data.Text.Text,
                                           _EventEditStorageProvider'description :: !(Prelude.Maybe Proto.Greenfield.Sp.Types.Description),
                                           _EventEditStorageProvider'sealAddress :: !Data.Text.Text,
                                           _EventEditStorageProvider'approvalAddress :: !Data.Text.Text,
                                           _EventEditStorageProvider'gcAddress :: !Data.Text.Text,
                                           _EventEditStorageProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventEditStorageProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventEditStorageProvider "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventEditStorageProvider'spAddress
           (\ x__ y__ -> x__ {_EventEditStorageProvider'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventEditStorageProvider "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventEditStorageProvider'endpoint
           (\ x__ y__ -> x__ {_EventEditStorageProvider'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventEditStorageProvider "description" Proto.Greenfield.Sp.Types.Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventEditStorageProvider'description
           (\ x__ y__ -> x__ {_EventEditStorageProvider'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventEditStorageProvider "maybe'description" (Prelude.Maybe Proto.Greenfield.Sp.Types.Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventEditStorageProvider'description
           (\ x__ y__ -> x__ {_EventEditStorageProvider'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventEditStorageProvider "sealAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventEditStorageProvider'sealAddress
           (\ x__ y__ -> x__ {_EventEditStorageProvider'sealAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventEditStorageProvider "approvalAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventEditStorageProvider'approvalAddress
           (\ x__ y__
              -> x__ {_EventEditStorageProvider'approvalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventEditStorageProvider "gcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventEditStorageProvider'gcAddress
           (\ x__ y__ -> x__ {_EventEditStorageProvider'gcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventEditStorageProvider where
  messageName _
    = Data.Text.pack "greenfield.sp.EventEditStorageProvider"
  packedMessageDescriptor _
    = "\n\
      \\CANEventEditStorageProvider\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2B\n\
      \\vdescription\CAN\ETX \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL\DC2;\n\
      \\fseal_address\CAN\EOT \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\DLEapproval_address\CAN\ENQ \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \gc_address\CAN\ACK \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor EventEditStorageProvider
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor EventEditStorageProvider
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor EventEditStorageProvider
        sealAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seal_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sealAddress")) ::
              Data.ProtoLens.FieldDescriptor EventEditStorageProvider
        approvalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "approval_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"approvalAddress")) ::
              Data.ProtoLens.FieldDescriptor EventEditStorageProvider
        gcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gc_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gcAddress")) ::
              Data.ProtoLens.FieldDescriptor EventEditStorageProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, description__field_descriptor),
           (Data.ProtoLens.Tag 4, sealAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, approvalAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, gcAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventEditStorageProvider'_unknownFields
        (\ x__ y__ -> x__ {_EventEditStorageProvider'_unknownFields = y__})
  defMessage
    = EventEditStorageProvider'_constructor
        {_EventEditStorageProvider'spAddress = Data.ProtoLens.fieldDefault,
         _EventEditStorageProvider'endpoint = Data.ProtoLens.fieldDefault,
         _EventEditStorageProvider'description = Prelude.Nothing,
         _EventEditStorageProvider'sealAddress = Data.ProtoLens.fieldDefault,
         _EventEditStorageProvider'approvalAddress = Data.ProtoLens.fieldDefault,
         _EventEditStorageProvider'gcAddress = Data.ProtoLens.fieldDefault,
         _EventEditStorageProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventEditStorageProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser EventEditStorageProvider
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
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
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
                                       "seal_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sealAddress") y x)
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
                                       "approval_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"approvalAddress") y x)
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
                                       "gc_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gcAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventEditStorageProvider"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endpoint") _x
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
                          (Data.ProtoLens.Field.field @"maybe'description") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"sealAddress") _x
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
                                  (Data.ProtoLens.Field.field @"approvalAddress") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gcAddress") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData EventEditStorageProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventEditStorageProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventEditStorageProvider'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_EventEditStorageProvider'endpoint x__)
                   (Control.DeepSeq.deepseq
                      (_EventEditStorageProvider'description x__)
                      (Control.DeepSeq.deepseq
                         (_EventEditStorageProvider'sealAddress x__)
                         (Control.DeepSeq.deepseq
                            (_EventEditStorageProvider'approvalAddress x__)
                            (Control.DeepSeq.deepseq
                               (_EventEditStorageProvider'gcAddress x__) ()))))))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Events_Fields.updateTimeSec' @:: Lens' EventSecondarySpStorePriceUpdate Data.Int.Int64@
         * 'Proto.Greenfield.Sp.Events_Fields.storePrice' @:: Lens' EventSecondarySpStorePriceUpdate Data.Text.Text@ -}
data EventSecondarySpStorePriceUpdate
  = EventSecondarySpStorePriceUpdate'_constructor {_EventSecondarySpStorePriceUpdate'updateTimeSec :: !Data.Int.Int64,
                                                   _EventSecondarySpStorePriceUpdate'storePrice :: !Data.Text.Text,
                                                   _EventSecondarySpStorePriceUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventSecondarySpStorePriceUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventSecondarySpStorePriceUpdate "updateTimeSec" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSecondarySpStorePriceUpdate'updateTimeSec
           (\ x__ y__
              -> x__ {_EventSecondarySpStorePriceUpdate'updateTimeSec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSecondarySpStorePriceUpdate "storePrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSecondarySpStorePriceUpdate'storePrice
           (\ x__ y__
              -> x__ {_EventSecondarySpStorePriceUpdate'storePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventSecondarySpStorePriceUpdate where
  messageName _
    = Data.Text.pack "greenfield.sp.EventSecondarySpStorePriceUpdate"
  packedMessageDescriptor _
    = "\n\
      \ EventSecondarySpStorePriceUpdate\DC2&\n\
      \\SIupdate_time_sec\CAN\SOH \SOH(\ETXR\rupdateTimeSec\DC2]\n\
      \\vstore_price\CAN\STX \SOH(\tR\n\
      \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        updateTimeSec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time_sec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateTimeSec")) ::
              Data.ProtoLens.FieldDescriptor EventSecondarySpStorePriceUpdate
        storePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storePrice")) ::
              Data.ProtoLens.FieldDescriptor EventSecondarySpStorePriceUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, updateTimeSec__field_descriptor),
           (Data.ProtoLens.Tag 2, storePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventSecondarySpStorePriceUpdate'_unknownFields
        (\ x__ y__
           -> x__ {_EventSecondarySpStorePriceUpdate'_unknownFields = y__})
  defMessage
    = EventSecondarySpStorePriceUpdate'_constructor
        {_EventSecondarySpStorePriceUpdate'updateTimeSec = Data.ProtoLens.fieldDefault,
         _EventSecondarySpStorePriceUpdate'storePrice = Data.ProtoLens.fieldDefault,
         _EventSecondarySpStorePriceUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventSecondarySpStorePriceUpdate
          -> Data.ProtoLens.Encoding.Bytes.Parser EventSecondarySpStorePriceUpdate
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
                                       "update_time_sec"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateTimeSec") y x)
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
                                       "store_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "EventSecondarySpStorePriceUpdate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"updateTimeSec") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"storePrice") _x
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
instance Control.DeepSeq.NFData EventSecondarySpStorePriceUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventSecondarySpStorePriceUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventSecondarySpStorePriceUpdate'updateTimeSec x__)
                (Control.DeepSeq.deepseq
                   (_EventSecondarySpStorePriceUpdate'storePrice x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Events_Fields.spAddress' @:: Lens' EventSpStoragePriceUpdate Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.updateTimeSec' @:: Lens' EventSpStoragePriceUpdate Data.Int.Int64@
         * 'Proto.Greenfield.Sp.Events_Fields.readPrice' @:: Lens' EventSpStoragePriceUpdate Data.Text.Text@
         * 'Proto.Greenfield.Sp.Events_Fields.freeReadQuota' @:: Lens' EventSpStoragePriceUpdate Data.Word.Word64@
         * 'Proto.Greenfield.Sp.Events_Fields.storePrice' @:: Lens' EventSpStoragePriceUpdate Data.Text.Text@ -}
data EventSpStoragePriceUpdate
  = EventSpStoragePriceUpdate'_constructor {_EventSpStoragePriceUpdate'spAddress :: !Data.Text.Text,
                                            _EventSpStoragePriceUpdate'updateTimeSec :: !Data.Int.Int64,
                                            _EventSpStoragePriceUpdate'readPrice :: !Data.Text.Text,
                                            _EventSpStoragePriceUpdate'freeReadQuota :: !Data.Word.Word64,
                                            _EventSpStoragePriceUpdate'storePrice :: !Data.Text.Text,
                                            _EventSpStoragePriceUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventSpStoragePriceUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventSpStoragePriceUpdate "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSpStoragePriceUpdate'spAddress
           (\ x__ y__ -> x__ {_EventSpStoragePriceUpdate'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSpStoragePriceUpdate "updateTimeSec" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSpStoragePriceUpdate'updateTimeSec
           (\ x__ y__
              -> x__ {_EventSpStoragePriceUpdate'updateTimeSec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSpStoragePriceUpdate "readPrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSpStoragePriceUpdate'readPrice
           (\ x__ y__ -> x__ {_EventSpStoragePriceUpdate'readPrice = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSpStoragePriceUpdate "freeReadQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSpStoragePriceUpdate'freeReadQuota
           (\ x__ y__
              -> x__ {_EventSpStoragePriceUpdate'freeReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSpStoragePriceUpdate "storePrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSpStoragePriceUpdate'storePrice
           (\ x__ y__ -> x__ {_EventSpStoragePriceUpdate'storePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventSpStoragePriceUpdate where
  messageName _
    = Data.Text.pack "greenfield.sp.EventSpStoragePriceUpdate"
  packedMessageDescriptor _
    = "\n\
      \\EMEventSpStoragePriceUpdate\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2&\n\
      \\SIupdate_time_sec\CAN\STX \SOH(\ETXR\rupdateTimeSec\DC2[\n\
      \\n\
      \read_price\CAN\ETX \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2&\n\
      \\SIfree_read_quota\CAN\EOT \SOH(\EOTR\rfreeReadQuota\DC2]\n\
      \\vstore_price\CAN\ENQ \SOH(\tR\n\
      \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec"
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
              Data.ProtoLens.FieldDescriptor EventSpStoragePriceUpdate
        updateTimeSec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time_sec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateTimeSec")) ::
              Data.ProtoLens.FieldDescriptor EventSpStoragePriceUpdate
        readPrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readPrice")) ::
              Data.ProtoLens.FieldDescriptor EventSpStoragePriceUpdate
        freeReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free_read_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"freeReadQuota")) ::
              Data.ProtoLens.FieldDescriptor EventSpStoragePriceUpdate
        storePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storePrice")) ::
              Data.ProtoLens.FieldDescriptor EventSpStoragePriceUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, updateTimeSec__field_descriptor),
           (Data.ProtoLens.Tag 3, readPrice__field_descriptor),
           (Data.ProtoLens.Tag 4, freeReadQuota__field_descriptor),
           (Data.ProtoLens.Tag 5, storePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventSpStoragePriceUpdate'_unknownFields
        (\ x__ y__
           -> x__ {_EventSpStoragePriceUpdate'_unknownFields = y__})
  defMessage
    = EventSpStoragePriceUpdate'_constructor
        {_EventSpStoragePriceUpdate'spAddress = Data.ProtoLens.fieldDefault,
         _EventSpStoragePriceUpdate'updateTimeSec = Data.ProtoLens.fieldDefault,
         _EventSpStoragePriceUpdate'readPrice = Data.ProtoLens.fieldDefault,
         _EventSpStoragePriceUpdate'freeReadQuota = Data.ProtoLens.fieldDefault,
         _EventSpStoragePriceUpdate'storePrice = Data.ProtoLens.fieldDefault,
         _EventSpStoragePriceUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventSpStoragePriceUpdate
          -> Data.ProtoLens.Encoding.Bytes.Parser EventSpStoragePriceUpdate
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "update_time_sec"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateTimeSec") y x)
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
                                       "read_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readPrice") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "free_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"freeReadQuota") y x)
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
                                       "store_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventSpStoragePriceUpdate"
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
                         (Data.ProtoLens.Field.field @"updateTimeSec") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"readPrice") _x
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
                               (Data.ProtoLens.Field.field @"freeReadQuota") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"storePrice") _x
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
instance Control.DeepSeq.NFData EventSpStoragePriceUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventSpStoragePriceUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventSpStoragePriceUpdate'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_EventSpStoragePriceUpdate'updateTimeSec x__)
                   (Control.DeepSeq.deepseq
                      (_EventSpStoragePriceUpdate'readPrice x__)
                      (Control.DeepSeq.deepseq
                         (_EventSpStoragePriceUpdate'freeReadQuota x__)
                         (Control.DeepSeq.deepseq
                            (_EventSpStoragePriceUpdate'storePrice x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SUBgreenfield/sp/events.proto\DC2\rgreenfield.sp\SUB\RScosmos/base/v1beta1/coin.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMgreenfield/sp/types.proto\"\162\EOT\n\
    \\SUBEventCreateStorageProvider\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
    \\SIfunding_address\CAN\STX \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
    \\fseal_address\CAN\ETX \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\DLEapproval_address\CAN\EOT \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \gc_address\CAN\ENQ \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bendpoint\CAN\ACK \SOH(\tR\bendpoint\DC2>\n\
    \\rtotal_deposit\CAN\a \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ftotalDeposit\DC2-\n\
    \\ACKstatus\CAN\b \SOH(\SO2\NAK.greenfield.sp.StatusR\ACKstatus\DC2B\n\
    \\vdescription\CAN\t \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL\"\238\STX\n\
    \\CANEventEditStorageProvider\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bendpoint\CAN\STX \SOH(\tR\bendpoint\DC2B\n\
    \\vdescription\CAN\ETX \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL\DC2;\n\
    \\fseal_address\CAN\EOT \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\DLEapproval_address\CAN\ENQ \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \gc_address\CAN\ACK \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString\"\144\SOH\n\
    \\fEventDeposit\DC2A\n\
    \\SIfunding_address\CAN\SOH \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\CAN\n\
    \\adeposit\CAN\STX \SOH(\tR\adeposit\DC2#\n\
    \\rtotal_deposit\CAN\ETX \SOH(\tR\ftotalDeposit\"\224\STX\n\
    \\EMEventSpStoragePriceUpdate\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2&\n\
    \\SIupdate_time_sec\CAN\STX \SOH(\ETXR\rupdateTimeSec\DC2[\n\
    \\n\
    \read_price\CAN\ETX \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2&\n\
    \\SIfree_read_quota\CAN\EOT \SOH(\EOTR\rfreeReadQuota\DC2]\n\
    \\vstore_price\CAN\ENQ \SOH(\tR\n\
    \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\"\169\SOH\n\
    \ EventSecondarySpStorePriceUpdate\DC2&\n\
    \\SIupdate_time_sec\CAN\SOH \SOH(\ETXR\rupdateTimeSec\DC2]\n\
    \\vstore_price\CAN\STX \SOH(\tR\n\
    \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.DecB,Z*github.com/bnb-chain/greenfield/x/sp/typesJ\206\RS\n\
    \\ACK\DC2\EOT\NUL\NULX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULA\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULA\n\
    \\\\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\RS\SOH\SUBP EventCreateStorageProvider is emitted when there is a storage provider created\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\"\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STXI\SUB< sp_address is the operator address of the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\r\CANH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\r\EMG\n\
    \U\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SI\STXN\SUBH funding_address is the funding account address of the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SI\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SI\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\SI\GSM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\SI\RSL\n\
    \D\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC1\STXK\SUB7 seal_address is the account address for SealObject Tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC1\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC1\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\DC1\SUBJ\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX\DC1\ESCI\n\
    \a\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC3\STXO\SUBT approval_address is the account address for approve create bucket/object signature\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC3\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC3\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\DC3\RSN\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\DC3\USM\n\
    \e\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\NAK\STXI\SUBX gc_address defines one of the storage provider's accounts which is used for gc purpose\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\NAK\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\NAK\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\NAK\CANH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\202\214\ENQ\DC2\ETX\NAK\EMG\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\ETB\STX\SYN\SUBL endpoint is the domain name address used by SP to provide storage services\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\ETB\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\ETB\DC4\NAK\n\
    \f\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\EM\STX-\SUBY total_deposit is the token coin that the storage provider deposit to the storage module\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\EM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\EM\ESC(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\EM+,\n\
    \@\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\ESC\STX\DC4\SUB3 status defines the status of the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\ESC\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\ESC\DC2\DC3\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX\GS\STX=\SUBD description defines the description terms for the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX\GS\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX\GS\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX\GS\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\ETX\GS\RS<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\233\251\ETX\DC2\ETX\GS\US;\n\
    \O\n\
    \\STX\EOT\SOH\DC2\EOT!\NUL.\SOH\SUBC EventEditStorageProvider is emitted when SP's metadata is edited.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b \n\
    \I\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STXI\SUB< sp_address is the operator address of the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX#\CANH\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX#\EMG\n\
    \G\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX%\STX\SYN\SUB: endpoint is the service endpoint of the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX%\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX%\DC4\NAK\n\
    \Q\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX'\STX=\SUBD description defines the description terms for the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX'\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX'\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX'\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX'\RS<\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX'\US;\n\
    \D\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX)\STXK\SUB7 seal_address is the account address for SealObject Tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX)\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX)\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\ETX)\SUBJ\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\202\214\ENQ\DC2\ETX)\ESCI\n\
    \a\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX+\STXO\SUBT approval_address is the account address for approve create bucket/object signature\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX+\t\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX+\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETX+\RSN\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\202\214\ENQ\DC2\ETX+\USM\n\
    \e\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX-\STXI\SUBX gc_address defines one of the storage provider's accounts which is used for gc purpose\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX-\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX-\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\b\DC2\ETX-\CANH\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\202\214\ENQ\DC2\ETX-\EMG\n\
    \=\n\
    \\STX\EOT\STX\DC2\EOT1\NUL8\SOH\SUB1 EventDeposit is emitted when sp deposit tokens.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX1\b\DC4\n\
    \U\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX3\STXN\SUBH funding_address is the funding account address of the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX3\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX3\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX3\GSM\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX3\RSL\n\
    \?\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX5\STX\NAK\SUB2 deposit is the token coin deposited this message\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX5\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX5\DC3\DC4\n\
    \U\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX7\STX\ESC\SUBH total_deposit is the total token coins this storage provider deposited\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX7\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX7\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT:\NULM\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX:\b!\n\
    \\EM\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX<\STXI\SUB\f sp address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX<\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX<\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX<\CANH\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETX<\EMG\n\
    \-\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX>\STX\FS\SUB  update time, in unix timestamp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX>\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX>\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX>\SUB\ESC\n\
    \6\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT@\STXD\EOT\SUB( read price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX@\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX@\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\EOT@\CAND\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\202\214\ENQ\DC2\ETXA\EOT(\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\235\251\ETX\DC2\ETXB\EOTE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\233\251\ETX\DC2\ETXC\EOT \n\
    \'\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXF\STX\GS\SUB\SUB free read quota, in byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXF\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXF\ESC\FS\n\
    \7\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOTH\STXL\EOT\SUB) store price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXH\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\b\DC2\EOTH\EML\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\202\214\ENQ\DC2\ETXI\EOT(\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\235\251\ETX\DC2\ETXJ\EOTE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\233\251\ETX\DC2\ETXK\EOT \n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTO\NULX\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXO\b(\n\
    \-\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXQ\STX\FS\SUB  update time, in unix timestamp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXQ\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXQ\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXQ\SUB\ESC\n\
    \7\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOTS\STXW\EOT\SUB) store price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXS\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXS\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\EOTS\EMW\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXT\EOT(\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\235\251\ETX\DC2\ETXU\EOTE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\233\251\ETX\DC2\ETXV\EOT b\ACKproto3"