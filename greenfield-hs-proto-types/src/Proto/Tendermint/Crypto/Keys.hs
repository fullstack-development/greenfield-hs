{- This file was auto-generated from tendermint/crypto/keys.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Crypto.Keys (
        PublicKey(), PublicKey'Sum(..), _PublicKey'Ed25519,
        _PublicKey'Secp256k1
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
     
         * 'Proto.Tendermint.Crypto.Keys_Fields.maybe'sum' @:: Lens' PublicKey (Prelude.Maybe PublicKey'Sum)@
         * 'Proto.Tendermint.Crypto.Keys_Fields.maybe'ed25519' @:: Lens' PublicKey (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Tendermint.Crypto.Keys_Fields.ed25519' @:: Lens' PublicKey Data.ByteString.ByteString@
         * 'Proto.Tendermint.Crypto.Keys_Fields.maybe'secp256k1' @:: Lens' PublicKey (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Tendermint.Crypto.Keys_Fields.secp256k1' @:: Lens' PublicKey Data.ByteString.ByteString@ -}
data PublicKey
  = PublicKey'_constructor {_PublicKey'sum :: !(Prelude.Maybe PublicKey'Sum),
                            _PublicKey'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PublicKey where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PublicKey'Sum
  = PublicKey'Ed25519 !Data.ByteString.ByteString |
    PublicKey'Secp256k1 !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PublicKey "maybe'sum" (Prelude.Maybe PublicKey'Sum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PublicKey'sum (\ x__ y__ -> x__ {_PublicKey'sum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PublicKey "maybe'ed25519" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PublicKey'sum (\ x__ y__ -> x__ {_PublicKey'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PublicKey'Ed25519 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PublicKey'Ed25519 y__))
instance Data.ProtoLens.Field.HasField PublicKey "ed25519" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PublicKey'sum (\ x__ y__ -> x__ {_PublicKey'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PublicKey'Ed25519 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PublicKey'Ed25519 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PublicKey "maybe'secp256k1" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PublicKey'sum (\ x__ y__ -> x__ {_PublicKey'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PublicKey'Secp256k1 x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PublicKey'Secp256k1 y__))
instance Data.ProtoLens.Field.HasField PublicKey "secp256k1" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PublicKey'sum (\ x__ y__ -> x__ {_PublicKey'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PublicKey'Secp256k1 x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PublicKey'Secp256k1 y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message PublicKey where
  messageName _ = Data.Text.pack "tendermint.crypto.PublicKey"
  packedMessageDescriptor _
    = "\n\
      \\tPublicKey\DC2\SUB\n\
      \\aed25519\CAN\SOH \SOH(\fH\NULR\aed25519\DC2\RS\n\
      \\tsecp256k1\CAN\STX \SOH(\fH\NULR\tsecp256k1B\ENQ\n\
      \\ETXsum:\b\232\160\US\SOH\232\161\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ed25519__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ed25519"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ed25519")) ::
              Data.ProtoLens.FieldDescriptor PublicKey
        secp256k1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secp256k1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secp256k1")) ::
              Data.ProtoLens.FieldDescriptor PublicKey
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ed25519__field_descriptor),
           (Data.ProtoLens.Tag 2, secp256k1__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PublicKey'_unknownFields
        (\ x__ y__ -> x__ {_PublicKey'_unknownFields = y__})
  defMessage
    = PublicKey'_constructor
        {_PublicKey'sum = Prelude.Nothing, _PublicKey'_unknownFields = []}
  parseMessage
    = let
        loop :: PublicKey -> Data.ProtoLens.Encoding.Bytes.Parser PublicKey
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
                                       "ed25519"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ed25519") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "secp256k1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"secp256k1") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PublicKey"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (PublicKey'Ed25519 v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (PublicKey'Secp256k1 v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PublicKey where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PublicKey'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PublicKey'sum x__) ())
instance Control.DeepSeq.NFData PublicKey'Sum where
  rnf (PublicKey'Ed25519 x__) = Control.DeepSeq.rnf x__
  rnf (PublicKey'Secp256k1 x__) = Control.DeepSeq.rnf x__
_PublicKey'Ed25519 ::
  Data.ProtoLens.Prism.Prism' PublicKey'Sum Data.ByteString.ByteString
_PublicKey'Ed25519
  = Data.ProtoLens.Prism.prism'
      PublicKey'Ed25519
      (\ p__
         -> case p__ of
              (PublicKey'Ed25519 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PublicKey'Secp256k1 ::
  Data.ProtoLens.Prism.Prism' PublicKey'Sum Data.ByteString.ByteString
_PublicKey'Secp256k1
  = Data.ProtoLens.Prism.prism'
      PublicKey'Secp256k1
      (\ p__
         -> case p__ of
              (PublicKey'Secp256k1 p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FStendermint/crypto/keys.proto\DC2\DC1tendermint.crypto\SUB\DC4gogoproto/gogo.proto\"X\n\
    \\tPublicKey\DC2\SUB\n\
    \\aed25519\CAN\SOH \SOH(\fH\NULR\aed25519\DC2\RS\n\
    \\tsecp256k1\CAN\STX \SOH(\fH\NULR\tsecp256k1B\ENQ\n\
    \\ETXsum:\b\232\160\US\SOH\232\161\US\SOHB6Z4github.com/cometbft/cometbft/proto/tendermint/cryptoJ\212\STX\n\
    \\ACK\DC2\EOT\NUL\NUL\DLE\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULK\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \J\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\DLE\SOH\SUB> PublicKey defines the keys available for use with Validators\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\t\STX$\n\
    \\r\n\
    \\ACK\EOT\NUL\a\157\244\ETX\DC2\ETX\t\STX$\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\n\
    \\STX$\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\n\
    \\STX$\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\f\STX\SI\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\f\b\v\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\n\
    \\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\n\
    \\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\SYN\ETBb\ACKproto3"