{- This file was auto-generated from cosmos/app/runtime/v1alpha1/module.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.App.Runtime.V1alpha1.Module (
        Module(), StoreKeyConfig()
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
import qualified Proto.Cosmos.App.V1alpha1.Module
{- | Fields :
     
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.appName' @:: Lens' Module Data.Text.Text@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.beginBlockers' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'beginBlockers' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.endBlockers' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'endBlockers' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.initGenesis' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'initGenesis' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.exportGenesis' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'exportGenesis' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.overrideStoreKeys' @:: Lens' Module [StoreKeyConfig]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'overrideStoreKeys' @:: Lens' Module (Data.Vector.Vector StoreKeyConfig)@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.orderMigrations' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'orderMigrations' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.precommiters' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'precommiters' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.prepareCheckStaters' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.vec'prepareCheckStaters' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@ -}
data Module
  = Module'_constructor {_Module'appName :: !Data.Text.Text,
                         _Module'beginBlockers :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'endBlockers :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'initGenesis :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'exportGenesis :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'overrideStoreKeys :: !(Data.Vector.Vector StoreKeyConfig),
                         _Module'orderMigrations :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'precommiters :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'prepareCheckStaters :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Module where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Module "appName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'appName (\ x__ y__ -> x__ {_Module'appName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "beginBlockers" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'beginBlockers
           (\ x__ y__ -> x__ {_Module'beginBlockers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'beginBlockers" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'beginBlockers
           (\ x__ y__ -> x__ {_Module'beginBlockers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "endBlockers" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'endBlockers (\ x__ y__ -> x__ {_Module'endBlockers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'endBlockers" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'endBlockers (\ x__ y__ -> x__ {_Module'endBlockers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "initGenesis" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'initGenesis (\ x__ y__ -> x__ {_Module'initGenesis = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'initGenesis" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'initGenesis (\ x__ y__ -> x__ {_Module'initGenesis = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "exportGenesis" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'exportGenesis
           (\ x__ y__ -> x__ {_Module'exportGenesis = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'exportGenesis" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'exportGenesis
           (\ x__ y__ -> x__ {_Module'exportGenesis = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "overrideStoreKeys" [StoreKeyConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'overrideStoreKeys
           (\ x__ y__ -> x__ {_Module'overrideStoreKeys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'overrideStoreKeys" (Data.Vector.Vector StoreKeyConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'overrideStoreKeys
           (\ x__ y__ -> x__ {_Module'overrideStoreKeys = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "orderMigrations" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'orderMigrations
           (\ x__ y__ -> x__ {_Module'orderMigrations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'orderMigrations" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'orderMigrations
           (\ x__ y__ -> x__ {_Module'orderMigrations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "precommiters" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'precommiters
           (\ x__ y__ -> x__ {_Module'precommiters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'precommiters" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'precommiters
           (\ x__ y__ -> x__ {_Module'precommiters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "prepareCheckStaters" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'prepareCheckStaters
           (\ x__ y__ -> x__ {_Module'prepareCheckStaters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'prepareCheckStaters" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'prepareCheckStaters
           (\ x__ y__ -> x__ {_Module'prepareCheckStaters = y__}))
        Prelude.id
instance Data.ProtoLens.Message Module where
  messageName _ = Data.Text.pack "cosmos.app.runtime.v1alpha1.Module"
  packedMessageDescriptor _
    = "\n\
      \\ACKModule\DC2\EM\n\
      \\bapp_name\CAN\SOH \SOH(\tR\aappName\DC2%\n\
      \\SObegin_blockers\CAN\STX \ETX(\tR\rbeginBlockers\DC2!\n\
      \\fend_blockers\CAN\ETX \ETX(\tR\vendBlockers\DC2!\n\
      \\finit_genesis\CAN\EOT \ETX(\tR\vinitGenesis\DC2%\n\
      \\SOexport_genesis\CAN\ENQ \ETX(\tR\rexportGenesis\DC2[\n\
      \\DC3override_store_keys\CAN\ACK \ETX(\v2+.cosmos.app.runtime.v1alpha1.StoreKeyConfigR\DC1overrideStoreKeys\DC2)\n\
      \\DLEorder_migrations\CAN\a \ETX(\tR\SIorderMigrations\DC2\"\n\
      \\fprecommiters\CAN\b \ETX(\tR\fprecommiters\DC22\n\
      \\NAKprepare_check_staters\CAN\t \ETX(\tR\DC3prepareCheckStaters:C\186\192\150\218\SOH=\n\
      \$github.com/cosmos/cosmos-sdk/runtime\DC2\NAK\n\
      \\DC3cosmos.app.v1alpha1"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        appName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"appName")) ::
              Data.ProtoLens.FieldDescriptor Module
        beginBlockers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "begin_blockers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"beginBlockers")) ::
              Data.ProtoLens.FieldDescriptor Module
        endBlockers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_blockers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"endBlockers")) ::
              Data.ProtoLens.FieldDescriptor Module
        initGenesis__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "init_genesis"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"initGenesis")) ::
              Data.ProtoLens.FieldDescriptor Module
        exportGenesis__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "export_genesis"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"exportGenesis")) ::
              Data.ProtoLens.FieldDescriptor Module
        overrideStoreKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "override_store_keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StoreKeyConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"overrideStoreKeys")) ::
              Data.ProtoLens.FieldDescriptor Module
        orderMigrations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order_migrations"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"orderMigrations")) ::
              Data.ProtoLens.FieldDescriptor Module
        precommiters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "precommiters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"precommiters")) ::
              Data.ProtoLens.FieldDescriptor Module
        prepareCheckStaters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prepare_check_staters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"prepareCheckStaters")) ::
              Data.ProtoLens.FieldDescriptor Module
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, appName__field_descriptor),
           (Data.ProtoLens.Tag 2, beginBlockers__field_descriptor),
           (Data.ProtoLens.Tag 3, endBlockers__field_descriptor),
           (Data.ProtoLens.Tag 4, initGenesis__field_descriptor),
           (Data.ProtoLens.Tag 5, exportGenesis__field_descriptor),
           (Data.ProtoLens.Tag 6, overrideStoreKeys__field_descriptor),
           (Data.ProtoLens.Tag 7, orderMigrations__field_descriptor),
           (Data.ProtoLens.Tag 8, precommiters__field_descriptor),
           (Data.ProtoLens.Tag 9, prepareCheckStaters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Module'_unknownFields
        (\ x__ y__ -> x__ {_Module'_unknownFields = y__})
  defMessage
    = Module'_constructor
        {_Module'appName = Data.ProtoLens.fieldDefault,
         _Module'beginBlockers = Data.Vector.Generic.empty,
         _Module'endBlockers = Data.Vector.Generic.empty,
         _Module'initGenesis = Data.Vector.Generic.empty,
         _Module'exportGenesis = Data.Vector.Generic.empty,
         _Module'overrideStoreKeys = Data.Vector.Generic.empty,
         _Module'orderMigrations = Data.Vector.Generic.empty,
         _Module'precommiters = Data.Vector.Generic.empty,
         _Module'prepareCheckStaters = Data.Vector.Generic.empty,
         _Module'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Module
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StoreKeyConfig
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                               -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                                  -> Data.ProtoLens.Encoding.Bytes.Parser Module
        loop
          x
          mutable'beginBlockers
          mutable'endBlockers
          mutable'exportGenesis
          mutable'initGenesis
          mutable'orderMigrations
          mutable'overrideStoreKeys
          mutable'precommiters
          mutable'prepareCheckStaters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'beginBlockers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'beginBlockers)
                      frozen'endBlockers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'endBlockers)
                      frozen'exportGenesis <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'exportGenesis)
                      frozen'initGenesis <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'initGenesis)
                      frozen'orderMigrations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'orderMigrations)
                      frozen'overrideStoreKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'overrideStoreKeys)
                      frozen'precommiters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'precommiters)
                      frozen'prepareCheckStaters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'prepareCheckStaters)
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
                              (Data.ProtoLens.Field.field @"vec'beginBlockers")
                              frozen'beginBlockers
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'endBlockers") frozen'endBlockers
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'exportGenesis")
                                    frozen'exportGenesis
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'initGenesis")
                                       frozen'initGenesis
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'orderMigrations")
                                          frozen'orderMigrations
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'overrideStoreKeys")
                                             frozen'overrideStoreKeys
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'precommiters")
                                                frozen'precommiters
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field
                                                      @"vec'prepareCheckStaters")
                                                   frozen'prepareCheckStaters x)))))))))
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
                                       "app_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"appName") y x)
                                  mutable'beginBlockers mutable'endBlockers mutable'exportGenesis
                                  mutable'initGenesis mutable'orderMigrations
                                  mutable'overrideStoreKeys mutable'precommiters
                                  mutable'prepareCheckStaters
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "begin_blockers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'beginBlockers y)
                                loop
                                  x v mutable'endBlockers mutable'exportGenesis mutable'initGenesis
                                  mutable'orderMigrations mutable'overrideStoreKeys
                                  mutable'precommiters mutable'prepareCheckStaters
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
                                        "end_blockers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'endBlockers y)
                                loop
                                  x mutable'beginBlockers v mutable'exportGenesis
                                  mutable'initGenesis mutable'orderMigrations
                                  mutable'overrideStoreKeys mutable'precommiters
                                  mutable'prepareCheckStaters
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
                                        "init_genesis"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'initGenesis y)
                                loop
                                  x mutable'beginBlockers mutable'endBlockers mutable'exportGenesis
                                  v mutable'orderMigrations mutable'overrideStoreKeys
                                  mutable'precommiters mutable'prepareCheckStaters
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
                                        "export_genesis"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'exportGenesis y)
                                loop
                                  x mutable'beginBlockers mutable'endBlockers v mutable'initGenesis
                                  mutable'orderMigrations mutable'overrideStoreKeys
                                  mutable'precommiters mutable'prepareCheckStaters
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "override_store_keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'overrideStoreKeys y)
                                loop
                                  x mutable'beginBlockers mutable'endBlockers mutable'exportGenesis
                                  mutable'initGenesis mutable'orderMigrations v mutable'precommiters
                                  mutable'prepareCheckStaters
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
                                        "order_migrations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'orderMigrations y)
                                loop
                                  x mutable'beginBlockers mutable'endBlockers mutable'exportGenesis
                                  mutable'initGenesis v mutable'overrideStoreKeys
                                  mutable'precommiters mutable'prepareCheckStaters
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "precommiters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'precommiters y)
                                loop
                                  x mutable'beginBlockers mutable'endBlockers mutable'exportGenesis
                                  mutable'initGenesis mutable'orderMigrations
                                  mutable'overrideStoreKeys v mutable'prepareCheckStaters
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "prepare_check_staters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'prepareCheckStaters y)
                                loop
                                  x mutable'beginBlockers mutable'endBlockers mutable'exportGenesis
                                  mutable'initGenesis mutable'orderMigrations
                                  mutable'overrideStoreKeys mutable'precommiters v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'beginBlockers mutable'endBlockers mutable'exportGenesis
                                  mutable'initGenesis mutable'orderMigrations
                                  mutable'overrideStoreKeys mutable'precommiters
                                  mutable'prepareCheckStaters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'beginBlockers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'endBlockers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'exportGenesis <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'initGenesis <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'orderMigrations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'overrideStoreKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'precommiters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'prepareCheckStaters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'beginBlockers mutable'endBlockers
                mutable'exportGenesis mutable'initGenesis mutable'orderMigrations
                mutable'overrideStoreKeys mutable'precommiters
                mutable'prepareCheckStaters)
          "Module"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"appName") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'beginBlockers") _x))
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
                         (Data.ProtoLens.Field.field @"vec'endBlockers") _x))
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
                            (Data.ProtoLens.Field.field @"vec'initGenesis") _x))
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
                               (Data.ProtoLens.Field.field @"vec'exportGenesis") _x))
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
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'overrideStoreKeys") _x))
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
                                     (Data.ProtoLens.Field.field @"vec'orderMigrations") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.Text.Encoding.encodeUtf8 _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'precommiters") _x))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
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
                                                   Data.Text.Encoding.encodeUtf8 _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'prepareCheckStaters")
                                           _x))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData Module where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Module'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Module'appName x__)
                (Control.DeepSeq.deepseq
                   (_Module'beginBlockers x__)
                   (Control.DeepSeq.deepseq
                      (_Module'endBlockers x__)
                      (Control.DeepSeq.deepseq
                         (_Module'initGenesis x__)
                         (Control.DeepSeq.deepseq
                            (_Module'exportGenesis x__)
                            (Control.DeepSeq.deepseq
                               (_Module'overrideStoreKeys x__)
                               (Control.DeepSeq.deepseq
                                  (_Module'orderMigrations x__)
                                  (Control.DeepSeq.deepseq
                                     (_Module'precommiters x__)
                                     (Control.DeepSeq.deepseq
                                        (_Module'prepareCheckStaters x__) ())))))))))
{- | Fields :
     
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.moduleName' @:: Lens' StoreKeyConfig Data.Text.Text@
         * 'Proto.Cosmos.App.Runtime.V1alpha1.Module_Fields.kvStoreKey' @:: Lens' StoreKeyConfig Data.Text.Text@ -}
data StoreKeyConfig
  = StoreKeyConfig'_constructor {_StoreKeyConfig'moduleName :: !Data.Text.Text,
                                 _StoreKeyConfig'kvStoreKey :: !Data.Text.Text,
                                 _StoreKeyConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StoreKeyConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StoreKeyConfig "moduleName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreKeyConfig'moduleName
           (\ x__ y__ -> x__ {_StoreKeyConfig'moduleName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StoreKeyConfig "kvStoreKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreKeyConfig'kvStoreKey
           (\ x__ y__ -> x__ {_StoreKeyConfig'kvStoreKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message StoreKeyConfig where
  messageName _
    = Data.Text.pack "cosmos.app.runtime.v1alpha1.StoreKeyConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOStoreKeyConfig\DC2\US\n\
      \\vmodule_name\CAN\SOH \SOH(\tR\n\
      \moduleName\DC2 \n\
      \\fkv_store_key\CAN\STX \SOH(\tR\n\
      \kvStoreKey"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        moduleName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "module_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"moduleName")) ::
              Data.ProtoLens.FieldDescriptor StoreKeyConfig
        kvStoreKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kv_store_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"kvStoreKey")) ::
              Data.ProtoLens.FieldDescriptor StoreKeyConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, moduleName__field_descriptor),
           (Data.ProtoLens.Tag 2, kvStoreKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StoreKeyConfig'_unknownFields
        (\ x__ y__ -> x__ {_StoreKeyConfig'_unknownFields = y__})
  defMessage
    = StoreKeyConfig'_constructor
        {_StoreKeyConfig'moduleName = Data.ProtoLens.fieldDefault,
         _StoreKeyConfig'kvStoreKey = Data.ProtoLens.fieldDefault,
         _StoreKeyConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StoreKeyConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser StoreKeyConfig
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
                                       "module_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"moduleName") y x)
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
                                       "kv_store_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kvStoreKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StoreKeyConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"moduleName") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"kvStoreKey") _x
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
instance Control.DeepSeq.NFData StoreKeyConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StoreKeyConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StoreKeyConfig'moduleName x__)
                (Control.DeepSeq.deepseq (_StoreKeyConfig'kvStoreKey x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(cosmos/app/runtime/v1alpha1/module.proto\DC2\ESCcosmos.app.runtime.v1alpha1\SUB cosmos/app/v1alpha1/module.proto\"\220\ETX\n\
    \\ACKModule\DC2\EM\n\
    \\bapp_name\CAN\SOH \SOH(\tR\aappName\DC2%\n\
    \\SObegin_blockers\CAN\STX \ETX(\tR\rbeginBlockers\DC2!\n\
    \\fend_blockers\CAN\ETX \ETX(\tR\vendBlockers\DC2!\n\
    \\finit_genesis\CAN\EOT \ETX(\tR\vinitGenesis\DC2%\n\
    \\SOexport_genesis\CAN\ENQ \ETX(\tR\rexportGenesis\DC2[\n\
    \\DC3override_store_keys\CAN\ACK \ETX(\v2+.cosmos.app.runtime.v1alpha1.StoreKeyConfigR\DC1overrideStoreKeys\DC2)\n\
    \\DLEorder_migrations\CAN\a \ETX(\tR\SIorderMigrations\DC2\"\n\
    \\fprecommiters\CAN\b \ETX(\tR\fprecommiters\DC22\n\
    \\NAKprepare_check_staters\CAN\t \ETX(\tR\DC3prepareCheckStaters:C\186\192\150\218\SOH=\n\
    \$github.com/cosmos/cosmos-sdk/runtime\DC2\NAK\n\
    \\DC3cosmos.app.v1alpha1\"S\n\
    \\SOStoreKeyConfig\DC2\US\n\
    \\vmodule_name\CAN\SOH \SOH(\tR\n\
    \moduleName\DC2 \n\
    \\fkv_store_key\CAN\STX \SOH(\tR\n\
    \kvStoreKeyJ\187\DC4\n\
    \\ACK\DC2\EOT\NUL\NUL@\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \A\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL6\SOH\SUB5 Module is the config object for the runtime module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\b\STX\v\EOT\n\
    \\SI\n\
    \\a\EOT\NUL\a\135\232\162\ESC\DC2\EOT\b\STX\v\EOT\n\
    \/\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\STX\SYN\SUB\" app_name is the name of the app.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\DC4\NAK\n\
    \\189\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC3\STX%\SUB\175\SOH begin_blockers specifies the module names of begin blockers\n\
    \ to call in the order in which they should be called. If this is left empty\n\
    \ no begin blocker will be registered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC3#$\n\
    \\187\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\CAN\STX#\SUB\173\SOH end_blockers specifies the module names of the end blockers\n\
    \ to call in the order in which they should be called. If this is left empty\n\
    \ no end blocker will be registered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\CAN\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\CAN!\"\n\
    \\203\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\GS\STX#\SUB\189\SOH init_genesis specifies the module names of init genesis functions\n\
    \ to call in the order in which they should be called. If this is left empty\n\
    \ no init genesis function will be registered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\GS\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\GS!\"\n\
    \\190\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\"\STX%\SUB\176\SOH export_genesis specifies the order in which to export module genesis data.\n\
    \ If this is left empty, the init_genesis order will be used for export genesis\n\
    \ if it is specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\"\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\"#$\n\
    \\129\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX&\STX2\SUBt override_store_keys is an optional list of overrides for the module store keys\n\
    \ to be used in keeper construction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX&\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX&\SUB-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX&01\n\
    \\253\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX+\STX'\SUB\239\SOH order_migrations defines the order in which module migrations are performed.\n\
    \ If this is left empty, it uses the default migration order.\n\
    \ https://pkg.go.dev/github.com/cosmos/cosmos-sdk@v0.47.0-alpha2/types/module#DefaultMigrationsOrder\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX+\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX+%&\n\
    \\194\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX0\STX#\SUB\180\SOH precommiters specifies the module names of the precommiters\n\
    \ to call in the order in which they should be called. If this is left empty\n\
    \ no precommit function will be registered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX0\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX0!\"\n\
    \\220\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX5\STX,\SUB\206\SOH prepare_check_staters specifies the module names of the prepare_check_staters\n\
    \ to call in the order in which they should be called. If this is left empty\n\
    \ no preparecheckstate function will be registered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX5\DC2'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX5*+\n\
    \q\n\
    \\STX\EOT\SOH\DC2\EOT:\NUL@\SOH\SUBe StoreKeyConfig may be supplied to override the default module store key, which\n\
    \ is the module name.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX:\b\SYN\n\
    \>\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX<\STX\EM\SUB1 name of the module to override the store key of\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX<\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX<\ETB\CAN\n\
    \B\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX?\STX\SUB\SUB5 the kv store key to use instead of the module name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX?\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX?\CAN\EMb\ACKproto3"