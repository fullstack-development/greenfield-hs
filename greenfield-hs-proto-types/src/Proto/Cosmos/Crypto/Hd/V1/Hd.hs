{- This file was auto-generated from cosmos/crypto/hd/v1/hd.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crypto.Hd.V1.Hd (
        BIP44Params()
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
     
         * 'Proto.Cosmos.Crypto.Hd.V1.Hd_Fields.purpose' @:: Lens' BIP44Params Data.Word.Word32@
         * 'Proto.Cosmos.Crypto.Hd.V1.Hd_Fields.coinType' @:: Lens' BIP44Params Data.Word.Word32@
         * 'Proto.Cosmos.Crypto.Hd.V1.Hd_Fields.account' @:: Lens' BIP44Params Data.Word.Word32@
         * 'Proto.Cosmos.Crypto.Hd.V1.Hd_Fields.change' @:: Lens' BIP44Params Prelude.Bool@
         * 'Proto.Cosmos.Crypto.Hd.V1.Hd_Fields.addressIndex' @:: Lens' BIP44Params Data.Word.Word32@ -}
data BIP44Params
  = BIP44Params'_constructor {_BIP44Params'purpose :: !Data.Word.Word32,
                              _BIP44Params'coinType :: !Data.Word.Word32,
                              _BIP44Params'account :: !Data.Word.Word32,
                              _BIP44Params'change :: !Prelude.Bool,
                              _BIP44Params'addressIndex :: !Data.Word.Word32,
                              _BIP44Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BIP44Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BIP44Params "purpose" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BIP44Params'purpose
           (\ x__ y__ -> x__ {_BIP44Params'purpose = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BIP44Params "coinType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BIP44Params'coinType
           (\ x__ y__ -> x__ {_BIP44Params'coinType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BIP44Params "account" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BIP44Params'account
           (\ x__ y__ -> x__ {_BIP44Params'account = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BIP44Params "change" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BIP44Params'change (\ x__ y__ -> x__ {_BIP44Params'change = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BIP44Params "addressIndex" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BIP44Params'addressIndex
           (\ x__ y__ -> x__ {_BIP44Params'addressIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Message BIP44Params where
  messageName _ = Data.Text.pack "cosmos.crypto.hd.v1.BIP44Params"
  packedMessageDescriptor _
    = "\n\
      \\vBIP44Params\DC2\CAN\n\
      \\apurpose\CAN\SOH \SOH(\rR\apurpose\DC2\ESC\n\
      \\tcoin_type\CAN\STX \SOH(\rR\bcoinType\DC2\CAN\n\
      \\aaccount\CAN\ETX \SOH(\rR\aaccount\DC2\SYN\n\
      \\ACKchange\CAN\EOT \SOH(\bR\ACKchange\DC2#\n\
      \\raddress_index\CAN\ENQ \SOH(\rR\faddressIndex:#\152\160\US\NUL\138\231\176*\SUBcrypto/keys/hd/BIP44Params"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        purpose__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "purpose"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"purpose")) ::
              Data.ProtoLens.FieldDescriptor BIP44Params
        coinType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "coin_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"coinType")) ::
              Data.ProtoLens.FieldDescriptor BIP44Params
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"account")) ::
              Data.ProtoLens.FieldDescriptor BIP44Params
        change__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "change"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"change")) ::
              Data.ProtoLens.FieldDescriptor BIP44Params
        addressIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addressIndex")) ::
              Data.ProtoLens.FieldDescriptor BIP44Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, purpose__field_descriptor),
           (Data.ProtoLens.Tag 2, coinType__field_descriptor),
           (Data.ProtoLens.Tag 3, account__field_descriptor),
           (Data.ProtoLens.Tag 4, change__field_descriptor),
           (Data.ProtoLens.Tag 5, addressIndex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BIP44Params'_unknownFields
        (\ x__ y__ -> x__ {_BIP44Params'_unknownFields = y__})
  defMessage
    = BIP44Params'_constructor
        {_BIP44Params'purpose = Data.ProtoLens.fieldDefault,
         _BIP44Params'coinType = Data.ProtoLens.fieldDefault,
         _BIP44Params'account = Data.ProtoLens.fieldDefault,
         _BIP44Params'change = Data.ProtoLens.fieldDefault,
         _BIP44Params'addressIndex = Data.ProtoLens.fieldDefault,
         _BIP44Params'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BIP44Params -> Data.ProtoLens.Encoding.Bytes.Parser BIP44Params
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
                                       "purpose"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"purpose") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "coin_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"coinType") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "account"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "change"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"change") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "address_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addressIndex") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BIP44Params"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"purpose") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"coinType") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"account") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"change") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"addressIndex") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData BIP44Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BIP44Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BIP44Params'purpose x__)
                (Control.DeepSeq.deepseq
                   (_BIP44Params'coinType x__)
                   (Control.DeepSeq.deepseq
                      (_BIP44Params'account x__)
                      (Control.DeepSeq.deepseq
                         (_BIP44Params'change x__)
                         (Control.DeepSeq.deepseq (_BIP44Params'addressIndex x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FScosmos/crypto/hd/v1/hd.proto\DC2\DC3cosmos.crypto.hd.v1\SUB\DC1amino/amino.proto\SUB\DC4gogoproto/gogo.proto\"\192\SOH\n\
    \\vBIP44Params\DC2\CAN\n\
    \\apurpose\CAN\SOH \SOH(\rR\apurpose\DC2\ESC\n\
    \\tcoin_type\CAN\STX \SOH(\rR\bcoinType\DC2\CAN\n\
    \\aaccount\CAN\ETX \SOH(\rR\aaccount\DC2\SYN\n\
    \\ACKchange\CAN\EOT \SOH(\bR\ACKchange\DC2#\n\
    \\raddress_index\CAN\ENQ \SOH(\rR\faddressIndex:#\152\160\US\NUL\138\231\176*\SUBcrypto/keys/hd/BIP44ParamsB,Z&github.com/cosmos/cosmos-sdk/crypto/hd\200\225\RS\NULJ\157\a\n\
    \\ACK\DC2\EOT\SOH\NUL\SUB\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULR\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULR\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL/\n\
    \\v\n\
    \\EOT\b\153\236\ETX\DC2\ETX\b\NUL/\n\
    \I\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\SUB\SOH\SUB= BIP44Params is used as path field in ledger item in Record.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\f\STX5\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\f\STX5\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STX.\n\
    \\r\n\
    \\ACK\EOT\NUL\a\131\244\ETX\DC2\ETX\SO\STX.\n\
    \b\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\STX\NAK\SUBU purpose is a constant set to 44' (or 0x8000002C) following the BIP43 recommendation\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE\DC3\DC4\n\
    \<\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC2\STX\ETB\SUB/ coin_type is a constant that improves privacy\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2\NAK\SYN\n\
    \L\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC4\STX\NAK\SUB? account splits the key space into independent user identities\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC4\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC4\DC3\DC4\n\
    \\137\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\ETB\STX\DC2\SUB| change is a constant used for public derivation. Constant 0 is used for external chain and constant 1 for internal\n\
    \ chain.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\ETB\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\ETB\a\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\ETB\DLE\DC1\n\
    \G\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\EM\STX\ESC\SUB: address_index is used as child index in BIP32 derivation\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\EM\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\EM\EM\SUBb\ACKproto3"