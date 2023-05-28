{- This file was auto-generated from greenfield/payment/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.Genesis (
        GenesisState()
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
import qualified Proto.Greenfield.Payment.AutoSettleRecord
import qualified Proto.Greenfield.Payment.Params
import qualified Proto.Greenfield.Payment.PaymentAccount
import qualified Proto.Greenfield.Payment.PaymentAccountCount
import qualified Proto.Greenfield.Payment.StreamRecord
{- | Fields :
     
         * 'Proto.Greenfield.Payment.Genesis_Fields.params' @:: Lens' GenesisState Proto.Greenfield.Payment.Params.Params@
         * 'Proto.Greenfield.Payment.Genesis_Fields.maybe'params' @:: Lens' GenesisState (Prelude.Maybe Proto.Greenfield.Payment.Params.Params)@
         * 'Proto.Greenfield.Payment.Genesis_Fields.streamRecordList' @:: Lens' GenesisState [Proto.Greenfield.Payment.StreamRecord.StreamRecord]@
         * 'Proto.Greenfield.Payment.Genesis_Fields.vec'streamRecordList' @:: Lens' GenesisState (Data.Vector.Vector Proto.Greenfield.Payment.StreamRecord.StreamRecord)@
         * 'Proto.Greenfield.Payment.Genesis_Fields.paymentAccountCountList' @:: Lens' GenesisState [Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount]@
         * 'Proto.Greenfield.Payment.Genesis_Fields.vec'paymentAccountCountList' @:: Lens' GenesisState (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount)@
         * 'Proto.Greenfield.Payment.Genesis_Fields.paymentAccountList' @:: Lens' GenesisState [Proto.Greenfield.Payment.PaymentAccount.PaymentAccount]@
         * 'Proto.Greenfield.Payment.Genesis_Fields.vec'paymentAccountList' @:: Lens' GenesisState (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccount.PaymentAccount)@
         * 'Proto.Greenfield.Payment.Genesis_Fields.autoSettleRecordList' @:: Lens' GenesisState [Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord]@
         * 'Proto.Greenfield.Payment.Genesis_Fields.vec'autoSettleRecordList' @:: Lens' GenesisState (Data.Vector.Vector Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'params :: !(Prelude.Maybe Proto.Greenfield.Payment.Params.Params),
                               _GenesisState'streamRecordList :: !(Data.Vector.Vector Proto.Greenfield.Payment.StreamRecord.StreamRecord),
                               _GenesisState'paymentAccountCountList :: !(Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount),
                               _GenesisState'paymentAccountList :: !(Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccount.PaymentAccount),
                               _GenesisState'autoSettleRecordList :: !(Data.Vector.Vector Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "params" Proto.Greenfield.Payment.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'params" (Prelude.Maybe Proto.Greenfield.Payment.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "streamRecordList" [Proto.Greenfield.Payment.StreamRecord.StreamRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'streamRecordList
           (\ x__ y__ -> x__ {_GenesisState'streamRecordList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'streamRecordList" (Data.Vector.Vector Proto.Greenfield.Payment.StreamRecord.StreamRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'streamRecordList
           (\ x__ y__ -> x__ {_GenesisState'streamRecordList = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "paymentAccountCountList" [Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'paymentAccountCountList
           (\ x__ y__ -> x__ {_GenesisState'paymentAccountCountList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'paymentAccountCountList" (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'paymentAccountCountList
           (\ x__ y__ -> x__ {_GenesisState'paymentAccountCountList = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "paymentAccountList" [Proto.Greenfield.Payment.PaymentAccount.PaymentAccount] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'paymentAccountList
           (\ x__ y__ -> x__ {_GenesisState'paymentAccountList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'paymentAccountList" (Data.Vector.Vector Proto.Greenfield.Payment.PaymentAccount.PaymentAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'paymentAccountList
           (\ x__ y__ -> x__ {_GenesisState'paymentAccountList = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "autoSettleRecordList" [Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'autoSettleRecordList
           (\ x__ y__ -> x__ {_GenesisState'autoSettleRecordList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'autoSettleRecordList" (Data.Vector.Vector Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'autoSettleRecordList
           (\ x__ y__ -> x__ {_GenesisState'autoSettleRecordList = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "greenfield.payment.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC28\n\
      \\ACKparams\CAN\SOH \SOH(\v2\SUB.greenfield.payment.ParamsR\ACKparamsB\EOT\200\222\US\NUL\DC2T\n\
      \\DC2stream_record_list\CAN\STX \ETX(\v2 .greenfield.payment.StreamRecordR\DLEstreamRecordListB\EOT\200\222\US\NUL\DC2j\n\
      \\SUBpayment_account_count_list\CAN\ETX \ETX(\v2'.greenfield.payment.PaymentAccountCountR\ETBpaymentAccountCountListB\EOT\200\222\US\NUL\DC2Z\n\
      \\DC4payment_account_list\CAN\EOT \ETX(\v2\".greenfield.payment.PaymentAccountR\DC2paymentAccountListB\EOT\200\222\US\NUL\DC2a\n\
      \\ETBauto_settle_record_list\CAN\ENQ \ETX(\v2$.greenfield.payment.AutoSettleRecordR\DC4autoSettleRecordListB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.Params.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        streamRecordList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_record_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.StreamRecord.StreamRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"streamRecordList")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        paymentAccountCountList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_account_count_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"paymentAccountCountList")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        paymentAccountList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_account_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.PaymentAccount.PaymentAccount)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"paymentAccountList")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        autoSettleRecordList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auto_settle_record_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"autoSettleRecordList")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor),
           (Data.ProtoLens.Tag 2, streamRecordList__field_descriptor),
           (Data.ProtoLens.Tag 3, paymentAccountCountList__field_descriptor),
           (Data.ProtoLens.Tag 4, paymentAccountList__field_descriptor),
           (Data.ProtoLens.Tag 5, autoSettleRecordList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'params = Prelude.Nothing,
         _GenesisState'streamRecordList = Data.Vector.Generic.empty,
         _GenesisState'paymentAccountCountList = Data.Vector.Generic.empty,
         _GenesisState'paymentAccountList = Data.Vector.Generic.empty,
         _GenesisState'autoSettleRecordList = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.AutoSettleRecord.AutoSettleRecord
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.PaymentAccountCount.PaymentAccountCount
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.PaymentAccount.PaymentAccount
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Payment.StreamRecord.StreamRecord
                      -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop
          x
          mutable'autoSettleRecordList
          mutable'paymentAccountCountList
          mutable'paymentAccountList
          mutable'streamRecordList
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'autoSettleRecordList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'autoSettleRecordList)
                      frozen'paymentAccountCountList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'paymentAccountCountList)
                      frozen'paymentAccountList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'paymentAccountList)
                      frozen'streamRecordList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'streamRecordList)
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
                              (Data.ProtoLens.Field.field @"vec'autoSettleRecordList")
                              frozen'autoSettleRecordList
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'paymentAccountCountList")
                                 frozen'paymentAccountCountList
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'paymentAccountList")
                                    frozen'paymentAccountList
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'streamRecordList")
                                       frozen'streamRecordList x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                                  mutable'autoSettleRecordList mutable'paymentAccountCountList
                                  mutable'paymentAccountList mutable'streamRecordList
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "stream_record_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'streamRecordList y)
                                loop
                                  x mutable'autoSettleRecordList mutable'paymentAccountCountList
                                  mutable'paymentAccountList v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "payment_account_count_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'paymentAccountCountList y)
                                loop
                                  x mutable'autoSettleRecordList v mutable'paymentAccountList
                                  mutable'streamRecordList
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "payment_account_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'paymentAccountList y)
                                loop
                                  x mutable'autoSettleRecordList mutable'paymentAccountCountList v
                                  mutable'streamRecordList
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "auto_settle_record_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'autoSettleRecordList y)
                                loop
                                  x v mutable'paymentAccountCountList mutable'paymentAccountList
                                  mutable'streamRecordList
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'autoSettleRecordList mutable'paymentAccountCountList
                                  mutable'paymentAccountList mutable'streamRecordList
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'autoSettleRecordList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'paymentAccountCountList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              mutable'paymentAccountList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'streamRecordList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'autoSettleRecordList
                mutable'paymentAccountCountList mutable'paymentAccountList
                mutable'streamRecordList)
          "GenesisState"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
                      (Data.ProtoLens.Field.field @"vec'streamRecordList") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'paymentAccountCountList") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'paymentAccountList") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'autoSettleRecordList") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'params x__)
                (Control.DeepSeq.deepseq
                   (_GenesisState'streamRecordList x__)
                   (Control.DeepSeq.deepseq
                      (_GenesisState'paymentAccountCountList x__)
                      (Control.DeepSeq.deepseq
                         (_GenesisState'paymentAccountList x__)
                         (Control.DeepSeq.deepseq
                            (_GenesisState'autoSettleRecordList x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ greenfield/payment/genesis.proto\DC2\DC2greenfield.payment\SUB\DC4gogoproto/gogo.proto\SUB+greenfield/payment/auto_settle_record.proto\SUB\USgreenfield/payment/params.proto\SUB(greenfield/payment/payment_account.proto\SUB.greenfield/payment/payment_account_count.proto\SUB&greenfield/payment/stream_record.proto\"\201\ETX\n\
    \\fGenesisState\DC28\n\
    \\ACKparams\CAN\SOH \SOH(\v2\SUB.greenfield.payment.ParamsR\ACKparamsB\EOT\200\222\US\NUL\DC2T\n\
    \\DC2stream_record_list\CAN\STX \ETX(\v2 .greenfield.payment.StreamRecordR\DLEstreamRecordListB\EOT\200\222\US\NUL\DC2j\n\
    \\SUBpayment_account_count_list\CAN\ETX \ETX(\v2'.greenfield.payment.PaymentAccountCountR\ETBpaymentAccountCountListB\EOT\200\222\US\NUL\DC2Z\n\
    \\DC4payment_account_list\CAN\EOT \ETX(\v2\".greenfield.payment.PaymentAccountR\DC2paymentAccountListB\EOT\200\222\US\NUL\DC2a\n\
    \\ETBauto_settle_record_list\CAN\ENQ \ETX(\v2$.greenfield.payment.AutoSettleRecordR\DC4autoSettleRecordListB\EOT\200\222\US\NULB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\180\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\ETB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL5\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL2\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL8\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \M\n\
    \\STX\b\v\DC2\ETX\r\NULF2B this line is used by starport scaffolding # genesis/proto/import\n\
    \\n\
    \F\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\ETB\SOH\SUB: GenesisState defines the payment module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC1\STX3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC1\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC1\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC1\DC42\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\DC1\NAK1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC2\STXN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC2\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\CAN*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DC2/M\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC20L\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC3\STX]\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DC3\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC3\US9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC3<=\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\DC3>\\\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\DC3?[\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC4\STXR\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\DC4\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC4\SUB.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC412\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\DC43Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\DC44P\n\
    \N\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\NAK\STXW\"A this line is used by starport scaffolding # genesis/proto/state\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\NAK\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\NAK\FS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\NAK67\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\NAK8V\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX\NAK9Ub\ACKproto3"