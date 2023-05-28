{- This file was auto-generated from cosmos/bank/module/v1/module.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.Module.V1.Module (
        Module()
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
     
         * 'Proto.Cosmos.Bank.Module.V1.Module_Fields.blockedModuleAccountsOverride' @:: Lens' Module [Data.Text.Text]@
         * 'Proto.Cosmos.Bank.Module.V1.Module_Fields.vec'blockedModuleAccountsOverride' @:: Lens' Module (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.Bank.Module.V1.Module_Fields.authority' @:: Lens' Module Data.Text.Text@ -}
data Module
  = Module'_constructor {_Module'blockedModuleAccountsOverride :: !(Data.Vector.Vector Data.Text.Text),
                         _Module'authority :: !Data.Text.Text,
                         _Module'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Module where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Module "blockedModuleAccountsOverride" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'blockedModuleAccountsOverride
           (\ x__ y__ -> x__ {_Module'blockedModuleAccountsOverride = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Module "vec'blockedModuleAccountsOverride" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'blockedModuleAccountsOverride
           (\ x__ y__ -> x__ {_Module'blockedModuleAccountsOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'authority (\ x__ y__ -> x__ {_Module'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Message Module where
  messageName _ = Data.Text.pack "cosmos.bank.module.v1.Module"
  packedMessageDescriptor _
    = "\n\
      \\ACKModule\DC2G\n\
      \ blocked_module_accounts_override\CAN\SOH \ETX(\tR\GSblockedModuleAccountsOverride\DC2\FS\n\
      \\tauthority\CAN\STX \SOH(\tR\tauthority:+\186\192\150\218\SOH%\n\
      \#github.com/cosmos/cosmos-sdk/x/bank"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockedModuleAccountsOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocked_module_accounts_override"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"blockedModuleAccountsOverride")) ::
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
          [(Data.ProtoLens.Tag 1, 
            blockedModuleAccountsOverride__field_descriptor),
           (Data.ProtoLens.Tag 2, authority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Module'_unknownFields
        (\ x__ y__ -> x__ {_Module'_unknownFields = y__})
  defMessage
    = Module'_constructor
        {_Module'blockedModuleAccountsOverride = Data.Vector.Generic.empty,
         _Module'authority = Data.ProtoLens.fieldDefault,
         _Module'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Module
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Module
        loop x mutable'blockedModuleAccountsOverride
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'blockedModuleAccountsOverride <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                   mutable'blockedModuleAccountsOverride)
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
                              (Data.ProtoLens.Field.field @"vec'blockedModuleAccountsOverride")
                              frozen'blockedModuleAccountsOverride x))
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
                                        "blocked_module_accounts_override"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'blockedModuleAccountsOverride y)
                                loop x v
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                                  mutable'blockedModuleAccountsOverride
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'blockedModuleAccountsOverride
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'blockedModuleAccountsOverride <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'blockedModuleAccountsOverride)
          "Module"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'blockedModuleAccountsOverride")
                   _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
instance Control.DeepSeq.NFData Module where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Module'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Module'blockedModuleAccountsOverride x__)
                (Control.DeepSeq.deepseq (_Module'authority x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"cosmos/bank/module/v1/module.proto\DC2\NAKcosmos.bank.module.v1\SUB cosmos/app/v1alpha1/module.proto\"\156\SOH\n\
    \\ACKModule\DC2G\n\
    \ blocked_module_accounts_override\CAN\SOH \ETX(\tR\GSblockedModuleAccountsOverride\DC2\FS\n\
    \\tauthority\CAN\STX \SOH(\tR\tauthority:+\186\192\150\218\SOH%\n\
    \#github.com/cosmos/cosmos-sdk/x/bankJ\224\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\DC3\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \=\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\DC3\SOH\SUB1 Module is the config object of the bank module.\n\
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
    \\253\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STX7\SUB\239\SOH blocked_module_accounts configures exceptional module accounts which should be blocked from receiving funds.\n\
    \ If left empty it defaults to the list of account names supplied in the auth module configuration as\n\
    \ module_account_permissions\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\DC22\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI56\n\
    \l\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC2\STX\ETB\SUB_ authority defines the custom module authority. If not set, defaults to the governance module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2\NAK\SYNb\ACKproto3"