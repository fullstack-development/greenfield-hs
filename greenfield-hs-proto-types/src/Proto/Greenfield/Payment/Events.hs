{- This file was auto-generated from greenfield/payment/events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.Events (
        EventDeposit(), EventFeePreview(), EventForceSettle(),
        EventPaymentAccountUpdate(), EventStreamRecordUpdate(),
        EventWithdraw(), FeePreviewType(..), FeePreviewType(),
        FeePreviewType'UnrecognizedValue
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
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Payment.Base
import qualified Proto.Greenfield.Payment.StreamRecord
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Events_Fields.from' @:: Lens' EventDeposit Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.to' @:: Lens' EventDeposit Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.amount' @:: Lens' EventDeposit Data.Text.Text@ -}
data EventDeposit
  = EventDeposit'_constructor {_EventDeposit'from :: !Data.Text.Text,
                               _EventDeposit'to :: !Data.Text.Text,
                               _EventDeposit'amount :: !Data.Text.Text,
                               _EventDeposit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDeposit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDeposit "from" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeposit'from (\ x__ y__ -> x__ {_EventDeposit'from = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeposit "to" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeposit'to (\ x__ y__ -> x__ {_EventDeposit'to = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventDeposit "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeposit'amount
           (\ x__ y__ -> x__ {_EventDeposit'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDeposit where
  messageName _ = Data.Text.pack "greenfield.payment.EventDeposit"
  packedMessageDescriptor _
    = "\n\
      \\fEventDeposit\DC2,\n\
      \\EOTfrom\CAN\SOH \SOH(\tR\EOTfromB\CAN\210\180-\DC4cosmos.AddressString\DC2(\n\
      \\STXto\CAN\STX \SOH(\tR\STXtoB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
      \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        from__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"from")) ::
              Data.ProtoLens.FieldDescriptor EventDeposit
        to__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"to")) ::
              Data.ProtoLens.FieldDescriptor EventDeposit
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor EventDeposit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, from__field_descriptor),
           (Data.ProtoLens.Tag 2, to__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDeposit'_unknownFields
        (\ x__ y__ -> x__ {_EventDeposit'_unknownFields = y__})
  defMessage
    = EventDeposit'_constructor
        {_EventDeposit'from = Data.ProtoLens.fieldDefault,
         _EventDeposit'to = Data.ProtoLens.fieldDefault,
         _EventDeposit'amount = Data.ProtoLens.fieldDefault,
         _EventDeposit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDeposit -> Data.ProtoLens.Encoding.Bytes.Parser EventDeposit
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
                                       "from"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"from") y x)
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
          (do loop Data.ProtoLens.defMessage) "EventDeposit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"from") _x
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
instance Control.DeepSeq.NFData EventDeposit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDeposit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventDeposit'from x__)
                (Control.DeepSeq.deepseq
                   (_EventDeposit'to x__)
                   (Control.DeepSeq.deepseq (_EventDeposit'amount x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Events_Fields.account' @:: Lens' EventFeePreview Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.feePreviewType' @:: Lens' EventFeePreview FeePreviewType@
         * 'Proto.Greenfield.Payment.Events_Fields.amount' @:: Lens' EventFeePreview Data.Text.Text@ -}
data EventFeePreview
  = EventFeePreview'_constructor {_EventFeePreview'account :: !Data.Text.Text,
                                  _EventFeePreview'feePreviewType :: !FeePreviewType,
                                  _EventFeePreview'amount :: !Data.Text.Text,
                                  _EventFeePreview'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventFeePreview where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventFeePreview "account" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventFeePreview'account
           (\ x__ y__ -> x__ {_EventFeePreview'account = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventFeePreview "feePreviewType" FeePreviewType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventFeePreview'feePreviewType
           (\ x__ y__ -> x__ {_EventFeePreview'feePreviewType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventFeePreview "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventFeePreview'amount
           (\ x__ y__ -> x__ {_EventFeePreview'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventFeePreview where
  messageName _ = Data.Text.pack "greenfield.payment.EventFeePreview"
  packedMessageDescriptor _
    = "\n\
      \\SIEventFeePreview\DC22\n\
      \\aaccount\CAN\SOH \SOH(\tR\aaccountB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
      \\DLEfee_preview_type\CAN\STX \SOH(\SO2\".greenfield.payment.FeePreviewTypeR\SOfeePreviewType\DC2T\n\
      \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"account")) ::
              Data.ProtoLens.FieldDescriptor EventFeePreview
        feePreviewType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fee_preview_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FeePreviewType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"feePreviewType")) ::
              Data.ProtoLens.FieldDescriptor EventFeePreview
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor EventFeePreview
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, account__field_descriptor),
           (Data.ProtoLens.Tag 2, feePreviewType__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventFeePreview'_unknownFields
        (\ x__ y__ -> x__ {_EventFeePreview'_unknownFields = y__})
  defMessage
    = EventFeePreview'_constructor
        {_EventFeePreview'account = Data.ProtoLens.fieldDefault,
         _EventFeePreview'feePreviewType = Data.ProtoLens.fieldDefault,
         _EventFeePreview'amount = Data.ProtoLens.fieldDefault,
         _EventFeePreview'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventFeePreview
          -> Data.ProtoLens.Encoding.Bytes.Parser EventFeePreview
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
                                       "account"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "fee_preview_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"feePreviewType") y x)
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
          (do loop Data.ProtoLens.defMessage) "EventFeePreview"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"account") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"feePreviewType") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
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
instance Control.DeepSeq.NFData EventFeePreview where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventFeePreview'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventFeePreview'account x__)
                (Control.DeepSeq.deepseq
                   (_EventFeePreview'feePreviewType x__)
                   (Control.DeepSeq.deepseq (_EventFeePreview'amount x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Events_Fields.addr' @:: Lens' EventForceSettle Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.settledBalance' @:: Lens' EventForceSettle Data.Text.Text@ -}
data EventForceSettle
  = EventForceSettle'_constructor {_EventForceSettle'addr :: !Data.Text.Text,
                                   _EventForceSettle'settledBalance :: !Data.Text.Text,
                                   _EventForceSettle'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventForceSettle where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventForceSettle "addr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventForceSettle'addr
           (\ x__ y__ -> x__ {_EventForceSettle'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventForceSettle "settledBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventForceSettle'settledBalance
           (\ x__ y__ -> x__ {_EventForceSettle'settledBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventForceSettle where
  messageName _
    = Data.Text.pack "greenfield.payment.EventForceSettle"
  packedMessageDescriptor _
    = "\n\
      \\DLEEventForceSettle\DC2,\n\
      \\EOTaddr\CAN\SOH \SOH(\tR\EOTaddrB\CAN\210\180-\DC4cosmos.AddressString\DC2e\n\
      \\SIsettled_balance\CAN\STX \SOH(\tR\SOsettledBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int"
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
              Data.ProtoLens.FieldDescriptor EventForceSettle
        settledBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "settled_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"settledBalance")) ::
              Data.ProtoLens.FieldDescriptor EventForceSettle
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addr__field_descriptor),
           (Data.ProtoLens.Tag 2, settledBalance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventForceSettle'_unknownFields
        (\ x__ y__ -> x__ {_EventForceSettle'_unknownFields = y__})
  defMessage
    = EventForceSettle'_constructor
        {_EventForceSettle'addr = Data.ProtoLens.fieldDefault,
         _EventForceSettle'settledBalance = Data.ProtoLens.fieldDefault,
         _EventForceSettle'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventForceSettle
          -> Data.ProtoLens.Encoding.Bytes.Parser EventForceSettle
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
                                       "settled_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"settledBalance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventForceSettle"
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"settledBalance") _x
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
instance Control.DeepSeq.NFData EventForceSettle where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventForceSettle'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventForceSettle'addr x__)
                (Control.DeepSeq.deepseq
                   (_EventForceSettle'settledBalance x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Events_Fields.addr' @:: Lens' EventPaymentAccountUpdate Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.owner' @:: Lens' EventPaymentAccountUpdate Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.refundable' @:: Lens' EventPaymentAccountUpdate Prelude.Bool@ -}
data EventPaymentAccountUpdate
  = EventPaymentAccountUpdate'_constructor {_EventPaymentAccountUpdate'addr :: !Data.Text.Text,
                                            _EventPaymentAccountUpdate'owner :: !Data.Text.Text,
                                            _EventPaymentAccountUpdate'refundable :: !Prelude.Bool,
                                            _EventPaymentAccountUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventPaymentAccountUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventPaymentAccountUpdate "addr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPaymentAccountUpdate'addr
           (\ x__ y__ -> x__ {_EventPaymentAccountUpdate'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventPaymentAccountUpdate "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPaymentAccountUpdate'owner
           (\ x__ y__ -> x__ {_EventPaymentAccountUpdate'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventPaymentAccountUpdate "refundable" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPaymentAccountUpdate'refundable
           (\ x__ y__ -> x__ {_EventPaymentAccountUpdate'refundable = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventPaymentAccountUpdate where
  messageName _
    = Data.Text.pack "greenfield.payment.EventPaymentAccountUpdate"
  packedMessageDescriptor _
    = "\n\
      \\EMEventPaymentAccountUpdate\DC2,\n\
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
              Data.ProtoLens.FieldDescriptor EventPaymentAccountUpdate
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventPaymentAccountUpdate
        refundable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refundable"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"refundable")) ::
              Data.ProtoLens.FieldDescriptor EventPaymentAccountUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addr__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, refundable__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventPaymentAccountUpdate'_unknownFields
        (\ x__ y__
           -> x__ {_EventPaymentAccountUpdate'_unknownFields = y__})
  defMessage
    = EventPaymentAccountUpdate'_constructor
        {_EventPaymentAccountUpdate'addr = Data.ProtoLens.fieldDefault,
         _EventPaymentAccountUpdate'owner = Data.ProtoLens.fieldDefault,
         _EventPaymentAccountUpdate'refundable = Data.ProtoLens.fieldDefault,
         _EventPaymentAccountUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventPaymentAccountUpdate
          -> Data.ProtoLens.Encoding.Bytes.Parser EventPaymentAccountUpdate
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
          (do loop Data.ProtoLens.defMessage) "EventPaymentAccountUpdate"
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
instance Control.DeepSeq.NFData EventPaymentAccountUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventPaymentAccountUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventPaymentAccountUpdate'addr x__)
                (Control.DeepSeq.deepseq
                   (_EventPaymentAccountUpdate'owner x__)
                   (Control.DeepSeq.deepseq
                      (_EventPaymentAccountUpdate'refundable x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Events_Fields.account' @:: Lens' EventStreamRecordUpdate Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.crudTimestamp' @:: Lens' EventStreamRecordUpdate Data.Int.Int64@
         * 'Proto.Greenfield.Payment.Events_Fields.netflowRate' @:: Lens' EventStreamRecordUpdate Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.staticBalance' @:: Lens' EventStreamRecordUpdate Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.bufferBalance' @:: Lens' EventStreamRecordUpdate Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.lockBalance' @:: Lens' EventStreamRecordUpdate Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.status' @:: Lens' EventStreamRecordUpdate Proto.Greenfield.Payment.Base.StreamAccountStatus@
         * 'Proto.Greenfield.Payment.Events_Fields.settleTimestamp' @:: Lens' EventStreamRecordUpdate Data.Int.Int64@
         * 'Proto.Greenfield.Payment.Events_Fields.outFlows' @:: Lens' EventStreamRecordUpdate [Proto.Greenfield.Payment.Base.OutFlow]@
         * 'Proto.Greenfield.Payment.Events_Fields.vec'outFlows' @:: Lens' EventStreamRecordUpdate (Data.Vector.Vector Proto.Greenfield.Payment.Base.OutFlow)@ -}
data EventStreamRecordUpdate
  = EventStreamRecordUpdate'_constructor {_EventStreamRecordUpdate'account :: !Data.Text.Text,
                                          _EventStreamRecordUpdate'crudTimestamp :: !Data.Int.Int64,
                                          _EventStreamRecordUpdate'netflowRate :: !Data.Text.Text,
                                          _EventStreamRecordUpdate'staticBalance :: !Data.Text.Text,
                                          _EventStreamRecordUpdate'bufferBalance :: !Data.Text.Text,
                                          _EventStreamRecordUpdate'lockBalance :: !Data.Text.Text,
                                          _EventStreamRecordUpdate'status :: !Proto.Greenfield.Payment.Base.StreamAccountStatus,
                                          _EventStreamRecordUpdate'settleTimestamp :: !Data.Int.Int64,
                                          _EventStreamRecordUpdate'outFlows :: !(Data.Vector.Vector Proto.Greenfield.Payment.Base.OutFlow),
                                          _EventStreamRecordUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventStreamRecordUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "account" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'account
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'account = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "crudTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'crudTimestamp
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'crudTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "netflowRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'netflowRate
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'netflowRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "staticBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'staticBalance
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'staticBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "bufferBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'bufferBalance
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'bufferBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "lockBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'lockBalance
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'lockBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "status" Proto.Greenfield.Payment.Base.StreamAccountStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'status
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "settleTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'settleTimestamp
           (\ x__ y__
              -> x__ {_EventStreamRecordUpdate'settleTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "outFlows" [Proto.Greenfield.Payment.Base.OutFlow] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'outFlows
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'outFlows = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventStreamRecordUpdate "vec'outFlows" (Data.Vector.Vector Proto.Greenfield.Payment.Base.OutFlow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStreamRecordUpdate'outFlows
           (\ x__ y__ -> x__ {_EventStreamRecordUpdate'outFlows = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventStreamRecordUpdate where
  messageName _
    = Data.Text.pack "greenfield.payment.EventStreamRecordUpdate"
  packedMessageDescriptor _
    = "\n\
      \\ETBEventStreamRecordUpdate\DC22\n\
      \\aaccount\CAN\SOH \SOH(\tR\aaccountB\CAN\210\180-\DC4cosmos.AddressString\DC2%\n\
      \\SOcrud_timestamp\CAN\STX \SOH(\ETXR\rcrudTimestamp\DC2_\n\
      \\fnetflow_rate\CAN\ETX \SOH(\tR\vnetflowRateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2c\n\
      \\SOstatic_balance\CAN\EOT \SOH(\tR\rstaticBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2c\n\
      \\SObuffer_balance\CAN\ENQ \SOH(\tR\rbufferBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2_\n\
      \\flock_balance\CAN\ACK \SOH(\tR\vlockBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2?\n\
      \\ACKstatus\CAN\a \SOH(\SO2'.greenfield.payment.StreamAccountStatusR\ACKstatus\DC2)\n\
      \\DLEsettle_timestamp\CAN\b \SOH(\ETXR\SIsettleTimestamp\DC2>\n\
      \\tout_flows\CAN\t \ETX(\v2\ESC.greenfield.payment.OutFlowR\boutFlowsB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"account")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        crudTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crud_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"crudTimestamp")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        netflowRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "netflow_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"netflowRate")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        staticBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"staticBalance")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        bufferBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bufferBalance")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        lockBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lock_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lockBalance")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.Base.StreamAccountStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        settleTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "settle_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"settleTimestamp")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
        outFlows__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "out_flows"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.Base.OutFlow)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"outFlows")) ::
              Data.ProtoLens.FieldDescriptor EventStreamRecordUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, account__field_descriptor),
           (Data.ProtoLens.Tag 2, crudTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 3, netflowRate__field_descriptor),
           (Data.ProtoLens.Tag 4, staticBalance__field_descriptor),
           (Data.ProtoLens.Tag 5, bufferBalance__field_descriptor),
           (Data.ProtoLens.Tag 6, lockBalance__field_descriptor),
           (Data.ProtoLens.Tag 7, status__field_descriptor),
           (Data.ProtoLens.Tag 8, settleTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 9, outFlows__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventStreamRecordUpdate'_unknownFields
        (\ x__ y__ -> x__ {_EventStreamRecordUpdate'_unknownFields = y__})
  defMessage
    = EventStreamRecordUpdate'_constructor
        {_EventStreamRecordUpdate'account = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'crudTimestamp = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'netflowRate = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'staticBalance = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'bufferBalance = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'lockBalance = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'status = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'settleTimestamp = Data.ProtoLens.fieldDefault,
         _EventStreamRecordUpdate'outFlows = Data.Vector.Generic.empty,
         _EventStreamRecordUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventStreamRecordUpdate
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.Base.OutFlow
             -> Data.ProtoLens.Encoding.Bytes.Parser EventStreamRecordUpdate
        loop x mutable'outFlows
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'outFlows <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'outFlows)
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
                              (Data.ProtoLens.Field.field @"vec'outFlows") frozen'outFlows x))
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
                                       "account"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                                  mutable'outFlows
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "crud_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"crudTimestamp") y x)
                                  mutable'outFlows
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
                                       "netflow_rate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"netflowRate") y x)
                                  mutable'outFlows
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "static_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"staticBalance") y x)
                                  mutable'outFlows
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "buffer_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bufferBalance") y x)
                                  mutable'outFlows
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "lock_balance"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lockBalance") y x)
                                  mutable'outFlows
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'outFlows
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "settle_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"settleTimestamp") y x)
                                  mutable'outFlows
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "out_flows"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'outFlows y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'outFlows
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'outFlows <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'outFlows)
          "EventStreamRecordUpdate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"account") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"crudTimestamp") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"netflowRate") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"staticBalance") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"bufferBalance") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"lockBalance") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           Prelude.fromEnum _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"settleTimestamp") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                ((Prelude..)
                                                   (\ bs
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              (Prelude.fromIntegral
                                                                 (Data.ByteString.length bs)))
                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                   Data.ProtoLens.encodeMessage _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'outFlows") _x))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData EventStreamRecordUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventStreamRecordUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventStreamRecordUpdate'account x__)
                (Control.DeepSeq.deepseq
                   (_EventStreamRecordUpdate'crudTimestamp x__)
                   (Control.DeepSeq.deepseq
                      (_EventStreamRecordUpdate'netflowRate x__)
                      (Control.DeepSeq.deepseq
                         (_EventStreamRecordUpdate'staticBalance x__)
                         (Control.DeepSeq.deepseq
                            (_EventStreamRecordUpdate'bufferBalance x__)
                            (Control.DeepSeq.deepseq
                               (_EventStreamRecordUpdate'lockBalance x__)
                               (Control.DeepSeq.deepseq
                                  (_EventStreamRecordUpdate'status x__)
                                  (Control.DeepSeq.deepseq
                                     (_EventStreamRecordUpdate'settleTimestamp x__)
                                     (Control.DeepSeq.deepseq
                                        (_EventStreamRecordUpdate'outFlows x__) ())))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Events_Fields.to' @:: Lens' EventWithdraw Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.from' @:: Lens' EventWithdraw Data.Text.Text@
         * 'Proto.Greenfield.Payment.Events_Fields.amount' @:: Lens' EventWithdraw Data.Text.Text@ -}
data EventWithdraw
  = EventWithdraw'_constructor {_EventWithdraw'to :: !Data.Text.Text,
                                _EventWithdraw'from :: !Data.Text.Text,
                                _EventWithdraw'amount :: !Data.Text.Text,
                                _EventWithdraw'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventWithdraw where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventWithdraw "to" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventWithdraw'to (\ x__ y__ -> x__ {_EventWithdraw'to = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventWithdraw "from" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventWithdraw'from (\ x__ y__ -> x__ {_EventWithdraw'from = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventWithdraw "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventWithdraw'amount
           (\ x__ y__ -> x__ {_EventWithdraw'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventWithdraw where
  messageName _ = Data.Text.pack "greenfield.payment.EventWithdraw"
  packedMessageDescriptor _
    = "\n\
      \\rEventWithdraw\DC2(\n\
      \\STXto\CAN\SOH \SOH(\tR\STXtoB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
      \\EOTfrom\CAN\STX \SOH(\tR\EOTfromB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
      \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        to__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"to")) ::
              Data.ProtoLens.FieldDescriptor EventWithdraw
        from__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"from")) ::
              Data.ProtoLens.FieldDescriptor EventWithdraw
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor EventWithdraw
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, to__field_descriptor),
           (Data.ProtoLens.Tag 2, from__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventWithdraw'_unknownFields
        (\ x__ y__ -> x__ {_EventWithdraw'_unknownFields = y__})
  defMessage
    = EventWithdraw'_constructor
        {_EventWithdraw'to = Data.ProtoLens.fieldDefault,
         _EventWithdraw'from = Data.ProtoLens.fieldDefault,
         _EventWithdraw'amount = Data.ProtoLens.fieldDefault,
         _EventWithdraw'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventWithdraw -> Data.ProtoLens.Encoding.Bytes.Parser EventWithdraw
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
                                       "to"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"to") y x)
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
          (do loop Data.ProtoLens.defMessage) "EventWithdraw"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"to") _x
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
instance Control.DeepSeq.NFData EventWithdraw where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventWithdraw'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventWithdraw'to x__)
                (Control.DeepSeq.deepseq
                   (_EventWithdraw'from x__)
                   (Control.DeepSeq.deepseq (_EventWithdraw'amount x__) ())))
newtype FeePreviewType'UnrecognizedValue
  = FeePreviewType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data FeePreviewType
  = FEE_PREVIEW_TYPE_PRELOCKED_FEE |
    FEE_PREVIEW_TYPE_UNLOCKED_FEE |
    FeePreviewType'Unrecognized !FeePreviewType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FeePreviewType where
  maybeToEnum 0 = Prelude.Just FEE_PREVIEW_TYPE_PRELOCKED_FEE
  maybeToEnum 1 = Prelude.Just FEE_PREVIEW_TYPE_UNLOCKED_FEE
  maybeToEnum k
    = Prelude.Just
        (FeePreviewType'Unrecognized
           (FeePreviewType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum FEE_PREVIEW_TYPE_PRELOCKED_FEE
    = "FEE_PREVIEW_TYPE_PRELOCKED_FEE"
  showEnum FEE_PREVIEW_TYPE_UNLOCKED_FEE
    = "FEE_PREVIEW_TYPE_UNLOCKED_FEE"
  showEnum
    (FeePreviewType'Unrecognized (FeePreviewType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "FEE_PREVIEW_TYPE_PRELOCKED_FEE"
    = Prelude.Just FEE_PREVIEW_TYPE_PRELOCKED_FEE
    | (Prelude.==) k "FEE_PREVIEW_TYPE_UNLOCKED_FEE"
    = Prelude.Just FEE_PREVIEW_TYPE_UNLOCKED_FEE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FeePreviewType where
  minBound = FEE_PREVIEW_TYPE_PRELOCKED_FEE
  maxBound = FEE_PREVIEW_TYPE_UNLOCKED_FEE
instance Prelude.Enum FeePreviewType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum FeePreviewType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FEE_PREVIEW_TYPE_PRELOCKED_FEE = 0
  fromEnum FEE_PREVIEW_TYPE_UNLOCKED_FEE = 1
  fromEnum
    (FeePreviewType'Unrecognized (FeePreviewType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ FEE_PREVIEW_TYPE_UNLOCKED_FEE
    = Prelude.error
        "FeePreviewType.succ: bad argument FEE_PREVIEW_TYPE_UNLOCKED_FEE. This value would be out of bounds."
  succ FEE_PREVIEW_TYPE_PRELOCKED_FEE = FEE_PREVIEW_TYPE_UNLOCKED_FEE
  succ (FeePreviewType'Unrecognized _)
    = Prelude.error
        "FeePreviewType.succ: bad argument: unrecognized value"
  pred FEE_PREVIEW_TYPE_PRELOCKED_FEE
    = Prelude.error
        "FeePreviewType.pred: bad argument FEE_PREVIEW_TYPE_PRELOCKED_FEE. This value would be out of bounds."
  pred FEE_PREVIEW_TYPE_UNLOCKED_FEE = FEE_PREVIEW_TYPE_PRELOCKED_FEE
  pred (FeePreviewType'Unrecognized _)
    = Prelude.error
        "FeePreviewType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FeePreviewType where
  fieldDefault = FEE_PREVIEW_TYPE_PRELOCKED_FEE
instance Control.DeepSeq.NFData FeePreviewType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USgreenfield/payment/events.proto\DC2\DC2greenfield.payment\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\GSgreenfield/payment/base.proto\SUB&greenfield/payment/stream_record.proto\"\153\SOH\n\
    \\EMEventPaymentAccountUpdate\DC2,\n\
    \\EOTaddr\CAN\SOH \SOH(\tR\EOTaddrB\CAN\210\180-\DC4cosmos.AddressString\DC2.\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQownerB\CAN\210\180-\DC4cosmos.AddressString\DC2\RS\n\
    \\n\
    \refundable\CAN\ETX \SOH(\bR\n\
    \refundable\"\172\ENQ\n\
    \\ETBEventStreamRecordUpdate\DC22\n\
    \\aaccount\CAN\SOH \SOH(\tR\aaccountB\CAN\210\180-\DC4cosmos.AddressString\DC2%\n\
    \\SOcrud_timestamp\CAN\STX \SOH(\ETXR\rcrudTimestamp\DC2_\n\
    \\fnetflow_rate\CAN\ETX \SOH(\tR\vnetflowRateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2c\n\
    \\SOstatic_balance\CAN\EOT \SOH(\tR\rstaticBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2c\n\
    \\SObuffer_balance\CAN\ENQ \SOH(\tR\rbufferBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2_\n\
    \\flock_balance\CAN\ACK \SOH(\tR\vlockBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2?\n\
    \\ACKstatus\CAN\a \SOH(\SO2'.greenfield.payment.StreamAccountStatusR\ACKstatus\DC2)\n\
    \\DLEsettle_timestamp\CAN\b \SOH(\ETXR\SIsettleTimestamp\DC2>\n\
    \\tout_flows\CAN\t \ETX(\v2\ESC.greenfield.payment.OutFlowR\boutFlowsB\EOT\200\222\US\NUL\"\167\SOH\n\
    \\DLEEventForceSettle\DC2,\n\
    \\EOTaddr\CAN\SOH \SOH(\tR\EOTaddrB\CAN\210\180-\DC4cosmos.AddressString\DC2e\n\
    \\SIsettled_balance\CAN\STX \SOH(\tR\SOsettledBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\"\188\SOH\n\
    \\fEventDeposit\DC2,\n\
    \\EOTfrom\CAN\SOH \SOH(\tR\EOTfromB\CAN\210\180-\DC4cosmos.AddressString\DC2(\n\
    \\STXto\CAN\STX \SOH(\tR\STXtoB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
    \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\"\189\SOH\n\
    \\rEventWithdraw\DC2(\n\
    \\STXto\CAN\SOH \SOH(\tR\STXtoB\CAN\210\180-\DC4cosmos.AddressString\DC2,\n\
    \\EOTfrom\CAN\STX \SOH(\tR\EOTfromB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
    \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\"\233\SOH\n\
    \\SIEventFeePreview\DC22\n\
    \\aaccount\CAN\SOH \SOH(\tR\aaccountB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
    \\DLEfee_preview_type\CAN\STX \SOH(\SO2\".greenfield.payment.FeePreviewTypeR\SOfeePreviewType\DC2T\n\
    \\ACKamount\CAN\ETX \SOH(\tR\ACKamountB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int*]\n\
    \\SOFeePreviewType\DC2\"\n\
    \\RSFEE_PREVIEW_TYPE_PRELOCKED_FEE\DLE\NUL\DC2!\n\
    \\GSFEE_PREVIEW_TYPE_UNLOCKED_FEE\DLE\SOH\SUB\EOT\136\163\RS\NULB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\154 \n\
    \\ACK\DC2\EOT\NUL\NULu\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULF\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b!\n\
    \-\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STXC\SUB  address of the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\f\DC2B\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\f\DC3A\n\
    \3\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STXD\SUB& owner address of the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\SO\DC3C\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\SO\DC4B\n\
    \8\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\STX\SYN\SUB+ whether the payment account is refundable\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DLE\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\a\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE\DC4\NAK\n\
    \7\n\
    \\STX\EOT\SOH\DC2\EOT\DC4\NUL9\SOH\SUB+ Stream Payment Record of a stream account\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC4\b\US\n\
    \\RS\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SYN\STXF\SUB\DC1 account address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SYN\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SYN\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\SYN\NAKE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX\SYN\SYND\n\
    \;\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\CAN\STX\ESC\SUB. latest update timestamp of the stream record\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\CAN\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\CAN\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\CAN\EM\SUB\n\
    \\139\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\ESC\STX\US\EOT\SUB} The per-second rate that an account's balance is changing.\n\
    \ It is the sum of the account's inbound and outbound flow rates.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\ESC\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\ESC\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT\ESC\SUB\US\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\202\214\ENQ\DC2\ETX\FS\EOT(\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\235\251\ETX\DC2\ETX\GS\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX\RS\EOT \n\
    \O\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT!\STX%\EOT\SUBA The balance of the stream account at the latest CRUD timestamp.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX!\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX!\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT!\FS%\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\202\214\ENQ\DC2\ETX\"\EOT(\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\235\251\ETX\DC2\ETX#\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\233\251\ETX\DC2\ETX$\EOT \n\
    \\143\SOH\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT(\STX,\EOT\SUB\128\SOH reserved balance of the stream account\n\
    \ If the netflow rate is negative, the reserved balance is `netflow_rate * reserve_time`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX(\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX(\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\EOT(\FS,\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\202\214\ENQ\DC2\ETX)\EOT(\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\235\251\ETX\DC2\ETX*\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\233\251\ETX\DC2\ETX+\EOT \n\
    \s\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT.\STX2\EOT\SUBe the locked balance of the stream account after it puts a new object and before the object is sealed\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX.\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX.\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\b\DC2\EOT.\SUB2\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\202\214\ENQ\DC2\ETX/\EOT(\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\235\251\ETX\DC2\ETX0\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\233\251\ETX\DC2\ETX1\EOT \n\
    \/\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX4\STX!\SUB\" the status of the stream account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETX4\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX4\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX4\US \n\
    \I\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX6\STX\GS\SUB< the unix timestamp when the stream account will be settled\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX6\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX6\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX6\ESC\FS\n\
    \B\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX8\STX@\SUB5 the accumulated outflow rates of the stream account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\ETX8\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX8\DC3\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX8\US \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\b\DC2\ETX8!?\n\
    \\SI\n\
    \\b\EOT\SOH\STX\b\b\233\251\ETX\DC2\ETX8\">\n\
    \\137\SOH\n\
    \\STX\EOT\STX\DC2\EOT=\NULH\SOH\SUB} EventForceSettle may be emitted on all Msgs and EndBlocker when a payment account's\n\
    \ balance or net outflow rate is changed\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX=\b\CAN\n\
    \-\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX?\STXC\SUB  address of the payment account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX?\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX?\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX?\DC2B\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX?\DC3A\n\
    \\130\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOTC\STXG\EOT\SUB\243\SOH left balance of the payment account after force settlement\n\
    \ if the balance is positive, it will go to the governance stream account\n\
    \ if the balance is negative, it's the debt of the system, which will be paid by the governance stream account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXC\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXC\ESC\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\EOTC\GSG\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXD\EOT(\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\235\251\ETX\DC2\ETXE\EOTE\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETXF\EOT \n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTJ\NULU\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXJ\b\DC4\n\
    \E\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXL\STXC\SUB8 from is the the address of the account to deposit from\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXL\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXL\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXL\DC2B\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETXL\DC3A\n\
    \D\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXN\STXA\SUB7 to is the address of the stream account to deposit to\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXN\t\v\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXN\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\ETXN\DLE@\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\202\214\ENQ\DC2\ETXN\DC1?\n\
    \/\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOTP\STXT\EOT\SUB! amount is the amount to deposit\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXP\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXP\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\EOTP\DC4T\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\202\214\ENQ\DC2\ETXQ\EOT(\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\235\251\ETX\DC2\ETXR\EOTE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\233\251\ETX\DC2\ETXS\EOT \n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTW\NULb\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXW\b\NAK\n\
    \4\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXY\STXA\SUB' to the address of the receive account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXY\t\v\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXY\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXY\DLE@\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXY\DC1?\n\
    \I\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX[\STXC\SUB< from is the address of the stream account to withdraw from\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX[\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX[\t\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX[\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETX[\DC2B\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETX[\DC3A\n\
    \0\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT]\STXa\EOT\SUB\" amount is the amount to withdraw\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX]\t\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX]\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\EOT]\DC4a\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\202\214\ENQ\DC2\ETX^\EOT(\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\235\251\ETX\DC2\ETX_\EOTE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\233\251\ETX\DC2\ETX`\EOT \n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOTd\NULi\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETXd\ENQ\DC3\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETXe\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETXe\STX1\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETXg\STX%\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETXg\STX \n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETXg#$\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETXh\STX$\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETXh\STX\US\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETXh\"#\n\
    \}\n\
    \\STX\EOT\ENQ\DC2\EOTm\NULu\SOH\SUBq emit when upload/cancel/delete object, used for frontend to preview the fee changed\n\
    \ only emit in tx simulation\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXm\b\ETB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXn\STXF\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXn\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXn\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETXn\NAKE\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\202\214\ENQ\DC2\ETXn\SYND\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXo\STX&\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETXo\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXo\DC1!\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXo$%\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOTp\STXt\EOT\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETXp\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXp\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXp\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\b\DC2\EOTp\DC4t\ETX\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\STX\b\202\214\ENQ\DC2\ETXq\EOT(\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\STX\b\235\251\ETX\DC2\ETXr\EOTE\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\STX\b\233\251\ETX\DC2\ETXs\EOT b\ACKproto3"