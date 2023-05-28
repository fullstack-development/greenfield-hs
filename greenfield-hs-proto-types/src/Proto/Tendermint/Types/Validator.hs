{- This file was auto-generated from tendermint/types/validator.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Validator (
        BlockIDFlag(..), BlockIDFlag(), BlockIDFlag'UnrecognizedValue,
        SimpleValidator(), Validator(), ValidatorSet()
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
import qualified Proto.Tendermint.Crypto.Keys
newtype BlockIDFlag'UnrecognizedValue
  = BlockIDFlag'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BlockIDFlag
  = BLOCK_ID_FLAG_UNKNOWN |
    BLOCK_ID_FLAG_ABSENT |
    BLOCK_ID_FLAG_COMMIT |
    BLOCK_ID_FLAG_NIL |
    BlockIDFlag'Unrecognized !BlockIDFlag'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BlockIDFlag where
  maybeToEnum 0 = Prelude.Just BLOCK_ID_FLAG_UNKNOWN
  maybeToEnum 1 = Prelude.Just BLOCK_ID_FLAG_ABSENT
  maybeToEnum 2 = Prelude.Just BLOCK_ID_FLAG_COMMIT
  maybeToEnum 3 = Prelude.Just BLOCK_ID_FLAG_NIL
  maybeToEnum k
    = Prelude.Just
        (BlockIDFlag'Unrecognized
           (BlockIDFlag'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum BLOCK_ID_FLAG_UNKNOWN = "BLOCK_ID_FLAG_UNKNOWN"
  showEnum BLOCK_ID_FLAG_ABSENT = "BLOCK_ID_FLAG_ABSENT"
  showEnum BLOCK_ID_FLAG_COMMIT = "BLOCK_ID_FLAG_COMMIT"
  showEnum BLOCK_ID_FLAG_NIL = "BLOCK_ID_FLAG_NIL"
  showEnum
    (BlockIDFlag'Unrecognized (BlockIDFlag'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BLOCK_ID_FLAG_UNKNOWN"
    = Prelude.Just BLOCK_ID_FLAG_UNKNOWN
    | (Prelude.==) k "BLOCK_ID_FLAG_ABSENT"
    = Prelude.Just BLOCK_ID_FLAG_ABSENT
    | (Prelude.==) k "BLOCK_ID_FLAG_COMMIT"
    = Prelude.Just BLOCK_ID_FLAG_COMMIT
    | (Prelude.==) k "BLOCK_ID_FLAG_NIL"
    = Prelude.Just BLOCK_ID_FLAG_NIL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BlockIDFlag where
  minBound = BLOCK_ID_FLAG_UNKNOWN
  maxBound = BLOCK_ID_FLAG_NIL
instance Prelude.Enum BlockIDFlag where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BlockIDFlag: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BLOCK_ID_FLAG_UNKNOWN = 0
  fromEnum BLOCK_ID_FLAG_ABSENT = 1
  fromEnum BLOCK_ID_FLAG_COMMIT = 2
  fromEnum BLOCK_ID_FLAG_NIL = 3
  fromEnum
    (BlockIDFlag'Unrecognized (BlockIDFlag'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BLOCK_ID_FLAG_NIL
    = Prelude.error
        "BlockIDFlag.succ: bad argument BLOCK_ID_FLAG_NIL. This value would be out of bounds."
  succ BLOCK_ID_FLAG_UNKNOWN = BLOCK_ID_FLAG_ABSENT
  succ BLOCK_ID_FLAG_ABSENT = BLOCK_ID_FLAG_COMMIT
  succ BLOCK_ID_FLAG_COMMIT = BLOCK_ID_FLAG_NIL
  succ (BlockIDFlag'Unrecognized _)
    = Prelude.error
        "BlockIDFlag.succ: bad argument: unrecognized value"
  pred BLOCK_ID_FLAG_UNKNOWN
    = Prelude.error
        "BlockIDFlag.pred: bad argument BLOCK_ID_FLAG_UNKNOWN. This value would be out of bounds."
  pred BLOCK_ID_FLAG_ABSENT = BLOCK_ID_FLAG_UNKNOWN
  pred BLOCK_ID_FLAG_COMMIT = BLOCK_ID_FLAG_ABSENT
  pred BLOCK_ID_FLAG_NIL = BLOCK_ID_FLAG_COMMIT
  pred (BlockIDFlag'Unrecognized _)
    = Prelude.error
        "BlockIDFlag.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BlockIDFlag where
  fieldDefault = BLOCK_ID_FLAG_UNKNOWN
instance Control.DeepSeq.NFData BlockIDFlag where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Types.Validator_Fields.pubKey' @:: Lens' SimpleValidator Proto.Tendermint.Crypto.Keys.PublicKey@
         * 'Proto.Tendermint.Types.Validator_Fields.maybe'pubKey' @:: Lens' SimpleValidator (Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey)@
         * 'Proto.Tendermint.Types.Validator_Fields.votingPower' @:: Lens' SimpleValidator Data.Int.Int64@ -}
data SimpleValidator
  = SimpleValidator'_constructor {_SimpleValidator'pubKey :: !(Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey),
                                  _SimpleValidator'votingPower :: !Data.Int.Int64,
                                  _SimpleValidator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SimpleValidator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SimpleValidator "pubKey" Proto.Tendermint.Crypto.Keys.PublicKey where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimpleValidator'pubKey
           (\ x__ y__ -> x__ {_SimpleValidator'pubKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SimpleValidator "maybe'pubKey" (Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimpleValidator'pubKey
           (\ x__ y__ -> x__ {_SimpleValidator'pubKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SimpleValidator "votingPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimpleValidator'votingPower
           (\ x__ y__ -> x__ {_SimpleValidator'votingPower = y__}))
        Prelude.id
instance Data.ProtoLens.Message SimpleValidator where
  messageName _ = Data.Text.pack "tendermint.types.SimpleValidator"
  packedMessageDescriptor _
    = "\n\
      \\SISimpleValidator\DC25\n\
      \\apub_key\CAN\SOH \SOH(\v2\FS.tendermint.crypto.PublicKeyR\ACKpubKey\DC2!\n\
      \\fvoting_power\CAN\STX \SOH(\ETXR\vvotingPower"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pubKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pub_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Crypto.Keys.PublicKey)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pubKey")) ::
              Data.ProtoLens.FieldDescriptor SimpleValidator
        votingPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"votingPower")) ::
              Data.ProtoLens.FieldDescriptor SimpleValidator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pubKey__field_descriptor),
           (Data.ProtoLens.Tag 2, votingPower__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SimpleValidator'_unknownFields
        (\ x__ y__ -> x__ {_SimpleValidator'_unknownFields = y__})
  defMessage
    = SimpleValidator'_constructor
        {_SimpleValidator'pubKey = Prelude.Nothing,
         _SimpleValidator'votingPower = Data.ProtoLens.fieldDefault,
         _SimpleValidator'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SimpleValidator
          -> Data.ProtoLens.Encoding.Bytes.Parser SimpleValidator
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
                                       "pub_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pubKey") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "voting_power"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"votingPower") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SimpleValidator"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pubKey") _x
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"votingPower") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SimpleValidator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SimpleValidator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SimpleValidator'pubKey x__)
                (Control.DeepSeq.deepseq (_SimpleValidator'votingPower x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Validator_Fields.address' @:: Lens' Validator Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Validator_Fields.pubKey' @:: Lens' Validator Proto.Tendermint.Crypto.Keys.PublicKey@
         * 'Proto.Tendermint.Types.Validator_Fields.maybe'pubKey' @:: Lens' Validator (Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey)@
         * 'Proto.Tendermint.Types.Validator_Fields.votingPower' @:: Lens' Validator Data.Int.Int64@
         * 'Proto.Tendermint.Types.Validator_Fields.proposerPriority' @:: Lens' Validator Data.Int.Int64@ -}
data Validator
  = Validator'_constructor {_Validator'address :: !Data.ByteString.ByteString,
                            _Validator'pubKey :: !(Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey),
                            _Validator'votingPower :: !Data.Int.Int64,
                            _Validator'proposerPriority :: !Data.Int.Int64,
                            _Validator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Validator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Validator "address" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'address (\ x__ y__ -> x__ {_Validator'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "pubKey" Proto.Tendermint.Crypto.Keys.PublicKey where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'pubKey (\ x__ y__ -> x__ {_Validator'pubKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Validator "maybe'pubKey" (Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'pubKey (\ x__ y__ -> x__ {_Validator'pubKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "votingPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'votingPower
           (\ x__ y__ -> x__ {_Validator'votingPower = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "proposerPriority" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'proposerPriority
           (\ x__ y__ -> x__ {_Validator'proposerPriority = y__}))
        Prelude.id
instance Data.ProtoLens.Message Validator where
  messageName _ = Data.Text.pack "tendermint.types.Validator"
  packedMessageDescriptor _
    = "\n\
      \\tValidator\DC2\CAN\n\
      \\aaddress\CAN\SOH \SOH(\fR\aaddress\DC2;\n\
      \\apub_key\CAN\STX \SOH(\v2\FS.tendermint.crypto.PublicKeyR\ACKpubKeyB\EOT\200\222\US\NUL\DC2!\n\
      \\fvoting_power\CAN\ETX \SOH(\ETXR\vvotingPower\DC2+\n\
      \\DC1proposer_priority\CAN\EOT \SOH(\ETXR\DLEproposerPriority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor Validator
        pubKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pub_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Crypto.Keys.PublicKey)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pubKey")) ::
              Data.ProtoLens.FieldDescriptor Validator
        votingPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"votingPower")) ::
              Data.ProtoLens.FieldDescriptor Validator
        proposerPriority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer_priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposerPriority")) ::
              Data.ProtoLens.FieldDescriptor Validator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, pubKey__field_descriptor),
           (Data.ProtoLens.Tag 3, votingPower__field_descriptor),
           (Data.ProtoLens.Tag 4, proposerPriority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Validator'_unknownFields
        (\ x__ y__ -> x__ {_Validator'_unknownFields = y__})
  defMessage
    = Validator'_constructor
        {_Validator'address = Data.ProtoLens.fieldDefault,
         _Validator'pubKey = Prelude.Nothing,
         _Validator'votingPower = Data.ProtoLens.fieldDefault,
         _Validator'proposerPriority = Data.ProtoLens.fieldDefault,
         _Validator'_unknownFields = []}
  parseMessage
    = let
        loop :: Validator -> Data.ProtoLens.Encoding.Bytes.Parser Validator
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "voting_power"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"votingPower") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "proposer_priority"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposerPriority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Validator"
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
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"votingPower") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"proposerPriority") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Validator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Validator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Validator'address x__)
                (Control.DeepSeq.deepseq
                   (_Validator'pubKey x__)
                   (Control.DeepSeq.deepseq
                      (_Validator'votingPower x__)
                      (Control.DeepSeq.deepseq (_Validator'proposerPriority x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Validator_Fields.validators' @:: Lens' ValidatorSet [Validator]@
         * 'Proto.Tendermint.Types.Validator_Fields.vec'validators' @:: Lens' ValidatorSet (Data.Vector.Vector Validator)@
         * 'Proto.Tendermint.Types.Validator_Fields.proposer' @:: Lens' ValidatorSet Validator@
         * 'Proto.Tendermint.Types.Validator_Fields.maybe'proposer' @:: Lens' ValidatorSet (Prelude.Maybe Validator)@
         * 'Proto.Tendermint.Types.Validator_Fields.totalVotingPower' @:: Lens' ValidatorSet Data.Int.Int64@ -}
data ValidatorSet
  = ValidatorSet'_constructor {_ValidatorSet'validators :: !(Data.Vector.Vector Validator),
                               _ValidatorSet'proposer :: !(Prelude.Maybe Validator),
                               _ValidatorSet'totalVotingPower :: !Data.Int.Int64,
                               _ValidatorSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorSet "validators" [Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSet'validators
           (\ x__ y__ -> x__ {_ValidatorSet'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorSet "vec'validators" (Data.Vector.Vector Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSet'validators
           (\ x__ y__ -> x__ {_ValidatorSet'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSet "proposer" Validator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSet'proposer
           (\ x__ y__ -> x__ {_ValidatorSet'proposer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValidatorSet "maybe'proposer" (Prelude.Maybe Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSet'proposer
           (\ x__ y__ -> x__ {_ValidatorSet'proposer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSet "totalVotingPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSet'totalVotingPower
           (\ x__ y__ -> x__ {_ValidatorSet'totalVotingPower = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorSet where
  messageName _ = Data.Text.pack "tendermint.types.ValidatorSet"
  packedMessageDescriptor _
    = "\n\
      \\fValidatorSet\DC2;\n\
      \\n\
      \validators\CAN\SOH \ETX(\v2\ESC.tendermint.types.ValidatorR\n\
      \validators\DC27\n\
      \\bproposer\CAN\STX \SOH(\v2\ESC.tendermint.types.ValidatorR\bproposer\DC2,\n\
      \\DC2total_voting_power\CAN\ETX \SOH(\ETXR\DLEtotalVotingPower"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSet
        proposer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proposer")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSet
        totalVotingPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_voting_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalVotingPower")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSet
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validators__field_descriptor),
           (Data.ProtoLens.Tag 2, proposer__field_descriptor),
           (Data.ProtoLens.Tag 3, totalVotingPower__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorSet'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorSet'_unknownFields = y__})
  defMessage
    = ValidatorSet'_constructor
        {_ValidatorSet'validators = Data.Vector.Generic.empty,
         _ValidatorSet'proposer = Prelude.Nothing,
         _ValidatorSet'totalVotingPower = Data.ProtoLens.fieldDefault,
         _ValidatorSet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorSet
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Validator
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorSet
        loop x mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'validators") frozen'validators
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
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proposer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposer") y x)
                                  mutable'validators
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_voting_power"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalVotingPower") y x)
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validators)
          "ValidatorSet"
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
                   (Data.ProtoLens.Field.field @"vec'validators") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proposer") _x
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
                            (Data.ProtoLens.Field.field @"totalVotingPower") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ValidatorSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorSet'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorSet'validators x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorSet'proposer x__)
                   (Control.DeepSeq.deepseq (_ValidatorSet'totalVotingPower x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ tendermint/types/validator.proto\DC2\DLEtendermint.types\SUB\DC4gogoproto/gogo.proto\SUB\FStendermint/crypto/keys.proto\"\178\SOH\n\
    \\fValidatorSet\DC2;\n\
    \\n\
    \validators\CAN\SOH \ETX(\v2\ESC.tendermint.types.ValidatorR\n\
    \validators\DC27\n\
    \\bproposer\CAN\STX \SOH(\v2\ESC.tendermint.types.ValidatorR\bproposer\DC2,\n\
    \\DC2total_voting_power\CAN\ETX \SOH(\ETXR\DLEtotalVotingPower\"\178\SOH\n\
    \\tValidator\DC2\CAN\n\
    \\aaddress\CAN\SOH \SOH(\fR\aaddress\DC2;\n\
    \\apub_key\CAN\STX \SOH(\v2\FS.tendermint.crypto.PublicKeyR\ACKpubKeyB\EOT\200\222\US\NUL\DC2!\n\
    \\fvoting_power\CAN\ETX \SOH(\ETXR\vvotingPower\DC2+\n\
    \\DC1proposer_priority\CAN\EOT \SOH(\ETXR\DLEproposerPriority\"k\n\
    \\SISimpleValidator\DC25\n\
    \\apub_key\CAN\SOH \SOH(\v2\FS.tendermint.crypto.PublicKeyR\ACKpubKey\DC2!\n\
    \\fvoting_power\CAN\STX \SOH(\ETXR\vvotingPower*\215\SOH\n\
    \\vBlockIDFlag\DC21\n\
    \\NAKBLOCK_ID_FLAG_UNKNOWN\DLE\NUL\SUB\SYN\138\157 \DC2BlockIDFlagUnknown\DC2/\n\
    \\DC4BLOCK_ID_FLAG_ABSENT\DLE\SOH\SUB\NAK\138\157 \DC1BlockIDFlagAbsent\DC2/\n\
    \\DC4BLOCK_ID_FLAG_COMMIT\DLE\STX\SUB\NAK\138\157 \DC1BlockIDFlagCommit\DC2)\n\
    \\DC1BLOCK_ID_FLAG_NIL\DLE\ETX\SUB\DC2\138\157 \SOBlockIDFlagNil\SUB\b\136\163\RS\NUL\168\164\RS\SOHB5Z3github.com/cometbft/cometbft/proto/tendermint/typesJ\213\t\n\
    \\ACK\DC2\EOT\NUL\NUL$\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\EM\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \F\n\
    \\STX\ENQ\NUL\DC2\EOT\t\NUL\DC1\SOH\SUB: BlockIdFlag indicates which BlockID the signature is for\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\t\ENQ\DLE\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\n\
    \\STX2\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\197\228\ETX\DC2\ETX\n\
    \\STX2\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\v\STX3\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\v\STX3\n\
    \+\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\r\STXV\"\RS indicates an error condition\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\r\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\r\SUB\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\ETX\DC2\ETX\r\FSU\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\NUL\ETX\209\131\EOT\DC2\ETX\r\GST\n\
    \(\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SO\STXU\"\ESC the vote was not received\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SO\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SO\SUB\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\ETX\DC2\ETX\SO\FST\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\SOH\ETX\209\131\EOT\DC2\ETX\SO\GSS\n\
    \=\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\SI\STXU\"0 voted for the block that received the majority\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\SI\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\SI\SUB\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\ETX\DC2\ETX\SI\FST\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\STX\ETX\209\131\EOT\DC2\ETX\SI\GSS\n\
    \\FS\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\DLE\STXR\"\SI voted for nil\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\DLE\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\DLE\SUB\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\ETX\DC2\ETX\DLE\FSQ\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\ETX\ETX\209\131\EOT\DC2\ETX\DLE\GSP\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\NAK\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK*+\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SYN\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SYN\STX\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SYN\NAK\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SYN*+\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ETB\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ETB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ETB\NAK'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ETB*+\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SUB\NUL\US\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SUB\b\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\ESC\STX4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\ESC\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\ESC\RS%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\ESC23\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\FS\STXS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\FS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\FS\RS%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\FS23\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\FS4R\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX\FS5Q\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\GS\STX4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\GS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\GS\RS*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\GS23\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\RS\STX4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\RS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\RS\RS/\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\RS23\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT!\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\ETB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\"\STX/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\"\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\"\RS%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\"-.\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX#\STX/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX#\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX#\RS*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX#-.b\ACKproto3"