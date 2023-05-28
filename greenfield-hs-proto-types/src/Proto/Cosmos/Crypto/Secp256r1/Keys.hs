{- This file was auto-generated from cosmos/crypto/secp256r1/keys.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crypto.Secp256r1.Keys (
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
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Secp256r1.Keys_Fields.secret' @:: Lens' PrivKey Data.ByteString.ByteString@ -}
data PrivKey
  = PrivKey'_constructor {_PrivKey'secret :: !Data.ByteString.ByteString,
                          _PrivKey'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PrivKey where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PrivKey "secret" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrivKey'secret (\ x__ y__ -> x__ {_PrivKey'secret = y__}))
        Prelude.id
instance Data.ProtoLens.Message PrivKey where
  messageName _ = Data.Text.pack "cosmos.crypto.secp256r1.PrivKey"
  packedMessageDescriptor _
    = "\n\
      \\aPrivKey\DC2#\n\
      \\ACKsecret\CAN\SOH \SOH(\fR\ACKsecretB\v\218\222\US\aecdsaSK"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        secret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"secret")) ::
              Data.ProtoLens.FieldDescriptor PrivKey
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, secret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PrivKey'_unknownFields
        (\ x__ y__ -> x__ {_PrivKey'_unknownFields = y__})
  defMessage
    = PrivKey'_constructor
        {_PrivKey'secret = Data.ProtoLens.fieldDefault,
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
                                       "secret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"secret") y x)
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
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"secret") _x
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
             (Control.DeepSeq.deepseq (_PrivKey'secret x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Secp256r1.Keys_Fields.key' @:: Lens' PubKey Data.ByteString.ByteString@ -}
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
  messageName _ = Data.Text.pack "cosmos.crypto.secp256r1.PubKey"
  packedMessageDescriptor _
    = "\n\
      \\ACKPubKey\DC2\GS\n\
      \\ETXkey\CAN\SOH \SOH(\fR\ETXkeyB\v\218\222\US\aecdsaPK"
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
    \\"cosmos/crypto/secp256r1/keys.proto\DC2\ETBcosmos.crypto.secp256r1\SUB\DC4gogoproto/gogo.proto\"'\n\
    \\ACKPubKey\DC2\GS\n\
    \\ETXkey\CAN\SOH \SOH(\fR\ETXkeyB\v\218\222\US\aecdsaPK\".\n\
    \\aPrivKey\DC2#\n\
    \\ACKsecret\CAN\SOH \SOH(\fR\ACKsecretB\v\218\222\US\aecdsaSKB@Z2github.com/cosmos/cosmos-sdk/crypto/keys/secp256r1\200\225\RS\NUL\216\225\RS\NUL\200\227\RS\SOHJ\177\ENQ\n\
    \\ACK\DC2\EOT\SOH\NUL\SYN\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL_\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NUL_\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL/\n\
    \\v\n\
    \\EOT\b\185\236\ETX\DC2\ETX\a\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL0\n\
    \\v\n\
    \\EOT\b\155\236\ETX\DC2\ETX\b\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL0\n\
    \\v\n\
    \\EOT\b\153\236\ETX\DC2\ETX\t\NUL0\n\
    \:\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\DLE\SOH\SUB. PubKey defines a secp256r1 ECDSA public key.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\SO\n\
    \\172\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STX5\SUB\158\SOH Point on secp256r1 curve in a compressed representation as specified in section\n\
    \ 4.3.6 of ANSI X9.62: https://webstore.ansi.org/standards/ascx9/ansix9621998\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SI\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\b\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SI\DLE4\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\235\251\ETX\DC2\ETX\SI\DC13\n\
    \<\n\
    \\STX\EOT\SOH\DC2\EOT\DC3\NUL\SYN\SOH\SUB0 PrivKey defines a secp256r1 ECDSA private key.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC3\b\SI\n\
    \A\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\NAK\STX8\SUB4 secret number serialized using big-endian encoding\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\NAK\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\NAK\b\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\NAK\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\NAK\DC37\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\235\251\ETX\DC2\ETX\NAK\DC46b\ACKproto3"