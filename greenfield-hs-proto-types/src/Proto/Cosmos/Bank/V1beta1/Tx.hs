{- This file was auto-generated from cosmos/bank/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.V1beta1.Tx (
        Msg(..), MsgMultiSend(), MsgMultiSendResponse(), MsgSend(),
        MsgSendResponse(), MsgSetSendEnabled(),
        MsgSetSendEnabledResponse(), MsgUpdateParams(),
        MsgUpdateParamsResponse()
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
import qualified Proto.Cosmos.Bank.V1beta1.Bank
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.inputs' @:: Lens' MsgMultiSend [Proto.Cosmos.Bank.V1beta1.Bank.Input]@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.vec'inputs' @:: Lens' MsgMultiSend (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Input)@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.outputs' @:: Lens' MsgMultiSend [Proto.Cosmos.Bank.V1beta1.Bank.Output]@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.vec'outputs' @:: Lens' MsgMultiSend (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Output)@ -}
data MsgMultiSend
  = MsgMultiSend'_constructor {_MsgMultiSend'inputs :: !(Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Input),
                               _MsgMultiSend'outputs :: !(Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Output),
                               _MsgMultiSend'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMultiSend where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgMultiSend "inputs" [Proto.Cosmos.Bank.V1beta1.Bank.Input] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMultiSend'inputs
           (\ x__ y__ -> x__ {_MsgMultiSend'inputs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgMultiSend "vec'inputs" (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Input) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMultiSend'inputs
           (\ x__ y__ -> x__ {_MsgMultiSend'inputs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgMultiSend "outputs" [Proto.Cosmos.Bank.V1beta1.Bank.Output] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMultiSend'outputs
           (\ x__ y__ -> x__ {_MsgMultiSend'outputs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgMultiSend "vec'outputs" (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Output) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgMultiSend'outputs
           (\ x__ y__ -> x__ {_MsgMultiSend'outputs = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgMultiSend where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.MsgMultiSend"
  packedMessageDescriptor _
    = "\n\
      \\fMsgMultiSend\DC2=\n\
      \\ACKinputs\CAN\SOH \ETX(\v2\SUB.cosmos.bank.v1beta1.InputR\ACKinputsB\t\200\222\US\NUL\168\231\176*\SOH\DC2@\n\
      \\aoutputs\CAN\STX \ETX(\v2\ESC.cosmos.bank.v1beta1.OutputR\aoutputsB\t\200\222\US\NUL\168\231\176*\SOH:+\232\160\US\NUL\130\231\176*\ACKinputs\138\231\176*\ETBcosmos-sdk/MsgMultiSend"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inputs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inputs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Input)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"inputs")) ::
              Data.ProtoLens.FieldDescriptor MsgMultiSend
        outputs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outputs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Output)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"outputs")) ::
              Data.ProtoLens.FieldDescriptor MsgMultiSend
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inputs__field_descriptor),
           (Data.ProtoLens.Tag 2, outputs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMultiSend'_unknownFields
        (\ x__ y__ -> x__ {_MsgMultiSend'_unknownFields = y__})
  defMessage
    = MsgMultiSend'_constructor
        {_MsgMultiSend'inputs = Data.Vector.Generic.empty,
         _MsgMultiSend'outputs = Data.Vector.Generic.empty,
         _MsgMultiSend'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMultiSend
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Bank.V1beta1.Bank.Input
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Bank.V1beta1.Bank.Output
                -> Data.ProtoLens.Encoding.Bytes.Parser MsgMultiSend
        loop x mutable'inputs mutable'outputs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'inputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'inputs)
                      frozen'outputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'outputs)
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
                              (Data.ProtoLens.Field.field @"vec'inputs") frozen'inputs
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'outputs") frozen'outputs x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "inputs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'inputs y)
                                loop x v mutable'outputs
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "outputs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'outputs y)
                                loop x mutable'inputs v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'inputs mutable'outputs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'inputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'outputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'inputs mutable'outputs)
          "MsgMultiSend"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'inputs") _x))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'outputs") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgMultiSend where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMultiSend'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgMultiSend'inputs x__)
                (Control.DeepSeq.deepseq (_MsgMultiSend'outputs x__) ()))
{- | Fields :
      -}
data MsgMultiSendResponse
  = MsgMultiSendResponse'_constructor {_MsgMultiSendResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgMultiSendResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgMultiSendResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.MsgMultiSendResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgMultiSendResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgMultiSendResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgMultiSendResponse'_unknownFields = y__})
  defMessage
    = MsgMultiSendResponse'_constructor
        {_MsgMultiSendResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgMultiSendResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgMultiSendResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgMultiSendResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgMultiSendResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgMultiSendResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.fromAddress' @:: Lens' MsgSend Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.toAddress' @:: Lens' MsgSend Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.amount' @:: Lens' MsgSend [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgSend (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgSend
  = MsgSend'_constructor {_MsgSend'fromAddress :: !Data.Text.Text,
                          _MsgSend'toAddress :: !Data.Text.Text,
                          _MsgSend'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                          _MsgSend'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSend where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSend "fromAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'fromAddress
           (\ x__ y__ -> x__ {_MsgSend'fromAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSend "toAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'toAddress (\ x__ y__ -> x__ {_MsgSend'toAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSend "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'amount (\ x__ y__ -> x__ {_MsgSend'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSend "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'amount (\ x__ y__ -> x__ {_MsgSend'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSend where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.MsgSend"
  packedMessageDescriptor _
    = "\n\
      \\aMsgSend\DC2;\n\
      \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \to_address\CAN\STX \SOH(\tR\ttoAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2y\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:0\136\160\US\NUL\232\160\US\NUL\130\231\176*\ffrom_address\138\231\176*\DC2cosmos-sdk/MsgSend"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fromAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fromAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgSend
        toAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"toAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgSend
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgSend
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fromAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, toAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSend'_unknownFields
        (\ x__ y__ -> x__ {_MsgSend'_unknownFields = y__})
  defMessage
    = MsgSend'_constructor
        {_MsgSend'fromAddress = Data.ProtoLens.fieldDefault,
         _MsgSend'toAddress = Data.ProtoLens.fieldDefault,
         _MsgSend'amount = Data.Vector.Generic.empty,
         _MsgSend'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSend
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgSend
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
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
                                       "from_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fromAddress") y x)
                                  mutable'amount
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
                                       "to_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"toAddress") y x)
                                  mutable'amount
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "MsgSend"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"fromAddress") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"toAddress") _x
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgSend where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSend'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSend'fromAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgSend'toAddress x__)
                   (Control.DeepSeq.deepseq (_MsgSend'amount x__) ())))
{- | Fields :
      -}
data MsgSendResponse
  = MsgSendResponse'_constructor {_MsgSendResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSendResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgSendResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.MsgSendResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgSendResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSendResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgSendResponse'_unknownFields = y__})
  defMessage
    = MsgSendResponse'_constructor
        {_MsgSendResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSendResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSendResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgSendResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgSendResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_MsgSendResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.authority' @:: Lens' MsgSetSendEnabled Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.sendEnabled' @:: Lens' MsgSetSendEnabled [Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled]@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.vec'sendEnabled' @:: Lens' MsgSetSendEnabled (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled)@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.useDefaultFor' @:: Lens' MsgSetSendEnabled [Data.Text.Text]@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.vec'useDefaultFor' @:: Lens' MsgSetSendEnabled (Data.Vector.Vector Data.Text.Text)@ -}
data MsgSetSendEnabled
  = MsgSetSendEnabled'_constructor {_MsgSetSendEnabled'authority :: !Data.Text.Text,
                                    _MsgSetSendEnabled'sendEnabled :: !(Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled),
                                    _MsgSetSendEnabled'useDefaultFor :: !(Data.Vector.Vector Data.Text.Text),
                                    _MsgSetSendEnabled'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSetSendEnabled where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSetSendEnabled "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSetSendEnabled'authority
           (\ x__ y__ -> x__ {_MsgSetSendEnabled'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSetSendEnabled "sendEnabled" [Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSetSendEnabled'sendEnabled
           (\ x__ y__ -> x__ {_MsgSetSendEnabled'sendEnabled = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSetSendEnabled "vec'sendEnabled" (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSetSendEnabled'sendEnabled
           (\ x__ y__ -> x__ {_MsgSetSendEnabled'sendEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSetSendEnabled "useDefaultFor" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSetSendEnabled'useDefaultFor
           (\ x__ y__ -> x__ {_MsgSetSendEnabled'useDefaultFor = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSetSendEnabled "vec'useDefaultFor" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSetSendEnabled'useDefaultFor
           (\ x__ y__ -> x__ {_MsgSetSendEnabled'useDefaultFor = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSetSendEnabled where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.MsgSetSendEnabled"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgSetSendEnabled\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\fsend_enabled\CAN\STX \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabled\DC2&\n\
      \\SIuse_default_for\CAN\ETX \ETX(\tR\ruseDefaultFor:/\130\231\176*\tauthority\138\231\176*\FScosmos-sdk/MsgSetSendEnabled"
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
              Data.ProtoLens.FieldDescriptor MsgSetSendEnabled
        sendEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "send_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sendEnabled")) ::
              Data.ProtoLens.FieldDescriptor MsgSetSendEnabled
        useDefaultFor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_default_for"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"useDefaultFor")) ::
              Data.ProtoLens.FieldDescriptor MsgSetSendEnabled
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, sendEnabled__field_descriptor),
           (Data.ProtoLens.Tag 3, useDefaultFor__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSetSendEnabled'_unknownFields
        (\ x__ y__ -> x__ {_MsgSetSendEnabled'_unknownFields = y__})
  defMessage
    = MsgSetSendEnabled'_constructor
        {_MsgSetSendEnabled'authority = Data.ProtoLens.fieldDefault,
         _MsgSetSendEnabled'sendEnabled = Data.Vector.Generic.empty,
         _MsgSetSendEnabled'useDefaultFor = Data.Vector.Generic.empty,
         _MsgSetSendEnabled'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSetSendEnabled
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser MsgSetSendEnabled
        loop x mutable'sendEnabled mutable'useDefaultFor
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'sendEnabled)
                      frozen'useDefaultFor <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'useDefaultFor)
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
                              (Data.ProtoLens.Field.field @"vec'sendEnabled") frozen'sendEnabled
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'useDefaultFor")
                                 frozen'useDefaultFor x)))
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
                                  mutable'sendEnabled mutable'useDefaultFor
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "send_enabled"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sendEnabled y)
                                loop x v mutable'useDefaultFor
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "use_default_for"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'useDefaultFor y)
                                loop x mutable'sendEnabled v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'sendEnabled mutable'useDefaultFor
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'useDefaultFor <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'sendEnabled
                mutable'useDefaultFor)
          "MsgSetSendEnabled"
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
                      (Data.ProtoLens.Field.field @"vec'sendEnabled") _x))
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
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'useDefaultFor") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgSetSendEnabled where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSetSendEnabled'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSetSendEnabled'authority x__)
                (Control.DeepSeq.deepseq
                   (_MsgSetSendEnabled'sendEnabled x__)
                   (Control.DeepSeq.deepseq
                      (_MsgSetSendEnabled'useDefaultFor x__) ())))
{- | Fields :
      -}
data MsgSetSendEnabledResponse
  = MsgSetSendEnabledResponse'_constructor {_MsgSetSendEnabledResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSetSendEnabledResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgSetSendEnabledResponse where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.MsgSetSendEnabledResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgSetSendEnabledResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSetSendEnabledResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgSetSendEnabledResponse'_unknownFields = y__})
  defMessage
    = MsgSetSendEnabledResponse'_constructor
        {_MsgSetSendEnabledResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSetSendEnabledResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSetSendEnabledResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgSetSendEnabledResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgSetSendEnabledResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSetSendEnabledResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Cosmos.Bank.V1beta1.Bank.Params@
         * 'Proto.Cosmos.Bank.V1beta1.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params),
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
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Cosmos.Bank.V1beta1.Bank.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
      \\ACKparams\CAN\STX \SOH(\v2\ESC.cosmos.bank.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:4\130\231\176*\tauthority\138\231\176*!cosmos-sdk/x/bank/MsgUpdateParams"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Params)
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
    = Data.Text.pack "cosmos.bank.v1beta1.MsgUpdateParamsResponse"
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
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.bank.v1beta1"
  type ServiceMethods Msg = '["multiSend",
                              "send",
                              "setSendEnabled",
                              "updateParams"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2J\n\
      \\EOTSend\DC2\FS.cosmos.bank.v1beta1.MsgSend\SUB$.cosmos.bank.v1beta1.MsgSendResponse\DC2Y\n\
      \\tMultiSend\DC2!.cosmos.bank.v1beta1.MsgMultiSend\SUB).cosmos.bank.v1beta1.MsgMultiSendResponse\DC2b\n\
      \\fUpdateParams\DC2$.cosmos.bank.v1beta1.MsgUpdateParams\SUB,.cosmos.bank.v1beta1.MsgUpdateParamsResponse\DC2h\n\
      \\SOSetSendEnabled\DC2&.cosmos.bank.v1beta1.MsgSetSendEnabled\SUB..cosmos.bank.v1beta1.MsgSetSendEnabledResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "send" where
  type MethodName Msg "send" = "Send"
  type MethodInput Msg "send" = MsgSend
  type MethodOutput Msg "send" = MsgSendResponse
  type MethodStreamingType Msg "send" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "multiSend" where
  type MethodName Msg "multiSend" = "MultiSend"
  type MethodInput Msg "multiSend" = MsgMultiSend
  type MethodOutput Msg "multiSend" = MsgMultiSendResponse
  type MethodStreamingType Msg "multiSend" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "setSendEnabled" where
  type MethodName Msg "setSendEnabled" = "SetSendEnabled"
  type MethodInput Msg "setSendEnabled" = MsgSetSendEnabled
  type MethodOutput Msg "setSendEnabled" = MsgSetSendEnabledResponse
  type MethodStreamingType Msg "setSendEnabled" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FScosmos/bank/v1beta1/tx.proto\DC2\DC3cosmos.bank.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\RScosmos/bank/v1beta1/bank.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\172\STX\n\
    \\aMsgSend\DC2;\n\
    \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \to_address\CAN\STX \SOH(\tR\ttoAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2y\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:0\136\160\US\NUL\232\160\US\NUL\130\231\176*\ffrom_address\138\231\176*\DC2cosmos-sdk/MsgSend\"\DC1\n\
    \\SIMsgSendResponse\"\188\SOH\n\
    \\fMsgMultiSend\DC2=\n\
    \\ACKinputs\CAN\SOH \ETX(\v2\SUB.cosmos.bank.v1beta1.InputR\ACKinputsB\t\200\222\US\NUL\168\231\176*\SOH\DC2@\n\
    \\aoutputs\CAN\STX \ETX(\v2\ESC.cosmos.bank.v1beta1.OutputR\aoutputsB\t\200\222\US\NUL\168\231\176*\SOH:+\232\160\US\NUL\130\231\176*\ACKinputs\138\231\176*\ETBcosmos-sdk/MsgMultiSend\"\SYN\n\
    \\DC4MsgMultiSendResponse\"\191\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
    \\ACKparams\CAN\STX \SOH(\v2\ESC.cosmos.bank.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:4\130\231\176*\tauthority\138\231\176*!cosmos-sdk/x/bank/MsgUpdateParams\"\EM\n\
    \\ETBMsgUpdateParamsResponse\"\233\SOH\n\
    \\DC1MsgSetSendEnabled\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\fsend_enabled\CAN\STX \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabled\DC2&\n\
    \\SIuse_default_for\CAN\ETX \ETX(\tR\ruseDefaultFor:/\130\231\176*\tauthority\138\231\176*\FScosmos-sdk/MsgSetSendEnabled\"\ESC\n\
    \\EMMsgSetSendEnabledResponse2\129\ETX\n\
    \\ETXMsg\DC2J\n\
    \\EOTSend\DC2\FS.cosmos.bank.v1beta1.MsgSend\SUB$.cosmos.bank.v1beta1.MsgSendResponse\DC2Y\n\
    \\tMultiSend\DC2!.cosmos.bank.v1beta1.MsgMultiSend\SUB).cosmos.bank.v1beta1.MsgMultiSendResponse\DC2b\n\
    \\fUpdateParams\DC2$.cosmos.bank.v1beta1.MsgUpdateParams\SUB,.cosmos.bank.v1beta1.MsgUpdateParamsResponse\DC2h\n\
    \\SOSetSendEnabled\DC2&.cosmos.bank.v1beta1.MsgSetSendEnabled\SUB..cosmos.bank.v1beta1.MsgSetSendEnabledResponse\SUB\ENQ\128\231\176*\SOHB+Z)github.com/cosmos/cosmos-sdk/x/bank/typesJ\219\RS\n\
    \\ACK\DC2\EOT\NUL\NULz$\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL!\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NUL@\n\
    \/\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL#\SOH\SUB# Msg defines the bank Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SO\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\SO\STX(\n\
    \[\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC1\STX.\SUBN Send defines a method for sending coins from one account to another account.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC1\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC1\v\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC1\GS,\n\
    \a\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DC4\STX=\SUBT MultiSend defines a method for sending coins from some accounts to other accounts.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC4\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC4\DLE\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC4';\n\
    \\168\SOH\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\SUB\STXF\SUB\154\SOH UpdateParams defines a governance operation for updating the x/bank module parameters.\n\
    \ The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\SUB\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\SUB\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\SUB-D\n\
    \\175\STX\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\"\STXL\SUB\161\STX SetSendEnabled is a governance operation for setting the SendEnabled flag\n\
    \ on any number of Denoms. Only the entries to add or update should be\n\
    \ included. Entries that already exist in the store, but that aren't\n\
    \ included in this message, will be left unchanged.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\"\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\"\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\"1J\n\
    \U\n\
    \\STX\EOT\NUL\DC2\EOT&\NUL5\SOH\SUBI MsgSend represents a message to send coins from one account to another.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX&\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX'\STX1\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX'\STX1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX(\STX7\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX(\STX7\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX*\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX*\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX+\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX+\STX-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX-\STX`\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX-\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX--.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX-/_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX-0^\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX.\STX`\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX.\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX.-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX./_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX.0^\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT/\STX4\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX/\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX/$*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX/-.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT//4\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX0\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX1\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\243\140\166\ENQ\DC2\ETX2\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\245\251\ETX\DC2\ETX3\EOTI\n\
    \@\n\
    \\STX\EOT\SOH\DC2\ETX8\NUL\SUB\SUB5 MsgSendResponse defines the Msg/Send response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX8\b\ETB\n\
    \T\n\
    \\STX\EOT\STX\DC2\EOT;\NULE\SOH\SUBH MsgMultiSend represents an arbitrary multi-in, multi-out send message.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX;\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX<\STX+\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX<\STX+\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX=\STX<\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX=\STX<\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX?\STX#\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETX?\STX#\n\
    \\128\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXC\STX\\\SUBs Inputs, despite being `repeated`, only allows one sender input. This is\n\
    \ checked in MsgMultiSend's ValidateBasic.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXC\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXC\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXC\RS[\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\233\251\ETX\DC2\ETXC\US;\n\
    \\DLE\n\
    \\t\EOT\STX\STX\NUL\b\245\140\166\ENQ\DC2\ETXC=Z\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXD\STX\\\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXD\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXD\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXD\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXD\RS[\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETXD\US;\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\245\140\166\ENQ\DC2\ETXD=Z\n\
    \J\n\
    \\STX\EOT\ETX\DC2\ETXH\NUL\US\SUB? MsgMultiSendResponse defines the Msg/MultiSend response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXH\b\FS\n\
    \\\\n\
    \\STX\EOT\EOT\DC2\EOTM\NULX\SOH\SUBP MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXM\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXN\STX.\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXN\STX.\n\
    \h\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXQ\STXK\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXQ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXQ\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXQ\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXQ\SUBJ\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXQ\ESCI\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXR\STX<\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXR\STX<\n\
    \g\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXW\STXR\SUBZ params defines the x/bank parameters to update.\n\
    \\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXW\t\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXW\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXW\DC4Q\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\233\251\ETX\DC2\ETXW\NAK1\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\SOH\b\245\140\166\ENQ\DC2\ETXW3P\n\
    \\134\SOH\n\
    \\STX\EOT\ENQ\DC2\ETX^\NUL\"\SUB{ MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX^\b\US\n\
    \\243\SOH\n\
    \\STX\EOT\ACK\DC2\EOTg\NULu\SOH\SUB\230\SOH MsgSetSendEnabled is the Msg/SetSendEnabled request type.\n\
    \\n\
    \ Only entries to add/update/delete need to be included.\n\
    \ Existing SendEnabled entries that are not included in this\n\
    \ message are left unchanged.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXg\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXh\STX.\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETXh\STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXi\STXA\n\
    \\SO\n\
    \\a\EOT\ACK\a\241\140\166\ENQ\DC2\ETXi\STXA\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXk\STXH\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXk\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXk\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXk\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXk\ETBG\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\ETXk\CANF\n\
    \D\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXn\STX(\SUB7 send_enabled is the list of entries to add or update.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXn\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXn\ETB#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXn&'\n\
    \\255\SOH\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXt\STX&\SUB\241\SOH use_default_for is a list of denoms that should use the params.default_send_enabled value.\n\
    \ Denoms listed here will have their SendEnabled entries deleted.\n\
    \ If a denom is included that doesn't have a SendEnabled entry,\n\
    \ it will be ignored.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETXt\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXt\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXt\DC2!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXt$%\n\
    \m\n\
    \\STX\EOT\a\DC2\ETXz\NUL$\SUBb MsgSetSendEnabledResponse defines the Msg/SetSendEnabled response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXz\b!b\ACKproto3"