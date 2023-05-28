{- This file was auto-generated from cosmos/crypto/multisig/v1beta1/multisig.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig (
        CompactBitArray(), MultiSignature()
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
     
         * 'Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig_Fields.extraBitsStored' @:: Lens' CompactBitArray Data.Word.Word32@
         * 'Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig_Fields.elems' @:: Lens' CompactBitArray Data.ByteString.ByteString@ -}
data CompactBitArray
  = CompactBitArray'_constructor {_CompactBitArray'extraBitsStored :: !Data.Word.Word32,
                                  _CompactBitArray'elems :: !Data.ByteString.ByteString,
                                  _CompactBitArray'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CompactBitArray where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CompactBitArray "extraBitsStored" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompactBitArray'extraBitsStored
           (\ x__ y__ -> x__ {_CompactBitArray'extraBitsStored = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CompactBitArray "elems" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CompactBitArray'elems
           (\ x__ y__ -> x__ {_CompactBitArray'elems = y__}))
        Prelude.id
instance Data.ProtoLens.Message CompactBitArray where
  messageName _
    = Data.Text.pack "cosmos.crypto.multisig.v1beta1.CompactBitArray"
  packedMessageDescriptor _
    = "\n\
      \\SICompactBitArray\DC2*\n\
      \\DC1extra_bits_stored\CAN\SOH \SOH(\rR\SIextraBitsStored\DC2\DC4\n\
      \\ENQelems\CAN\STX \SOH(\fR\ENQelems:\EOT\152\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        extraBitsStored__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_bits_stored"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extraBitsStored")) ::
              Data.ProtoLens.FieldDescriptor CompactBitArray
        elems__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "elems"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"elems")) ::
              Data.ProtoLens.FieldDescriptor CompactBitArray
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, extraBitsStored__field_descriptor),
           (Data.ProtoLens.Tag 2, elems__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CompactBitArray'_unknownFields
        (\ x__ y__ -> x__ {_CompactBitArray'_unknownFields = y__})
  defMessage
    = CompactBitArray'_constructor
        {_CompactBitArray'extraBitsStored = Data.ProtoLens.fieldDefault,
         _CompactBitArray'elems = Data.ProtoLens.fieldDefault,
         _CompactBitArray'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CompactBitArray
          -> Data.ProtoLens.Encoding.Bytes.Parser CompactBitArray
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "extra_bits_stored"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extraBitsStored") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "elems"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"elems") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CompactBitArray"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"extraBitsStored") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"elems") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CompactBitArray where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CompactBitArray'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CompactBitArray'extraBitsStored x__)
                (Control.DeepSeq.deepseq (_CompactBitArray'elems x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig_Fields.signatures' @:: Lens' MultiSignature [Data.ByteString.ByteString]@
         * 'Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig_Fields.vec'signatures' @:: Lens' MultiSignature (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data MultiSignature
  = MultiSignature'_constructor {_MultiSignature'signatures :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                 _MultiSignature'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MultiSignature where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MultiSignature "signatures" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MultiSignature'signatures
           (\ x__ y__ -> x__ {_MultiSignature'signatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MultiSignature "vec'signatures" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MultiSignature'signatures
           (\ x__ y__ -> x__ {_MultiSignature'signatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message MultiSignature where
  messageName _
    = Data.Text.pack "cosmos.crypto.multisig.v1beta1.MultiSignature"
  packedMessageDescriptor _
    = "\n\
      \\SOMultiSignature\DC2\RS\n\
      \\n\
      \signatures\CAN\SOH \ETX(\fR\n\
      \signatures:\EOT\208\161\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signatures"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signatures")) ::
              Data.ProtoLens.FieldDescriptor MultiSignature
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MultiSignature'_unknownFields
        (\ x__ y__ -> x__ {_MultiSignature'_unknownFields = y__})
  defMessage
    = MultiSignature'_constructor
        {_MultiSignature'signatures = Data.Vector.Generic.empty,
         _MultiSignature'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MultiSignature
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser MultiSignature
        loop x mutable'signatures
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'signatures)
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
                              (Data.ProtoLens.Field.field @"vec'signatures") frozen'signatures
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "signatures"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'signatures y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'signatures
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'signatures)
          "MultiSignature"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'signatures") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MultiSignature where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MultiSignature'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MultiSignature'signatures x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-cosmos/crypto/multisig/v1beta1/multisig.proto\DC2\RScosmos.crypto.multisig.v1beta1\SUB\DC4gogoproto/gogo.proto\"6\n\
    \\SOMultiSignature\DC2\RS\n\
    \\n\
    \signatures\CAN\SOH \ETX(\fR\n\
    \signatures:\EOT\208\161\US\SOH\"Y\n\
    \\SICompactBitArray\DC2*\n\
    \\DC1extra_bits_stored\CAN\SOH \SOH(\rR\SIextraBitsStored\DC2\DC4\n\
    \\ENQelems\CAN\STX \SOH(\fR\ENQelems:\EOT\152\160\US\NULB+Z)github.com/cosmos/cosmos-sdk/crypto/typesJ\254\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\CAN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL'\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NUL@\n\
    \\188\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\r\SOH\SUB\175\SOH MultiSignature wraps the signatures from a multisig.LegacyAminoPubKey.\n\
    \ See cosmos.tx.v1betata1.ModeInfo.Multi for how to specify which signers\n\
    \ signed and with which modes.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\SYN\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\v\STX1\n\
    \\r\n\
    \\ACK\EOT\NUL\a\154\244\ETX\DC2\ETX\v\STX1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STX.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f,-\n\
    \\255\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\DC3\NUL\CAN\SOH\SUB\242\SOH CompactBitArray is an implementation of a space efficient bit array.\n\
    \ This is used to ensure that the encoded data takes up a minimal amount of\n\
    \ space after proto encoding.\n\
    \ This is not thread safe, and is not intended for concurrent usage.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC3\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\DC4\STX.\n\
    \\r\n\
    \\ACK\EOT\SOH\a\131\244\ETX\DC2\ETX\DC4\STX.\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SYN\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SYN\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SYN\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\ETB\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\ETB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\ETB\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\ETB\GS\RSb\ACKproto3"