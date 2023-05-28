{- This file was auto-generated from greenfield/payment/stream_record.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.StreamRecord (
        StreamRecord()
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
{- | Fields :
     
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.account' @:: Lens' StreamRecord Data.Text.Text@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.crudTimestamp' @:: Lens' StreamRecord Data.Int.Int64@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.netflowRate' @:: Lens' StreamRecord Data.Text.Text@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.staticBalance' @:: Lens' StreamRecord Data.Text.Text@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.bufferBalance' @:: Lens' StreamRecord Data.Text.Text@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.lockBalance' @:: Lens' StreamRecord Data.Text.Text@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.status' @:: Lens' StreamRecord Proto.Greenfield.Payment.Base.StreamAccountStatus@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.settleTimestamp' @:: Lens' StreamRecord Data.Int.Int64@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.outFlows' @:: Lens' StreamRecord [Proto.Greenfield.Payment.Base.OutFlow]@
         * 'Proto.Greenfield.Payment.StreamRecord_Fields.vec'outFlows' @:: Lens' StreamRecord (Data.Vector.Vector Proto.Greenfield.Payment.Base.OutFlow)@ -}
data StreamRecord
  = StreamRecord'_constructor {_StreamRecord'account :: !Data.Text.Text,
                               _StreamRecord'crudTimestamp :: !Data.Int.Int64,
                               _StreamRecord'netflowRate :: !Data.Text.Text,
                               _StreamRecord'staticBalance :: !Data.Text.Text,
                               _StreamRecord'bufferBalance :: !Data.Text.Text,
                               _StreamRecord'lockBalance :: !Data.Text.Text,
                               _StreamRecord'status :: !Proto.Greenfield.Payment.Base.StreamAccountStatus,
                               _StreamRecord'settleTimestamp :: !Data.Int.Int64,
                               _StreamRecord'outFlows :: !(Data.Vector.Vector Proto.Greenfield.Payment.Base.OutFlow),
                               _StreamRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamRecord "account" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'account
           (\ x__ y__ -> x__ {_StreamRecord'account = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "crudTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'crudTimestamp
           (\ x__ y__ -> x__ {_StreamRecord'crudTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "netflowRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'netflowRate
           (\ x__ y__ -> x__ {_StreamRecord'netflowRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "staticBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'staticBalance
           (\ x__ y__ -> x__ {_StreamRecord'staticBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "bufferBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'bufferBalance
           (\ x__ y__ -> x__ {_StreamRecord'bufferBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "lockBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'lockBalance
           (\ x__ y__ -> x__ {_StreamRecord'lockBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "status" Proto.Greenfield.Payment.Base.StreamAccountStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'status
           (\ x__ y__ -> x__ {_StreamRecord'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "settleTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'settleTimestamp
           (\ x__ y__ -> x__ {_StreamRecord'settleTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamRecord "outFlows" [Proto.Greenfield.Payment.Base.OutFlow] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'outFlows
           (\ x__ y__ -> x__ {_StreamRecord'outFlows = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamRecord "vec'outFlows" (Data.Vector.Vector Proto.Greenfield.Payment.Base.OutFlow) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamRecord'outFlows
           (\ x__ y__ -> x__ {_StreamRecord'outFlows = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamRecord where
  messageName _ = Data.Text.pack "greenfield.payment.StreamRecord"
  packedMessageDescriptor _
    = "\n\
      \\fStreamRecord\DC22\n\
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
              Data.ProtoLens.FieldDescriptor StreamRecord
        crudTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crud_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"crudTimestamp")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
        netflowRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "netflow_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"netflowRate")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
        staticBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "static_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"staticBalance")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
        bufferBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bufferBalance")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
        lockBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lock_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lockBalance")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.Base.StreamAccountStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
        settleTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "settle_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"settleTimestamp")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
        outFlows__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "out_flows"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.Base.OutFlow)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"outFlows")) ::
              Data.ProtoLens.FieldDescriptor StreamRecord
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
        _StreamRecord'_unknownFields
        (\ x__ y__ -> x__ {_StreamRecord'_unknownFields = y__})
  defMessage
    = StreamRecord'_constructor
        {_StreamRecord'account = Data.ProtoLens.fieldDefault,
         _StreamRecord'crudTimestamp = Data.ProtoLens.fieldDefault,
         _StreamRecord'netflowRate = Data.ProtoLens.fieldDefault,
         _StreamRecord'staticBalance = Data.ProtoLens.fieldDefault,
         _StreamRecord'bufferBalance = Data.ProtoLens.fieldDefault,
         _StreamRecord'lockBalance = Data.ProtoLens.fieldDefault,
         _StreamRecord'status = Data.ProtoLens.fieldDefault,
         _StreamRecord'settleTimestamp = Data.ProtoLens.fieldDefault,
         _StreamRecord'outFlows = Data.Vector.Generic.empty,
         _StreamRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamRecord
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.Base.OutFlow
             -> Data.ProtoLens.Encoding.Bytes.Parser StreamRecord
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
          "StreamRecord"
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
instance Control.DeepSeq.NFData StreamRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamRecord'account x__)
                (Control.DeepSeq.deepseq
                   (_StreamRecord'crudTimestamp x__)
                   (Control.DeepSeq.deepseq
                      (_StreamRecord'netflowRate x__)
                      (Control.DeepSeq.deepseq
                         (_StreamRecord'staticBalance x__)
                         (Control.DeepSeq.deepseq
                            (_StreamRecord'bufferBalance x__)
                            (Control.DeepSeq.deepseq
                               (_StreamRecord'lockBalance x__)
                               (Control.DeepSeq.deepseq
                                  (_StreamRecord'status x__)
                                  (Control.DeepSeq.deepseq
                                     (_StreamRecord'settleTimestamp x__)
                                     (Control.DeepSeq.deepseq
                                        (_StreamRecord'outFlows x__) ())))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&greenfield/payment/stream_record.proto\DC2\DC2greenfield.payment\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\GSgreenfield/payment/base.proto\"\161\ENQ\n\
    \\fStreamRecord\DC22\n\
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
    \\tout_flows\CAN\t \ETX(\v2\ESC.greenfield.payment.OutFlowR\boutFlowsB\EOT\200\222\US\NULB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\232\f\n\
    \\ACK\DC2\EOT\NUL\NUL/\SOH\n\
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
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULF\n\
    \7\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL/\SOH\SUB+ Stream Payment Record of a stream account\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC4\n\
    \\RS\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STXF\SUB\DC1 account address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\f\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\f\SYND\n\
    \;\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX\ESC\SUB. latest update timestamp of the stream record\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\EM\SUB\n\
    \\139\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\DC1\STX\NAK\EOT\SUB} The per-second rate that an account's balance is changing.\n\
    \ It is the sum of the account's inbound and outbound flow rates.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC1\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC1\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT\DC1\SUB\NAK\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX\DC2\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\235\251\ETX\DC2\ETX\DC3\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\DC4\EOT \n\
    \O\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\ETB\STX\ESC\EOT\SUBA The balance of the stream account at the latest CRUD timestamp.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\ETB\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\ETB\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT\ETB\FS\ESC\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\CAN\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\235\251\ETX\DC2\ETX\EM\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\SUB\EOT \n\
    \\143\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\RS\STX\"\EOT\SUB\128\SOH reserved balance of the stream account\n\
    \ If the netflow rate is negative, the reserved balance is `netflow_rate * reserve_time`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\RS\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\RS\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\EOT\RS\FS\"\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\202\214\ENQ\DC2\ETX\US\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\235\251\ETX\DC2\ETX \EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX!\EOT \n\
    \s\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT$\STX(\EOT\SUBe the locked balance of the stream account after it puts a new object and before the object is sealed\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX$\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX$\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\EOT$\SUB(\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\202\214\ENQ\DC2\ETX%\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\235\251\ETX\DC2\ETX&\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\233\251\ETX\DC2\ETX'\EOT \n\
    \/\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX*\STX!\SUB\" the status of the stream account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX*\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX*\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX*\US \n\
    \I\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX,\STX\GS\SUB< the unix timestamp when the stream account will be settled\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX,\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX,\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX,\ESC\FS\n\
    \B\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX.\STX@\SUB5 the accumulated outflow rates of the stream account\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX.\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX.\DC3\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX.\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\ETX.!?\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\233\251\ETX\DC2\ETX.\">b\ACKproto3"