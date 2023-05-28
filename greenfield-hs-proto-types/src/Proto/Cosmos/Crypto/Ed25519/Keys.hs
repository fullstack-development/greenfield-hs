{- This file was auto-generated from cosmos/crypto/ed25519/keys.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crypto.Ed25519.Keys (
        PrivKey(), PubKey()
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
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Ed25519.Keys_Fields.key' @:: Lens' PrivKey Data.ByteString.ByteString@ -}
data PrivKey
  = PrivKey'_constructor {_PrivKey'key :: !Data.ByteString.ByteString,
                          _PrivKey'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PrivKey where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PrivKey "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrivKey'key (\ x__ y__ -> x__ {_PrivKey'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message PrivKey where
  messageName _ = Data.Text.pack "cosmos.crypto.ed25519.PrivKey"
  packedMessageDescriptor _
    = "\n\
      \\aPrivKey\DC2/\n\
      \\ETXkey\CAN\SOH \SOH(\fR\ETXkeyB\GS\250\222\US\EMcrypto/ed25519.PrivateKey:,\138\231\176*\EMtendermint/PrivKeyEd25519\146\231\176*\tkey_field"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor PrivKey
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PrivKey'_unknownFields
        (\ x__ y__ -> x__ {_PrivKey'_unknownFields = y__})
  defMessage
    = PrivKey'_constructor
        {_PrivKey'key = Data.ProtoLens.fieldDefault,
         _PrivKey'_unknownFields = []}
  parseMessage
    = let
        loop :: PrivKey -> Data.ProtoLens.Encoding.Bytes.Parser PrivKey
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PrivKey"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PrivKey where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PrivKey'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PrivKey'key x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Ed25519.Keys_Fields.key' @:: Lens' PubKey Data.ByteString.ByteString@ -}
data PubKey
  = PubKey'_constructor {_PubKey'key :: !Data.ByteString.ByteString,
                         _PubKey'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PubKey where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PubKey "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PubKey'key (\ x__ y__ -> x__ {_PubKey'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message PubKey where
  messageName _ = Data.Text.pack "cosmos.crypto.ed25519.PubKey"
  packedMessageDescriptor _
    = "\n\
      \\ACKPubKey\DC2.\n\
      \\ETXkey\CAN\SOH \SOH(\fR\ETXkeyB\FS\250\222\US\CANcrypto/ed25519.PublicKey:/\152\160\US\NUL\138\231\176*\CANtendermint/PubKeyEd25519\146\231\176*\tkey_field"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor PubKey
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PubKey'_unknownFields
        (\ x__ y__ -> x__ {_PubKey'_unknownFields = y__})
  defMessage
    = PubKey'_constructor
        {_PubKey'key = Data.ProtoLens.fieldDefault,
         _PubKey'_unknownFields = []}
  parseMessage
    = let
        loop :: PubKey -> Data.ProtoLens.Encoding.Bytes.Parser PubKey
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PubKey"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PubKey where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PubKey'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PubKey'key x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/crypto/ed25519/keys.proto\DC2\NAKcosmos.crypto.ed25519\SUB\DC1amino/amino.proto\SUB\DC4gogoproto/gogo.proto\"i\n\
    \\ACKPubKey\DC2.\n\
    \\ETXkey\CAN\SOH \SOH(\fR\ETXkeyB\FS\250\222\US\CANcrypto/ed25519.PublicKey:/\152\160\US\NUL\138\231\176*\CANtendermint/PubKeyEd25519\146\231\176*\tkey_field\"h\n\
    \\aPrivKey\DC2/\n\
    \\ETXkey\CAN\SOH \SOH(\fR\ETXkeyB\GS\250\222\US\EMcrypto/ed25519.PrivateKey:,\138\231\176*\EMtendermint/PrivKeyEd25519\146\231\176*\tkey_fieldB2Z0github.com/cosmos/cosmos-sdk/crypto/keys/ed25519J\160\t\n\
    \\ACK\DC2\EOT\NUL\NUL&\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULG\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULG\n\
    \\251\STX\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL\GS\SOH\SUB\238\STX PubKey is an ed25519 public key for handling Tendermint keys in SDK.\n\
    \ It's needed for Any serialization and SDK compatibility.\n\
    \ It must not be used in a non Tendermint key context because it doesn't implement\n\
    \ ADR-28. Nevertheless, you will like to use ed25519 in app user level\n\
    \ then you must create a new proto message and follow ADR-28 for Address construction.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STX3\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\SO\STX3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\EM\STX4\n\
    \\134\STX\n\
    \\a\EOT\NUL\a\242\140\166\ENQ\DC2\ETX\EM\STX4\SUB\245\SOH The Amino encoding is simply the inner bytes field, and not the Amino\n\
    \ encoding of the whole PubKey struct.\n\
    \\n\
    \ Example (JSON):\n\
    \ s := PubKey{Key: []byte{0x01}}\n\
    \ out := AminoJSONEncoder(s)\n\
    \\n\
    \ Then we have:\n\
    \ out == `\"MQ==\"`\n\
    \ out != `{\"key\":\"MQ==\"}`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SUB\STX.\n\
    \\r\n\
    \\ACK\EOT\NUL\a\131\244\ETX\DC2\ETX\SUB\STX.\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STXD\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\FS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\b\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\FS\DLEC\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\239\251\ETX\DC2\ETX\FS\DC1B\n\
    \\144\SOH\n\
    \\STX\EOT\SOH\DC2\EOT!\NUL&\SOH\SUB\131\SOH PrivKey defines a ed25519 private key.\n\
    \ NOTE: ed25519 keys must not be used in SDK apps except in a tendermint validator context.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\"\STX@\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX\"\STX@\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX#\STX0\n\
    \\SO\n\
    \\a\EOT\SOH\a\242\140\166\ENQ\DC2\ETX#\STX0\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX%\STXE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX%\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX%\b\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX%\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX%\DLED\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\239\251\ETX\DC2\ETX%\DC1Cb\ACKproto3"