{- This file was auto-generated from cosmos/upgrade/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Upgrade.V1beta1.Tx (
        Msg(..), MsgCancelUpgrade(), MsgCancelUpgradeResponse(),
        MsgSoftwareUpgrade(), MsgSoftwareUpgradeResponse()
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
import qualified Proto.Amino.Amino
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.Cosmos.Upgrade.V1beta1.Upgrade
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Tx_Fields.authority' @:: Lens' MsgCancelUpgrade Data.Text.Text@ -}
data MsgCancelUpgrade
  = MsgCancelUpgrade'_constructor {_MsgCancelUpgrade'authority :: !Data.Text.Text,
                                   _MsgCancelUpgrade'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelUpgrade where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCancelUpgrade "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelUpgrade'authority
           (\ x__ y__ -> x__ {_MsgCancelUpgrade'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCancelUpgrade where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.MsgCancelUpgrade"
  packedMessageDescriptor _
    = "\n\
      \\DLEMsgCancelUpgrade\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString:.\130\231\176*\tauthority\138\231\176*\ESCcosmos-sdk/MsgCancelUpgrade"
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
              Data.ProtoLens.FieldDescriptor MsgCancelUpgrade
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelUpgrade'_unknownFields
        (\ x__ y__ -> x__ {_MsgCancelUpgrade'_unknownFields = y__})
  defMessage
    = MsgCancelUpgrade'_constructor
        {_MsgCancelUpgrade'authority = Data.ProtoLens.fieldDefault,
         _MsgCancelUpgrade'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelUpgrade
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelUpgrade
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCancelUpgrade"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgCancelUpgrade where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelUpgrade'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgCancelUpgrade'authority x__) ())
{- | Fields :
      -}
data MsgCancelUpgradeResponse
  = MsgCancelUpgradeResponse'_constructor {_MsgCancelUpgradeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelUpgradeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCancelUpgradeResponse where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.MsgCancelUpgradeResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANMsgCancelUpgradeResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelUpgradeResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgCancelUpgradeResponse'_unknownFields = y__})
  defMessage
    = MsgCancelUpgradeResponse'_constructor
        {_MsgCancelUpgradeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelUpgradeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelUpgradeResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCancelUpgradeResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCancelUpgradeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelUpgradeResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Tx_Fields.authority' @:: Lens' MsgSoftwareUpgrade Data.Text.Text@
         * 'Proto.Cosmos.Upgrade.V1beta1.Tx_Fields.plan' @:: Lens' MsgSoftwareUpgrade Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan@
         * 'Proto.Cosmos.Upgrade.V1beta1.Tx_Fields.maybe'plan' @:: Lens' MsgSoftwareUpgrade (Prelude.Maybe Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan)@ -}
data MsgSoftwareUpgrade
  = MsgSoftwareUpgrade'_constructor {_MsgSoftwareUpgrade'authority :: !Data.Text.Text,
                                     _MsgSoftwareUpgrade'plan :: !(Prelude.Maybe Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan),
                                     _MsgSoftwareUpgrade'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSoftwareUpgrade where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSoftwareUpgrade "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSoftwareUpgrade'authority
           (\ x__ y__ -> x__ {_MsgSoftwareUpgrade'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSoftwareUpgrade "plan" Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSoftwareUpgrade'plan
           (\ x__ y__ -> x__ {_MsgSoftwareUpgrade'plan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgSoftwareUpgrade "maybe'plan" (Prelude.Maybe Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSoftwareUpgrade'plan
           (\ x__ y__ -> x__ {_MsgSoftwareUpgrade'plan = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSoftwareUpgrade where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.MsgSoftwareUpgrade"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgSoftwareUpgrade\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
      \\EOTplan\CAN\STX \SOH(\v2\FS.cosmos.upgrade.v1beta1.PlanR\EOTplanB\t\200\222\US\NUL\168\231\176*\SOH:0\130\231\176*\tauthority\138\231\176*\GScosmos-sdk/MsgSoftwareUpgrade"
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
              Data.ProtoLens.FieldDescriptor MsgSoftwareUpgrade
        plan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plan"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'plan")) ::
              Data.ProtoLens.FieldDescriptor MsgSoftwareUpgrade
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, plan__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSoftwareUpgrade'_unknownFields
        (\ x__ y__ -> x__ {_MsgSoftwareUpgrade'_unknownFields = y__})
  defMessage
    = MsgSoftwareUpgrade'_constructor
        {_MsgSoftwareUpgrade'authority = Data.ProtoLens.fieldDefault,
         _MsgSoftwareUpgrade'plan = Prelude.Nothing,
         _MsgSoftwareUpgrade'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSoftwareUpgrade
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSoftwareUpgrade
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
                                       "plan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"plan") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSoftwareUpgrade"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'plan") _x
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
instance Control.DeepSeq.NFData MsgSoftwareUpgrade where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSoftwareUpgrade'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSoftwareUpgrade'authority x__)
                (Control.DeepSeq.deepseq (_MsgSoftwareUpgrade'plan x__) ()))
{- | Fields :
      -}
data MsgSoftwareUpgradeResponse
  = MsgSoftwareUpgradeResponse'_constructor {_MsgSoftwareUpgradeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSoftwareUpgradeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgSoftwareUpgradeResponse where
  messageName _
    = Data.Text.pack
        "cosmos.upgrade.v1beta1.MsgSoftwareUpgradeResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBMsgSoftwareUpgradeResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSoftwareUpgradeResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgSoftwareUpgradeResponse'_unknownFields = y__})
  defMessage
    = MsgSoftwareUpgradeResponse'_constructor
        {_MsgSoftwareUpgradeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSoftwareUpgradeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSoftwareUpgradeResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgSoftwareUpgradeResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgSoftwareUpgradeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSoftwareUpgradeResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.upgrade.v1beta1"
  type ServiceMethods Msg = '["cancelUpgrade", "softwareUpgrade"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2q\n\
      \\SISoftwareUpgrade\DC2*.cosmos.upgrade.v1beta1.MsgSoftwareUpgrade\SUB2.cosmos.upgrade.v1beta1.MsgSoftwareUpgradeResponse\DC2k\n\
      \\rCancelUpgrade\DC2(.cosmos.upgrade.v1beta1.MsgCancelUpgrade\SUB0.cosmos.upgrade.v1beta1.MsgCancelUpgradeResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "softwareUpgrade" where
  type MethodName Msg "softwareUpgrade" = "SoftwareUpgrade"
  type MethodInput Msg "softwareUpgrade" = MsgSoftwareUpgrade
  type MethodOutput Msg "softwareUpgrade" = MsgSoftwareUpgradeResponse
  type MethodStreamingType Msg "softwareUpgrade" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "cancelUpgrade" where
  type MethodName Msg "cancelUpgrade" = "CancelUpgrade"
  type MethodInput Msg "cancelUpgrade" = MsgCancelUpgrade
  type MethodOutput Msg "cancelUpgrade" = MsgCancelUpgradeResponse
  type MethodStreamingType Msg "cancelUpgrade" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/upgrade/v1beta1/tx.proto\DC2\SYNcosmos.upgrade.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB$cosmos/upgrade/v1beta1/upgrade.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\187\SOH\n\
    \\DC2MsgSoftwareUpgrade\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
    \\EOTplan\CAN\STX \SOH(\v2\FS.cosmos.upgrade.v1beta1.PlanR\EOTplanB\t\200\222\US\NUL\168\231\176*\SOH:0\130\231\176*\tauthority\138\231\176*\GScosmos-sdk/MsgSoftwareUpgrade\"\FS\n\
    \\SUBMsgSoftwareUpgradeResponse\"z\n\
    \\DLEMsgCancelUpgrade\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString:.\130\231\176*\tauthority\138\231\176*\ESCcosmos-sdk/MsgCancelUpgrade\"\SUB\n\
    \\CANMsgCancelUpgradeResponse2\236\SOH\n\
    \\ETXMsg\DC2q\n\
    \\SISoftwareUpgrade\DC2*.cosmos.upgrade.v1beta1.MsgSoftwareUpgrade\SUB2.cosmos.upgrade.v1beta1.MsgSoftwareUpgradeResponse\DC2k\n\
    \\rCancelUpgrade\DC2(.cosmos.upgrade.v1beta1.MsgCancelUpgrade\SUB0.cosmos.upgrade.v1beta1.MsgCancelUpgradeResponse\SUB\ENQ\128\231\176*\SOHB\RSZ\FScosmossdk.io/x/upgrade/typesJ\215\f\n\
    \\ACK\DC2\EOT\SOH\NUL=#\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL!\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL3\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NUL3\n\
    \2\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL\SUB\SOH\SUB& Msg defines the upgrade Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SO\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\SO\STX(\n\
    \t\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC3\STXO\SUBg SoftwareUpgrade is a governance operation for initiating a software upgrade.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\SYN(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC33M\n\
    \\135\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\EM\STXI\SUBz CancelUpgrade is a governance operation for cancelling a previously\n\
    \ approved software upgrade.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\EM\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\EM\DC4$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\EM/G\n\
    \b\n\
    \\STX\EOT\NUL\DC2\EOT\US\NUL(\SOH\SUBV MsgSoftwareUpgrade is the Msg/SoftwareUpgrade request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\US\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX \STX.\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX \STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX!\STXB\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX!\STXB\n\
    \h\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX$\ETBG\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX$\CANF\n\
    \(\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX'\STXN\SUB\ESC plan is the upgrade plan.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX'\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX'\a\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX'\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX'\DLEM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX'\DC1-\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX'/L\n\
    \j\n\
    \\STX\EOT\SOH\DC2\ETX-\NUL%\SUB_ MsgSoftwareUpgradeResponse is the Msg/SoftwareUpgrade response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX-\b\"\n\
    \^\n\
    \\STX\EOT\STX\DC2\EOT2\NUL8\SOH\SUBR MsgCancelUpgrade is the Msg/CancelUpgrade request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX2\b\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX3\STX.\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX3\STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX4\STX@\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX4\STX@\n\
    \h\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX7\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX7\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX7\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX7\ETBG\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX7\CANF\n\
    \f\n\
    \\STX\EOT\ETX\DC2\ETX=\NUL#\SUB[ MsgCancelUpgradeResponse is the Msg/CancelUpgrade response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX=\b b\ACKproto3"