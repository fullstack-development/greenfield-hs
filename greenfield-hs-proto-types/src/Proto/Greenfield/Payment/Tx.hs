{- This file was auto-generated from greenfield/payment/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.Tx (
        Msg(..), MsgCreatePaymentAccount(),
        MsgCreatePaymentAccountResponse(), MsgDeposit(),
        MsgDepositResponse(), MsgDisableRefund(),
        MsgDisableRefundResponse(), MsgUpdateParams(),
        MsgUpdateParamsResponse(), MsgWithdraw(), MsgWithdrawResponse()
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Payment.Params
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Tx_Fields.creator' @:: Lens' MsgCreatePaymentAccount Data.Text.Text@ -}
data MsgCreatePaymentAccount
  = MsgCreatePaymentAccount'_constructor {_MsgCreatePaymentAccount'creator :: !Data.Text.Text,
                                          _MsgCreatePaymentAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreatePaymentAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreatePaymentAccount "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePaymentAccount'creator
           (\ x__ y__ -> x__ {_MsgCreatePaymentAccount'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreatePaymentAccount where
  messageName _
    = Data.Text.pack "greenfield.payment.MsgCreatePaymentAccount"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgCreatePaymentAccount\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString:\f\130\231\176*\acreator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"creator")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePaymentAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreatePaymentAccount'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreatePaymentAccount'_unknownFields = y__})
  defMessage
    = MsgCreatePaymentAccount'_constructor
        {_MsgCreatePaymentAccount'creator = Data.ProtoLens.fieldDefault,
         _MsgCreatePaymentAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreatePaymentAccount
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreatePaymentAccount
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
                                       "creator"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCreatePaymentAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"creator") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgCreatePaymentAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreatePaymentAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgCreatePaymentAccount'creator x__) ())
{- | Fields :
      -}
