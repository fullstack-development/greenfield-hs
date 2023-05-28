{- This file was auto-generated from cosmos/tx/signing/v1beta1/signing.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Tx.Signing.V1beta1.Signing (
        SignMode(..), SignMode(), SignMode'UnrecognizedValue,
        SignatureDescriptor(), SignatureDescriptor'Data(),
        SignatureDescriptor'Data'Sum(..),
        _SignatureDescriptor'Data'Single',
        _SignatureDescriptor'Data'Multi', SignatureDescriptor'Data'Multi(),
        SignatureDescriptor'Data'Single(), SignatureDescriptors()
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
import qualified Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig
import qualified Proto.Google.Protobuf.Any
newtype SignMode'UnrecognizedValue
  = SignMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SignMode
  = SIGN_MODE_UNSPECIFIED |
    SIGN_MODE_DIRECT |
    SIGN_MODE_TEXTUAL |
    SIGN_MODE_DIRECT_AUX |
    SIGN_MODE_LEGACY_AMINO_JSON |
    SIGN_MODE_EIP_191 |
    SignMode'Unrecognized !SignMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SignMode where
  maybeToEnum 0 = Prelude.Just SIGN_MODE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just SIGN_MODE_DIRECT
  maybeToEnum 2 = Prelude.Just SIGN_MODE_TEXTUAL
  maybeToEnum 3 = Prelude.Just SIGN_MODE_DIRECT_AUX
  maybeToEnum 127 = Prelude.Just SIGN_MODE_LEGACY_AMINO_JSON
  maybeToEnum 191 = Prelude.Just SIGN_MODE_EIP_191
  maybeToEnum k
    = Prelude.Just
        (SignMode'Unrecognized
           (SignMode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum SIGN_MODE_UNSPECIFIED = "SIGN_MODE_UNSPECIFIED"
  showEnum SIGN_MODE_DIRECT = "SIGN_MODE_DIRECT"
  showEnum SIGN_MODE_TEXTUAL = "SIGN_MODE_TEXTUAL"
  showEnum SIGN_MODE_DIRECT_AUX = "SIGN_MODE_DIRECT_AUX"
  showEnum SIGN_MODE_LEGACY_AMINO_JSON
    = "SIGN_MODE_LEGACY_AMINO_JSON"
  showEnum SIGN_MODE_EIP_191 = "SIGN_MODE_EIP_191"
  showEnum (SignMode'Unrecognized (SignMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SIGN_MODE_UNSPECIFIED"
    = Prelude.Just SIGN_MODE_UNSPECIFIED
    | (Prelude.==) k "SIGN_MODE_DIRECT" = Prelude.Just SIGN_MODE_DIRECT
    | (Prelude.==) k "SIGN_MODE_TEXTUAL"
    = Prelude.Just SIGN_MODE_TEXTUAL
    | (Prelude.==) k "SIGN_MODE_DIRECT_AUX"
    = Prelude.Just SIGN_MODE_DIRECT_AUX
    | (Prelude.==) k "SIGN_MODE_LEGACY_AMINO_JSON"
    = Prelude.Just SIGN_MODE_LEGACY_AMINO_JSON
    | (Prelude.==) k "SIGN_MODE_EIP_191"
    = Prelude.Just SIGN_MODE_EIP_191
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SignMode where
  minBound = SIGN_MODE_UNSPECIFIED
  maxBound = SIGN_MODE_EIP_191
instance Prelude.Enum SignMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SignMode: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum SIGN_MODE_UNSPECIFIED = 0
  fromEnum SIGN_MODE_DIRECT = 1
  fromEnum SIGN_MODE_TEXTUAL = 2
  fromEnum SIGN_MODE_DIRECT_AUX = 3
  fromEnum SIGN_MODE_LEGACY_AMINO_JSON = 127
  fromEnum SIGN_MODE_EIP_191 = 191
  fromEnum (SignMode'Unrecognized (SignMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SIGN_MODE_EIP_191
    = Prelude.error
        "SignMode.succ: bad argument SIGN_MODE_EIP_191. This value would be out of bounds."
  succ SIGN_MODE_UNSPECIFIED = SIGN_MODE_DIRECT
  succ SIGN_MODE_DIRECT = SIGN_MODE_TEXTUAL
  succ SIGN_MODE_TEXTUAL = SIGN_MODE_DIRECT_AUX
  succ SIGN_MODE_DIRECT_AUX = SIGN_MODE_LEGACY_AMINO_JSON
  succ SIGN_MODE_LEGACY_AMINO_JSON = SIGN_MODE_EIP_191
  succ (SignMode'Unrecognized _)
    = Prelude.error "SignMode.succ: bad argument: unrecognized value"
  pred SIGN_MODE_UNSPECIFIED
    = Prelude.error
        "SignMode.pred: bad argument SIGN_MODE_UNSPECIFIED. This value would be out of bounds."
  pred SIGN_MODE_DIRECT = SIGN_MODE_UNSPECIFIED
  pred SIGN_MODE_TEXTUAL = SIGN_MODE_DIRECT
  pred SIGN_MODE_DIRECT_AUX = SIGN_MODE_TEXTUAL
  pred SIGN_MODE_LEGACY_AMINO_JSON = SIGN_MODE_DIRECT_AUX
  pred SIGN_MODE_EIP_191 = SIGN_MODE_LEGACY_AMINO_JSON
  pred (SignMode'Unrecognized _)
    = Prelude.error "SignMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SignMode where
  fieldDefault = SIGN_MODE_UNSPECIFIED
instance Control.DeepSeq.NFData SignMode where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.publicKey' @:: Lens' SignatureDescriptor Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.maybe'publicKey' @:: Lens' SignatureDescriptor (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.data'' @:: Lens' SignatureDescriptor SignatureDescriptor'Data@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.maybe'data'' @:: Lens' SignatureDescriptor (Prelude.Maybe SignatureDescriptor'Data)@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.sequence' @:: Lens' SignatureDescriptor Data.Word.Word64@ -}
data SignatureDescriptor
  = SignatureDescriptor'_constructor {_SignatureDescriptor'publicKey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                      _SignatureDescriptor'data' :: !(Prelude.Maybe SignatureDescriptor'Data),
                                      _SignatureDescriptor'sequence :: !Data.Word.Word64,
                                      _SignatureDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignatureDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignatureDescriptor "publicKey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'publicKey
           (\ x__ y__ -> x__ {_SignatureDescriptor'publicKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignatureDescriptor "maybe'publicKey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'publicKey
           (\ x__ y__ -> x__ {_SignatureDescriptor'publicKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignatureDescriptor "data'" SignatureDescriptor'Data where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'data'
           (\ x__ y__ -> x__ {_SignatureDescriptor'data' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignatureDescriptor "maybe'data'" (Prelude.Maybe SignatureDescriptor'Data) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'data'
           (\ x__ y__ -> x__ {_SignatureDescriptor'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignatureDescriptor "sequence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'sequence
           (\ x__ y__ -> x__ {_SignatureDescriptor'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignatureDescriptor where
  messageName _
    = Data.Text.pack "cosmos.tx.signing.v1beta1.SignatureDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC3SignatureDescriptor\DC23\n\
      \\n\
      \public_key\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\tpublicKey\DC2G\n\
      \\EOTdata\CAN\STX \SOH(\v23.cosmos.tx.signing.v1beta1.SignatureDescriptor.DataR\EOTdata\DC2\SUB\n\
      \\bsequence\CAN\ETX \SOH(\EOTR\bsequence\SUB\195\ETX\n\
      \\EOTData\DC2T\n\
      \\ACKsingle\CAN\SOH \SOH(\v2:.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.SingleH\NULR\ACKsingle\DC2Q\n\
      \\ENQmulti\CAN\STX \SOH(\v29.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.MultiH\NULR\ENQmulti\SUB_\n\
      \\ACKSingle\DC27\n\
      \\EOTmode\CAN\SOH \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\DC2\FS\n\
      \\tsignature\CAN\STX \SOH(\fR\tsignature\SUB\169\SOH\n\
      \\ENQMulti\DC2K\n\
      \\bbitarray\CAN\SOH \SOH(\v2/.cosmos.crypto.multisig.v1beta1.CompactBitArrayR\bbitarray\DC2S\n\
      \\n\
      \signatures\CAN\STX \ETX(\v23.cosmos.tx.signing.v1beta1.SignatureDescriptor.DataR\n\
      \signaturesB\ENQ\n\
      \\ETXsum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        publicKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "public_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'publicKey")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignatureDescriptor'Data)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'data'")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sequence")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, publicKey__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor),
           (Data.ProtoLens.Tag 3, sequence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignatureDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_SignatureDescriptor'_unknownFields = y__})
  defMessage
    = SignatureDescriptor'_constructor
        {_SignatureDescriptor'publicKey = Prelude.Nothing,
         _SignatureDescriptor'data' = Prelude.Nothing,
         _SignatureDescriptor'sequence = Data.ProtoLens.fieldDefault,
         _SignatureDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignatureDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser SignatureDescriptor
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "public_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"publicKey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "SignatureDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'publicKey") _x
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'data'") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sequence") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SignatureDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignatureDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignatureDescriptor'publicKey x__)
                (Control.DeepSeq.deepseq
                   (_SignatureDescriptor'data' x__)
                   (Control.DeepSeq.deepseq (_SignatureDescriptor'sequence x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.maybe'sum' @:: Lens' SignatureDescriptor'Data (Prelude.Maybe SignatureDescriptor'Data'Sum)@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.maybe'single' @:: Lens' SignatureDescriptor'Data (Prelude.Maybe SignatureDescriptor'Data'Single)@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.single' @:: Lens' SignatureDescriptor'Data SignatureDescriptor'Data'Single@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.maybe'multi' @:: Lens' SignatureDescriptor'Data (Prelude.Maybe SignatureDescriptor'Data'Multi)@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.multi' @:: Lens' SignatureDescriptor'Data SignatureDescriptor'Data'Multi@ -}
data SignatureDescriptor'Data
  = SignatureDescriptor'Data'_constructor {_SignatureDescriptor'Data'sum :: !(Prelude.Maybe SignatureDescriptor'Data'Sum),
                                           _SignatureDescriptor'Data'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignatureDescriptor'Data where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SignatureDescriptor'Data'Sum
  = SignatureDescriptor'Data'Single' !SignatureDescriptor'Data'Single |
    SignatureDescriptor'Data'Multi' !SignatureDescriptor'Data'Multi
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data "maybe'sum" (Prelude.Maybe SignatureDescriptor'Data'Sum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'sum
           (\ x__ y__ -> x__ {_SignatureDescriptor'Data'sum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data "maybe'single" (Prelude.Maybe SignatureDescriptor'Data'Single) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'sum
           (\ x__ y__ -> x__ {_SignatureDescriptor'Data'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SignatureDescriptor'Data'Single' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SignatureDescriptor'Data'Single' y__))
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data "single" SignatureDescriptor'Data'Single where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'sum
           (\ x__ y__ -> x__ {_SignatureDescriptor'Data'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SignatureDescriptor'Data'Single' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SignatureDescriptor'Data'Single' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data "maybe'multi" (Prelude.Maybe SignatureDescriptor'Data'Multi) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'sum
           (\ x__ y__ -> x__ {_SignatureDescriptor'Data'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SignatureDescriptor'Data'Multi' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SignatureDescriptor'Data'Multi' y__))
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data "multi" SignatureDescriptor'Data'Multi where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'sum
           (\ x__ y__ -> x__ {_SignatureDescriptor'Data'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SignatureDescriptor'Data'Multi' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SignatureDescriptor'Data'Multi' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message SignatureDescriptor'Data where
  messageName _
    = Data.Text.pack
        "cosmos.tx.signing.v1beta1.SignatureDescriptor.Data"
  packedMessageDescriptor _
    = "\n\
      \\EOTData\DC2T\n\
      \\ACKsingle\CAN\SOH \SOH(\v2:.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.SingleH\NULR\ACKsingle\DC2Q\n\
      \\ENQmulti\CAN\STX \SOH(\v29.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.MultiH\NULR\ENQmulti\SUB_\n\
      \\ACKSingle\DC27\n\
      \\EOTmode\CAN\SOH \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\DC2\FS\n\
      \\tsignature\CAN\STX \SOH(\fR\tsignature\SUB\169\SOH\n\
      \\ENQMulti\DC2K\n\
      \\bbitarray\CAN\SOH \SOH(\v2/.cosmos.crypto.multisig.v1beta1.CompactBitArrayR\bbitarray\DC2S\n\
      \\n\
      \signatures\CAN\STX \ETX(\v23.cosmos.tx.signing.v1beta1.SignatureDescriptor.DataR\n\
      \signaturesB\ENQ\n\
      \\ETXsum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        single__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "single"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignatureDescriptor'Data'Single)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'single")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor'Data
        multi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "multi"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignatureDescriptor'Data'Multi)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'multi")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor'Data
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, single__field_descriptor),
           (Data.ProtoLens.Tag 2, multi__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignatureDescriptor'Data'_unknownFields
        (\ x__ y__ -> x__ {_SignatureDescriptor'Data'_unknownFields = y__})
  defMessage
    = SignatureDescriptor'Data'_constructor
        {_SignatureDescriptor'Data'sum = Prelude.Nothing,
         _SignatureDescriptor'Data'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignatureDescriptor'Data
          -> Data.ProtoLens.Encoding.Bytes.Parser SignatureDescriptor'Data
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
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "single"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"single") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "multi"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"multi") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Data"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (SignatureDescriptor'Data'Single' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (SignatureDescriptor'Data'Multi' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SignatureDescriptor'Data where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignatureDescriptor'Data'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SignatureDescriptor'Data'sum x__) ())
instance Control.DeepSeq.NFData SignatureDescriptor'Data'Sum where
  rnf (SignatureDescriptor'Data'Single' x__)
    = Control.DeepSeq.rnf x__
  rnf (SignatureDescriptor'Data'Multi' x__) = Control.DeepSeq.rnf x__
_SignatureDescriptor'Data'Single' ::
  Data.ProtoLens.Prism.Prism' SignatureDescriptor'Data'Sum SignatureDescriptor'Data'Single
_SignatureDescriptor'Data'Single'
  = Data.ProtoLens.Prism.prism'
      SignatureDescriptor'Data'Single'
      (\ p__
         -> case p__ of
              (SignatureDescriptor'Data'Single' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SignatureDescriptor'Data'Multi' ::
  Data.ProtoLens.Prism.Prism' SignatureDescriptor'Data'Sum SignatureDescriptor'Data'Multi
_SignatureDescriptor'Data'Multi'
  = Data.ProtoLens.Prism.prism'
      SignatureDescriptor'Data'Multi'
      (\ p__
         -> case p__ of
              (SignatureDescriptor'Data'Multi' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.bitarray' @:: Lens' SignatureDescriptor'Data'Multi Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.maybe'bitarray' @:: Lens' SignatureDescriptor'Data'Multi (Prelude.Maybe Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray)@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.signatures' @:: Lens' SignatureDescriptor'Data'Multi [SignatureDescriptor'Data]@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.vec'signatures' @:: Lens' SignatureDescriptor'Data'Multi (Data.Vector.Vector SignatureDescriptor'Data)@ -}
data SignatureDescriptor'Data'Multi
  = SignatureDescriptor'Data'Multi'_constructor {_SignatureDescriptor'Data'Multi'bitarray :: !(Prelude.Maybe Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray),
                                                 _SignatureDescriptor'Data'Multi'signatures :: !(Data.Vector.Vector SignatureDescriptor'Data),
                                                 _SignatureDescriptor'Data'Multi'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignatureDescriptor'Data'Multi where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data'Multi "bitarray" Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'Multi'bitarray
           (\ x__ y__
              -> x__ {_SignatureDescriptor'Data'Multi'bitarray = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data'Multi "maybe'bitarray" (Prelude.Maybe Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'Multi'bitarray
           (\ x__ y__
              -> x__ {_SignatureDescriptor'Data'Multi'bitarray = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data'Multi "signatures" [SignatureDescriptor'Data] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'Multi'signatures
           (\ x__ y__
              -> x__ {_SignatureDescriptor'Data'Multi'signatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data'Multi "vec'signatures" (Data.Vector.Vector SignatureDescriptor'Data) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'Multi'signatures
           (\ x__ y__
              -> x__ {_SignatureDescriptor'Data'Multi'signatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignatureDescriptor'Data'Multi where
  messageName _
    = Data.Text.pack
        "cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.Multi"
  packedMessageDescriptor _
    = "\n\
      \\ENQMulti\DC2K\n\
      \\bbitarray\CAN\SOH \SOH(\v2/.cosmos.crypto.multisig.v1beta1.CompactBitArrayR\bbitarray\DC2S\n\
      \\n\
      \signatures\CAN\STX \ETX(\v23.cosmos.tx.signing.v1beta1.SignatureDescriptor.DataR\n\
      \signatures"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bitarray__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bitarray"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bitarray")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor'Data'Multi
        signatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signatures"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignatureDescriptor'Data)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signatures")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor'Data'Multi
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bitarray__field_descriptor),
           (Data.ProtoLens.Tag 2, signatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignatureDescriptor'Data'Multi'_unknownFields
        (\ x__ y__
           -> x__ {_SignatureDescriptor'Data'Multi'_unknownFields = y__})
  defMessage
    = SignatureDescriptor'Data'Multi'_constructor
        {_SignatureDescriptor'Data'Multi'bitarray = Prelude.Nothing,
         _SignatureDescriptor'Data'Multi'signatures = Data.Vector.Generic.empty,
         _SignatureDescriptor'Data'Multi'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignatureDescriptor'Data'Multi
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SignatureDescriptor'Data
             -> Data.ProtoLens.Encoding.Bytes.Parser SignatureDescriptor'Data'Multi
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
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "bitarray"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bitarray") y x)
                                  mutable'signatures
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
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
          "Multi"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bitarray") _x
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
                      (Data.ProtoLens.Field.field @"vec'signatures") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SignatureDescriptor'Data'Multi where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignatureDescriptor'Data'Multi'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignatureDescriptor'Data'Multi'bitarray x__)
                (Control.DeepSeq.deepseq
                   (_SignatureDescriptor'Data'Multi'signatures x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.mode' @:: Lens' SignatureDescriptor'Data'Single SignMode@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.signature' @:: Lens' SignatureDescriptor'Data'Single Data.ByteString.ByteString@ -}
data SignatureDescriptor'Data'Single
  = SignatureDescriptor'Data'Single'_constructor {_SignatureDescriptor'Data'Single'mode :: !SignMode,
                                                  _SignatureDescriptor'Data'Single'signature :: !Data.ByteString.ByteString,
                                                  _SignatureDescriptor'Data'Single'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignatureDescriptor'Data'Single where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data'Single "mode" SignMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'Single'mode
           (\ x__ y__ -> x__ {_SignatureDescriptor'Data'Single'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignatureDescriptor'Data'Single "signature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptor'Data'Single'signature
           (\ x__ y__
              -> x__ {_SignatureDescriptor'Data'Single'signature = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignatureDescriptor'Data'Single where
  messageName _
    = Data.Text.pack
        "cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.Single"
  packedMessageDescriptor _
    = "\n\
      \\ACKSingle\DC27\n\
      \\EOTmode\CAN\SOH \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\DC2\FS\n\
      \\tsignature\CAN\STX \SOH(\fR\tsignature"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor SignMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"mode")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor'Data'Single
        signature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signature")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptor'Data'Single
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mode__field_descriptor),
           (Data.ProtoLens.Tag 2, signature__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignatureDescriptor'Data'Single'_unknownFields
        (\ x__ y__
           -> x__ {_SignatureDescriptor'Data'Single'_unknownFields = y__})
  defMessage
    = SignatureDescriptor'Data'Single'_constructor
        {_SignatureDescriptor'Data'Single'mode = Data.ProtoLens.fieldDefault,
         _SignatureDescriptor'Data'Single'signature = Data.ProtoLens.fieldDefault,
         _SignatureDescriptor'Data'Single'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignatureDescriptor'Data'Single
          -> Data.ProtoLens.Encoding.Bytes.Parser SignatureDescriptor'Data'Single
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "signature"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signature") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Single"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mode") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"signature") _x
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
instance Control.DeepSeq.NFData SignatureDescriptor'Data'Single where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignatureDescriptor'Data'Single'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignatureDescriptor'Data'Single'mode x__)
                (Control.DeepSeq.deepseq
                   (_SignatureDescriptor'Data'Single'signature x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.signatures' @:: Lens' SignatureDescriptors [SignatureDescriptor]@
         * 'Proto.Cosmos.Tx.Signing.V1beta1.Signing_Fields.vec'signatures' @:: Lens' SignatureDescriptors (Data.Vector.Vector SignatureDescriptor)@ -}
data SignatureDescriptors
  = SignatureDescriptors'_constructor {_SignatureDescriptors'signatures :: !(Data.Vector.Vector SignatureDescriptor),
                                       _SignatureDescriptors'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignatureDescriptors where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignatureDescriptors "signatures" [SignatureDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptors'signatures
           (\ x__ y__ -> x__ {_SignatureDescriptors'signatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SignatureDescriptors "vec'signatures" (Data.Vector.Vector SignatureDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignatureDescriptors'signatures
           (\ x__ y__ -> x__ {_SignatureDescriptors'signatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignatureDescriptors where
  messageName _
    = Data.Text.pack "cosmos.tx.signing.v1beta1.SignatureDescriptors"
  packedMessageDescriptor _
    = "\n\
      \\DC4SignatureDescriptors\DC2N\n\
      \\n\
      \signatures\CAN\SOH \ETX(\v2..cosmos.tx.signing.v1beta1.SignatureDescriptorR\n\
      \signatures"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signatures"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignatureDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signatures")) ::
              Data.ProtoLens.FieldDescriptor SignatureDescriptors
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignatureDescriptors'_unknownFields
        (\ x__ y__ -> x__ {_SignatureDescriptors'_unknownFields = y__})
  defMessage
    = SignatureDescriptors'_constructor
        {_SignatureDescriptors'signatures = Data.Vector.Generic.empty,
         _SignatureDescriptors'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignatureDescriptors
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SignatureDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser SignatureDescriptors
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
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
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
          "SignatureDescriptors"
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
                   (Data.ProtoLens.Field.field @"vec'signatures") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SignatureDescriptors where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignatureDescriptors'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SignatureDescriptors'signatures x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'cosmos/tx/signing/v1beta1/signing.proto\DC2\EMcosmos.tx.signing.v1beta1\SUB-cosmos/crypto/multisig/v1beta1/multisig.proto\SUB\EMgoogle/protobuf/any.proto\"f\n\
    \\DC4SignatureDescriptors\DC2N\n\
    \\n\
    \signatures\CAN\SOH \ETX(\v2..cosmos.tx.signing.v1beta1.SignatureDescriptorR\n\
    \signatures\"\245\EOT\n\
    \\DC3SignatureDescriptor\DC23\n\
    \\n\
    \public_key\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\tpublicKey\DC2G\n\
    \\EOTdata\CAN\STX \SOH(\v23.cosmos.tx.signing.v1beta1.SignatureDescriptor.DataR\EOTdata\DC2\SUB\n\
    \\bsequence\CAN\ETX \SOH(\EOTR\bsequence\SUB\195\ETX\n\
    \\EOTData\DC2T\n\
    \\ACKsingle\CAN\SOH \SOH(\v2:.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.SingleH\NULR\ACKsingle\DC2Q\n\
    \\ENQmulti\CAN\STX \SOH(\v29.cosmos.tx.signing.v1beta1.SignatureDescriptor.Data.MultiH\NULR\ENQmulti\SUB_\n\
    \\ACKSingle\DC27\n\
    \\EOTmode\CAN\SOH \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\DC2\FS\n\
    \\tsignature\CAN\STX \SOH(\fR\tsignature\SUB\169\SOH\n\
    \\ENQMulti\DC2K\n\
    \\bbitarray\CAN\SOH \SOH(\v2/.cosmos.crypto.multisig.v1beta1.CompactBitArrayR\bbitarray\DC2S\n\
    \\n\
    \signatures\CAN\STX \ETX(\v23.cosmos.tx.signing.v1beta1.SignatureDescriptor.DataR\n\
    \signaturesB\ENQ\n\
    \\ETXsum*\165\SOH\n\
    \\bSignMode\DC2\EM\n\
    \\NAKSIGN_MODE_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
    \\DLESIGN_MODE_DIRECT\DLE\SOH\DC2\NAK\n\
    \\DC1SIGN_MODE_TEXTUAL\DLE\STX\DC2\CAN\n\
    \\DC4SIGN_MODE_DIRECT_AUX\DLE\ETX\DC2\US\n\
    \\ESCSIGN_MODE_LEGACY_AMINO_JSON\DLE\DEL\DC2\SYN\n\
    \\DC1SIGN_MODE_EIP_191\DLE\191\SOHB/Z-github.com/cosmos/cosmos-sdk/types/tx/signingJ\148 \n\
    \\ACK\DC2\EOT\NUL\NULk\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL7\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULD\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULD\n\
    \\213\ETX\n\
    \\STX\ENQ\NUL\DC2\EOT\DLE\NUL7\SOH\SUB\200\ETX SignMode represents a signing mode with its own security guarantees.\n\
    \\n\
    \ This enum should be considered a registry of all known sign modes\n\
    \ in the Cosmos ecosystem. Apps are not expected to support all known\n\
    \ sign modes. Apps that would like to support custom  sign modes are\n\
    \ encouraged to open a small PR against this file to add a new case\n\
    \ to this SignMode enum describing their sign mode so that different\n\
    \ apps have a consistent version of this enum.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\DLE\ENQ\r\n\
    \]\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\DC3\STX\FS\SUBP SIGN_MODE_UNSPECIFIED specifies an unknown signing mode and will be\n\
    \ rejected.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\DC3\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\DC3\SUB\ESC\n\
    \t\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\ETB\STX\ETB\SUBg SIGN_MODE_DIRECT specifies a signing mode which uses SignDoc and is\n\
    \ verified with raw bytes from Tx.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\ETB\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\ETB\NAK\SYN\n\
    \\246\STX\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\RS\STX\CAN\SUB\232\STX SIGN_MODE_TEXTUAL is a future signing mode that will verify some\n\
    \ human-readable textual representation on top of the binary representation\n\
    \ from SIGN_MODE_DIRECT. It is currently experimental, and should be used\n\
    \ for testing purposes only, until Textual is fully released. Please follow\n\
    \ the tracking issue https://github.com/cosmos/cosmos-sdk/issues/11970.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\RS\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\RS\SYN\ETB\n\
    \\153\STX\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX&\STX\ESC\SUB\139\STX SIGN_MODE_DIRECT_AUX specifies a signing mode which uses\n\
    \ SignDocDirectAux. As opposed to SIGN_MODE_DIRECT, this sign mode does not\n\
    \ require signers signing over other signers' `signer_info`. It also allows\n\
    \ for adding Tips in transactions.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX&\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX&\EM\SUB\n\
    \\134\SOH\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX*\STX$\SUBy SIGN_MODE_LEGACY_AMINO_JSON is a backwards compatibility mode which uses\n\
    \ Amino JSON and will be removed in the future.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX*\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX* #\n\
    \\211\ETX\n\
    \\EOT\ENQ\NUL\STX\ENQ\DC2\ETX6\STX\SUB\SUB\197\ETX SIGN_MODE_EIP_191 specifies the sign mode for EIP 191 signing on the Cosmos\n\
    \ SDK. Ref: https://eips.ethereum.org/EIPS/eip-191\n\
    \\n\
    \ Currently, SIGN_MODE_EIP_191 is registered as a SignMode enum variant,\n\
    \ but is not implemented on the SDK by default. To enable EIP-191, you need\n\
    \ to pass a custom `TxConfig` that has an implementation of\n\
    \ `SignModeHandler` for EIP-191. The SDK may decide to fully support\n\
    \ EIP-191 in the future.\n\
    \\n\
    \ Since: cosmos-sdk 0.45.2\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\SOH\DC2\ETX6\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\STX\DC2\ETX6\SYN\EM\n\
    \H\n\
    \\STX\EOT\NUL\DC2\EOT:\NUL=\SOH\SUB< SignatureDescriptors wraps multiple SignatureDescriptor's.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX:\b\FS\n\
    \7\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX<\STX.\SUB* signatures are the signature descriptors\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX<\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX<\US)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX<,-\n\
    \\252\SOH\n\
    \\STX\EOT\SOH\DC2\EOTC\NULk\SOH\SUB\239\SOH SignatureDescriptor is a convenience type which represents the full data for\n\
    \ a signature including the public key of the signer, signing modes and the\n\
    \ signature itself. It is primarily used for coordinating signatures between\n\
    \ clients.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXC\b\ESC\n\
    \9\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXE\STX%\SUB, public_key is the public key of the signer\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXE\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXE\SYN \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXE#$\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXG\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXG\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXG\a\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXG\SO\SI\n\
    \\176\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXL\STX\SYN\SUB\162\SOH sequence is the sequence of the account, which describes the\n\
    \ number of committed transactions signed by a given address. It is used to prevent\n\
    \ replay attacks.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXL\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXL\DC4\NAK\n\
    \.\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOTO\STXj\ETX\SUB  Data represents signature data\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETXO\n\
    \\SO\n\
    \h\n\
    \\ACK\EOT\SOH\ETX\NUL\b\NUL\DC2\EOTQ\EOTW\ENQ\SUBX sum is the oneof that specifies whether this represents single or multi-signature data\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\b\NUL\SOH\DC2\ETXQ\n\
    \\r\n\
    \2\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETXS\ACK\CAN\SUB# single represents a single signer\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETXS\ACK\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETXS\r\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETXS\SYN\ETB\n\
    \3\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\SOH\DC2\ETXV\ACK\SYN\SUB$ multi represents a multisig signer\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ACK\DC2\ETXV\ACK\v\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETXV\f\DC1\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETXV\DC4\NAK\n\
    \B\n\
    \\ACK\EOT\SOH\ETX\NUL\ETX\NUL\DC2\EOTZ\EOT`\ENQ\SUB2 Single is the signature data for a single signer\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\ETX\NUL\SOH\DC2\ETXZ\f\DC2\n\
    \@\n\
    \\b\EOT\SOH\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETX\\\ACK\CAN\SUB/ mode is the signing mode of the single signer\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX\\\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\\\SI\DC3\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\\\SYN\ETB\n\
    \7\n\
    \\b\EOT\SOH\ETX\NUL\ETX\NUL\STX\SOH\DC2\ETX_\ACK\SUB\SUB& signature is the raw signature bytes\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX_\ACK\v\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX_\f\NAK\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX_\CAN\EM\n\
    \G\n\
    \\ACK\EOT\SOH\ETX\NUL\ETX\SOH\DC2\EOTc\EOTi\ENQ\SUB7 Multi is the signature data for a multisig public key\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\ETX\SOH\SOH\DC2\ETXc\f\DC1\n\
    \P\n\
    \\b\EOT\SOH\ETX\NUL\ETX\SOH\STX\NUL\DC2\ETXe\ACKB\SUB? bitarray specifies which keys within the multisig are signing\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETXe\ACK4\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXe5=\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXe@A\n\
    \F\n\
    \\b\EOT\SOH\ETX\NUL\ETX\SOH\STX\SOH\DC2\ETXh\ACK#\SUB5 signatures is the signatures of the multi-signature\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\SOH\STX\SOH\EOT\DC2\ETXh\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETXh\SI\DC3\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXh\DC4\RS\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXh!\"b\ACKproto3"