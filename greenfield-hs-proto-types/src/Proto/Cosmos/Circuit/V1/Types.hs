{- This file was auto-generated from cosmos/circuit/v1/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Circuit.V1.Types (
        GenesisAccountPermissions(), GenesisState(), Permissions(),
        Permissions'Level(..), Permissions'Level(),
        Permissions'Level'UnrecognizedValue
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
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.address' @:: Lens' GenesisAccountPermissions Data.Text.Text@
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.permissions' @:: Lens' GenesisAccountPermissions Permissions@
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.maybe'permissions' @:: Lens' GenesisAccountPermissions (Prelude.Maybe Permissions)@ -}
data GenesisAccountPermissions
  = GenesisAccountPermissions'_constructor {_GenesisAccountPermissions'address :: !Data.Text.Text,
                                            _GenesisAccountPermissions'permissions :: !(Prelude.Maybe Permissions),
                                            _GenesisAccountPermissions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisAccountPermissions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisAccountPermissions "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisAccountPermissions'address
           (\ x__ y__ -> x__ {_GenesisAccountPermissions'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisAccountPermissions "permissions" Permissions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisAccountPermissions'permissions
           (\ x__ y__ -> x__ {_GenesisAccountPermissions'permissions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisAccountPermissions "maybe'permissions" (Prelude.Maybe Permissions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisAccountPermissions'permissions
           (\ x__ y__ -> x__ {_GenesisAccountPermissions'permissions = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisAccountPermissions where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.GenesisAccountPermissions"
  packedMessageDescriptor _
    = "\n\
      \\EMGenesisAccountPermissions\DC2\CAN\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddress\DC2@\n\
      \\vpermissions\CAN\STX \SOH(\v2\RS.cosmos.circuit.v1.PermissionsR\vpermissions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor GenesisAccountPermissions
        permissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "permissions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Permissions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'permissions")) ::
              Data.ProtoLens.FieldDescriptor GenesisAccountPermissions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, permissions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisAccountPermissions'_unknownFields
        (\ x__ y__
           -> x__ {_GenesisAccountPermissions'_unknownFields = y__})
  defMessage
    = GenesisAccountPermissions'_constructor
        {_GenesisAccountPermissions'address = Data.ProtoLens.fieldDefault,
         _GenesisAccountPermissions'permissions = Prelude.Nothing,
         _GenesisAccountPermissions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisAccountPermissions
          -> Data.ProtoLens.Encoding.Bytes.Parser GenesisAccountPermissions
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "permissions"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"permissions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GenesisAccountPermissions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'permissions") _x
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
instance Control.DeepSeq.NFData GenesisAccountPermissions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisAccountPermissions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisAccountPermissions'address x__)
                (Control.DeepSeq.deepseq
                   (_GenesisAccountPermissions'permissions x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.accountPermissions' @:: Lens' GenesisState [GenesisAccountPermissions]@
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.vec'accountPermissions' @:: Lens' GenesisState (Data.Vector.Vector GenesisAccountPermissions)@
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.disabledTypeUrls' @:: Lens' GenesisState [Data.Text.Text]@
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.vec'disabledTypeUrls' @:: Lens' GenesisState (Data.Vector.Vector Data.Text.Text)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'accountPermissions :: !(Data.Vector.Vector GenesisAccountPermissions),
                               _GenesisState'disabledTypeUrls :: !(Data.Vector.Vector Data.Text.Text),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "accountPermissions" [GenesisAccountPermissions] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'accountPermissions
           (\ x__ y__ -> x__ {_GenesisState'accountPermissions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'accountPermissions" (Data.Vector.Vector GenesisAccountPermissions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'accountPermissions
           (\ x__ y__ -> x__ {_GenesisState'accountPermissions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "disabledTypeUrls" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'disabledTypeUrls
           (\ x__ y__ -> x__ {_GenesisState'disabledTypeUrls = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'disabledTypeUrls" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'disabledTypeUrls
           (\ x__ y__ -> x__ {_GenesisState'disabledTypeUrls = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.circuit.v1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2]\n\
      \\DC3account_permissions\CAN\SOH \ETX(\v2,.cosmos.circuit.v1.GenesisAccountPermissionsR\DC2accountPermissions\DC2,\n\
      \\DC2disabled_type_urls\CAN\STX \ETX(\tR\DLEdisabledTypeUrls"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        accountPermissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account_permissions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GenesisAccountPermissions)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accountPermissions")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        disabledTypeUrls__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled_type_urls"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"disabledTypeUrls")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, accountPermissions__field_descriptor),
           (Data.ProtoLens.Tag 2, disabledTypeUrls__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'accountPermissions = Data.Vector.Generic.empty,
         _GenesisState'disabledTypeUrls = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld GenesisAccountPermissions
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop x mutable'accountPermissions mutable'disabledTypeUrls
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accountPermissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'accountPermissions)
                      frozen'disabledTypeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'disabledTypeUrls)
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
                              (Data.ProtoLens.Field.field @"vec'accountPermissions")
                              frozen'accountPermissions
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'disabledTypeUrls")
                                 frozen'disabledTypeUrls x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "account_permissions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'accountPermissions y)
                                loop x v mutable'disabledTypeUrls
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
                                        "disabled_type_urls"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'disabledTypeUrls y)
                                loop x mutable'accountPermissions v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accountPermissions mutable'disabledTypeUrls
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accountPermissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'disabledTypeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'accountPermissions
                mutable'disabledTypeUrls)
          "GenesisState"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'accountPermissions") _x))
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
                      (Data.ProtoLens.Field.field @"vec'disabledTypeUrls") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'accountPermissions x__)
                (Control.DeepSeq.deepseq (_GenesisState'disabledTypeUrls x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.level' @:: Lens' Permissions Permissions'Level@
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.limitTypeUrls' @:: Lens' Permissions [Data.Text.Text]@
         * 'Proto.Cosmos.Circuit.V1.Types_Fields.vec'limitTypeUrls' @:: Lens' Permissions (Data.Vector.Vector Data.Text.Text)@ -}
data Permissions
  = Permissions'_constructor {_Permissions'level :: !Permissions'Level,
                              _Permissions'limitTypeUrls :: !(Data.Vector.Vector Data.Text.Text),
                              _Permissions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Permissions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Permissions "level" Permissions'Level where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permissions'level (\ x__ y__ -> x__ {_Permissions'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Permissions "limitTypeUrls" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permissions'limitTypeUrls
           (\ x__ y__ -> x__ {_Permissions'limitTypeUrls = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Permissions "vec'limitTypeUrls" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Permissions'limitTypeUrls
           (\ x__ y__ -> x__ {_Permissions'limitTypeUrls = y__}))
        Prelude.id
instance Data.ProtoLens.Message Permissions where
  messageName _ = Data.Text.pack "cosmos.circuit.v1.Permissions"
  packedMessageDescriptor _
    = "\n\
      \\vPermissions\DC2:\n\
      \\ENQlevel\CAN\SOH \SOH(\SO2$.cosmos.circuit.v1.Permissions.LevelR\ENQlevel\DC2&\n\
      \\SIlimit_type_urls\CAN\STX \ETX(\tR\rlimitTypeUrls\"c\n\
      \\ENQLevel\DC2\SUB\n\
      \\SYNLEVEL_NONE_UNSPECIFIED\DLE\NUL\DC2\DC3\n\
      \\SILEVEL_SOME_MSGS\DLE\SOH\DC2\DC2\n\
      \\SOLEVEL_ALL_MSGS\DLE\STX\DC2\NAK\n\
      \\DC1LEVEL_SUPER_ADMIN\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Permissions'Level)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"level")) ::
              Data.ProtoLens.FieldDescriptor Permissions
        limitTypeUrls__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit_type_urls"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"limitTypeUrls")) ::
              Data.ProtoLens.FieldDescriptor Permissions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, level__field_descriptor),
           (Data.ProtoLens.Tag 2, limitTypeUrls__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Permissions'_unknownFields
        (\ x__ y__ -> x__ {_Permissions'_unknownFields = y__})
  defMessage
    = Permissions'_constructor
        {_Permissions'level = Data.ProtoLens.fieldDefault,
         _Permissions'limitTypeUrls = Data.Vector.Generic.empty,
         _Permissions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Permissions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Permissions
        loop x mutable'limitTypeUrls
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'limitTypeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'limitTypeUrls)
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
                              (Data.ProtoLens.Field.field @"vec'limitTypeUrls")
                              frozen'limitTypeUrls x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "level"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                                  mutable'limitTypeUrls
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
                                        "limit_type_urls"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'limitTypeUrls y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'limitTypeUrls
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'limitTypeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'limitTypeUrls)
          "Permissions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"level") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
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
                      (Data.ProtoLens.Field.field @"vec'limitTypeUrls") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Permissions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Permissions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Permissions'level x__)
                (Control.DeepSeq.deepseq (_Permissions'limitTypeUrls x__) ()))
newtype Permissions'Level'UnrecognizedValue
  = Permissions'Level'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Permissions'Level
  = Permissions'LEVEL_NONE_UNSPECIFIED |
    Permissions'LEVEL_SOME_MSGS |
    Permissions'LEVEL_ALL_MSGS |
    Permissions'LEVEL_SUPER_ADMIN |
    Permissions'Level'Unrecognized !Permissions'Level'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Permissions'Level where
  maybeToEnum 0 = Prelude.Just Permissions'LEVEL_NONE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just Permissions'LEVEL_SOME_MSGS
  maybeToEnum 2 = Prelude.Just Permissions'LEVEL_ALL_MSGS
  maybeToEnum 3 = Prelude.Just Permissions'LEVEL_SUPER_ADMIN
  maybeToEnum k
    = Prelude.Just
        (Permissions'Level'Unrecognized
           (Permissions'Level'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Permissions'LEVEL_NONE_UNSPECIFIED
    = "LEVEL_NONE_UNSPECIFIED"
  showEnum Permissions'LEVEL_SOME_MSGS = "LEVEL_SOME_MSGS"
  showEnum Permissions'LEVEL_ALL_MSGS = "LEVEL_ALL_MSGS"
  showEnum Permissions'LEVEL_SUPER_ADMIN = "LEVEL_SUPER_ADMIN"
  showEnum
    (Permissions'Level'Unrecognized (Permissions'Level'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "LEVEL_NONE_UNSPECIFIED"
    = Prelude.Just Permissions'LEVEL_NONE_UNSPECIFIED
    | (Prelude.==) k "LEVEL_SOME_MSGS"
    = Prelude.Just Permissions'LEVEL_SOME_MSGS
    | (Prelude.==) k "LEVEL_ALL_MSGS"
    = Prelude.Just Permissions'LEVEL_ALL_MSGS
    | (Prelude.==) k "LEVEL_SUPER_ADMIN"
    = Prelude.Just Permissions'LEVEL_SUPER_ADMIN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Permissions'Level where
  minBound = Permissions'LEVEL_NONE_UNSPECIFIED
  maxBound = Permissions'LEVEL_SUPER_ADMIN
instance Prelude.Enum Permissions'Level where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Level: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum Permissions'LEVEL_NONE_UNSPECIFIED = 0
  fromEnum Permissions'LEVEL_SOME_MSGS = 1
  fromEnum Permissions'LEVEL_ALL_MSGS = 2
  fromEnum Permissions'LEVEL_SUPER_ADMIN = 3
  fromEnum
    (Permissions'Level'Unrecognized (Permissions'Level'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Permissions'LEVEL_SUPER_ADMIN
    = Prelude.error
        "Permissions'Level.succ: bad argument Permissions'LEVEL_SUPER_ADMIN. This value would be out of bounds."
  succ Permissions'LEVEL_NONE_UNSPECIFIED
    = Permissions'LEVEL_SOME_MSGS
  succ Permissions'LEVEL_SOME_MSGS = Permissions'LEVEL_ALL_MSGS
  succ Permissions'LEVEL_ALL_MSGS = Permissions'LEVEL_SUPER_ADMIN
  succ (Permissions'Level'Unrecognized _)
    = Prelude.error
        "Permissions'Level.succ: bad argument: unrecognized value"
  pred Permissions'LEVEL_NONE_UNSPECIFIED
    = Prelude.error
        "Permissions'Level.pred: bad argument Permissions'LEVEL_NONE_UNSPECIFIED. This value would be out of bounds."
  pred Permissions'LEVEL_SOME_MSGS
    = Permissions'LEVEL_NONE_UNSPECIFIED
  pred Permissions'LEVEL_ALL_MSGS = Permissions'LEVEL_SOME_MSGS
  pred Permissions'LEVEL_SUPER_ADMIN = Permissions'LEVEL_ALL_MSGS
  pred (Permissions'Level'Unrecognized _)
    = Prelude.error
        "Permissions'Level.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Permissions'Level where
  fieldDefault = Permissions'LEVEL_NONE_UNSPECIFIED
instance Control.DeepSeq.NFData Permissions'Level where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GScosmos/circuit/v1/types.proto\DC2\DC1cosmos.circuit.v1\"\214\SOH\n\
    \\vPermissions\DC2:\n\
    \\ENQlevel\CAN\SOH \SOH(\SO2$.cosmos.circuit.v1.Permissions.LevelR\ENQlevel\DC2&\n\
    \\SIlimit_type_urls\CAN\STX \ETX(\tR\rlimitTypeUrls\"c\n\
    \\ENQLevel\DC2\SUB\n\
    \\SYNLEVEL_NONE_UNSPECIFIED\DLE\NUL\DC2\DC3\n\
    \\SILEVEL_SOME_MSGS\DLE\SOH\DC2\DC2\n\
    \\SOLEVEL_ALL_MSGS\DLE\STX\DC2\NAK\n\
    \\DC1LEVEL_SUPER_ADMIN\DLE\ETX\"w\n\
    \\EMGenesisAccountPermissions\DC2\CAN\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddress\DC2@\n\
    \\vpermissions\CAN\STX \SOH(\v2\RS.cosmos.circuit.v1.PermissionsR\vpermissions\"\155\SOH\n\
    \\fGenesisState\DC2]\n\
    \\DC3account_permissions\CAN\SOH \ETX(\v2,.cosmos.circuit.v1.GenesisAccountPermissionsR\DC2accountPermissions\DC2,\n\
    \\DC2disabled_type_urls\CAN\STX \ETX(\tR\DLEdisabledTypeUrlsB\RSZ\FScosmossdk.io/x/circuit/typesJ\153\SO\n\
    \\ACK\DC2\EOT\NUL\NUL0\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL3\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL3\n\
    \h\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL$\SOH\SUB\\ Permissions are the permissions that an account has to trip\n\
    \ or reset the circuit breaker.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\DC3\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\t\STX\DC2\SUB< level is the level of permissions granted to this account.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\t\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\t\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\t\DLE\DC1\n\
    \\204\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX&\SUB\190\SOH limit_type_urls is used with LEVEL_SOME_MSGS to limit the lists of Msg type\n\
    \ URLs that the account can trip. It is an error to use limit_type_urls with\n\
    \ a level other than LEVEL_SOME_MSGS.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\DC2!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO$%\n\
    \.\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\DC1\STX#\ETX\SUB  Level is the permission level.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\DC1\a\f\n\
    \m\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\DC4\EOT\US\SUB^ LEVEL_NONE_UNSPECIFIED indicates that the account will have no circuit\n\
    \ breaker permissions.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\EOT\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\DC4\GS\RS\n\
    \\241\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\SUB\EOT\CAN\SUB\225\SOH LEVEL_SOME_MSGS indicates that the account will have permission to\n\
    \ trip or reset the circuit breaker for some Msg type URLs. If this level\n\
    \ is chosen, a non-empty list of Msg type URLs must be provided in\n\
    \ limit_type_urls.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\SUB\SYN\ETB\n\
    \}\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\RS\EOT\ETB\SUBn LEVEL_ALL_MSGS indicates that the account can trip or reset the circuit\n\
    \ breaker for Msg's of all type URLs.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\RS\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\RS\NAK\SYN\n\
    \\145\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX\"\EOT\SUB\SUB\129\SOH LEVEL_SUPER_ADMIN indicates that the account can take all circuit breaker\n\
    \ actions and can grant permissions to other accounts.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX\"\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX\"\CAN\EM\n\
    \e\n\
    \\STX\EOT\SOH\DC2\EOT'\NUL*\SOH\SUBY GenesisAccountPermissions is the account permissions for the circuit breaker in genesis\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b!\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX(\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX(\SO\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX(\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX)\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX)\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX)\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX)\FS\GS\n\
    \I\n\
    \\STX\EOT\STX\DC2\EOT-\NUL0\SOH\SUB= GenesisState is the state that must be provided at genesis.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX-\b\DC4\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX.\STX=\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX.\v$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX.%8\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX.;<\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX/\STX=\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX/%7\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX/;<b\ACKproto3"