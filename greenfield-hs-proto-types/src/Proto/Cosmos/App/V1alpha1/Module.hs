{- This file was auto-generated from cosmos/app/v1alpha1/module.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.App.V1alpha1.Module (
        MigrateFromInfo(), ModuleDescriptor(), PackageReference()
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
import qualified Proto.Google.Protobuf.Descriptor
{- | Fields :
     
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.module'' @:: Lens' MigrateFromInfo Data.Text.Text@ -}
data MigrateFromInfo
  = MigrateFromInfo'_constructor {_MigrateFromInfo'module' :: !Data.Text.Text,
                                  _MigrateFromInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MigrateFromInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MigrateFromInfo "module'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigrateFromInfo'module'
           (\ x__ y__ -> x__ {_MigrateFromInfo'module' = y__}))
        Prelude.id
instance Data.ProtoLens.Message MigrateFromInfo where
  messageName _
    = Data.Text.pack "cosmos.app.v1alpha1.MigrateFromInfo"
  packedMessageDescriptor _
    = "\n\
      \\SIMigrateFromInfo\DC2\SYN\n\
      \\ACKmodule\CAN\SOH \SOH(\tR\ACKmodule"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        module'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "module"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"module'")) ::
              Data.ProtoLens.FieldDescriptor MigrateFromInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, module'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MigrateFromInfo'_unknownFields
        (\ x__ y__ -> x__ {_MigrateFromInfo'_unknownFields = y__})
  defMessage
    = MigrateFromInfo'_constructor
        {_MigrateFromInfo'module' = Data.ProtoLens.fieldDefault,
         _MigrateFromInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MigrateFromInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser MigrateFromInfo
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
                                       "module"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"module'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MigrateFromInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"module'") _x
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
instance Control.DeepSeq.NFData MigrateFromInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MigrateFromInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MigrateFromInfo'module' x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.goImport' @:: Lens' ModuleDescriptor Data.Text.Text@
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.usePackage' @:: Lens' ModuleDescriptor [PackageReference]@
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.vec'usePackage' @:: Lens' ModuleDescriptor (Data.Vector.Vector PackageReference)@
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.canMigrateFrom' @:: Lens' ModuleDescriptor [MigrateFromInfo]@
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.vec'canMigrateFrom' @:: Lens' ModuleDescriptor (Data.Vector.Vector MigrateFromInfo)@ -}
data ModuleDescriptor
  = ModuleDescriptor'_constructor {_ModuleDescriptor'goImport :: !Data.Text.Text,
                                   _ModuleDescriptor'usePackage :: !(Data.Vector.Vector PackageReference),
                                   _ModuleDescriptor'canMigrateFrom :: !(Data.Vector.Vector MigrateFromInfo),
                                   _ModuleDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleDescriptor "goImport" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleDescriptor'goImport
           (\ x__ y__ -> x__ {_ModuleDescriptor'goImport = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleDescriptor "usePackage" [PackageReference] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleDescriptor'usePackage
           (\ x__ y__ -> x__ {_ModuleDescriptor'usePackage = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleDescriptor "vec'usePackage" (Data.Vector.Vector PackageReference) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleDescriptor'usePackage
           (\ x__ y__ -> x__ {_ModuleDescriptor'usePackage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleDescriptor "canMigrateFrom" [MigrateFromInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleDescriptor'canMigrateFrom
           (\ x__ y__ -> x__ {_ModuleDescriptor'canMigrateFrom = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleDescriptor "vec'canMigrateFrom" (Data.Vector.Vector MigrateFromInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleDescriptor'canMigrateFrom
           (\ x__ y__ -> x__ {_ModuleDescriptor'canMigrateFrom = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleDescriptor where
  messageName _
    = Data.Text.pack "cosmos.app.v1alpha1.ModuleDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DLEModuleDescriptor\DC2\ESC\n\
      \\tgo_import\CAN\SOH \SOH(\tR\bgoImport\DC2F\n\
      \\vuse_package\CAN\STX \ETX(\v2%.cosmos.app.v1alpha1.PackageReferenceR\n\
      \usePackage\DC2N\n\
      \\DLEcan_migrate_from\CAN\ETX \ETX(\v2$.cosmos.app.v1alpha1.MigrateFromInfoR\SOcanMigrateFrom"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        goImport__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "go_import"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"goImport")) ::
              Data.ProtoLens.FieldDescriptor ModuleDescriptor
        usePackage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_package"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PackageReference)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"usePackage")) ::
              Data.ProtoLens.FieldDescriptor ModuleDescriptor
        canMigrateFrom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "can_migrate_from"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MigrateFromInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"canMigrateFrom")) ::
              Data.ProtoLens.FieldDescriptor ModuleDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, goImport__field_descriptor),
           (Data.ProtoLens.Tag 2, usePackage__field_descriptor),
           (Data.ProtoLens.Tag 3, canMigrateFrom__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ModuleDescriptor'_unknownFields = y__})
  defMessage
    = ModuleDescriptor'_constructor
        {_ModuleDescriptor'goImport = Data.ProtoLens.fieldDefault,
         _ModuleDescriptor'usePackage = Data.Vector.Generic.empty,
         _ModuleDescriptor'canMigrateFrom = Data.Vector.Generic.empty,
         _ModuleDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MigrateFromInfo
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PackageReference
                -> Data.ProtoLens.Encoding.Bytes.Parser ModuleDescriptor
        loop x mutable'canMigrateFrom mutable'usePackage
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'canMigrateFrom <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'canMigrateFrom)
                      frozen'usePackage <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'usePackage)
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
                              (Data.ProtoLens.Field.field @"vec'canMigrateFrom")
                              frozen'canMigrateFrom
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'usePackage") frozen'usePackage
                                 x)))
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
                                       "go_import"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"goImport") y x)
                                  mutable'canMigrateFrom mutable'usePackage
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "use_package"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'usePackage y)
                                loop x mutable'canMigrateFrom v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "can_migrate_from"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'canMigrateFrom y)
                                loop x v mutable'usePackage
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'canMigrateFrom mutable'usePackage
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'canMigrateFrom <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'usePackage <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'canMigrateFrom
                mutable'usePackage)
          "ModuleDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"goImport") _x
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
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'usePackage") _x))
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
                         (Data.ProtoLens.Field.field @"vec'canMigrateFrom") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ModuleDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleDescriptor'goImport x__)
                (Control.DeepSeq.deepseq
                   (_ModuleDescriptor'usePackage x__)
                   (Control.DeepSeq.deepseq
                      (_ModuleDescriptor'canMigrateFrom x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.name' @:: Lens' PackageReference Data.Text.Text@
         * 'Proto.Cosmos.App.V1alpha1.Module_Fields.revision' @:: Lens' PackageReference Data.Word.Word32@ -}
data PackageReference
  = PackageReference'_constructor {_PackageReference'name :: !Data.Text.Text,
                                   _PackageReference'revision :: !Data.Word.Word32,
                                   _PackageReference'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PackageReference where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PackageReference "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PackageReference'name
           (\ x__ y__ -> x__ {_PackageReference'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PackageReference "revision" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PackageReference'revision
           (\ x__ y__ -> x__ {_PackageReference'revision = y__}))
        Prelude.id
instance Data.ProtoLens.Message PackageReference where
  messageName _
    = Data.Text.pack "cosmos.app.v1alpha1.PackageReference"
  packedMessageDescriptor _
    = "\n\
      \\DLEPackageReference\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SUB\n\
      \\brevision\CAN\STX \SOH(\rR\brevision"
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
              Data.ProtoLens.FieldDescriptor PackageReference
        revision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "revision"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"revision")) ::
              Data.ProtoLens.FieldDescriptor PackageReference
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, revision__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PackageReference'_unknownFields
        (\ x__ y__ -> x__ {_PackageReference'_unknownFields = y__})
  defMessage
    = PackageReference'_constructor
        {_PackageReference'name = Data.ProtoLens.fieldDefault,
         _PackageReference'revision = Data.ProtoLens.fieldDefault,
         _PackageReference'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PackageReference
          -> Data.ProtoLens.Encoding.Bytes.Parser PackageReference
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "revision"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"revision") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PackageReference"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"revision") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PackageReference where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PackageReference'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PackageReference'name x__)
                (Control.DeepSeq.deepseq (_PackageReference'revision x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/app/v1alpha1/module.proto\DC2\DC3cosmos.app.v1alpha1\SUB google/protobuf/descriptor.proto\"\199\SOH\n\
    \\DLEModuleDescriptor\DC2\ESC\n\
    \\tgo_import\CAN\SOH \SOH(\tR\bgoImport\DC2F\n\
    \\vuse_package\CAN\STX \ETX(\v2%.cosmos.app.v1alpha1.PackageReferenceR\n\
    \usePackage\DC2N\n\
    \\DLEcan_migrate_from\CAN\ETX \ETX(\v2$.cosmos.app.v1alpha1.MigrateFromInfoR\SOcanMigrateFrom\"B\n\
    \\DLEPackageReference\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SUB\n\
    \\brevision\CAN\STX \SOH(\rR\brevision\")\n\
    \\SIMigrateFromInfo\DC2\SYN\n\
    \\ACKmodule\CAN\SOH \SOH(\tR\ACKmodule:a\n\
    \\ACKmodule\CAN\135\232\162\ESC \SOH(\v2%.cosmos.app.v1alpha1.ModuleDescriptor\DC2\US.google.protobuf.MessageOptionsR\ACKmoduleJ\254!\n\
    \\ACK\DC2\EOT\NUL\NULZ\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\SOH\a\DC2\EOT\ACK\NUL\SI\SOH\n\
    \\154\EOT\n\
    \\STX\a\NUL\DC2\ETX\SO\STX%\SUB\142\EOT module indicates that this proto type is a config object for an app module\n\
    \ and optionally provides other descriptive information about the module.\n\
    \ It is recommended that a new module config object and go module is versioned\n\
    \ for every state machine breaking version of a module. The recommended\n\
    \ pattern for doing this is to put module config objects in a separate proto\n\
    \ package from the API they expose. Ex: the cosmos.group.v1 API would be\n\
    \ exposed by module configs cosmos.group.module.v1, cosmos.group.module.v2, etc.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\ACK\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\SO\STX\DC2\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\SO\DC3\EM\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\SO\FS$\n\
    \7\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL&\SOH\SUB+ ModuleDescriptor describes an app module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\CAN\n\
    \\205\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX\ETB\SUB\191\SOH go_import names the package that should be imported by an app to load the\n\
    \ module in the runtime module registry. It is required to make debugging\n\
    \ of configuration errors easier for users.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\NAK\SYN\n\
    \\133\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX,\SUB\247\SOH use_package refers to a protobuf package that this module\n\
    \ uses and exposes to the world. In an app, only one module should \"use\"\n\
    \ or own a single protobuf package. It is assumed that the module uses\n\
    \ all of the .proto files in a single package.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\FS'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS*+\n\
    \\134\EOT\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX%\STX0\SUB\248\ETX can_migrate_from defines which module versions this module can migrate\n\
    \ state from. The framework will check that one module version is able to\n\
    \ migrate from a previous module version before attempting to update its\n\
    \ config. It is assumed that modules can transitively migrate from earlier\n\
    \ versions. For instance if v3 declares it can migrate from v2, and v2\n\
    \ declares it can migrate from v1, the framework knows how to migrate\n\
    \ from v1 to v3, assuming all 3 module versions are registered at runtime.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX%\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX%\ESC+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX%./\n\
    \U\n\
    \\STX\EOT\SOH\DC2\EOT)\NULQ\SOH\SUBI PackageReference is a reference to a protobuf package used by a module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX)\b\CAN\n\
    \?\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX+\STX\DC2\SUB2 name is the fully-qualified name of the package.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX+\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX+\DLE\DC1\n\
    \\132\SI\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXP\STX\SYN\SUB\246\SO revision is the optional revision of the package that is being used.\n\
    \ Protobuf packages used in Cosmos should generally have a major version\n\
    \ as the last part of the package name, ex. foo.bar.baz.v1.\n\
    \ The revision of a package can be thought of as the minor version of a\n\
    \ package which has additional backwards compatible definitions that weren't\n\
    \ present in a previous version.\n\
    \\n\
    \ A package should indicate its revision with a source code comment\n\
    \ above the package declaration in one of its files containing the\n\
    \ text \"Revision N\" where N is an integer revision. All packages start\n\
    \ at revision 0 the first time they are released in a module.\n\
    \\n\
    \ When a new version of a module is released and items are added to existing\n\
    \ .proto files, these definitions should contain comments of the form\n\
    \ \"Since: Revision N\" where N is an integer revision.\n\
    \\n\
    \ When the module runtime starts up, it will check the pinned proto\n\
    \ image and panic if there are runtime protobuf definitions that are not\n\
    \ in the pinned descriptor which do not have\n\
    \ a \"Since Revision N\" comment or have a \"Since Revision N\" comment where\n\
    \ N is <= to the revision specified here. This indicates that the protobuf\n\
    \ files have been updated, but the pinned file descriptor hasn't.\n\
    \\n\
    \ If there are items in the pinned file descriptor with a revision\n\
    \ greater than the value indicated here, this will also cause a panic\n\
    \ as it may mean that the pinned descriptor for a legacy module has been\n\
    \ improperly updated or that there is some other versioning discrepancy.\n\
    \ Runtime protobuf definitions will also be checked for compatibility\n\
    \ with pinned file descriptors to make sure there are no incompatible changes.\n\
    \\n\
    \ This behavior ensures that:\n\
    \ * pinned proto images are up-to-date\n\
    \ * protobuf files are carefully annotated with revision comments which\n\
    \   are important good client UX\n\
    \ * protobuf files are changed in backwards and forwards compatible ways\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXP\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXP\DC4\NAK\n\
    \g\n\
    \\STX\EOT\STX\DC2\EOTU\NULZ\SOH\SUB[ MigrateFromInfo is information on a module version that a newer module\n\
    \ can migrate from.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXU\b\ETB\n\
    \\158\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXY\STX\DC4\SUB\144\SOH module is the fully-qualified protobuf name of the module config object\n\
    \ for the previous module version, ex: \"cosmos.group.module.v1.Module\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXY\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXY\DC2\DC3b\ACKproto3"