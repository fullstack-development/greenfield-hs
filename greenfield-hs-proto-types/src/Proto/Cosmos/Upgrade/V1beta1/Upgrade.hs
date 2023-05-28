{- This file was auto-generated from cosmos/upgrade/v1beta1/upgrade.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Upgrade.V1beta1.Upgrade (
        CancelSoftwareUpgradeProposal(), ModuleVersion(), Plan(),
        SoftwareUpgradeProposal()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.title' @:: Lens' CancelSoftwareUpgradeProposal Data.Text.Text@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.description' @:: Lens' CancelSoftwareUpgradeProposal Data.Text.Text@ -}
data CancelSoftwareUpgradeProposal
  = CancelSoftwareUpgradeProposal'_constructor {_CancelSoftwareUpgradeProposal'title :: !Data.Text.Text,
                                                _CancelSoftwareUpgradeProposal'description :: !Data.Text.Text,
                                                _CancelSoftwareUpgradeProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelSoftwareUpgradeProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelSoftwareUpgradeProposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelSoftwareUpgradeProposal'title
           (\ x__ y__ -> x__ {_CancelSoftwareUpgradeProposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelSoftwareUpgradeProposal "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelSoftwareUpgradeProposal'description
           (\ x__ y__
              -> x__ {_CancelSoftwareUpgradeProposal'description = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelSoftwareUpgradeProposal where
  messageName _
    = Data.Text.pack
        "cosmos.upgrade.v1beta1.CancelSoftwareUpgradeProposal"
  packedMessageDescriptor _
    = "\n\
      \\GSCancelSoftwareUpgradeProposal\DC2\DC4\n\
      \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription:Q\CAN\SOH\232\160\US\SOH\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*(cosmos-sdk/CancelSoftwareUpgradeProposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor CancelSoftwareUpgradeProposal
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor CancelSoftwareUpgradeProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, title__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelSoftwareUpgradeProposal'_unknownFields
        (\ x__ y__
           -> x__ {_CancelSoftwareUpgradeProposal'_unknownFields = y__})
  defMessage
    = CancelSoftwareUpgradeProposal'_constructor
        {_CancelSoftwareUpgradeProposal'title = Data.ProtoLens.fieldDefault,
         _CancelSoftwareUpgradeProposal'description = Data.ProtoLens.fieldDefault,
         _CancelSoftwareUpgradeProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelSoftwareUpgradeProposal
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelSoftwareUpgradeProposal
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
                                       "title"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
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
          (do loop Data.ProtoLens.defMessage) "CancelSoftwareUpgradeProposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"title") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
instance Control.DeepSeq.NFData CancelSoftwareUpgradeProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelSoftwareUpgradeProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CancelSoftwareUpgradeProposal'title x__)
                (Control.DeepSeq.deepseq
                   (_CancelSoftwareUpgradeProposal'description x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.name' @:: Lens' ModuleVersion Data.Text.Text@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.version' @:: Lens' ModuleVersion Data.Word.Word64@ -}
data ModuleVersion
  = ModuleVersion'_constructor {_ModuleVersion'name :: !Data.Text.Text,
                                _ModuleVersion'version :: !Data.Word.Word64,
                                _ModuleVersion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleVersion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleVersion "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleVersion'name (\ x__ y__ -> x__ {_ModuleVersion'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleVersion "version" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleVersion'version
           (\ x__ y__ -> x__ {_ModuleVersion'version = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleVersion where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.ModuleVersion"
  packedMessageDescriptor _
    = "\n\
      \\rModuleVersion\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\EOTR\aversion:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ModuleVersion
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor ModuleVersion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, version__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleVersion'_unknownFields
        (\ x__ y__ -> x__ {_ModuleVersion'_unknownFields = y__})
  defMessage
    = ModuleVersion'_constructor
        {_ModuleVersion'name = Data.ProtoLens.fieldDefault,
         _ModuleVersion'version = Data.ProtoLens.fieldDefault,
         _ModuleVersion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleVersion -> Data.ProtoLens.Encoding.Bytes.Parser ModuleVersion
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ModuleVersion"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ModuleVersion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleVersion'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleVersion'name x__)
                (Control.DeepSeq.deepseq (_ModuleVersion'version x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.name' @:: Lens' Plan Data.Text.Text@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.time' @:: Lens' Plan Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.maybe'time' @:: Lens' Plan (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.height' @:: Lens' Plan Data.Int.Int64@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.info' @:: Lens' Plan Data.Text.Text@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.upgradedClientState' @:: Lens' Plan Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.maybe'upgradedClientState' @:: Lens' Plan (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data Plan
  = Plan'_constructor {_Plan'name :: !Data.Text.Text,
                       _Plan'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                       _Plan'height :: !Data.Int.Int64,
                       _Plan'info :: !Data.Text.Text,
                       _Plan'upgradedClientState :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                       _Plan'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Plan where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Plan "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Plan'name (\ x__ y__ -> x__ {_Plan'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Plan "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Plan'time (\ x__ y__ -> x__ {_Plan'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Plan "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Plan'time (\ x__ y__ -> x__ {_Plan'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Plan "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Plan'height (\ x__ y__ -> x__ {_Plan'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Plan "info" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Plan'info (\ x__ y__ -> x__ {_Plan'info = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Plan "upgradedClientState" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Plan'upgradedClientState
           (\ x__ y__ -> x__ {_Plan'upgradedClientState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Plan "maybe'upgradedClientState" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Plan'upgradedClientState
           (\ x__ y__ -> x__ {_Plan'upgradedClientState = y__}))
        Prelude.id
instance Data.ProtoLens.Message Plan where
  messageName _ = Data.Text.pack "cosmos.upgrade.v1beta1.Plan"
  packedMessageDescriptor _
    = "\n\
      \\EOTPlan\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2?\n\
      \\EOTtime\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\SI\CAN\SOH\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2\DC2\n\
      \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2L\n\
      \\NAKupgraded_client_state\CAN\ENQ \SOH(\v2\DC4.google.protobuf.AnyR\DC3upgradedClientStateB\STX\CAN\SOH:\CAN\232\160\US\SOH\138\231\176*\SIcosmos-sdk/Plan"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Plan
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor Plan
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Plan
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"info")) ::
              Data.ProtoLens.FieldDescriptor Plan
        upgradedClientState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upgraded_client_state"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upgradedClientState")) ::
              Data.ProtoLens.FieldDescriptor Plan
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, time__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor),
           (Data.ProtoLens.Tag 4, info__field_descriptor),
           (Data.ProtoLens.Tag 5, upgradedClientState__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Plan'_unknownFields
        (\ x__ y__ -> x__ {_Plan'_unknownFields = y__})
  defMessage
    = Plan'_constructor
        {_Plan'name = Data.ProtoLens.fieldDefault,
         _Plan'time = Prelude.Nothing,
         _Plan'height = Data.ProtoLens.fieldDefault,
         _Plan'info = Data.ProtoLens.fieldDefault,
         _Plan'upgradedClientState = Prelude.Nothing,
         _Plan'_unknownFields = []}
  parseMessage
    = let
        loop :: Plan -> Data.ProtoLens.Encoding.Bytes.Parser Plan
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
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
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upgraded_client_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upgradedClientState") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Plan"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'upgradedClientState") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Plan where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Plan'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Plan'name x__)
                (Control.DeepSeq.deepseq
                   (_Plan'time x__)
                   (Control.DeepSeq.deepseq
                      (_Plan'height x__)
                      (Control.DeepSeq.deepseq
                         (_Plan'info x__)
                         (Control.DeepSeq.deepseq (_Plan'upgradedClientState x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.title' @:: Lens' SoftwareUpgradeProposal Data.Text.Text@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.description' @:: Lens' SoftwareUpgradeProposal Data.Text.Text@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.plan' @:: Lens' SoftwareUpgradeProposal Plan@
         * 'Proto.Cosmos.Upgrade.V1beta1.Upgrade_Fields.maybe'plan' @:: Lens' SoftwareUpgradeProposal (Prelude.Maybe Plan)@ -}
data SoftwareUpgradeProposal
  = SoftwareUpgradeProposal'_constructor {_SoftwareUpgradeProposal'title :: !Data.Text.Text,
                                          _SoftwareUpgradeProposal'description :: !Data.Text.Text,
                                          _SoftwareUpgradeProposal'plan :: !(Prelude.Maybe Plan),
                                          _SoftwareUpgradeProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SoftwareUpgradeProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SoftwareUpgradeProposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftwareUpgradeProposal'title
           (\ x__ y__ -> x__ {_SoftwareUpgradeProposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SoftwareUpgradeProposal "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftwareUpgradeProposal'description
           (\ x__ y__ -> x__ {_SoftwareUpgradeProposal'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SoftwareUpgradeProposal "plan" Plan where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftwareUpgradeProposal'plan
           (\ x__ y__ -> x__ {_SoftwareUpgradeProposal'plan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SoftwareUpgradeProposal "maybe'plan" (Prelude.Maybe Plan) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftwareUpgradeProposal'plan
           (\ x__ y__ -> x__ {_SoftwareUpgradeProposal'plan = y__}))
        Prelude.id
instance Data.ProtoLens.Message SoftwareUpgradeProposal where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.SoftwareUpgradeProposal"
  packedMessageDescriptor _
    = "\n\
      \\ETBSoftwareUpgradeProposal\DC2\DC4\n\
      \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2;\n\
      \\EOTplan\CAN\ETX \SOH(\v2\FS.cosmos.upgrade.v1beta1.PlanR\EOTplanB\t\200\222\US\NUL\168\231\176*\SOH:K\CAN\SOH\232\160\US\SOH\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*\"cosmos-sdk/SoftwareUpgradeProposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor SoftwareUpgradeProposal
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor SoftwareUpgradeProposal
        plan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plan"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Plan)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'plan")) ::
              Data.ProtoLens.FieldDescriptor SoftwareUpgradeProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, title__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, plan__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SoftwareUpgradeProposal'_unknownFields
        (\ x__ y__ -> x__ {_SoftwareUpgradeProposal'_unknownFields = y__})
  defMessage
    = SoftwareUpgradeProposal'_constructor
        {_SoftwareUpgradeProposal'title = Data.ProtoLens.fieldDefault,
         _SoftwareUpgradeProposal'description = Data.ProtoLens.fieldDefault,
         _SoftwareUpgradeProposal'plan = Prelude.Nothing,
         _SoftwareUpgradeProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SoftwareUpgradeProposal
          -> Data.ProtoLens.Encoding.Bytes.Parser SoftwareUpgradeProposal
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
                                       "title"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        26
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
          (do loop Data.ProtoLens.defMessage) "SoftwareUpgradeProposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"title") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'plan") _x
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
instance Control.DeepSeq.NFData SoftwareUpgradeProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SoftwareUpgradeProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SoftwareUpgradeProposal'title x__)
                (Control.DeepSeq.deepseq
                   (_SoftwareUpgradeProposal'description x__)
                   (Control.DeepSeq.deepseq (_SoftwareUpgradeProposal'plan x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$cosmos/upgrade/v1beta1/upgrade.proto\DC2\SYNcosmos.upgrade.v1beta1\SUB\EMgoogle/protobuf/any.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\239\SOH\n\
    \\EOTPlan\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2?\n\
    \\EOTtime\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\SI\CAN\SOH\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2\DC2\n\
    \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2L\n\
    \\NAKupgraded_client_state\CAN\ENQ \SOH(\v2\DC4.google.protobuf.AnyR\DC3upgradedClientStateB\STX\CAN\SOH:\CAN\232\160\US\SOH\138\231\176*\SIcosmos-sdk/Plan\"\219\SOH\n\
    \\ETBSoftwareUpgradeProposal\DC2\DC4\n\
    \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2;\n\
    \\EOTplan\CAN\ETX \SOH(\v2\FS.cosmos.upgrade.v1beta1.PlanR\EOTplanB\t\200\222\US\NUL\168\231\176*\SOH:K\CAN\SOH\232\160\US\SOH\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*\"cosmos-sdk/SoftwareUpgradeProposal\"\170\SOH\n\
    \\GSCancelSoftwareUpgradeProposal\DC2\DC4\n\
    \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription:Q\CAN\SOH\232\160\US\SOH\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*(cosmos-sdk/CancelSoftwareUpgradeProposal\"C\n\
    \\rModuleVersion\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\CAN\n\
    \\aversion\CAN\STX \SOH(\EOTR\aversion:\EOT\232\160\US\SOHB\"Z\FScosmossdk.io/x/upgrade/types\200\225\RS\NULJ\207\CAN\n\
    \\ACK\DC2\EOT\NUL\NUL]\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NULH\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL/\n\
    \\v\n\
    \\EOT\b\153\236\ETX\DC2\ETX\n\
    \\NUL/\n\
    \Z\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL+\SOH\SUBN Plan specifies information about a planned upgrade and when it should occur.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STX/\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\SO\STX/\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SI\STX\"\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\SI\STX\"\n\
    \\238\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STX\DC2\SUB\224\ETX Sets the name for the upgrade. This name will be used by the upgraded\n\
    \ version of the software to apply any special \"on-upgrade\" commands during\n\
    \ the first BeginBlock method after the upgrade is applied. It is also used\n\
    \ to detect whether a software version can handle a given upgrade. If no\n\
    \ upgrade handler with this name has been set in the software, it will be\n\
    \ assumed that the software is out-of-date when the upgrade Time or Height is\n\
    \ reached and the software will exit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\DLE\DC1\n\
    \\181\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\GS\STX\RSs\SUB\166\SOH Deprecated: Time based upgrades have been deprecated. Time based upgrade logic\n\
    \ has been removed from the SDK.\n\
    \ If this field is not empty, an error will be thrown.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\GS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\FS \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\RS\ACKr\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\SOH\b\ETX\DC2\ETX\RS\a\CAN\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\242\251\ETX\DC2\ETX\RS\SUB4\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\RS6R\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\RSTq\n\
    \A\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX!\STX\DC3\SUB4 The height at which the upgrade must be performed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX!\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX!\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX!\DC1\DC2\n\
    \\146\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX%\STX\DC2\SUB\132\SOH Any application specific upgrade info to be included on-chain\n\
    \ such as a git commit that validators could automatically upgrade to\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX%\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX%\DLE\DC1\n\
    \\209\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX*\STXD\SUB\195\SOH Deprecated: UpgradedClientState field has been deprecated. IBC upgrade logic has been\n\
    \ moved to the IBC module in the sub module 02-client.\n\
    \ If this field is not empty, an error will be thrown.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX*\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX*\SYN+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX*./\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX*0C\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\EOT\b\ETX\DC2\ETX*1B\n\
    \\206\SOH\n\
    \\STX\EOT\SOH\DC2\EOT1\NUL?\SOH\SUB\193\SOH SoftwareUpgradeProposal is a gov Content type for initiating a software\n\
    \ upgrade.\n\
    \ Deprecated: This legacy proposal is deprecated in favor of Msg-based gov\n\
    \ proposals, see MsgSoftwareUpgrade.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX1\b\US\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX2\STX4\n\
    \\v\n\
    \\EOT\EOT\SOH\a\ETX\DC2\ETX2\STX4\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX3\STXL\n\
    \\SO\n\
    \\a\EOT\SOH\a\201\214\ENQ\NUL\DC2\ETX3\STXL\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX4\STXT\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX4\STXT\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX5\STX4\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX5\STX4\n\
    \$\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX8\STX\DC3\SUB\ETB title of the proposal\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX8\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX8\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX8\DC1\DC2\n\
    \*\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX;\STX\EM\SUB\GS description of the proposal\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX;\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX;\ETB\CAN\n\
    \#\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX>\STXN\SUB\SYN plan of the proposal\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX>\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX>\a\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX>\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX>\DLEM\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX>\DC1-\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\245\140\166\ENQ\DC2\ETX>/L\n\
    \\210\SOH\n\
    \\STX\EOT\STX\DC2\EOTE\NULP\SOH\SUB\197\SOH CancelSoftwareUpgradeProposal is a gov Content type for cancelling a software\n\
    \ upgrade.\n\
    \ Deprecated: This legacy proposal is deprecated in favor of Msg-based gov\n\
    \ proposals, see MsgCancelUpgrade.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXE\b%\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXF\STX4\n\
    \\v\n\
    \\EOT\EOT\STX\a\ETX\DC2\ETXF\STX4\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXG\STXL\n\
    \\SO\n\
    \\a\EOT\STX\a\201\214\ENQ\NUL\DC2\ETXG\STXL\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXH\STXZ\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETXH\STXZ\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXI\STX4\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETXI\STX4\n\
    \$\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXL\STX\DC3\SUB\ETB title of the proposal\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXL\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXL\DC1\DC2\n\
    \*\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXO\STX\EM\SUB\GS description of the proposal\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXO\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXO\ETB\CAN\n\
    \b\n\
    \\STX\EOT\ETX\DC2\EOTU\NUL]\SOH\SUBV ModuleVersion specifies a module and its consensus version.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXU\b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETXV\STX\"\n\
    \\r\n\
    \\ACK\EOT\ETX\a\141\244\ETX\DC2\ETXV\STX\"\n\
    \%\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXY\STX\DC2\SUB\CAN name of the app module\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXY\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXY\DLE\DC1\n\
    \2\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\\\STX\NAK\SUB% consensus version of the app module\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\\\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\\\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\\\DC3\DC4b\ACKproto3"