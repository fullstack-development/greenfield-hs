{- This file was auto-generated from greenfield/payment/payment_account.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.PaymentAccount (
        PaymentAccount()
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
import qualified Proto.CosmosProto.Cosmos
{- | Fields :
     
         * 'Proto.Greenfield.Payment.PaymentAccount_Fields.addr' @:: Lens' PaymentAccount Data.Text.Text@
         * 'Proto.Greenfield.Payment.PaymentAccount_Fields.owner' @:: Lens' PaymentAccount Data.Text.Text@
         * 'Proto.Greenfield.Payment.PaymentAccount_Fields.refundable' @:: Lens' PaymentAccount Prelude.Bool@ -}
data PaymentAccount
  = PaymentAccount'_constructor {_PaymentAccount'addr :: !Data.Text.Text,
                                 _PaymentAccount'owner :: !Data.Text.Text,
                                 _PaymentAccount'refundable :: !Prelude.Bool,
                                 _PaymentAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PaymentAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PaymentAccount "addr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PaymentAccount'addr
           (\ x__ y__ -> x__ {_PaymentAccount'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PaymentAccount "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PaymentAccount'owner
           (\ x__ y__ -> x__ {_PaymentAccount'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PaymentAccount "refundable" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PaymentAccount'refundable
           (\ x__ y__ -> x__ {_PaymentAccount'refundable = y__}))
        Prelude.id
instance Data.ProtoLens.Message PaymentAccount where
  messageName _ = Data.Text.pack "greenfield.payment.PaymentAccount"
  packedMessageDescriptor _
    = "\n\
      \\SOPaymentAccount\DC2,\n\
      \\EOTaddr\CAN\SOH \SOH(\tR\EOTaddrB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\RS\n\
      \\n\
      \refundable\CAN\ETX \SOH(\bR\n\
      \refundable"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"addr")) ::
              Data.ProtoLens.FieldDescriptor PaymentAccount
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor PaymentAccount
        refundable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refundable"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"refundable")) ::
              Data.ProtoLens.FieldDescriptor PaymentAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addr__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, refundable__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PaymentAccount'_unknownFields
        (\ x__ y__ -> x__ {_PaymentAccount'_unknownFields = y__})
  defMessage
    = PaymentAccount'_constructor
        {_PaymentAccount'addr = Data.ProtoLens.fieldDefault,
         _PaymentAccount'owner = Data.ProtoLens.fieldDefault,
         _PaymentAccount'refundable = Data.ProtoLens.fieldDefault,
         _PaymentAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PaymentAccount
          -> Data.ProtoLens.Encoding.Bytes.Parser PaymentAccount
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
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "refundable"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"refundable") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PaymentAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"addr") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"refundable") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData PaymentAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PaymentAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PaymentAccount'addr x__)
                (Control.DeepSeq.deepseq
                   (_PaymentAccount'owner x__)
                   (Control.DeepSeq.deepseq (_PaymentAccount'refundable x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(greenfield/payment/payment_account.proto\DC2\DC2greenfield.payment\SUB\EMcosmos_proto/cosmos.proto\"\142\SOH\n\
    \\SOPaymentAccount\DC2,\n\
    \\EOTaddr\CAN\SOH \SOH(\tR\EOTaddrB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\RS\n\
    \\n\
    \refundable\CAN\ETX \SOH(\bR\n\
    \refundableB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\226\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\SI\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NULF\n\
    \6\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\SI\SOH\SUB* PaymentAccount defines a payment account\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\SYN\n\
    \1\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\STXC\SUB$ the address of the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\n\
    \\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\n\
    \\DC2B\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\n\
    \\DC3A\n\
    \7\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\STXD\SUB* the owner address of the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\f\DC3C\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\f\DC4B\n\
    \8\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SO\STX\SYN\SUB+ whether the payment account is refundable\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SO\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SO\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SO\DC4\NAKb\ACKproto3"