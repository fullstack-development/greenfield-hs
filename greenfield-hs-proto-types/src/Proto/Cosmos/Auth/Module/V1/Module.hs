{- This file was auto-generated from cosmos/auth/module/v1/module.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Auth.Module.V1.Module (
        Module(), ModuleAccountPermission()
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
     
         * 'Proto.Cosmos.Auth.Module.V1.Module_Fields.bech32Prefix' @:: Lens' Module Data.Text.Text@
         * 'Proto.Cosmos.Auth.Module.V1.Module_Fields.moduleAccountPermissions' @:: Lens' Module [ModuleAccountPermission]@
         * 'Proto.Cosmos.Auth.Module.V1.Module_Fields.vec'moduleAccountPermissions' @:: Lens' Module (Data.Vector.Vector ModuleAccountPermission)@
         * 'Proto.Cosmos.Auth.Module.V1.Module_Fields.authority' @:: Lens' Module Data.Text.Text@ -}
data Module
  = Module'_constructor {_Module'bech32Prefix :: !Data.Text.Text,
                         _Module'moduleAccountPermissions :: !(Data.Vector.Vector ModuleAccountPermission),
                         _Module'authority :: !Data.Text.Text,
                         _Module'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Module where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Module "bech32Prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'bech32Prefix
           (\ x__ y__ -> x__ {_Module'bech32Prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "moduleAccountPermissions" [ModuleAccountPermission] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'moduleAccountPermissions
           (\ x__ y__ -> x__ {_Module'moduleAccountPermissions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'moduleAccountPermissions" (Data.Vector.Vector ModuleAccountPermission) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'moduleAccountPermissions
           (\ x__ y__ -> x__ {_Module'moduleAccountPermissions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'authority (\ x__ y__ -> x__ {_Module'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Message Module where
  messageName _ = Data.Text.pack "cosmos.auth.module.v1.Module"
  packedMessageDescriptor _
    = "\n\
      \\ACKModule\DC2#\n\
      \\rbech32_prefix\CAN\SOH \SOH(\tR\fbech32Prefix\DC2l\n\
      \\SUBmodule_account_permissions\CAN\STX \ETX(\v2..cosmos.auth.module.v1.ModuleAccountPermissionR\CANmoduleAccountPermissions\DC2\FS\n\
      \\tauthority\CAN\ETX \SOH(\tR\tauthority:+\186\192\150\218\SOH%\n\
      \#github.com/cosmos/cosmos-sdk/x/auth"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bech32Prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bech32_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bech32Prefix")) ::
              Data.ProtoLens.FieldDescriptor Module
        moduleAccountPermissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "module_account_permissions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModuleAccountPermission)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"moduleAccountPermissions")) ::
              Data.ProtoLens.FieldDescriptor Module
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor Module
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bech32Prefix__field_descriptor),
           (Data.ProtoLens.Tag 2, moduleAccountPermissions__field_descriptor),
           (Data.ProtoLens.Tag 3, authority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Module'_unknownFields
        (\ x__ y__ -> x__ {_Module'_unknownFields = y__})
  defMessage
    = Module'_constructor
        {_Module'bech32Prefix = Data.ProtoLens.fieldDefault,
         _Module'moduleAccountPermissions = Data.Vector.Generic.empty,
         _Module'authority = Data.ProtoLens.fieldDefault,
         _Module'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Module
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ModuleAccountPermission
             -> Data.ProtoLens.Encoding.Bytes.Parser Module
        loop x mutable'moduleAccountPermissions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'moduleAccountPermissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'moduleAccountPermissions)
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
                              (Data.ProtoLens.Field.field @"vec'moduleAccountPermissions")
                              frozen'moduleAccountPermissions x))
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
                                       "bech32_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bech32Prefix") y x)
                                  mutable'moduleAccountPermissions
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "module_account_permissions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'moduleAccountPermissions y)
                                loop x v
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                                  mutable'moduleAccountPermissions
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'moduleAccountPermissions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'moduleAccountPermissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'moduleAccountPermissions)
          "Module"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"bech32Prefix") _x
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
                      (Data.ProtoLens.Field.field @"vec'moduleAccountPermissions") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
instance Control.DeepSeq.NFData Module where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Module'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Module'bech32Prefix x__)
                (Control.DeepSeq.deepseq
                   (_Module'moduleAccountPermissions x__)
                   (Control.DeepSeq.deepseq (_Module'authority x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Auth.Module.V1.Module_Fields.account' @:: Lens' ModuleAccountPermission Data.Text.Text@
         * 'Proto.Cosmos.Auth.Module.V1.Module_Fields.permissions' @:: Lens' ModuleAccountPermission [Data.Text.Text]@
         * 'Proto.Cosmos.Auth.Module.V1.Module_Fields.vec'permissions' @:: Lens' ModuleAccountPermission (Data.Vector.Vector Data.Text.Text)@ -}
data ModuleAccountPermission
  = ModuleAccountPermission'_constructor {_ModuleAccountPermission'account :: !Data.Text.Text,
                                          _ModuleAccountPermission'permissions :: !(Data.Vector.Vector Data.Text.Text),
                                          _ModuleAccountPermission'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleAccountPermission where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleAccountPermission "account" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccountPermission'account
           (\ x__ y__ -> x__ {_ModuleAccountPermission'account = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleAccountPermission "permissions" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccountPermission'permissions
           (\ x__ y__ -> x__ {_ModuleAccountPermission'permissions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleAccountPermission "vec'permissions" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccountPermission'permissions
           (\ x__ y__ -> x__ {_ModuleAccountPermission'permissions = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleAccountPermission where
  messageName _
    = Data.Text.pack "cosmos.auth.module.v1.ModuleAccountPermission"
  packedMessageDescriptor _
    = "\n\
      \\ETBModuleAccountPermission\DC2\CAN\n\
      \\aaccount\CAN\SOH \SOH(\tR\aaccount\DC2 \n\
      \\vpermissions\CAN\STX \ETX(\tR\vpermissions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"account")) ::
              Data.ProtoLens.FieldDescriptor ModuleAccountPermission
        permissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "permissions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"permissions")) ::
              Data.ProtoLens.FieldDescriptor ModuleAccountPermission
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, account__field_descriptor),
           (Data.ProtoLens.Tag 2, permissions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleAccountPermission'_unknownFields
        (\ x__ y__ -> x__ {_ModuleAccountPermission'_unknownFields = y__})
  defMessage
    = ModuleAccountPermission'_constructor
        {_ModuleAccountPermission'account = Data.ProtoLens.fieldDefault,
         _ModuleAccountPermission'permissions = Data.Vector.Generic.empty,
         _ModuleAccountPermission'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleAccountPermission
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ModuleAccountPermission
        loop x mutable'permissions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'permissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'permissions)
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
                              (Data.ProtoLens.Field.field @"vec'permissions") frozen'permissions
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
                                       "account"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                                  mutable'permissions
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
                                        "permissions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'permissions y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'permissions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'permissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'permissions)
          "ModuleAccountPermission"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"account") _x
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
                      (Data.ProtoLens.Field.field @"vec'permissions") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ModuleAccountPermission where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleAccountPermission'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleAccountPermission'account x__)
                (Control.DeepSeq.deepseq
                   (_ModuleAccountPermission'permissions x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"cosmos/auth/module/v1/module.proto\DC2\NAKcosmos.auth.module.v1\SUB cosmos/app/v1alpha1/module.proto\"\230\SOH\n\
    \\ACKModule\DC2#\n\
    \\rbech32_prefix\CAN\SOH \SOH(\tR\fbech32Prefix\DC2l\n\
    \\SUBmodule_account_permissions\CAN\STX \ETX(\v2..cosmos.auth.module.v1.ModuleAccountPermissionR\CANmoduleAccountPermissions\DC2\FS\n\
    \\tauthority\CAN\ETX \SOH(\tR\tauthority:+\186\192\150\218\SOH%\n\
    \#github.com/cosmos/cosmos-sdk/x/auth\"U\n\
    \\ETBModuleAccountPermission\DC2\CAN\n\
    \\aaccount\CAN\SOH \SOH(\tR\aaccount\DC2 \n\
    \\vpermissions\CAN\STX \ETX(\tR\vpermissionsJ\145\a\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \>\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\DC4\SOH\SUB2 Module is the config object for the auth module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\b\STX\n\
    \\EOT\n\
    \\SI\n\
    \\a\EOT\NUL\a\135\232\162\ESC\DC2\EOT\b\STX\n\
    \\EOT\n\
    \F\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STX\ESC\SUB9 bech32_prefix is the bech32 account prefix for the app.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\EM\SUB\n\
    \I\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\STXB\SUB< module_account_permissions are module account permissions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DLE\v\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE#=\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE@A\n\
    \l\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC3\STX\ETB\SUB_ authority defines the custom module authority. If not set, defaults to the governance module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC3\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC3\NAK\SYN\n\
    \R\n\
    \\STX\EOT\SOH\DC2\EOT\ETB\NUL\RS\SOH\SUBF ModuleAccountPermission represents permissions for a module account.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ETB\b\US\n\
    \1\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\EM\STX\NAK\SUB$ account is the name of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\EM\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\EM\DC3\DC4\n\
    \|\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\GS\STX\"\SUBo permissions are the permissions this module has. Currently recognized\n\
    \ values are minter, burner and staking.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\GS\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\GS !b\ACKproto3"