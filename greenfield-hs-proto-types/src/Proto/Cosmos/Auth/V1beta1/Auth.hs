{- This file was auto-generated from cosmos/auth/v1beta1/auth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Auth.V1beta1.Auth (
        BaseAccount(), ModuleAccount(), ModuleCredential(), Params()
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
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.address' @:: Lens' BaseAccount Data.Text.Text@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.pubKey' @:: Lens' BaseAccount Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.maybe'pubKey' @:: Lens' BaseAccount (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.accountNumber' @:: Lens' BaseAccount Data.Word.Word64@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.sequence' @:: Lens' BaseAccount Data.Word.Word64@ -}
data BaseAccount
  = BaseAccount'_constructor {_BaseAccount'address :: !Data.Text.Text,
                              _BaseAccount'pubKey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                              _BaseAccount'accountNumber :: !Data.Word.Word64,
                              _BaseAccount'sequence :: !Data.Word.Word64,
                              _BaseAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BaseAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BaseAccount "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseAccount'address
           (\ x__ y__ -> x__ {_BaseAccount'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BaseAccount "pubKey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseAccount'pubKey (\ x__ y__ -> x__ {_BaseAccount'pubKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BaseAccount "maybe'pubKey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseAccount'pubKey (\ x__ y__ -> x__ {_BaseAccount'pubKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BaseAccount "accountNumber" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseAccount'accountNumber
           (\ x__ y__ -> x__ {_BaseAccount'accountNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BaseAccount "sequence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseAccount'sequence
           (\ x__ y__ -> x__ {_BaseAccount'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Message BaseAccount where
  messageName _ = Data.Text.pack "cosmos.auth.v1beta1.BaseAccount"
  packedMessageDescriptor _
    = "\n\
      \\vBaseAccount\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2V\n\
      \\apub_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubKeyB'\234\222\US\DC4public_key,omitempty\162\231\176*\n\
      \public_key\DC2%\n\
      \\SOaccount_number\CAN\ETX \SOH(\EOTR\raccountNumber\DC2\SUB\n\
      \\bsequence\CAN\EOT \SOH(\EOTR\bsequence:C\136\160\US\NUL\232\160\US\NUL\202\180-\FScosmos.auth.v1beta1.AccountI\138\231\176*\SYNcosmos-sdk/BaseAccount"
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
              Data.ProtoLens.FieldDescriptor BaseAccount
        pubKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pub_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pubKey")) ::
              Data.ProtoLens.FieldDescriptor BaseAccount
        accountNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accountNumber")) ::
              Data.ProtoLens.FieldDescriptor BaseAccount
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sequence")) ::
              Data.ProtoLens.FieldDescriptor BaseAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, pubKey__field_descriptor),
           (Data.ProtoLens.Tag 3, accountNumber__field_descriptor),
           (Data.ProtoLens.Tag 4, sequence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BaseAccount'_unknownFields
        (\ x__ y__ -> x__ {_BaseAccount'_unknownFields = y__})
  defMessage
    = BaseAccount'_constructor
        {_BaseAccount'address = Data.ProtoLens.fieldDefault,
         _BaseAccount'pubKey = Prelude.Nothing,
         _BaseAccount'accountNumber = Data.ProtoLens.fieldDefault,
         _BaseAccount'sequence = Data.ProtoLens.fieldDefault,
         _BaseAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BaseAccount -> Data.ProtoLens.Encoding.Bytes.Parser BaseAccount
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
                                       "pub_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pubKey") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "account_number"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"accountNumber") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BaseAccount"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pubKey") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"accountNumber") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sequence") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData BaseAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BaseAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BaseAccount'address x__)
                (Control.DeepSeq.deepseq
                   (_BaseAccount'pubKey x__)
                   (Control.DeepSeq.deepseq
                      (_BaseAccount'accountNumber x__)
                      (Control.DeepSeq.deepseq (_BaseAccount'sequence x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.baseAccount' @:: Lens' ModuleAccount BaseAccount@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.maybe'baseAccount' @:: Lens' ModuleAccount (Prelude.Maybe BaseAccount)@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.name' @:: Lens' ModuleAccount Data.Text.Text@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.permissions' @:: Lens' ModuleAccount [Data.Text.Text]@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.vec'permissions' @:: Lens' ModuleAccount (Data.Vector.Vector Data.Text.Text)@ -}
data ModuleAccount
  = ModuleAccount'_constructor {_ModuleAccount'baseAccount :: !(Prelude.Maybe BaseAccount),
                                _ModuleAccount'name :: !Data.Text.Text,
                                _ModuleAccount'permissions :: !(Data.Vector.Vector Data.Text.Text),
                                _ModuleAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleAccount "baseAccount" BaseAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccount'baseAccount
           (\ x__ y__ -> x__ {_ModuleAccount'baseAccount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ModuleAccount "maybe'baseAccount" (Prelude.Maybe BaseAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccount'baseAccount
           (\ x__ y__ -> x__ {_ModuleAccount'baseAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleAccount "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccount'name (\ x__ y__ -> x__ {_ModuleAccount'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleAccount "permissions" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccount'permissions
           (\ x__ y__ -> x__ {_ModuleAccount'permissions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleAccount "vec'permissions" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleAccount'permissions
           (\ x__ y__ -> x__ {_ModuleAccount'permissions = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleAccount where
  messageName _ = Data.Text.pack "cosmos.auth.v1beta1.ModuleAccount"
  packedMessageDescriptor _
    = "\n\
      \\rModuleAccount\DC2I\n\
      \\fbase_account\CAN\SOH \SOH(\v2 .cosmos.auth.v1beta1.BaseAccountR\vbaseAccountB\EOT\208\222\US\SOH\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2 \n\
      \\vpermissions\CAN\ETX \ETX(\tR\vpermissions:Z\136\160\US\NUL\202\180-\"cosmos.auth.v1beta1.ModuleAccountI\138\231\176*\CANcosmos-sdk/ModuleAccount\146\231\176*\SOmodule_account"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BaseAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseAccount")) ::
              Data.ProtoLens.FieldDescriptor ModuleAccount
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ModuleAccount
        permissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "permissions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"permissions")) ::
              Data.ProtoLens.FieldDescriptor ModuleAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseAccount__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, permissions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleAccount'_unknownFields
        (\ x__ y__ -> x__ {_ModuleAccount'_unknownFields = y__})
  defMessage
    = ModuleAccount'_constructor
        {_ModuleAccount'baseAccount = Prelude.Nothing,
         _ModuleAccount'name = Data.ProtoLens.fieldDefault,
         _ModuleAccount'permissions = Data.Vector.Generic.empty,
         _ModuleAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleAccount
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ModuleAccount
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "base_account"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"baseAccount") y x)
                                  mutable'permissions
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'permissions
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
          "ModuleAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseAccount") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                         (Data.ProtoLens.Field.field @"vec'permissions") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ModuleAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleAccount'baseAccount x__)
                (Control.DeepSeq.deepseq
                   (_ModuleAccount'name x__)
                   (Control.DeepSeq.deepseq (_ModuleAccount'permissions x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.moduleName' @:: Lens' ModuleCredential Data.Text.Text@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.derivationKeys' @:: Lens' ModuleCredential [Data.ByteString.ByteString]@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.vec'derivationKeys' @:: Lens' ModuleCredential (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data ModuleCredential
  = ModuleCredential'_constructor {_ModuleCredential'moduleName :: !Data.Text.Text,
                                   _ModuleCredential'derivationKeys :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                   _ModuleCredential'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleCredential where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleCredential "moduleName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleCredential'moduleName
           (\ x__ y__ -> x__ {_ModuleCredential'moduleName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleCredential "derivationKeys" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleCredential'derivationKeys
           (\ x__ y__ -> x__ {_ModuleCredential'derivationKeys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleCredential "vec'derivationKeys" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleCredential'derivationKeys
           (\ x__ y__ -> x__ {_ModuleCredential'derivationKeys = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleCredential where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.ModuleCredential"
  packedMessageDescriptor _
    = "\n\
      \\DLEModuleCredential\DC2\US\n\
      \\vmodule_name\CAN\SOH \SOH(\tR\n\
      \moduleName\DC2'\n\
      \\SIderivation_keys\CAN\STX \ETX(\fR\SOderivationKeys:&\138\231\176*!cosmos-sdk/GroupAccountCredential"
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
              Data.ProtoLens.FieldDescriptor ModuleCredential
        derivationKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "derivation_keys"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"derivationKeys")) ::
              Data.ProtoLens.FieldDescriptor ModuleCredential
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, moduleName__field_descriptor),
           (Data.ProtoLens.Tag 2, derivationKeys__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleCredential'_unknownFields
        (\ x__ y__ -> x__ {_ModuleCredential'_unknownFields = y__})
  defMessage
    = ModuleCredential'_constructor
        {_ModuleCredential'moduleName = Data.ProtoLens.fieldDefault,
         _ModuleCredential'derivationKeys = Data.Vector.Generic.empty,
         _ModuleCredential'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleCredential
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser ModuleCredential
        loop x mutable'derivationKeys
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'derivationKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'derivationKeys)
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
                              (Data.ProtoLens.Field.field @"vec'derivationKeys")
                              frozen'derivationKeys x))
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
                                  mutable'derivationKeys
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "derivation_keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'derivationKeys y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'derivationKeys
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'derivationKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'derivationKeys)
          "ModuleCredential"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'derivationKeys") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ModuleCredential where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleCredential'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleCredential'moduleName x__)
                (Control.DeepSeq.deepseq
                   (_ModuleCredential'derivationKeys x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.maxMemoCharacters' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.txSigLimit' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.txSizeCostPerByte' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.sigVerifyCostEd25519' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Cosmos.Auth.V1beta1.Auth_Fields.sigVerifyCostSecp256k1' @:: Lens' Params Data.Word.Word64@ -}
data Params
  = Params'_constructor {_Params'maxMemoCharacters :: !Data.Word.Word64,
                         _Params'txSigLimit :: !Data.Word.Word64,
                         _Params'txSizeCostPerByte :: !Data.Word.Word64,
                         _Params'sigVerifyCostEd25519 :: !Data.Word.Word64,
                         _Params'sigVerifyCostSecp256k1 :: !Data.Word.Word64,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "maxMemoCharacters" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxMemoCharacters
           (\ x__ y__ -> x__ {_Params'maxMemoCharacters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "txSigLimit" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'txSigLimit (\ x__ y__ -> x__ {_Params'txSigLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "txSizeCostPerByte" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'txSizeCostPerByte
           (\ x__ y__ -> x__ {_Params'txSizeCostPerByte = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "sigVerifyCostEd25519" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'sigVerifyCostEd25519
           (\ x__ y__ -> x__ {_Params'sigVerifyCostEd25519 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "sigVerifyCostSecp256k1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'sigVerifyCostSecp256k1
           (\ x__ y__ -> x__ {_Params'sigVerifyCostSecp256k1 = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "cosmos.auth.v1beta1.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2.\n\
      \\DC3max_memo_characters\CAN\SOH \SOH(\EOTR\DC1maxMemoCharacters\DC2 \n\
      \\ftx_sig_limit\CAN\STX \SOH(\EOTR\n\
      \txSigLimit\DC20\n\
      \\NAKtx_size_cost_per_byte\CAN\ETX \SOH(\EOTR\DC1txSizeCostPerByte\DC2O\n\
      \\ETBsig_verify_cost_ed25519\CAN\EOT \SOH(\EOTR\DC4sigVerifyCostEd25519B\CAN\226\222\US\DC4SigVerifyCostED25519\DC2U\n\
      \\EMsig_verify_cost_secp256k1\CAN\ENQ \SOH(\EOTR\SYNsigVerifyCostSecp256k1B\SUB\226\222\US\SYNSigVerifyCostSecp256k1:!\232\160\US\SOH\138\231\176*\CANcosmos-sdk/x/auth/Params"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxMemoCharacters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_memo_characters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxMemoCharacters")) ::
              Data.ProtoLens.FieldDescriptor Params
        txSigLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_sig_limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"txSigLimit")) ::
              Data.ProtoLens.FieldDescriptor Params
        txSizeCostPerByte__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_size_cost_per_byte"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"txSizeCostPerByte")) ::
              Data.ProtoLens.FieldDescriptor Params
        sigVerifyCostEd25519__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sig_verify_cost_ed25519"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sigVerifyCostEd25519")) ::
              Data.ProtoLens.FieldDescriptor Params
        sigVerifyCostSecp256k1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sig_verify_cost_secp256k1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sigVerifyCostSecp256k1")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxMemoCharacters__field_descriptor),
           (Data.ProtoLens.Tag 2, txSigLimit__field_descriptor),
           (Data.ProtoLens.Tag 3, txSizeCostPerByte__field_descriptor),
           (Data.ProtoLens.Tag 4, sigVerifyCostEd25519__field_descriptor),
           (Data.ProtoLens.Tag 5, sigVerifyCostSecp256k1__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'maxMemoCharacters = Data.ProtoLens.fieldDefault,
         _Params'txSigLimit = Data.ProtoLens.fieldDefault,
         _Params'txSizeCostPerByte = Data.ProtoLens.fieldDefault,
         _Params'sigVerifyCostEd25519 = Data.ProtoLens.fieldDefault,
         _Params'sigVerifyCostSecp256k1 = Data.ProtoLens.fieldDefault,
         _Params'_unknownFields = []}
  parseMessage
    = let
        loop :: Params -> Data.ProtoLens.Encoding.Bytes.Parser Params
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "max_memo_characters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxMemoCharacters") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "tx_sig_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"txSigLimit") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "tx_size_cost_per_byte"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"txSizeCostPerByte") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "sig_verify_cost_ed25519"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sigVerifyCostEd25519") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "sig_verify_cost_secp256k1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sigVerifyCostSecp256k1") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Params"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"maxMemoCharacters") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"txSigLimit") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"txSizeCostPerByte") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"sigVerifyCostEd25519") _x
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
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"sigVerifyCostSecp256k1") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'maxMemoCharacters x__)
                (Control.DeepSeq.deepseq
                   (_Params'txSigLimit x__)
                   (Control.DeepSeq.deepseq
                      (_Params'txSizeCostPerByte x__)
                      (Control.DeepSeq.deepseq
                         (_Params'sigVerifyCostEd25519 x__)
                         (Control.DeepSeq.deepseq
                            (_Params'sigVerifyCostSecp256k1 x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/auth/v1beta1/auth.proto\DC2\DC3cosmos.auth.v1beta1\SUB\DC1amino/amino.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\"\161\STX\n\
    \\vBaseAccount\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2V\n\
    \\apub_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubKeyB'\234\222\US\DC4public_key,omitempty\162\231\176*\n\
    \public_key\DC2%\n\
    \\SOaccount_number\CAN\ETX \SOH(\EOTR\raccountNumber\DC2\SUB\n\
    \\bsequence\CAN\EOT \SOH(\EOTR\bsequence:C\136\160\US\NUL\232\160\US\NUL\202\180-\FScosmos.auth.v1beta1.AccountI\138\231\176*\SYNcosmos-sdk/BaseAccount\"\236\SOH\n\
    \\rModuleAccount\DC2I\n\
    \\fbase_account\CAN\SOH \SOH(\v2 .cosmos.auth.v1beta1.BaseAccountR\vbaseAccountB\EOT\208\222\US\SOH\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2 \n\
    \\vpermissions\CAN\ETX \ETX(\tR\vpermissions:Z\136\160\US\NUL\202\180-\"cosmos.auth.v1beta1.ModuleAccountI\138\231\176*\CANcosmos-sdk/ModuleAccount\146\231\176*\SOmodule_account\"\132\SOH\n\
    \\DLEModuleCredential\DC2\US\n\
    \\vmodule_name\CAN\SOH \SOH(\tR\n\
    \moduleName\DC2'\n\
    \\SIderivation_keys\CAN\STX \ETX(\fR\SOderivationKeys:&\138\231\176*!cosmos-sdk/GroupAccountCredential\"\215\STX\n\
    \\ACKParams\DC2.\n\
    \\DC3max_memo_characters\CAN\SOH \SOH(\EOTR\DC1maxMemoCharacters\DC2 \n\
    \\ftx_sig_limit\CAN\STX \SOH(\EOTR\n\
    \txSigLimit\DC20\n\
    \\NAKtx_size_cost_per_byte\CAN\ETX \SOH(\EOTR\DC1txSizeCostPerByte\DC2O\n\
    \\ETBsig_verify_cost_ed25519\CAN\EOT \SOH(\EOTR\DC4sigVerifyCostEd25519B\CAN\226\222\US\DC4SigVerifyCostED25519\DC2U\n\
    \\EMsig_verify_cost_secp256k1\CAN\ENQ \SOH(\EOTR\SYNsigVerifyCostSecp256k1B\SUB\226\222\US\SYNSigVerifyCostSecp256k1:!\232\160\US\SOH\138\231\176*\CANcosmos-sdk/x/auth/ParamsB+Z)github.com/cosmos/cosmos-sdk/x/auth/typesJ\147\DC1\n\
    \\ACK\DC2\EOT\NUL\NULA\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NUL@\n\
    \\220\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL\GS\SOH\SUB\207\SOH BaseAccount defines a base account type. It contains all the necessary fields\n\
    \ for basic account functionality. Any custom account type should extend this\n\
    \ type for additional functionality (e.g. vesting).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STX@\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\SO\STX@\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SI\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\SI\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DLE\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\DLE\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC2\STXN\n\
    \\SO\n\
    \\a\EOT\NUL\a\201\214\ENQ\NUL\DC2\ETX\DC2\STXN\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\DC4\STX\NAK4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4 !\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\DC4\"\NAK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\NAK\EOT2\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\ETB\STX\EM'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ETB\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB !\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\ETB\"\EM&\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\237\251\ETX\DC2\ETX\CAN\EOT0\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\244\140\166\ENQ\DC2\ETX\EM\EOT%\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ESC\STX)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ESC\SYN$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ESC'(\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\FS\STX)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\FS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\FS\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\FS'(\n\
    \V\n\
    \\STX\EOT\SOH\DC2\EOT \NUL)\SOH\SUBJ ModuleAccount defines an account for modules that holds coins on a pool.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX \b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX!\STXJ\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX!\STXJ\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\"\STX@\n\
    \\SO\n\
    \\a\EOT\SOH\a\242\140\166\ENQ\DC2\ETX\"\STX@\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX#\STX5\n\
    \\r\n\
    \\ACK\EOT\SOH\a\129\244\ETX\DC2\ETX#\STX5\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX$\STXT\n\
    \\SO\n\
    \\a\EOT\SOH\a\201\214\ENQ\NUL\DC2\ETX$\STXT\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX&\STX>\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX&\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX&\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX&!\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX&#=\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\234\251\ETX\DC2\ETX&$<\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX'\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX'\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX'!\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX(\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX(\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX(!\"\n\
    \\128\SOH\n\
    \\STX\EOT\STX\DC2\EOT.\NUL5\SOH\SUBt ModuleCredential represents a unclaimable pubkey for base accounts controlled by modules.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX.\b\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX/\STX<\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX/\STX<\n\
    \n\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX1\STX\EM\SUBa module_name is the name of the module used for address derivation (passed into address.Module).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX1\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX1\ETB\CAN\n\
    \\178\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX4\STX%\SUB\164\SOH derivation_keys is for deriving a module account address (passed into address.Module)\n\
    \ adding more keys creates sub-account addresses (passed into address.Derive)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX4\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX4\DC1 \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX4#$\n\
    \@\n\
    \\STX\EOT\ETX\DC2\EOT8\NULA\SOH\SUB4 Params defines the parameters for the auth module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX8\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX9\STX8\n\
    \\SO\n\
    \\a\EOT\ETX\a\241\140\166\ENQ\DC2\ETX9\STX8\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX:\STX\"\n\
    \\r\n\
    \\ACK\EOT\ETX\a\141\244\ETX\DC2\ETX:\STX\"\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX<\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX<\t\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX<%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX=\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX=\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX=%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX>\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX>\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX>\t\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX>%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX?\STXY\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX?\t \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX?%&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\b\DC2\ETX?'X\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ETX\b\236\251\ETX\DC2\ETX?(W\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX@\STX[\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX@\t\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX@%&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\b\DC2\ETX@'Z\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\236\251\ETX\DC2\ETX@(Yb\ACKproto3"