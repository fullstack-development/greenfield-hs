{- This file was auto-generated from greenfield/bridge/event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Bridge.Event (
        EventCrossTransferIn(), EventCrossTransferOut(),
        EventCrossTransferOutRefund(), RefundReason(..), RefundReason(),
        RefundReason'UnrecognizedValue
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Greenfield.Bridge.Event_Fields.amount' @:: Lens' EventCrossTransferIn Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Bridge.Event_Fields.maybe'amount' @:: Lens' EventCrossTransferIn (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Greenfield.Bridge.Event_Fields.receiverAddress' @:: Lens' EventCrossTransferIn Data.Text.Text@
         * 'Proto.Greenfield.Bridge.Event_Fields.refundAddress' @:: Lens' EventCrossTransferIn Data.Text.Text@
         * 'Proto.Greenfield.Bridge.Event_Fields.sequence' @:: Lens' EventCrossTransferIn Data.Word.Word64@ -}
data EventCrossTransferIn
  = EventCrossTransferIn'_constructor {_EventCrossTransferIn'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                       _EventCrossTransferIn'receiverAddress :: !Data.Text.Text,
                                       _EventCrossTransferIn'refundAddress :: !Data.Text.Text,
                                       _EventCrossTransferIn'sequence :: !Data.Word.Word64,
                                       _EventCrossTransferIn'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCrossTransferIn where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCrossTransferIn "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferIn'amount
           (\ x__ y__ -> x__ {_EventCrossTransferIn'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventCrossTransferIn "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferIn'amount
           (\ x__ y__ -> x__ {_EventCrossTransferIn'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferIn "receiverAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferIn'receiverAddress
           (\ x__ y__ -> x__ {_EventCrossTransferIn'receiverAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferIn "refundAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferIn'refundAddress
           (\ x__ y__ -> x__ {_EventCrossTransferIn'refundAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferIn "sequence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferIn'sequence
           (\ x__ y__ -> x__ {_EventCrossTransferIn'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCrossTransferIn where
  messageName _
    = Data.Text.pack "greenfield.bridge.EventCrossTransferIn"
  packedMessageDescriptor _
    = "\n\
      \\DC4EventCrossTransferIn\DC21\n\
      \\ACKamount\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamount\DC2)\n\
      \\DLEreceiver_address\CAN\STX \SOH(\tR\SIreceiverAddress\DC2%\n\
      \\SOrefund_address\CAN\ETX \SOH(\tR\rrefundAddress\DC2\SUB\n\
      \\bsequence\CAN\EOT \SOH(\EOTR\bsequence"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferIn
        receiverAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "receiver_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"receiverAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferIn
        refundAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refund_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"refundAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferIn
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sequence")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferIn
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor),
           (Data.ProtoLens.Tag 2, receiverAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, refundAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, sequence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCrossTransferIn'_unknownFields
        (\ x__ y__ -> x__ {_EventCrossTransferIn'_unknownFields = y__})
  defMessage
    = EventCrossTransferIn'_constructor
        {_EventCrossTransferIn'amount = Prelude.Nothing,
         _EventCrossTransferIn'receiverAddress = Data.ProtoLens.fieldDefault,
         _EventCrossTransferIn'refundAddress = Data.ProtoLens.fieldDefault,
         _EventCrossTransferIn'sequence = Data.ProtoLens.fieldDefault,
         _EventCrossTransferIn'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCrossTransferIn
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCrossTransferIn
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
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
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
                                       "receiver_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"receiverAddress") y x)
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
                                       "refund_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"refundAddress") y x)
                        32
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
          (do loop Data.ProtoLens.defMessage) "EventCrossTransferIn"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"receiverAddress") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"refundAddress") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sequence") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventCrossTransferIn where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCrossTransferIn'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCrossTransferIn'amount x__)
                (Control.DeepSeq.deepseq
                   (_EventCrossTransferIn'receiverAddress x__)
                   (Control.DeepSeq.deepseq
                      (_EventCrossTransferIn'refundAddress x__)
                      (Control.DeepSeq.deepseq
                         (_EventCrossTransferIn'sequence x__) ()))))
{- | Fields :
     
         * 'Proto.Greenfield.Bridge.Event_Fields.from' @:: Lens' EventCrossTransferOut Data.Text.Text@
         * 'Proto.Greenfield.Bridge.Event_Fields.to' @:: Lens' EventCrossTransferOut Data.Text.Text@
         * 'Proto.Greenfield.Bridge.Event_Fields.amount' @:: Lens' EventCrossTransferOut Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Bridge.Event_Fields.maybe'amount' @:: Lens' EventCrossTransferOut (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Greenfield.Bridge.Event_Fields.relayerFee' @:: Lens' EventCrossTransferOut Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Bridge.Event_Fields.maybe'relayerFee' @:: Lens' EventCrossTransferOut (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Greenfield.Bridge.Event_Fields.sequence' @:: Lens' EventCrossTransferOut Data.Word.Word64@ -}
data EventCrossTransferOut
  = EventCrossTransferOut'_constructor {_EventCrossTransferOut'from :: !Data.Text.Text,
                                        _EventCrossTransferOut'to :: !Data.Text.Text,
                                        _EventCrossTransferOut'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                        _EventCrossTransferOut'relayerFee :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                        _EventCrossTransferOut'sequence :: !Data.Word.Word64,
                                        _EventCrossTransferOut'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCrossTransferOut where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCrossTransferOut "from" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOut'from
           (\ x__ y__ -> x__ {_EventCrossTransferOut'from = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferOut "to" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOut'to
           (\ x__ y__ -> x__ {_EventCrossTransferOut'to = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferOut "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOut'amount
           (\ x__ y__ -> x__ {_EventCrossTransferOut'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventCrossTransferOut "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOut'amount
           (\ x__ y__ -> x__ {_EventCrossTransferOut'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferOut "relayerFee" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOut'relayerFee
           (\ x__ y__ -> x__ {_EventCrossTransferOut'relayerFee = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventCrossTransferOut "maybe'relayerFee" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOut'relayerFee
           (\ x__ y__ -> x__ {_EventCrossTransferOut'relayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferOut "sequence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOut'sequence
           (\ x__ y__ -> x__ {_EventCrossTransferOut'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCrossTransferOut where
  messageName _
    = Data.Text.pack "greenfield.bridge.EventCrossTransferOut"
  packedMessageDescriptor _
    = "\n\
      \\NAKEventCrossTransferOut\DC2\DC2\n\
      \\EOTfrom\CAN\SOH \SOH(\tR\EOTfrom\DC2\SO\n\
      \\STXto\CAN\STX \SOH(\tR\STXto\DC21\n\
      \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamount\DC2:\n\
      \\vrelayer_fee\CAN\EOT \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\n\
      \relayerFee\DC2\SUB\n\
      \\bsequence\CAN\ENQ \SOH(\EOTR\bsequence"
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
              Data.ProtoLens.FieldDescriptor EventCrossTransferOut
        to__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"to")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOut
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOut
        relayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "relayer_fee"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'relayerFee")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOut
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sequence")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOut
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, from__field_descriptor),
           (Data.ProtoLens.Tag 2, to__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor),
           (Data.ProtoLens.Tag 4, relayerFee__field_descriptor),
           (Data.ProtoLens.Tag 5, sequence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCrossTransferOut'_unknownFields
        (\ x__ y__ -> x__ {_EventCrossTransferOut'_unknownFields = y__})
  defMessage
    = EventCrossTransferOut'_constructor
        {_EventCrossTransferOut'from = Data.ProtoLens.fieldDefault,
         _EventCrossTransferOut'to = Data.ProtoLens.fieldDefault,
         _EventCrossTransferOut'amount = Prelude.Nothing,
         _EventCrossTransferOut'relayerFee = Prelude.Nothing,
         _EventCrossTransferOut'sequence = Data.ProtoLens.fieldDefault,
         _EventCrossTransferOut'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCrossTransferOut
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCrossTransferOut
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "relayer_fee"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"relayerFee") y x)
                        40
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
          (do loop Data.ProtoLens.defMessage) "EventCrossTransferOut"
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'relayerFee") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData EventCrossTransferOut where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCrossTransferOut'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCrossTransferOut'from x__)
                (Control.DeepSeq.deepseq
                   (_EventCrossTransferOut'to x__)
                   (Control.DeepSeq.deepseq
                      (_EventCrossTransferOut'amount x__)
                      (Control.DeepSeq.deepseq
                         (_EventCrossTransferOut'relayerFee x__)
                         (Control.DeepSeq.deepseq
                            (_EventCrossTransferOut'sequence x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Bridge.Event_Fields.refundAddress' @:: Lens' EventCrossTransferOutRefund Data.Text.Text@
         * 'Proto.Greenfield.Bridge.Event_Fields.amount' @:: Lens' EventCrossTransferOutRefund Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Bridge.Event_Fields.maybe'amount' @:: Lens' EventCrossTransferOutRefund (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Greenfield.Bridge.Event_Fields.refundReason' @:: Lens' EventCrossTransferOutRefund RefundReason@
         * 'Proto.Greenfield.Bridge.Event_Fields.sequence' @:: Lens' EventCrossTransferOutRefund Data.Word.Word64@ -}
data EventCrossTransferOutRefund
  = EventCrossTransferOutRefund'_constructor {_EventCrossTransferOutRefund'refundAddress :: !Data.Text.Text,
                                              _EventCrossTransferOutRefund'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                              _EventCrossTransferOutRefund'refundReason :: !RefundReason,
                                              _EventCrossTransferOutRefund'sequence :: !Data.Word.Word64,
                                              _EventCrossTransferOutRefund'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCrossTransferOutRefund where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCrossTransferOutRefund "refundAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOutRefund'refundAddress
           (\ x__ y__
              -> x__ {_EventCrossTransferOutRefund'refundAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferOutRefund "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOutRefund'amount
           (\ x__ y__ -> x__ {_EventCrossTransferOutRefund'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventCrossTransferOutRefund "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOutRefund'amount
           (\ x__ y__ -> x__ {_EventCrossTransferOutRefund'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferOutRefund "refundReason" RefundReason where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOutRefund'refundReason
           (\ x__ y__
              -> x__ {_EventCrossTransferOutRefund'refundReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCrossTransferOutRefund "sequence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCrossTransferOutRefund'sequence
           (\ x__ y__ -> x__ {_EventCrossTransferOutRefund'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCrossTransferOutRefund where
  messageName _
    = Data.Text.pack "greenfield.bridge.EventCrossTransferOutRefund"
  packedMessageDescriptor _
    = "\n\
      \\ESCEventCrossTransferOutRefund\DC2%\n\
      \\SOrefund_address\CAN\SOH \SOH(\tR\rrefundAddress\DC21\n\
      \\ACKamount\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamount\DC2D\n\
      \\rrefund_reason\CAN\ETX \SOH(\SO2\US.greenfield.bridge.RefundReasonR\frefundReason\DC2\SUB\n\
      \\bsequence\CAN\EOT \SOH(\EOTR\bsequence"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        refundAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refund_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"refundAddress")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOutRefund
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOutRefund
        refundReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refund_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RefundReason)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"refundReason")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOutRefund
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sequence")) ::
              Data.ProtoLens.FieldDescriptor EventCrossTransferOutRefund
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, refundAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, amount__field_descriptor),
           (Data.ProtoLens.Tag 3, refundReason__field_descriptor),
           (Data.ProtoLens.Tag 4, sequence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCrossTransferOutRefund'_unknownFields
        (\ x__ y__
           -> x__ {_EventCrossTransferOutRefund'_unknownFields = y__})
  defMessage
    = EventCrossTransferOutRefund'_constructor
        {_EventCrossTransferOutRefund'refundAddress = Data.ProtoLens.fieldDefault,
         _EventCrossTransferOutRefund'amount = Prelude.Nothing,
         _EventCrossTransferOutRefund'refundReason = Data.ProtoLens.fieldDefault,
         _EventCrossTransferOutRefund'sequence = Data.ProtoLens.fieldDefault,
         _EventCrossTransferOutRefund'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCrossTransferOutRefund
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCrossTransferOutRefund
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
                                       "refund_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"refundAddress") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "refund_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"refundReason") y x)
                        32
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
          (do loop Data.ProtoLens.defMessage) "EventCrossTransferOutRefund"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"refundAddress") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"refundReason") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sequence") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData EventCrossTransferOutRefund where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCrossTransferOutRefund'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCrossTransferOutRefund'refundAddress x__)
                (Control.DeepSeq.deepseq
                   (_EventCrossTransferOutRefund'amount x__)
                   (Control.DeepSeq.deepseq
                      (_EventCrossTransferOutRefund'refundReason x__)
                      (Control.DeepSeq.deepseq
                         (_EventCrossTransferOutRefund'sequence x__) ()))))
newtype RefundReason'UnrecognizedValue
  = RefundReason'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RefundReason
  = REFUND_REASON_UNKNOWN |
    REFUND_REASON_INSUFFICIENT_BALANCE |
    REFUND_REASON_FAIL_ACK |
    RefundReason'Unrecognized !RefundReason'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RefundReason where
  maybeToEnum 0 = Prelude.Just REFUND_REASON_UNKNOWN
  maybeToEnum 1 = Prelude.Just REFUND_REASON_INSUFFICIENT_BALANCE
  maybeToEnum 2 = Prelude.Just REFUND_REASON_FAIL_ACK
  maybeToEnum k
    = Prelude.Just
        (RefundReason'Unrecognized
           (RefundReason'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum REFUND_REASON_UNKNOWN = "REFUND_REASON_UNKNOWN"
  showEnum REFUND_REASON_INSUFFICIENT_BALANCE
    = "REFUND_REASON_INSUFFICIENT_BALANCE"
  showEnum REFUND_REASON_FAIL_ACK = "REFUND_REASON_FAIL_ACK"
  showEnum
    (RefundReason'Unrecognized (RefundReason'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "REFUND_REASON_UNKNOWN"
    = Prelude.Just REFUND_REASON_UNKNOWN
    | (Prelude.==) k "REFUND_REASON_INSUFFICIENT_BALANCE"
    = Prelude.Just REFUND_REASON_INSUFFICIENT_BALANCE
    | (Prelude.==) k "REFUND_REASON_FAIL_ACK"
    = Prelude.Just REFUND_REASON_FAIL_ACK
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RefundReason where
  minBound = REFUND_REASON_UNKNOWN
  maxBound = REFUND_REASON_FAIL_ACK
instance Prelude.Enum RefundReason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum RefundReason: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum REFUND_REASON_UNKNOWN = 0
  fromEnum REFUND_REASON_INSUFFICIENT_BALANCE = 1
  fromEnum REFUND_REASON_FAIL_ACK = 2
  fromEnum
    (RefundReason'Unrecognized (RefundReason'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ REFUND_REASON_FAIL_ACK
    = Prelude.error
        "RefundReason.succ: bad argument REFUND_REASON_FAIL_ACK. This value would be out of bounds."
  succ REFUND_REASON_UNKNOWN = REFUND_REASON_INSUFFICIENT_BALANCE
  succ REFUND_REASON_INSUFFICIENT_BALANCE = REFUND_REASON_FAIL_ACK
  succ (RefundReason'Unrecognized _)
    = Prelude.error
        "RefundReason.succ: bad argument: unrecognized value"
  pred REFUND_REASON_UNKNOWN
    = Prelude.error
        "RefundReason.pred: bad argument REFUND_REASON_UNKNOWN. This value would be out of bounds."
  pred REFUND_REASON_INSUFFICIENT_BALANCE = REFUND_REASON_UNKNOWN
  pred REFUND_REASON_FAIL_ACK = REFUND_REASON_INSUFFICIENT_BALANCE
  pred (RefundReason'Unrecognized _)
    = Prelude.error
        "RefundReason.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RefundReason where
  fieldDefault = REFUND_REASON_UNKNOWN
instance Control.DeepSeq.NFData RefundReason where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GSgreenfield/bridge/event.proto\DC2\DC1greenfield.bridge\SUB\RScosmos/base/v1beta1/coin.proto\SUB\DC4gogoproto/gogo.proto\"\198\SOH\n\
    \\NAKEventCrossTransferOut\DC2\DC2\n\
    \\EOTfrom\CAN\SOH \SOH(\tR\EOTfrom\DC2\SO\n\
    \\STXto\CAN\STX \SOH(\tR\STXto\DC21\n\
    \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamount\DC2:\n\
    \\vrelayer_fee\CAN\EOT \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\n\
    \relayerFee\DC2\SUB\n\
    \\bsequence\CAN\ENQ \SOH(\EOTR\bsequence\"\217\SOH\n\
    \\ESCEventCrossTransferOutRefund\DC2%\n\
    \\SOrefund_address\CAN\SOH \SOH(\tR\rrefundAddress\DC21\n\
    \\ACKamount\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamount\DC2D\n\
    \\rrefund_reason\CAN\ETX \SOH(\SO2\US.greenfield.bridge.RefundReasonR\frefundReason\DC2\SUB\n\
    \\bsequence\CAN\EOT \SOH(\EOTR\bsequence\"\183\SOH\n\
    \\DC4EventCrossTransferIn\DC21\n\
    \\ACKamount\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamount\DC2)\n\
    \\DLEreceiver_address\CAN\STX \SOH(\tR\SIreceiverAddress\DC2%\n\
    \\SOrefund_address\CAN\ETX \SOH(\tR\rrefundAddress\DC2\SUB\n\
    \\bsequence\CAN\EOT \SOH(\EOTR\bsequence*s\n\
    \\fRefundReason\DC2\EM\n\
    \\NAKREFUND_REASON_UNKNOWN\DLE\NUL\DC2&\n\
    \\"REFUND_REASON_INSUFFICIENT_BALANCE\DLE\SOH\DC2\SUB\n\
    \\SYNREFUND_REASON_FAIL_ACK\DLE\STX\SUB\EOT\136\163\RS\NULB0Z.github.com/bnb-chain/greenfield/x/bridge/typesJ\171\SI\n\
    \\ACK\DC2\EOT\NUL\NUL6\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULE\n\
    \H\n\
    \\STX\b\v\DC2\ETX\b\NULE2= this line is used by starport scaffolding # proto/tx/import\n\
    \\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOT\n\
    \\NUL\DLE\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\n\
    \\ENQ\DC1\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\v\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\v\STX1\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\r\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\r\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\r\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SO\STX)\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SO\STX$\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SO'(\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\SI\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\SI\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\SI\ESC\FS\n\
    \Y\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\RS\SOH\SUBM EventCrossTransferOut is emitted when a cross chain transfer out tx created\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\GS\n\
    \9\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STX\DC2\SUB, From addres of the cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK\DLE\DC1\n\
    \7\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\STX\DLE\SUB* To addres of the cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB\SO\SI\n\
    \4\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\EM\STX&\SUB' Amount of the cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\EM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\EM\ESC!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\EM$%\n\
    \9\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\ESC\STX+\SUB, Relayer fee of the cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\ESC\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\ESC\ESC&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\ESC)*\n\
    \@\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\GS\STX\SYN\SUB3 Sequence of the corresponding cross chain package\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\GS\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\GS\DC4\NAK\n\
    \^\n\
    \\STX\EOT\SOH\DC2\EOT!\NUL*\SOH\SUBR EventCrossTransferOutRefund is emitted when a cross chain transfer out tx failed\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b#\n\
    \C\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX\FS\SUB6 Refund address of the failed cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\SUB\ESC\n\
    \;\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX%\STX&\SUB. Amount of the failed cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX%\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX%\ESC!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX%$%\n\
    \B\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX'\STX!\SUB5 Refund reason of the failed cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX'\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX'\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX'\US \n\
    \@\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX)\STX\SYN\SUB3 Sequence of the corresponding cross chain package\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX)\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX)\DC4\NAK\n\
    \X\n\
    \\STX\EOT\STX\DC2\EOT-\NUL6\SOH\SUBL EventCrossTransferIn is emitted when a cross chain transfer in tx happened\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX-\b\FS\n\
    \4\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX/\STX&\SUB' Amount of the cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX/\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX/\ESC!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX/$%\n\
    \6\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX1\STX\RS\SUB) Receiver of the cross chain transfer tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX1\t\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX1\FS\GS\n\
    \;\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX3\STX\FS\SUB. Refund of the cross chain transfer tx in BSC\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX3\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX3\SUB\ESC\n\
    \@\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX5\STX\SYN\SUB3 Sequence of the corresponding cross chain package\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX5\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX5\DC4\NAKb\ACKproto3"