data MsgCreatePaymentAccountResponse
  = MsgCreatePaymentAccountResponse'_constructor {_MsgCreatePaymentAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreatePaymentAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCreatePaymentAccountResponse where
  messageName _
    = Data.Text.pack
        "greenfield.payment.MsgCreatePaymentAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \\USMsgCreatePaymentAccountResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreatePaymentAccountResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreatePaymentAccountResponse'_unknownFields = y__})
  defMessage
    = MsgCreatePaymentAccountResponse'_constructor
        {_MsgCreatePaymentAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreatePaymentAccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreatePaymentAccountResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgCreatePaymentAccountResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCreatePaymentAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreatePaymentAccountResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Tx_Fields.creator' @:: Lens' MsgDeposit Data.Text.Text@
         * 'Proto.Greenfield.Payment.Tx_Fields.to' @:: Lens' MsgDeposit Data.Text.Text@
         * 'Proto.Greenfield.Payment.Tx_Fields.amount' @:: Lens' MsgDeposit Data.Text.Text@ -}
data MsgDeposit
  = MsgDeposit'_constructor {_MsgDeposit'creator :: !Data.Text.Text,
                             _MsgDeposit'to :: !Data.Text.Text,
                             _MsgDeposit'amount :: !Data.Text.Text,
                             _MsgDeposit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeposit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeposit "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'creator (\ x__ y__ -> x__ {_MsgDeposit'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeposit "to" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'to (\ x__ y__ -> x__ {_MsgDeposit'to = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeposit "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'amount (\ x__ y__ -> x__ {_MsgDeposit'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeposit where
  messageName _ = Data.Text.pack "greenfield.payment.MsgDeposit"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \MsgDeposit\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2(\n\
      \\STXto\CAN\STX \SOH(\tR\STXtoB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
      \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int:\f\130\231\176*\acreator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"creator")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
        to__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"to")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, to__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeposit'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeposit'_unknownFields = y__})
  defMessage
    = MsgDeposit'_constructor
        {_MsgDeposit'creator = Data.ProtoLens.fieldDefault,
         _MsgDeposit'to = Data.ProtoLens.fieldDefault,
         _MsgDeposit'amount = Data.ProtoLens.fieldDefault,
         _MsgDeposit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeposit -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeposit
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
                                       "creator"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
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
                                       "to"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"to") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDeposit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"creator") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"to") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"amount") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgDeposit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeposit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeposit'creator x__)
                (Control.DeepSeq.deepseq
                   (_MsgDeposit'to x__)
                   (Control.DeepSeq.deepseq (_MsgDeposit'amount x__) ())))
{- | Fields :
      -}
data MsgDepositResponse
  = MsgDepositResponse'_constructor {_MsgDepositResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDepositResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDepositResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.MsgDepositResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgDepositResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDepositResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDepositResponse'_unknownFields = y__})
  defMessage
    = MsgDepositResponse'_constructor
        {_MsgDepositResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDepositResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDepositResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDepositResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDepositResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDepositResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Tx_Fields.owner' @:: Lens' MsgDisableRefund Data.Text.Text@
         * 'Proto.Greenfield.Payment.Tx_Fields.addr' @:: Lens' MsgDisableRefund Data.Text.Text@ -}
data MsgDisableRefund
  = MsgDisableRefund'_constructor {_MsgDisableRefund'owner :: !Data.Text.Text,
                                   _MsgDisableRefund'addr :: !Data.Text.Text,
                                   _MsgDisableRefund'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDisableRefund where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDisableRefund "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDisableRefund'owner
           (\ x__ y__ -> x__ {_MsgDisableRefund'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDisableRefund "addr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDisableRefund'addr
           (\ x__ y__ -> x__ {_MsgDisableRefund'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDisableRefund where
  messageName _
    = Data.Text.pack "greenfield.payment.MsgDisableRefund"
  packedMessageDescriptor _
    = "\n\
      \\DLEMsgDisableRefund\DC2.\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
      \\EOTaddr\CAN\STX \SOH(\tR\EOTaddrB\CAN\210\180-\DC4cosmos.AddressString:\n\
      \\130\231\176*\ENQowner"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor MsgDisableRefund
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"addr")) ::
              Data.ProtoLens.FieldDescriptor MsgDisableRefund
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, addr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDisableRefund'_unknownFields
        (\ x__ y__ -> x__ {_MsgDisableRefund'_unknownFields = y__})
  defMessage
    = MsgDisableRefund'_constructor
        {_MsgDisableRefund'owner = Data.ProtoLens.fieldDefault,
         _MsgDisableRefund'addr = Data.ProtoLens.fieldDefault,
         _MsgDisableRefund'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDisableRefund
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDisableRefund
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
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
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDisableRefund"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"addr") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgDisableRefund where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDisableRefund'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDisableRefund'owner x__)
                (Control.DeepSeq.deepseq (_MsgDisableRefund'addr x__) ()))
{- | Fields :
      -}
data MsgDisableRefundResponse
  = MsgDisableRefundResponse'_constructor {_MsgDisableRefundResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDisableRefundResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDisableRefundResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.MsgDisableRefundResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANMsgDisableRefundResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDisableRefundResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDisableRefundResponse'_unknownFields = y__})
  defMessage
    = MsgDisableRefundResponse'_constructor
        {_MsgDisableRefundResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDisableRefundResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDisableRefundResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDisableRefundResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDisableRefundResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDisableRefundResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Greenfield.Payment.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Greenfield.Payment.Params.Params@
         * 'Proto.Greenfield.Payment.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Greenfield.Payment.Params.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Greenfield.Payment.Params.Params),
                                  _MsgUpdateParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateParams "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'authority
           (\ x__ y__ -> x__ {_MsgUpdateParams'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Greenfield.Payment.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Greenfield.Payment.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _ = Data.Text.pack "greenfield.payment.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
      \\ACKparams\CAN\STX \SOH(\v2\SUB.greenfield.payment.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.Params.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParams'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParams'_unknownFields = y__})
  defMessage
    = MsgUpdateParams'_constructor
        {_MsgUpdateParams'authority = Data.ProtoLens.fieldDefault,
         _MsgUpdateParams'params = Prelude.Nothing,
         _MsgUpdateParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParams
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParams
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgUpdateParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateParams'authority x__)
                (Control.DeepSeq.deepseq (_MsgUpdateParams'params x__) ()))
{- | Fields :
      -}
data MsgUpdateParamsResponse
  = MsgUpdateParamsResponse'_constructor {_MsgUpdateParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateParamsResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.MsgUpdateParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgUpdateParamsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParamsResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateParamsResponse'_constructor
        {_MsgUpdateParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParamsResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParamsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParamsResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Tx_Fields.creator' @:: Lens' MsgWithdraw Data.Text.Text@
         * 'Proto.Greenfield.Payment.Tx_Fields.from' @:: Lens' MsgWithdraw Data.Text.Text@
         * 'Proto.Greenfield.Payment.Tx_Fields.amount' @:: Lens' MsgWithdraw Data.Text.Text@ -}
data MsgWithdraw
  = MsgWithdraw'_constructor {_MsgWithdraw'creator :: !Data.Text.Text,
                              _MsgWithdraw'from :: !Data.Text.Text,
                              _MsgWithdraw'amount :: !Data.Text.Text,
                              _MsgWithdraw'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdraw where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgWithdraw "creator" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdraw'creator
           (\ x__ y__ -> x__ {_MsgWithdraw'creator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgWithdraw "from" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdraw'from (\ x__ y__ -> x__ {_MsgWithdraw'from = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgWithdraw "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdraw'amount (\ x__ y__ -> x__ {_MsgWithdraw'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgWithdraw where
  messageName _ = Data.Text.pack "greenfield.payment.MsgWithdraw"
  packedMessageDescriptor _
    = "\n\
      \\vMsgWithdraw\DC22\n\
      \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
      \\EOTfrom\CAN\STX \SOH(\tR\EOTfromB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
      \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int:\f\130\231\176*\acreator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"creator")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdraw
        from__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"from")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdraw
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdraw
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creator__field_descriptor),
           (Data.ProtoLens.Tag 2, from__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdraw'_unknownFields
        (\ x__ y__ -> x__ {_MsgWithdraw'_unknownFields = y__})
  defMessage
    = MsgWithdraw'_constructor
        {_MsgWithdraw'creator = Data.ProtoLens.fieldDefault,
         _MsgWithdraw'from = Data.ProtoLens.fieldDefault,
         _MsgWithdraw'amount = Data.ProtoLens.fieldDefault,
         _MsgWithdraw'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdraw -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdraw
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
                                       "creator"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"creator") y x)
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
                                       "from"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"from") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgWithdraw"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"creator") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"from") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"amount") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgWithdraw where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdraw'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgWithdraw'creator x__)
                (Control.DeepSeq.deepseq
                   (_MsgWithdraw'from x__)
                   (Control.DeepSeq.deepseq (_MsgWithdraw'amount x__) ())))
{- | Fields :
      -}
data MsgWithdrawResponse
  = MsgWithdrawResponse'_constructor {_MsgWithdrawResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdrawResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgWithdrawResponse where
  messageName _
    = Data.Text.pack "greenfield.payment.MsgWithdrawResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3MsgWithdrawResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdrawResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgWithdrawResponse'_unknownFields = y__})
  defMessage
    = MsgWithdrawResponse'_constructor
        {_MsgWithdrawResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdrawResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdrawResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgWithdrawResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgWithdrawResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdrawResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "greenfield.payment"
  type ServiceMethods Msg = '["createPaymentAccount",
                              "deposit",
                              "disableRefund",
                              "updateParams",
                              "withdraw"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2`\n\
      \\fUpdateParams\DC2#.greenfield.payment.MsgUpdateParams\SUB+.greenfield.payment.MsgUpdateParamsResponse\DC2x\n\
      \\DC4CreatePaymentAccount\DC2+.greenfield.payment.MsgCreatePaymentAccount\SUB3.greenfield.payment.MsgCreatePaymentAccountResponse\DC2Q\n\
      \\aDeposit\DC2\RS.greenfield.payment.MsgDeposit\SUB&.greenfield.payment.MsgDepositResponse\DC2T\n\
      \\bWithdraw\DC2\US.greenfield.payment.MsgWithdraw\SUB'.greenfield.payment.MsgWithdrawResponse\DC2c\n\
      \\rDisableRefund\DC2$.greenfield.payment.MsgDisableRefund\SUB,.greenfield.payment.MsgDisableRefundResponse"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createPaymentAccount" where
  type MethodName Msg "createPaymentAccount" = "CreatePaymentAccount"
  type MethodInput Msg "createPaymentAccount" = MsgCreatePaymentAccount
  type MethodOutput Msg "createPaymentAccount" = MsgCreatePaymentAccountResponse
  type MethodStreamingType Msg "createPaymentAccount" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "deposit" where
  type MethodName Msg "deposit" = "Deposit"
  type MethodInput Msg "deposit" = MsgDeposit
  type MethodOutput Msg "deposit" = MsgDepositResponse
  type MethodStreamingType Msg "deposit" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "withdraw" where
  type MethodName Msg "withdraw" = "Withdraw"
  type MethodInput Msg "withdraw" = MsgWithdraw
  type MethodOutput Msg "withdraw" = MsgWithdrawResponse
  type MethodStreamingType Msg "withdraw" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "disableRefund" where
  type MethodName Msg "disableRefund" = "DisableRefund"
  type MethodInput Msg "disableRefund" = MsgDisableRefund
  type MethodOutput Msg "disableRefund" = MsgDisableRefundResponse
  type MethodStreamingType Msg "disableRefund" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCgreenfield/payment/tx.proto\DC2\DC2greenfield.payment\SUB\ETBcosmos/msg/v1/msg.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgreenfield/payment/params.proto\"\147\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
    \\ACKparams\CAN\STX \SOH(\v2\SUB.greenfield.payment.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority\"\EM\n\
    \\ETBMsgUpdateParamsResponse\"[\n\
    \\ETBMsgCreatePaymentAccount\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString:\f\130\231\176*\acreator\"!\n\
    \\USMsgCreatePaymentAccountResponse\"\206\SOH\n\
    \\n\
    \MsgDeposit\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2(\n\
    \\STXto\CAN\STX \SOH(\tR\STXtoB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
    \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int:\f\130\231\176*\acreator\"\DC4\n\
    \\DC2MsgDepositResponse\"\211\SOH\n\
    \\vMsgWithdraw\DC22\n\
    \\acreator\CAN\SOH \SOH(\tR\acreatorB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
    \\EOTfrom\CAN\STX \SOH(\tR\EOTfromB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
    \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int:\f\130\231\176*\acreator\"\NAK\n\
    \\DC3MsgWithdrawResponse\"|\n\
    \\DLEMsgDisableRefund\DC2.\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
    \\EOTaddr\CAN\STX \SOH(\tR\EOTaddrB\CAN\210\180-\DC4cosmos.AddressString:\n\
    \\130\231\176*\ENQowner\"\SUB\n\
    \\CANMsgDisableRefundResponse2\239\ETX\n\
    \\ETXMsg\DC2`\n\
    \\fUpdateParams\DC2#.greenfield.payment.MsgUpdateParams\SUB+.greenfield.payment.MsgUpdateParamsResponse\DC2x\n\
    \\DC4CreatePaymentAccount\DC2+.greenfield.payment.MsgCreatePaymentAccount\SUB3.greenfield.payment.MsgCreatePaymentAccountResponse\DC2Q\n\
    \\aDeposit\DC2\RS.greenfield.payment.MsgDeposit\SUB&.greenfield.payment.MsgDepositResponse\DC2T\n\
    \\bWithdraw\DC2\US.greenfield.payment.MsgWithdraw\SUB'.greenfield.payment.MsgWithdrawResponse\DC2c\n\
    \\rDisableRefund\DC2$.greenfield.payment.MsgDisableRefund\SUB,.greenfield.payment.MsgDisableRefundResponseB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\174\ETB\n\
    \\ACK\DC2\EOT\NUL\NUL]#\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL!\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \H\n\
    \\STX\b\v\DC2\ETX\v\NULF2= this line is used by starport scaffolding # proto/tx/import\n\
    \\n\
    \*\n\
    \\STX\ACK\NUL\DC2\EOT\SO\NUL\CAN\SOH\SUB\RS Msg defines the Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SO\b\v\n\
    \\171\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC3\STXF\SUB\157\SOH UpdateParams defines a governance operation for updating the x/payment module parameters.\n\
    \ The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC3-D\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DC4\STX^\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC4\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC4\ESC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC4=\\\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\NAK\STX7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\NAK\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\NAK\SO\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\NAK#5\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\SYN\STX:\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\SYN\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\SYN\SI\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\SYN%8\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX\ETB\STXI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX\ETB\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX\ETB\DC4$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX\ETB/G\n\
    \C\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL$\SOH\SUB7 MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STX.\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\FS\STX.\n\
    \h\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\US\ETBG\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\US\CANF\n\
    \i\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX#\STX3\SUB\\ params defines the x/payment parameters to update.\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX#\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX#\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX#\DC42\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX#\NAK1\n\
    \l\n\
    \\STX\EOT\SOH\DC2\ETX'\NUL\"\SUBa MsgUpdateParamsResponse defines the response structure for executing a MsgUpdateParams message.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b\US\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT)\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX)\b\US\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX*\STX,\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX*\STX,\n\
    \\\\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX-\STXF\SUBO creator is the address of the stream account that created the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX-\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX-\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX-\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX-\SYND\n\
    \\t\n\
    \\STX\EOT\ETX\DC2\ETX0\NUL*\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX0\b'\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT2\NUL?\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX2\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETX3\STX,\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETX3\STX,\n\
    \j\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX6\STXF\SUB] creator is the message signer for MsgDeposit and the address of the account to deposit from\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX6\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX6\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETX6\NAKE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETX6\SYND\n\
    \=\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX8\STXA\SUB0 to is the address of the account to deposit to\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX8\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX8\t\v\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX8\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETX8\DLE@\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETX8\DC1?\n\
    \/\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT:\STX>\EOT\SUB! amount is the amount to deposit\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX:\t\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX:\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\EOT:\DC4>\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\202\214\ENQ\DC2\ETX;\EOT(\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\235\251\ETX\DC2\ETX<\EOTE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\233\251\ETX\DC2\ETX=\EOT \n\
    \\t\n\
    \\STX\EOT\ENQ\DC2\ETXA\NUL\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXA\b\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTC\NULP\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXC\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXD\STX,\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETXD\STX,\n\
    \c\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXG\STXF\SUBV creator is the message signer for MsgWithdraw and the address of the receive account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXG\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXG\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXG\NAKE\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\ETXG\SYND\n\
    \B\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXI\STXC\SUB5 from is the address of the account to withdraw from\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXI\t\r\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXI\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\ETXI\DC2B\n\
    \\SI\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\ETXI\DC3A\n\
    \0\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOTK\STXO\EOT\SUB\" amount is the amount to withdraw\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXK\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXK\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\b\DC2\EOTK\DC4O\ETX\n\
    \\SI\n\
    \\b\EOT\ACK\STX\STX\b\202\214\ENQ\DC2\ETXL\EOT(\n\
    \\SI\n\
    \\b\EOT\ACK\STX\STX\b\235\251\ETX\DC2\ETXM\EOTE\n\
    \\SI\n\
    \\b\EOT\ACK\STX\STX\b\233\251\ETX\DC2\ETXN\EOT \n\
    \\t\n\
    \\STX\EOT\a\DC2\ETXR\NUL\RS\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXR\b\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTT\NUL[\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXT\b\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\b\a\DC2\ETXU\STX*\n\
    \\SI\n\
    \\b\EOT\b\a\240\140\166\ENQ\NUL\DC2\ETXU\STX*\n\
    \l\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXX\STXD\SUB_ owner is the message signer for MsgDisableRefund and the address of the payment account owner\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXX\t\SO\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXX\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\ETXX\DC3C\n\
    \\SI\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\ETXX\DC4B\n\
    \K\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXZ\STXC\SUB> addr is the address of the payment account to disable refund\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXZ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXZ\t\r\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXZ\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\ETXZ\DC2B\n\
    \\SI\n\
    \\b\EOT\b\STX\SOH\b\202\214\ENQ\DC2\ETXZ\DC3A\n\
    \\t\n\
    \\STX\EOT\t\DC2\ETX]\NUL#\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX]\b b\ACKproto3"