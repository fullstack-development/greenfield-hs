{- This file was auto-generated from cosmos/app/v1alpha1/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.App.V1alpha1.Config (
        Config(), GolangBinding(), ModuleConfig()
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
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.modules' @:: Lens' Config [ModuleConfig]@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.vec'modules' @:: Lens' Config (Data.Vector.Vector ModuleConfig)@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.golangBindings' @:: Lens' Config [GolangBinding]@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.vec'golangBindings' @:: Lens' Config (Data.Vector.Vector GolangBinding)@ -}
data Config
  = Config'_constructor {_Config'modules :: !(Data.Vector.Vector ModuleConfig),
                         _Config'golangBindings :: !(Data.Vector.Vector GolangBinding),
                         _Config'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Config where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Config "modules" [ModuleConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'modules (\ x__ y__ -> x__ {_Config'modules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Config "vec'modules" (Data.Vector.Vector ModuleConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'modules (\ x__ y__ -> x__ {_Config'modules = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config "golangBindings" [GolangBinding] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'golangBindings
           (\ x__ y__ -> x__ {_Config'golangBindings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Config "vec'golangBindings" (Data.Vector.Vector GolangBinding) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'golangBindings
           (\ x__ y__ -> x__ {_Config'golangBindings = y__}))
        Prelude.id
instance Data.ProtoLens.Message Config where
  messageName _ = Data.Text.pack "cosmos.app.v1alpha1.Config"
  packedMessageDescriptor _
    = "\n\
      \\ACKConfig\DC2;\n\
      \\amodules\CAN\SOH \ETX(\v2!.cosmos.app.v1alpha1.ModuleConfigR\amodules\DC2K\n\
      \\SIgolang_bindings\CAN\STX \ETX(\v2\".cosmos.app.v1alpha1.GolangBindingR\SOgolangBindings"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        modules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "modules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModuleConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"modules")) ::
              Data.ProtoLens.FieldDescriptor Config
        golangBindings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "golang_bindings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GolangBinding)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"golangBindings")) ::
              Data.ProtoLens.FieldDescriptor Config
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, modules__field_descriptor),
           (Data.ProtoLens.Tag 2, golangBindings__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Config'_unknownFields
        (\ x__ y__ -> x__ {_Config'_unknownFields = y__})
  defMessage
    = Config'_constructor
        {_Config'modules = Data.Vector.Generic.empty,
         _Config'golangBindings = Data.Vector.Generic.empty,
         _Config'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Config
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld GolangBinding
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ModuleConfig
                -> Data.ProtoLens.Encoding.Bytes.Parser Config
        loop x mutable'golangBindings mutable'modules
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'golangBindings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'golangBindings)
                      frozen'modules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'modules)
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
                              (Data.ProtoLens.Field.field @"vec'golangBindings")
                              frozen'golangBindings
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'modules") frozen'modules x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "modules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'modules y)
                                loop x mutable'golangBindings v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "golang_bindings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'golangBindings y)
                                loop x v mutable'modules
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'golangBindings mutable'modules
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'golangBindings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'modules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'golangBindings mutable'modules)
          "Config"
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
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'modules") _x))
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
                      (Data.ProtoLens.Field.field @"vec'golangBindings") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Config where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Config'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Config'modules x__)
                (Control.DeepSeq.deepseq (_Config'golangBindings x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.interfaceType' @:: Lens' GolangBinding Data.Text.Text@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.implementation' @:: Lens' GolangBinding Data.Text.Text@ -}
data GolangBinding
  = GolangBinding'_constructor {_GolangBinding'interfaceType :: !Data.Text.Text,
                                _GolangBinding'implementation :: !Data.Text.Text,
                                _GolangBinding'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GolangBinding where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GolangBinding "interfaceType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GolangBinding'interfaceType
           (\ x__ y__ -> x__ {_GolangBinding'interfaceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GolangBinding "implementation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GolangBinding'implementation
           (\ x__ y__ -> x__ {_GolangBinding'implementation = y__}))
        Prelude.id
instance Data.ProtoLens.Message GolangBinding where
  messageName _ = Data.Text.pack "cosmos.app.v1alpha1.GolangBinding"
  packedMessageDescriptor _
    = "\n\
      \\rGolangBinding\DC2%\n\
      \\SOinterface_type\CAN\SOH \SOH(\tR\rinterfaceType\DC2&\n\
      \\SOimplementation\CAN\STX \SOH(\tR\SOimplementation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        interfaceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interface_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"interfaceType")) ::
              Data.ProtoLens.FieldDescriptor GolangBinding
        implementation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "implementation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"implementation")) ::
              Data.ProtoLens.FieldDescriptor GolangBinding
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, interfaceType__field_descriptor),
           (Data.ProtoLens.Tag 2, implementation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GolangBinding'_unknownFields
        (\ x__ y__ -> x__ {_GolangBinding'_unknownFields = y__})
  defMessage
    = GolangBinding'_constructor
        {_GolangBinding'interfaceType = Data.ProtoLens.fieldDefault,
         _GolangBinding'implementation = Data.ProtoLens.fieldDefault,
         _GolangBinding'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GolangBinding -> Data.ProtoLens.Encoding.Bytes.Parser GolangBinding
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
                                       "interface_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"interfaceType") y x)
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
                                       "implementation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"implementation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GolangBinding"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"interfaceType") _x
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
                         (Data.ProtoLens.Field.field @"implementation") _x
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
instance Control.DeepSeq.NFData GolangBinding where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GolangBinding'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GolangBinding'interfaceType x__)
                (Control.DeepSeq.deepseq (_GolangBinding'implementation x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.name' @:: Lens' ModuleConfig Data.Text.Text@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.config' @:: Lens' ModuleConfig Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.maybe'config' @:: Lens' ModuleConfig (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.golangBindings' @:: Lens' ModuleConfig [GolangBinding]@
         * 'Proto.Cosmos.App.V1alpha1.Config_Fields.vec'golangBindings' @:: Lens' ModuleConfig (Data.Vector.Vector GolangBinding)@ -}
data ModuleConfig
  = ModuleConfig'_constructor {_ModuleConfig'name :: !Data.Text.Text,
                               _ModuleConfig'config :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                               _ModuleConfig'golangBindings :: !(Data.Vector.Vector GolangBinding),
                               _ModuleConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleConfig "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleConfig'name (\ x__ y__ -> x__ {_ModuleConfig'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleConfig "config" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleConfig'config
           (\ x__ y__ -> x__ {_ModuleConfig'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ModuleConfig "maybe'config" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleConfig'config
           (\ x__ y__ -> x__ {_ModuleConfig'config = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleConfig "golangBindings" [GolangBinding] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleConfig'golangBindings
           (\ x__ y__ -> x__ {_ModuleConfig'golangBindings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleConfig "vec'golangBindings" (Data.Vector.Vector GolangBinding) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleConfig'golangBindings
           (\ x__ y__ -> x__ {_ModuleConfig'golangBindings = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleConfig where
  messageName _ = Data.Text.pack "cosmos.app.v1alpha1.ModuleConfig"
  packedMessageDescriptor _
    = "\n\
      \\fModuleConfig\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2,\n\
      \\ACKconfig\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKconfig\DC2K\n\
      \\SIgolang_bindings\CAN\ETX \ETX(\v2\".cosmos.app.v1alpha1.GolangBindingR\SOgolangBindings"
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
              Data.ProtoLens.FieldDescriptor ModuleConfig
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor ModuleConfig
        golangBindings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "golang_bindings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GolangBinding)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"golangBindings")) ::
              Data.ProtoLens.FieldDescriptor ModuleConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, config__field_descriptor),
           (Data.ProtoLens.Tag 3, golangBindings__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleConfig'_unknownFields
        (\ x__ y__ -> x__ {_ModuleConfig'_unknownFields = y__})
  defMessage
    = ModuleConfig'_constructor
        {_ModuleConfig'name = Data.ProtoLens.fieldDefault,
         _ModuleConfig'config = Prelude.Nothing,
         _ModuleConfig'golangBindings = Data.Vector.Generic.empty,
         _ModuleConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld GolangBinding
             -> Data.ProtoLens.Encoding.Bytes.Parser ModuleConfig
        loop x mutable'golangBindings
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'golangBindings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'golangBindings)
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
                              (Data.ProtoLens.Field.field @"vec'golangBindings")
                              frozen'golangBindings x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'golangBindings
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                                  mutable'golangBindings
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "golang_bindings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'golangBindings y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'golangBindings
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'golangBindings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'golangBindings)
          "ModuleConfig"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
                         (Data.ProtoLens.Field.field @"vec'golangBindings") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ModuleConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleConfig'name x__)
                (Control.DeepSeq.deepseq
                   (_ModuleConfig'config x__)
                   (Control.DeepSeq.deepseq (_ModuleConfig'golangBindings x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/app/v1alpha1/config.proto\DC2\DC3cosmos.app.v1alpha1\SUB\EMgoogle/protobuf/any.proto\"\146\SOH\n\
    \\ACKConfig\DC2;\n\
    \\amodules\CAN\SOH \ETX(\v2!.cosmos.app.v1alpha1.ModuleConfigR\amodules\DC2K\n\
    \\SIgolang_bindings\CAN\STX \ETX(\v2\".cosmos.app.v1alpha1.GolangBindingR\SOgolangBindings\"\157\SOH\n\
    \\fModuleConfig\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2,\n\
    \\ACKconfig\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKconfig\DC2K\n\
    \\SIgolang_bindings\CAN\ETX \ETX(\v2\".cosmos.app.v1alpha1.GolangBindingR\SOgolangBindings\"^\n\
    \\rGolangBinding\DC2%\n\
    \\SOinterface_type\CAN\SOH \SOH(\tR\rinterfaceType\DC2&\n\
    \\SOimplementation\CAN\STX \SOH(\tR\SOimplementationJ\250\DC4\n\
    \\ACK\DC2\EOT\NUL\NUL6\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
    \\245\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL\NAK\SOH\SUB\232\ETX Config represents the configuration for a Cosmos SDK ABCI app.\n\
    \ It is intended that all state machine logic including the version of\n\
    \ baseapp and tx handlers (and possibly even Tendermint) that an app needs\n\
    \ can be described in a config object. For compatibility, the framework should\n\
    \ allow a mixture of declarative and imperative app wiring, however, apps\n\
    \ that strive for the maximum ease of maintainability should be able to describe\n\
    \ their state machine with a config object alone.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\SO\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STX$\SUB4 modules are the module configurations for the app.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SI\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI\"#\n\
    \\240\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\STX-\SUB\226\SOH golang_bindings specifies explicit interface to implementation type bindings which\n\
    \ depinject uses to resolve interface inputs to provider functions.  The scope of this\n\
    \ field's configuration is global (not module specific).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC4\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\EM(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC4+,\n\
    \@\n\
    \\STX\EOT\SOH\DC2\EOT\CAN\NUL-\SOH\SUB4 ModuleConfig is a module configuration for an app.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\CAN\b\DC4\n\
    \\131\ENQ\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX\DC2\SUB\245\EOT name is the unique name of the module within the app. It should be a name\n\
    \ that persists between different versions of a module so that modules\n\
    \ can be smoothly upgraded to new versions.\n\
    \\n\
    \ For example, for the module cosmos.bank.module.v1.Module, we may chose\n\
    \ to simply name the module \"bank\" in the app. When we upgrade to\n\
    \ cosmos.bank.module.v2.Module, the app-specific name \"bank\" stays the same\n\
    \ and the framework knows that the v2 module should receive all the same state\n\
    \ that the v1 module had. Note: modules should provide info on which versions\n\
    \ they can migrate from in the ModuleDescriptor.can_migration_from field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\DLE\DC1\n\
    \\167\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX'\STX!\SUB\153\SOH config is the config object for the module. Module config messages should\n\
    \ define a ModuleDescriptor using the cosmos.app.v1alpha1.is_module extension.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX'\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX'\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX'\US \n\
    \\227\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX,\STX-\SUB\213\SOH golang_bindings specifies explicit interface to implementation type bindings which\n\
    \ depinject uses to resolve interface inputs to provider functions.  The scope of this\n\
    \ field's configuration is module specific.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX,\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX,\EM(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX,+,\n\
    \p\n\
    \\STX\EOT\STX\DC2\EOT0\NUL6\SOH\SUBd GolangBinding is an explicit interface type to implementing type binding for dependency injection.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX0\b\NAK\n\
    \i\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX2\STX\FS\SUB\\ interface_type is the interface type which will be bound to a specific implementation type\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX2\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX2\SUB\ESC\n\
    \z\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX5\STX\FS\SUBm implementation is the implementing type which will be supplied when an input of type interface is requested\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX5\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX5\SUB\ESCb\ACKproto3"