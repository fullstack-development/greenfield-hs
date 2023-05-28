{- This file was auto-generated from cosmos/crypto/multisig/keys.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crypto.Multisig.Keys (
        LegacyAminoPubKey()
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
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Multisig.Keys_Fields.threshold' @:: Lens' LegacyAminoPubKey Data.Word.Word32@
         * 'Proto.Cosmos.Crypto.Multisig.Keys_Fields.publicKeys' @:: Lens' LegacyAminoPubKey [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Crypto.Multisig.Keys_Fields.vec'publicKeys' @:: Lens' LegacyAminoPubKey (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data LegacyAminoPubKey
  = LegacyAminoPubKey'_constructor {_LegacyAminoPubKey'threshold :: !Data.Word.Word32,
                                    _LegacyAminoPubKey'publicKeys :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                    _LegacyAminoPubKey'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LegacyAminoPubKey where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LegacyAminoPubKey "threshold" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LegacyAminoPubKey'threshold
           (\ x__ y__ -> x__ {_LegacyAminoPubKey'threshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LegacyAminoPubKey "publicKeys" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LegacyAminoPubKey'publicKeys
           (\ x__ y__ -> x__ {_LegacyAminoPubKey'publicKeys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LegacyAminoPubKey "vec'publicKeys" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LegacyAminoPubKey'publicKeys
           (\ x__ y__ -> x__ {_LegacyAminoPubKey'publicKeys = y__}))
        Prelude.id
instance Data.ProtoLens.Message LegacyAminoPubKey where
  messageName _
    = Data.Text.pack "cosmos.crypto.multisig.LegacyAminoPubKey"
  packedMessageDescriptor _
    = "\n\
      \\DC1LegacyAminoPubKey\DC2\FS\n\
      \\tthreshold\CAN\SOH \SOH(\rR\tthreshold\DC2N\n\
      \\vpublic_keys\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\n\
      \publicKeysB\ETB\226\222\US\aPubKeys\162\231\176*\apubkeys:@\136\160\US\NUL\138\231\176*\"tendermint/PubKeyMultisigThreshold\146\231\176*\DLEthreshold_string"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        threshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"threshold")) ::
              Data.ProtoLens.FieldDescriptor LegacyAminoPubKey
        publicKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "public_keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"publicKeys")) ::
              Data.ProtoLens.FieldDescriptor LegacyAminoPubKey
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, threshold__field_descriptor),
           (Data.ProtoLens.Tag 2, publicKeys__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LegacyAminoPubKey'_unknownFields
        (\ x__ y__ -> x__ {_LegacyAminoPubKey'_unknownFields = y__})
  defMessage
    = LegacyAminoPubKey'_constructor
        {_LegacyAminoPubKey'threshold = Data.ProtoLens.fieldDefault,
         _LegacyAminoPubKey'publicKeys = Data.Vector.Generic.empty,
         _LegacyAminoPubKey'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LegacyAminoPubKey
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser LegacyAminoPubKey
        loop x mutable'publicKeys
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'publicKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'publicKeys)
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
                              (Data.ProtoLens.Field.field @"vec'publicKeys") frozen'publicKeys
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threshold") y x)
                                  mutable'publicKeys
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "public_keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'publicKeys y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'publicKeys
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'publicKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'publicKeys)
          "LegacyAminoPubKey"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"threshold") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                      (Data.ProtoLens.Field.field @"vec'publicKeys") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LegacyAminoPubKey where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LegacyAminoPubKey'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LegacyAminoPubKey'threshold x__)
                (Control.DeepSeq.deepseq (_LegacyAminoPubKey'publicKeys x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!cosmos/crypto/multisig/keys.proto\DC2\SYNcosmos.crypto.multisig\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\DC1amino/amino.proto\"\195\SOH\n\
    \\DC1LegacyAminoPubKey\DC2\FS\n\
    \\tthreshold\CAN\SOH \SOH(\rR\tthreshold\DC2N\n\
    \\vpublic_keys\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\n\
    \publicKeysB\ETB\226\222\US\aPubKeys\162\231\176*\apubkeys:@\136\160\US\NUL\138\231\176*\"tendermint/PubKeyMultisigThreshold\146\231\176*\DLEthreshold_stringB3Z1github.com/cosmos/cosmos-sdk/crypto/keys/multisigJ\128\b\n\
    \\ACK\DC2\EOT\NUL\NUL\GS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULH\n\
    \\148\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\GS\SOH\SUB\135\SOH LegacyAminoPubKey specifies a public key type\n\
    \ which nests multiple public keys and a threshold,\n\
    \ it uses legacy amino address rules.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\r\STX=\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\r\STX=\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STX:\n\
    \\152\EOT\n\
    \\a\EOT\NUL\a\242\140\166\ENQ\DC2\ETX\CAN\STX:\SUB\135\EOT The Amino encoding of a LegacyAminoPubkey is the legacy amino\n\
    \ encoding of the `PubKeyMultisigThreshold` struct defined below:\n\
    \ https://github.com/tendermint/tendermint/blob/v0.33.9/crypto/multisig/threshold_pubkey.go\n\
    \\n\
    \ There are 2 differences with what a \"normal\" Amino encoding\n\
    \ would output:\n\
    \ 1. The `threshold` field is always a string (whereas Amino would\n\
    \ by default marshal uint32 as a number).\n\
    \ 2. The `public_keys` field is renamed to `pubkeys`, which is also\n\
    \ reflected in the `amino.field_name` annotation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\EM\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\EM\STX-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC-.\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STXt\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\FS\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\US*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\FS/s\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\236\251\ETX\DC2\ETX\FS0R\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\244\140\166\ENQ\DC2\ETX\FSTrb\ACKproto3"