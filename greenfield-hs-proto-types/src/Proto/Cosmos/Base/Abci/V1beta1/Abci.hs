{- This file was auto-generated from cosmos/base/abci/v1beta1/abci.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Abci.V1beta1.Abci (
        ABCIMessageLog(), Attribute(), GasInfo(), MsgData(), Result(),
        SearchBlocksResult(), SearchTxsResult(), SimulationResponse(),
        StringEvent(), TxMsgData(), TxResponse()
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Tendermint.Abci.Types
import qualified Proto.Tendermint.Types.Block
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.msgIndex' @:: Lens' ABCIMessageLog Data.Word.Word32@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.log' @:: Lens' ABCIMessageLog Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.events' @:: Lens' ABCIMessageLog [StringEvent]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'events' @:: Lens' ABCIMessageLog (Data.Vector.Vector StringEvent)@ -}
data ABCIMessageLog
  = ABCIMessageLog'_constructor {_ABCIMessageLog'msgIndex :: !Data.Word.Word32,
                                 _ABCIMessageLog'log :: !Data.Text.Text,
                                 _ABCIMessageLog'events :: !(Data.Vector.Vector StringEvent),
                                 _ABCIMessageLog'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ABCIMessageLog where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ABCIMessageLog "msgIndex" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIMessageLog'msgIndex
           (\ x__ y__ -> x__ {_ABCIMessageLog'msgIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIMessageLog "log" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIMessageLog'log (\ x__ y__ -> x__ {_ABCIMessageLog'log = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIMessageLog "events" [StringEvent] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIMessageLog'events
           (\ x__ y__ -> x__ {_ABCIMessageLog'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ABCIMessageLog "vec'events" (Data.Vector.Vector StringEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIMessageLog'events
           (\ x__ y__ -> x__ {_ABCIMessageLog'events = y__}))
        Prelude.id
instance Data.ProtoLens.Message ABCIMessageLog where
  messageName _
    = Data.Text.pack "cosmos.base.abci.v1beta1.ABCIMessageLog"
  packedMessageDescriptor _
    = "\n\
      \\SOABCIMessageLog\DC2*\n\
      \\tmsg_index\CAN\SOH \SOH(\rR\bmsgIndexB\r\234\222\US\tmsg_index\DC2\DLE\n\
      \\ETXlog\CAN\STX \SOH(\tR\ETXlog\DC2S\n\
      \\ACKevents\CAN\ETX \ETX(\v2%.cosmos.base.abci.v1beta1.StringEventR\ACKeventsB\DC4\200\222\US\NUL\170\223\US\fStringEvents:\EOT\128\220 \SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        msgIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"msgIndex")) ::
              Data.ProtoLens.FieldDescriptor ABCIMessageLog
        log__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"log")) ::
              Data.ProtoLens.FieldDescriptor ABCIMessageLog
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StringEvent)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor ABCIMessageLog
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, msgIndex__field_descriptor),
           (Data.ProtoLens.Tag 2, log__field_descriptor),
           (Data.ProtoLens.Tag 3, events__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ABCIMessageLog'_unknownFields
        (\ x__ y__ -> x__ {_ABCIMessageLog'_unknownFields = y__})
  defMessage
    = ABCIMessageLog'_constructor
        {_ABCIMessageLog'msgIndex = Data.ProtoLens.fieldDefault,
         _ABCIMessageLog'log = Data.ProtoLens.fieldDefault,
         _ABCIMessageLog'events = Data.Vector.Generic.empty,
         _ABCIMessageLog'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ABCIMessageLog
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StringEvent
             -> Data.ProtoLens.Encoding.Bytes.Parser ABCIMessageLog
        loop x mutable'events
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'events)
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
                              (Data.ProtoLens.Field.field @"vec'events") frozen'events x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "msg_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"msgIndex") y x)
                                  mutable'events
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
                                       "log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y x)
                                  mutable'events
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'events
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'events)
          "ABCIMessageLog"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"msgIndex") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ABCIMessageLog where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ABCIMessageLog'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ABCIMessageLog'msgIndex x__)
                (Control.DeepSeq.deepseq
                   (_ABCIMessageLog'log x__)
                   (Control.DeepSeq.deepseq (_ABCIMessageLog'events x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.key' @:: Lens' Attribute Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.value' @:: Lens' Attribute Data.Text.Text@ -}
data Attribute
  = Attribute'_constructor {_Attribute'key :: !Data.Text.Text,
                            _Attribute'value :: !Data.Text.Text,
                            _Attribute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Attribute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Attribute "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Attribute'key (\ x__ y__ -> x__ {_Attribute'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Attribute "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Attribute'value (\ x__ y__ -> x__ {_Attribute'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Attribute where
  messageName _ = Data.Text.pack "cosmos.base.abci.v1beta1.Attribute"
  packedMessageDescriptor _
    = "\n\
      \\tAttribute\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Attribute
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Attribute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Attribute'_unknownFields
        (\ x__ y__ -> x__ {_Attribute'_unknownFields = y__})
  defMessage
    = Attribute'_constructor
        {_Attribute'key = Data.ProtoLens.fieldDefault,
         _Attribute'value = Data.ProtoLens.fieldDefault,
         _Attribute'_unknownFields = []}
  parseMessage
    = let
        loop :: Attribute -> Data.ProtoLens.Encoding.Bytes.Parser Attribute
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Attribute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData Attribute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Attribute'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Attribute'key x__)
                (Control.DeepSeq.deepseq (_Attribute'value x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.gasWanted' @:: Lens' GasInfo Data.Word.Word64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.gasUsed' @:: Lens' GasInfo Data.Word.Word64@ -}
data GasInfo
  = GasInfo'_constructor {_GasInfo'gasWanted :: !Data.Word.Word64,
                          _GasInfo'gasUsed :: !Data.Word.Word64,
                          _GasInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GasInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GasInfo "gasWanted" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GasInfo'gasWanted (\ x__ y__ -> x__ {_GasInfo'gasWanted = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GasInfo "gasUsed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GasInfo'gasUsed (\ x__ y__ -> x__ {_GasInfo'gasUsed = y__}))
        Prelude.id
instance Data.ProtoLens.Message GasInfo where
  messageName _ = Data.Text.pack "cosmos.base.abci.v1beta1.GasInfo"
  packedMessageDescriptor _
    = "\n\
      \\aGasInfo\DC2\GS\n\
      \\n\
      \gas_wanted\CAN\SOH \SOH(\EOTR\tgasWanted\DC2\EM\n\
      \\bgas_used\CAN\STX \SOH(\EOTR\agasUsed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gasWanted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_wanted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gasWanted")) ::
              Data.ProtoLens.FieldDescriptor GasInfo
        gasUsed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_used"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"gasUsed")) ::
              Data.ProtoLens.FieldDescriptor GasInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gasWanted__field_descriptor),
           (Data.ProtoLens.Tag 2, gasUsed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GasInfo'_unknownFields
        (\ x__ y__ -> x__ {_GasInfo'_unknownFields = y__})
  defMessage
    = GasInfo'_constructor
        {_GasInfo'gasWanted = Data.ProtoLens.fieldDefault,
         _GasInfo'gasUsed = Data.ProtoLens.fieldDefault,
         _GasInfo'_unknownFields = []}
  parseMessage
    = let
        loop :: GasInfo -> Data.ProtoLens.Encoding.Bytes.Parser GasInfo
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "gas_wanted"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasWanted") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "gas_used"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gasUsed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GasInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gasWanted") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gasUsed") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GasInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GasInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GasInfo'gasWanted x__)
                (Control.DeepSeq.deepseq (_GasInfo'gasUsed x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.msgType' @:: Lens' MsgData Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.data'' @:: Lens' MsgData Data.ByteString.ByteString@ -}
data MsgData
  = MsgData'_constructor {_MsgData'msgType :: !Data.Text.Text,
                          _MsgData'data' :: !Data.ByteString.ByteString,
                          _MsgData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgData "msgType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgData'msgType (\ x__ y__ -> x__ {_MsgData'msgType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgData "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgData'data' (\ x__ y__ -> x__ {_MsgData'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgData where
  messageName _ = Data.Text.pack "cosmos.base.abci.v1beta1.MsgData"
  packedMessageDescriptor _
    = "\n\
      \\aMsgData\DC2\EM\n\
      \\bmsg_type\CAN\SOH \SOH(\tR\amsgType\DC2\DC2\n\
      \\EOTdata\CAN\STX \SOH(\fR\EOTdata:\ACK\CAN\SOH\128\220 \SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        msgType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"msgType")) ::
              Data.ProtoLens.FieldDescriptor MsgData
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor MsgData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, msgType__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgData'_unknownFields
        (\ x__ y__ -> x__ {_MsgData'_unknownFields = y__})
  defMessage
    = MsgData'_constructor
        {_MsgData'msgType = Data.ProtoLens.fieldDefault,
         _MsgData'data' = Data.ProtoLens.fieldDefault,
         _MsgData'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgData -> Data.ProtoLens.Encoding.Bytes.Parser MsgData
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
                                       "msg_type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"msgType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"msgType") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
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
instance Control.DeepSeq.NFData MsgData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgData'msgType x__)
                (Control.DeepSeq.deepseq (_MsgData'data' x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.data'' @:: Lens' Result Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.log' @:: Lens' Result Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.events' @:: Lens' Result [Proto.Tendermint.Abci.Types.Event]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'events' @:: Lens' Result (Data.Vector.Vector Proto.Tendermint.Abci.Types.Event)@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.msgResponses' @:: Lens' Result [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'msgResponses' @:: Lens' Result (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data Result
  = Result'_constructor {_Result'data' :: !Data.ByteString.ByteString,
                         _Result'log :: !Data.Text.Text,
                         _Result'events :: !(Data.Vector.Vector Proto.Tendermint.Abci.Types.Event),
                         _Result'msgResponses :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                         _Result'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Result where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Result "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Result'data' (\ x__ y__ -> x__ {_Result'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Result "log" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Result'log (\ x__ y__ -> x__ {_Result'log = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Result "events" [Proto.Tendermint.Abci.Types.Event] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Result'events (\ x__ y__ -> x__ {_Result'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Result "vec'events" (Data.Vector.Vector Proto.Tendermint.Abci.Types.Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Result'events (\ x__ y__ -> x__ {_Result'events = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Result "msgResponses" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Result'msgResponses
           (\ x__ y__ -> x__ {_Result'msgResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Result "vec'msgResponses" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Result'msgResponses
           (\ x__ y__ -> x__ {_Result'msgResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Message Result where
  messageName _ = Data.Text.pack "cosmos.base.abci.v1beta1.Result"
  packedMessageDescriptor _
    = "\n\
      \\ACKResult\DC2\SYN\n\
      \\EOTdata\CAN\SOH \SOH(\fR\EOTdataB\STX\CAN\SOH\DC2\DLE\n\
      \\ETXlog\CAN\STX \SOH(\tR\ETXlog\DC24\n\
      \\ACKevents\CAN\ETX \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\EOT\200\222\US\NUL\DC29\n\
      \\rmsg_responses\CAN\EOT \ETX(\v2\DC4.google.protobuf.AnyR\fmsgResponses:\EOT\136\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor Result
        log__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"log")) ::
              Data.ProtoLens.FieldDescriptor Result
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.Event)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor Result
        msgResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"msgResponses")) ::
              Data.ProtoLens.FieldDescriptor Result
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, data'__field_descriptor),
           (Data.ProtoLens.Tag 2, log__field_descriptor),
           (Data.ProtoLens.Tag 3, events__field_descriptor),
           (Data.ProtoLens.Tag 4, msgResponses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Result'_unknownFields
        (\ x__ y__ -> x__ {_Result'_unknownFields = y__})
  defMessage
    = Result'_constructor
        {_Result'data' = Data.ProtoLens.fieldDefault,
         _Result'log = Data.ProtoLens.fieldDefault,
         _Result'events = Data.Vector.Generic.empty,
         _Result'msgResponses = Data.Vector.Generic.empty,
         _Result'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Result
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Tendermint.Abci.Types.Event
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
                -> Data.ProtoLens.Encoding.Bytes.Parser Result
        loop x mutable'events mutable'msgResponses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'events)
                      frozen'msgResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'msgResponses)
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
                              (Data.ProtoLens.Field.field @"vec'events") frozen'events
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'msgResponses")
                                 frozen'msgResponses x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                                  mutable'events mutable'msgResponses
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
                                       "log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y x)
                                  mutable'events mutable'msgResponses
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v mutable'msgResponses
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "msg_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'msgResponses y)
                                loop x mutable'events v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'events mutable'msgResponses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'msgResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'events mutable'msgResponses)
          "Result"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
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
                            (Data.ProtoLens.Field.field @"vec'msgResponses") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Result where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Result'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Result'data' x__)
                (Control.DeepSeq.deepseq
                   (_Result'log x__)
                   (Control.DeepSeq.deepseq
                      (_Result'events x__)
                      (Control.DeepSeq.deepseq (_Result'msgResponses x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.totalCount' @:: Lens' SearchBlocksResult Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.count' @:: Lens' SearchBlocksResult Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.pageNumber' @:: Lens' SearchBlocksResult Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.pageTotal' @:: Lens' SearchBlocksResult Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.limit' @:: Lens' SearchBlocksResult Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.blocks' @:: Lens' SearchBlocksResult [Proto.Tendermint.Types.Block.Block]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'blocks' @:: Lens' SearchBlocksResult (Data.Vector.Vector Proto.Tendermint.Types.Block.Block)@ -}
data SearchBlocksResult
  = SearchBlocksResult'_constructor {_SearchBlocksResult'totalCount :: !Data.Int.Int64,
                                     _SearchBlocksResult'count :: !Data.Int.Int64,
                                     _SearchBlocksResult'pageNumber :: !Data.Int.Int64,
                                     _SearchBlocksResult'pageTotal :: !Data.Int.Int64,
                                     _SearchBlocksResult'limit :: !Data.Int.Int64,
                                     _SearchBlocksResult'blocks :: !(Data.Vector.Vector Proto.Tendermint.Types.Block.Block),
                                     _SearchBlocksResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SearchBlocksResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SearchBlocksResult "totalCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchBlocksResult'totalCount
           (\ x__ y__ -> x__ {_SearchBlocksResult'totalCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchBlocksResult "count" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchBlocksResult'count
           (\ x__ y__ -> x__ {_SearchBlocksResult'count = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchBlocksResult "pageNumber" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchBlocksResult'pageNumber
           (\ x__ y__ -> x__ {_SearchBlocksResult'pageNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchBlocksResult "pageTotal" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchBlocksResult'pageTotal
           (\ x__ y__ -> x__ {_SearchBlocksResult'pageTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchBlocksResult "limit" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchBlocksResult'limit
           (\ x__ y__ -> x__ {_SearchBlocksResult'limit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchBlocksResult "blocks" [Proto.Tendermint.Types.Block.Block] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchBlocksResult'blocks
           (\ x__ y__ -> x__ {_SearchBlocksResult'blocks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SearchBlocksResult "vec'blocks" (Data.Vector.Vector Proto.Tendermint.Types.Block.Block) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchBlocksResult'blocks
           (\ x__ y__ -> x__ {_SearchBlocksResult'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Message SearchBlocksResult where
  messageName _
    = Data.Text.pack "cosmos.base.abci.v1beta1.SearchBlocksResult"
  packedMessageDescriptor _
    = "\n\
      \\DC2SearchBlocksResult\DC2\US\n\
      \\vtotal_count\CAN\SOH \SOH(\ETXR\n\
      \totalCount\DC2\DC4\n\
      \\ENQcount\CAN\STX \SOH(\ETXR\ENQcount\DC2\US\n\
      \\vpage_number\CAN\ETX \SOH(\ETXR\n\
      \pageNumber\DC2\GS\n\
      \\n\
      \page_total\CAN\EOT \SOH(\ETXR\tpageTotal\DC2\DC4\n\
      \\ENQlimit\CAN\ENQ \SOH(\ETXR\ENQlimit\DC2/\n\
      \\ACKblocks\CAN\ACK \ETX(\v2\ETB.tendermint.types.BlockR\ACKblocks:\EOT\128\220 \SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        totalCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalCount")) ::
              Data.ProtoLens.FieldDescriptor SearchBlocksResult
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"count")) ::
              Data.ProtoLens.FieldDescriptor SearchBlocksResult
        pageNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pageNumber")) ::
              Data.ProtoLens.FieldDescriptor SearchBlocksResult
        pageTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pageTotal")) ::
              Data.ProtoLens.FieldDescriptor SearchBlocksResult
        limit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"limit")) ::
              Data.ProtoLens.FieldDescriptor SearchBlocksResult
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Block.Block)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"blocks")) ::
              Data.ProtoLens.FieldDescriptor SearchBlocksResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, totalCount__field_descriptor),
           (Data.ProtoLens.Tag 2, count__field_descriptor),
           (Data.ProtoLens.Tag 3, pageNumber__field_descriptor),
           (Data.ProtoLens.Tag 4, pageTotal__field_descriptor),
           (Data.ProtoLens.Tag 5, limit__field_descriptor),
           (Data.ProtoLens.Tag 6, blocks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SearchBlocksResult'_unknownFields
        (\ x__ y__ -> x__ {_SearchBlocksResult'_unknownFields = y__})
  defMessage
    = SearchBlocksResult'_constructor
        {_SearchBlocksResult'totalCount = Data.ProtoLens.fieldDefault,
         _SearchBlocksResult'count = Data.ProtoLens.fieldDefault,
         _SearchBlocksResult'pageNumber = Data.ProtoLens.fieldDefault,
         _SearchBlocksResult'pageTotal = Data.ProtoLens.fieldDefault,
         _SearchBlocksResult'limit = Data.ProtoLens.fieldDefault,
         _SearchBlocksResult'blocks = Data.Vector.Generic.empty,
         _SearchBlocksResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SearchBlocksResult
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Tendermint.Types.Block.Block
             -> Data.ProtoLens.Encoding.Bytes.Parser SearchBlocksResult
        loop x mutable'blocks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'blocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'blocks)
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
                              (Data.ProtoLens.Field.field @"vec'blocks") frozen'blocks x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"totalCount") y x)
                                  mutable'blocks
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
                                  mutable'blocks
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "page_number"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pageNumber") y x)
                                  mutable'blocks
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "page_total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pageTotal") y x)
                                  mutable'blocks
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"limit") y x)
                                  mutable'blocks
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "blocks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'blocks y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'blocks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'blocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'blocks)
          "SearchBlocksResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"totalCount") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"count") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"pageNumber") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"pageTotal") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"limit") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'blocks") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData SearchBlocksResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SearchBlocksResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SearchBlocksResult'totalCount x__)
                (Control.DeepSeq.deepseq
                   (_SearchBlocksResult'count x__)
                   (Control.DeepSeq.deepseq
                      (_SearchBlocksResult'pageNumber x__)
                      (Control.DeepSeq.deepseq
                         (_SearchBlocksResult'pageTotal x__)
                         (Control.DeepSeq.deepseq
                            (_SearchBlocksResult'limit x__)
                            (Control.DeepSeq.deepseq (_SearchBlocksResult'blocks x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.totalCount' @:: Lens' SearchTxsResult Data.Word.Word64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.count' @:: Lens' SearchTxsResult Data.Word.Word64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.pageNumber' @:: Lens' SearchTxsResult Data.Word.Word64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.pageTotal' @:: Lens' SearchTxsResult Data.Word.Word64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.limit' @:: Lens' SearchTxsResult Data.Word.Word64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.txs' @:: Lens' SearchTxsResult [TxResponse]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'txs' @:: Lens' SearchTxsResult (Data.Vector.Vector TxResponse)@ -}
data SearchTxsResult
  = SearchTxsResult'_constructor {_SearchTxsResult'totalCount :: !Data.Word.Word64,
                                  _SearchTxsResult'count :: !Data.Word.Word64,
                                  _SearchTxsResult'pageNumber :: !Data.Word.Word64,
                                  _SearchTxsResult'pageTotal :: !Data.Word.Word64,
                                  _SearchTxsResult'limit :: !Data.Word.Word64,
                                  _SearchTxsResult'txs :: !(Data.Vector.Vector TxResponse),
                                  _SearchTxsResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SearchTxsResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SearchTxsResult "totalCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchTxsResult'totalCount
           (\ x__ y__ -> x__ {_SearchTxsResult'totalCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchTxsResult "count" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchTxsResult'count
           (\ x__ y__ -> x__ {_SearchTxsResult'count = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchTxsResult "pageNumber" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchTxsResult'pageNumber
           (\ x__ y__ -> x__ {_SearchTxsResult'pageNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchTxsResult "pageTotal" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchTxsResult'pageTotal
           (\ x__ y__ -> x__ {_SearchTxsResult'pageTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchTxsResult "limit" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchTxsResult'limit
           (\ x__ y__ -> x__ {_SearchTxsResult'limit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SearchTxsResult "txs" [TxResponse] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchTxsResult'txs
           (\ x__ y__ -> x__ {_SearchTxsResult'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SearchTxsResult "vec'txs" (Data.Vector.Vector TxResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SearchTxsResult'txs
           (\ x__ y__ -> x__ {_SearchTxsResult'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Message SearchTxsResult where
  messageName _
    = Data.Text.pack "cosmos.base.abci.v1beta1.SearchTxsResult"
  packedMessageDescriptor _
    = "\n\
      \\SISearchTxsResult\DC2\US\n\
      \\vtotal_count\CAN\SOH \SOH(\EOTR\n\
      \totalCount\DC2\DC4\n\
      \\ENQcount\CAN\STX \SOH(\EOTR\ENQcount\DC2\US\n\
      \\vpage_number\CAN\ETX \SOH(\EOTR\n\
      \pageNumber\DC2\GS\n\
      \\n\
      \page_total\CAN\EOT \SOH(\EOTR\tpageTotal\DC2\DC4\n\
      \\ENQlimit\CAN\ENQ \SOH(\EOTR\ENQlimit\DC26\n\
      \\ETXtxs\CAN\ACK \ETX(\v2$.cosmos.base.abci.v1beta1.TxResponseR\ETXtxs:\EOT\128\220 \SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        totalCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalCount")) ::
              Data.ProtoLens.FieldDescriptor SearchTxsResult
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"count")) ::
              Data.ProtoLens.FieldDescriptor SearchTxsResult
        pageNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pageNumber")) ::
              Data.ProtoLens.FieldDescriptor SearchTxsResult
        pageTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pageTotal")) ::
              Data.ProtoLens.FieldDescriptor SearchTxsResult
        limit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"limit")) ::
              Data.ProtoLens.FieldDescriptor SearchTxsResult
        txs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "txs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxResponse)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"txs")) ::
              Data.ProtoLens.FieldDescriptor SearchTxsResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, totalCount__field_descriptor),
           (Data.ProtoLens.Tag 2, count__field_descriptor),
           (Data.ProtoLens.Tag 3, pageNumber__field_descriptor),
           (Data.ProtoLens.Tag 4, pageTotal__field_descriptor),
           (Data.ProtoLens.Tag 5, limit__field_descriptor),
           (Data.ProtoLens.Tag 6, txs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SearchTxsResult'_unknownFields
        (\ x__ y__ -> x__ {_SearchTxsResult'_unknownFields = y__})
  defMessage
    = SearchTxsResult'_constructor
        {_SearchTxsResult'totalCount = Data.ProtoLens.fieldDefault,
         _SearchTxsResult'count = Data.ProtoLens.fieldDefault,
         _SearchTxsResult'pageNumber = Data.ProtoLens.fieldDefault,
         _SearchTxsResult'pageTotal = Data.ProtoLens.fieldDefault,
         _SearchTxsResult'limit = Data.ProtoLens.fieldDefault,
         _SearchTxsResult'txs = Data.Vector.Generic.empty,
         _SearchTxsResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SearchTxsResult
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TxResponse
             -> Data.ProtoLens.Encoding.Bytes.Parser SearchTxsResult
        loop x mutable'txs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'txs)
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
                              (Data.ProtoLens.Field.field @"vec'txs") frozen'txs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"totalCount") y x)
                                  mutable'txs
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
                                  mutable'txs
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page_number"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pageNumber") y x)
                                  mutable'txs
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page_total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pageTotal") y x)
                                  mutable'txs
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"limit") y x)
                                  mutable'txs
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "txs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'txs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'txs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'txs)
          "SearchTxsResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"totalCount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"count") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"pageNumber") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"pageTotal") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"limit") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'txs") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData SearchTxsResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SearchTxsResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SearchTxsResult'totalCount x__)
                (Control.DeepSeq.deepseq
                   (_SearchTxsResult'count x__)
                   (Control.DeepSeq.deepseq
                      (_SearchTxsResult'pageNumber x__)
                      (Control.DeepSeq.deepseq
                         (_SearchTxsResult'pageTotal x__)
                         (Control.DeepSeq.deepseq
                            (_SearchTxsResult'limit x__)
                            (Control.DeepSeq.deepseq (_SearchTxsResult'txs x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.gasInfo' @:: Lens' SimulationResponse GasInfo@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.maybe'gasInfo' @:: Lens' SimulationResponse (Prelude.Maybe GasInfo)@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.result' @:: Lens' SimulationResponse Result@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.maybe'result' @:: Lens' SimulationResponse (Prelude.Maybe Result)@ -}
data SimulationResponse
  = SimulationResponse'_constructor {_SimulationResponse'gasInfo :: !(Prelude.Maybe GasInfo),
                                     _SimulationResponse'result :: !(Prelude.Maybe Result),
                                     _SimulationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SimulationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SimulationResponse "gasInfo" GasInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulationResponse'gasInfo
           (\ x__ y__ -> x__ {_SimulationResponse'gasInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SimulationResponse "maybe'gasInfo" (Prelude.Maybe GasInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulationResponse'gasInfo
           (\ x__ y__ -> x__ {_SimulationResponse'gasInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SimulationResponse "result" Result where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulationResponse'result
           (\ x__ y__ -> x__ {_SimulationResponse'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SimulationResponse "maybe'result" (Prelude.Maybe Result) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulationResponse'result
           (\ x__ y__ -> x__ {_SimulationResponse'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message SimulationResponse where
  messageName _
    = Data.Text.pack "cosmos.base.abci.v1beta1.SimulationResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2SimulationResponse\DC2F\n\
      \\bgas_info\CAN\SOH \SOH(\v2!.cosmos.base.abci.v1beta1.GasInfoR\agasInfoB\b\200\222\US\NUL\208\222\US\SOH\DC28\n\
      \\ACKresult\CAN\STX \SOH(\v2 .cosmos.base.abci.v1beta1.ResultR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gasInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GasInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gasInfo")) ::
              Data.ProtoLens.FieldDescriptor SimulationResponse
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Result)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor SimulationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gasInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SimulationResponse'_unknownFields
        (\ x__ y__ -> x__ {_SimulationResponse'_unknownFields = y__})
  defMessage
    = SimulationResponse'_constructor
        {_SimulationResponse'gasInfo = Prelude.Nothing,
         _SimulationResponse'result = Prelude.Nothing,
         _SimulationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SimulationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser SimulationResponse
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
                                       "gas_info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gasInfo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SimulationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gasInfo") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
instance Control.DeepSeq.NFData SimulationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SimulationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SimulationResponse'gasInfo x__)
                (Control.DeepSeq.deepseq (_SimulationResponse'result x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.type'' @:: Lens' StringEvent Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.attributes' @:: Lens' StringEvent [Attribute]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'attributes' @:: Lens' StringEvent (Data.Vector.Vector Attribute)@ -}
data StringEvent
  = StringEvent'_constructor {_StringEvent'type' :: !Data.Text.Text,
                              _StringEvent'attributes :: !(Data.Vector.Vector Attribute),
                              _StringEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StringEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StringEvent "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringEvent'type' (\ x__ y__ -> x__ {_StringEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StringEvent "attributes" [Attribute] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringEvent'attributes
           (\ x__ y__ -> x__ {_StringEvent'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StringEvent "vec'attributes" (Data.Vector.Vector Attribute) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringEvent'attributes
           (\ x__ y__ -> x__ {_StringEvent'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message StringEvent where
  messageName _
    = Data.Text.pack "cosmos.base.abci.v1beta1.StringEvent"
  packedMessageDescriptor _
    = "\n\
      \\vStringEvent\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2I\n\
      \\n\
      \attributes\CAN\STX \ETX(\v2#.cosmos.base.abci.v1beta1.AttributeR\n\
      \attributesB\EOT\200\222\US\NUL:\EOT\128\220 \SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor StringEvent
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Attribute)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"attributes")) ::
              Data.ProtoLens.FieldDescriptor StringEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StringEvent'_unknownFields
        (\ x__ y__ -> x__ {_StringEvent'_unknownFields = y__})
  defMessage
    = StringEvent'_constructor
        {_StringEvent'type' = Data.ProtoLens.fieldDefault,
         _StringEvent'attributes = Data.Vector.Generic.empty,
         _StringEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StringEvent
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Attribute
             -> Data.ProtoLens.Encoding.Bytes.Parser StringEvent
        loop x mutable'attributes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'attributes)
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
                              (Data.ProtoLens.Field.field @"vec'attributes") frozen'attributes
                              x))
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
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'attributes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "attributes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'attributes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'attributes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'attributes)
          "StringEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
                      (Data.ProtoLens.Field.field @"vec'attributes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StringEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StringEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StringEvent'type' x__)
                (Control.DeepSeq.deepseq (_StringEvent'attributes x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.data'' @:: Lens' TxMsgData [MsgData]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'data'' @:: Lens' TxMsgData (Data.Vector.Vector MsgData)@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.msgResponses' @:: Lens' TxMsgData [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'msgResponses' @:: Lens' TxMsgData (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data TxMsgData
  = TxMsgData'_constructor {_TxMsgData'data' :: !(Data.Vector.Vector MsgData),
                            _TxMsgData'msgResponses :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                            _TxMsgData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxMsgData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxMsgData "data'" [MsgData] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxMsgData'data' (\ x__ y__ -> x__ {_TxMsgData'data' = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxMsgData "vec'data'" (Data.Vector.Vector MsgData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxMsgData'data' (\ x__ y__ -> x__ {_TxMsgData'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxMsgData "msgResponses" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxMsgData'msgResponses
           (\ x__ y__ -> x__ {_TxMsgData'msgResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxMsgData "vec'msgResponses" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxMsgData'msgResponses
           (\ x__ y__ -> x__ {_TxMsgData'msgResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxMsgData where
  messageName _ = Data.Text.pack "cosmos.base.abci.v1beta1.TxMsgData"
  packedMessageDescriptor _
    = "\n\
      \\tTxMsgData\DC29\n\
      \\EOTdata\CAN\SOH \ETX(\v2!.cosmos.base.abci.v1beta1.MsgDataR\EOTdataB\STX\CAN\SOH\DC29\n\
      \\rmsg_responses\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\fmsgResponses:\EOT\128\220 \SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MsgData)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor TxMsgData
        msgResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"msgResponses")) ::
              Data.ProtoLens.FieldDescriptor TxMsgData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, data'__field_descriptor),
           (Data.ProtoLens.Tag 2, msgResponses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxMsgData'_unknownFields
        (\ x__ y__ -> x__ {_TxMsgData'_unknownFields = y__})
  defMessage
    = TxMsgData'_constructor
        {_TxMsgData'data' = Data.Vector.Generic.empty,
         _TxMsgData'msgResponses = Data.Vector.Generic.empty,
         _TxMsgData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxMsgData
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MsgData
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
                -> Data.ProtoLens.Encoding.Bytes.Parser TxMsgData
        loop x mutable'data' mutable'msgResponses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'data' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'data')
                      frozen'msgResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'msgResponses)
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
                              (Data.ProtoLens.Field.field @"vec'data'") frozen'data'
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'msgResponses")
                                 frozen'msgResponses x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "data"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'data' y)
                                loop x v mutable'msgResponses
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "msg_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'msgResponses y)
                                loop x mutable'data' v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'data' mutable'msgResponses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'data' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              mutable'msgResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'data' mutable'msgResponses)
          "TxMsgData"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'data'") _x))
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
                      (Data.ProtoLens.Field.field @"vec'msgResponses") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TxMsgData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxMsgData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxMsgData'data' x__)
                (Control.DeepSeq.deepseq (_TxMsgData'msgResponses x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.height' @:: Lens' TxResponse Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.txhash' @:: Lens' TxResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.codespace' @:: Lens' TxResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.code' @:: Lens' TxResponse Data.Word.Word32@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.data'' @:: Lens' TxResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.rawLog' @:: Lens' TxResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.logs' @:: Lens' TxResponse [ABCIMessageLog]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'logs' @:: Lens' TxResponse (Data.Vector.Vector ABCIMessageLog)@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.info' @:: Lens' TxResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.gasWanted' @:: Lens' TxResponse Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.gasUsed' @:: Lens' TxResponse Data.Int.Int64@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.tx' @:: Lens' TxResponse Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.maybe'tx' @:: Lens' TxResponse (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.timestamp' @:: Lens' TxResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.events' @:: Lens' TxResponse [Proto.Tendermint.Abci.Types.Event]@
         * 'Proto.Cosmos.Base.Abci.V1beta1.Abci_Fields.vec'events' @:: Lens' TxResponse (Data.Vector.Vector Proto.Tendermint.Abci.Types.Event)@ -}
data TxResponse
  = TxResponse'_constructor {_TxResponse'height :: !Data.Int.Int64,
                             _TxResponse'txhash :: !Data.Text.Text,
                             _TxResponse'codespace :: !Data.Text.Text,
                             _TxResponse'code :: !Data.Word.Word32,
                             _TxResponse'data' :: !Data.Text.Text,
                             _TxResponse'rawLog :: !Data.Text.Text,
                             _TxResponse'logs :: !(Data.Vector.Vector ABCIMessageLog),
                             _TxResponse'info :: !Data.Text.Text,
                             _TxResponse'gasWanted :: !Data.Int.Int64,
                             _TxResponse'gasUsed :: !Data.Int.Int64,
                             _TxResponse'tx :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                             _TxResponse'timestamp :: !Data.Text.Text,
                             _TxResponse'events :: !(Data.Vector.Vector Proto.Tendermint.Abci.Types.Event),
                             _TxResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxResponse "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'height (\ x__ y__ -> x__ {_TxResponse'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "txhash" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'txhash (\ x__ y__ -> x__ {_TxResponse'txhash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "codespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'codespace
           (\ x__ y__ -> x__ {_TxResponse'codespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "code" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'code (\ x__ y__ -> x__ {_TxResponse'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "data'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'data' (\ x__ y__ -> x__ {_TxResponse'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "rawLog" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'rawLog (\ x__ y__ -> x__ {_TxResponse'rawLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "logs" [ABCIMessageLog] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'logs (\ x__ y__ -> x__ {_TxResponse'logs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxResponse "vec'logs" (Data.Vector.Vector ABCIMessageLog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'logs (\ x__ y__ -> x__ {_TxResponse'logs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "info" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'info (\ x__ y__ -> x__ {_TxResponse'info = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "gasWanted" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'gasWanted
           (\ x__ y__ -> x__ {_TxResponse'gasWanted = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "gasUsed" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'gasUsed (\ x__ y__ -> x__ {_TxResponse'gasUsed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "tx" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'tx (\ x__ y__ -> x__ {_TxResponse'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxResponse "maybe'tx" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'tx (\ x__ y__ -> x__ {_TxResponse'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "timestamp" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'timestamp
           (\ x__ y__ -> x__ {_TxResponse'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResponse "events" [Proto.Tendermint.Abci.Types.Event] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'events (\ x__ y__ -> x__ {_TxResponse'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxResponse "vec'events" (Data.Vector.Vector Proto.Tendermint.Abci.Types.Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResponse'events (\ x__ y__ -> x__ {_TxResponse'events = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxResponse where
  messageName _
    = Data.Text.pack "cosmos.base.abci.v1beta1.TxResponse"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TxResponse\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\"\n\
      \\ACKtxhash\CAN\STX \SOH(\tR\ACKtxhashB\n\
      \\226\222\US\ACKTxHash\DC2\FS\n\
      \\tcodespace\CAN\ETX \SOH(\tR\tcodespace\DC2\DC2\n\
      \\EOTcode\CAN\EOT \SOH(\rR\EOTcode\DC2\DC2\n\
      \\EOTdata\CAN\ENQ \SOH(\tR\EOTdata\DC2\ETB\n\
      \\araw_log\CAN\ACK \SOH(\tR\ACKrawLog\DC2U\n\
      \\EOTlogs\CAN\a \ETX(\v2(.cosmos.base.abci.v1beta1.ABCIMessageLogR\EOTlogsB\ETB\200\222\US\NUL\170\223\US\SIABCIMessageLogs\DC2\DC2\n\
      \\EOTinfo\CAN\b \SOH(\tR\EOTinfo\DC2\GS\n\
      \\n\
      \gas_wanted\CAN\t \SOH(\ETXR\tgasWanted\DC2\EM\n\
      \\bgas_used\CAN\n\
      \ \SOH(\ETXR\agasUsed\DC2$\n\
      \\STXtx\CAN\v \SOH(\v2\DC4.google.protobuf.AnyR\STXtx\DC2\FS\n\
      \\ttimestamp\CAN\f \SOH(\tR\ttimestamp\DC24\n\
      \\ACKevents\CAN\r \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\EOT\200\222\US\NUL:\EOT\136\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        txhash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "txhash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"txhash")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        codespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"codespace")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        rawLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "raw_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rawLog")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        logs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "logs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ABCIMessageLog)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"logs")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"info")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        gasWanted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_wanted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gasWanted")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        gasUsed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_used"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"gasUsed")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timestamp")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.Event)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor TxResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, txhash__field_descriptor),
           (Data.ProtoLens.Tag 3, codespace__field_descriptor),
           (Data.ProtoLens.Tag 4, code__field_descriptor),
           (Data.ProtoLens.Tag 5, data'__field_descriptor),
           (Data.ProtoLens.Tag 6, rawLog__field_descriptor),
           (Data.ProtoLens.Tag 7, logs__field_descriptor),
           (Data.ProtoLens.Tag 8, info__field_descriptor),
           (Data.ProtoLens.Tag 9, gasWanted__field_descriptor),
           (Data.ProtoLens.Tag 10, gasUsed__field_descriptor),
           (Data.ProtoLens.Tag 11, tx__field_descriptor),
           (Data.ProtoLens.Tag 12, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 13, events__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxResponse'_unknownFields
        (\ x__ y__ -> x__ {_TxResponse'_unknownFields = y__})
  defMessage
    = TxResponse'_constructor
        {_TxResponse'height = Data.ProtoLens.fieldDefault,
         _TxResponse'txhash = Data.ProtoLens.fieldDefault,
         _TxResponse'codespace = Data.ProtoLens.fieldDefault,
         _TxResponse'code = Data.ProtoLens.fieldDefault,
         _TxResponse'data' = Data.ProtoLens.fieldDefault,
         _TxResponse'rawLog = Data.ProtoLens.fieldDefault,
         _TxResponse'logs = Data.Vector.Generic.empty,
         _TxResponse'info = Data.ProtoLens.fieldDefault,
         _TxResponse'gasWanted = Data.ProtoLens.fieldDefault,
         _TxResponse'gasUsed = Data.ProtoLens.fieldDefault,
         _TxResponse'tx = Prelude.Nothing,
         _TxResponse'timestamp = Data.ProtoLens.fieldDefault,
         _TxResponse'events = Data.Vector.Generic.empty,
         _TxResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Tendermint.Abci.Types.Event
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ABCIMessageLog
                -> Data.ProtoLens.Encoding.Bytes.Parser TxResponse
        loop x mutable'events mutable'logs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'events)
                      frozen'logs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'logs)
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
                              (Data.ProtoLens.Field.field @"vec'events") frozen'events
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'logs") frozen'logs x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                                  mutable'events mutable'logs
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
                                       "txhash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"txhash") y x)
                                  mutable'events mutable'logs
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
                                       "codespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"codespace") y x)
                                  mutable'events mutable'logs
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                                  mutable'events mutable'logs
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
                                       "data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                                  mutable'events mutable'logs
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
                                       "raw_log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rawLog") y x)
                                  mutable'events mutable'logs
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "logs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'logs y)
                                loop x mutable'events v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                                  mutable'events mutable'logs
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gas_wanted"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasWanted") y x)
                                  mutable'events mutable'logs
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gas_used"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasUsed") y x)
                                  mutable'events mutable'logs
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tx"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                                  mutable'events mutable'logs
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                                  mutable'events mutable'logs
                        106
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v mutable'logs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'events mutable'logs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'logs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'events mutable'logs)
          "TxResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txhash") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"codespace") _x
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
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rawLog") _x
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
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'logs") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"gasWanted") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"gasUsed") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'tx") _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"timestamp") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((Prelude..)
                                                          (\ bs
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     (Prelude.fromIntegral
                                                                        (Data.ByteString.length
                                                                           bs)))
                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                     bs))
                                                          Data.Text.Encoding.encodeUtf8 _v))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               106)
                                                            ((Prelude..)
                                                               (\ bs
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (Prelude.fromIntegral
                                                                             (Data.ByteString.length
                                                                                bs)))
                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                          bs))
                                                               Data.ProtoLens.encodeMessage _v))
                                                    (Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"vec'events")
                                                       _x))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData TxResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxResponse'height x__)
                (Control.DeepSeq.deepseq
                   (_TxResponse'txhash x__)
                   (Control.DeepSeq.deepseq
                      (_TxResponse'codespace x__)
                      (Control.DeepSeq.deepseq
                         (_TxResponse'code x__)
                         (Control.DeepSeq.deepseq
                            (_TxResponse'data' x__)
                            (Control.DeepSeq.deepseq
                               (_TxResponse'rawLog x__)
                               (Control.DeepSeq.deepseq
                                  (_TxResponse'logs x__)
                                  (Control.DeepSeq.deepseq
                                     (_TxResponse'info x__)
                                     (Control.DeepSeq.deepseq
                                        (_TxResponse'gasWanted x__)
                                        (Control.DeepSeq.deepseq
                                           (_TxResponse'gasUsed x__)
                                           (Control.DeepSeq.deepseq
                                              (_TxResponse'tx x__)
                                              (Control.DeepSeq.deepseq
                                                 (_TxResponse'timestamp x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_TxResponse'events x__) ())))))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#cosmos/base/abci/v1beta1/abci.proto\DC2\CANcosmos.base.abci.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\ESCtendermint/abci/types.proto\SUB\FStendermint/types/block.proto\SUB\EMgoogle/protobuf/any.proto\"\204\ETX\n\
    \\n\
    \TxResponse\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\"\n\
    \\ACKtxhash\CAN\STX \SOH(\tR\ACKtxhashB\n\
    \\226\222\US\ACKTxHash\DC2\FS\n\
    \\tcodespace\CAN\ETX \SOH(\tR\tcodespace\DC2\DC2\n\
    \\EOTcode\CAN\EOT \SOH(\rR\EOTcode\DC2\DC2\n\
    \\EOTdata\CAN\ENQ \SOH(\tR\EOTdata\DC2\ETB\n\
    \\araw_log\CAN\ACK \SOH(\tR\ACKrawLog\DC2U\n\
    \\EOTlogs\CAN\a \ETX(\v2(.cosmos.base.abci.v1beta1.ABCIMessageLogR\EOTlogsB\ETB\200\222\US\NUL\170\223\US\SIABCIMessageLogs\DC2\DC2\n\
    \\EOTinfo\CAN\b \SOH(\tR\EOTinfo\DC2\GS\n\
    \\n\
    \gas_wanted\CAN\t \SOH(\ETXR\tgasWanted\DC2\EM\n\
    \\bgas_used\CAN\n\
    \ \SOH(\ETXR\agasUsed\DC2$\n\
    \\STXtx\CAN\v \SOH(\v2\DC4.google.protobuf.AnyR\STXtx\DC2\FS\n\
    \\ttimestamp\CAN\f \SOH(\tR\ttimestamp\DC24\n\
    \\ACKevents\CAN\r \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\EOT\200\222\US\NUL:\EOT\136\160\US\NUL\"\169\SOH\n\
    \\SOABCIMessageLog\DC2*\n\
    \\tmsg_index\CAN\SOH \SOH(\rR\bmsgIndexB\r\234\222\US\tmsg_index\DC2\DLE\n\
    \\ETXlog\CAN\STX \SOH(\tR\ETXlog\DC2S\n\
    \\ACKevents\CAN\ETX \ETX(\v2%.cosmos.base.abci.v1beta1.StringEventR\ACKeventsB\DC4\200\222\US\NUL\170\223\US\fStringEvents:\EOT\128\220 \SOH\"r\n\
    \\vStringEvent\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2I\n\
    \\n\
    \attributes\CAN\STX \ETX(\v2#.cosmos.base.abci.v1beta1.AttributeR\n\
    \attributesB\EOT\200\222\US\NUL:\EOT\128\220 \SOH\"3\n\
    \\tAttribute\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue\"C\n\
    \\aGasInfo\DC2\GS\n\
    \\n\
    \gas_wanted\CAN\SOH \SOH(\EOTR\tgasWanted\DC2\EM\n\
    \\bgas_used\CAN\STX \SOH(\EOTR\agasUsed\"\169\SOH\n\
    \\ACKResult\DC2\SYN\n\
    \\EOTdata\CAN\SOH \SOH(\fR\EOTdataB\STX\CAN\SOH\DC2\DLE\n\
    \\ETXlog\CAN\STX \SOH(\tR\ETXlog\DC24\n\
    \\ACKevents\CAN\ETX \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\EOT\200\222\US\NUL\DC29\n\
    \\rmsg_responses\CAN\EOT \ETX(\v2\DC4.google.protobuf.AnyR\fmsgResponses:\EOT\136\160\US\NUL\"\150\SOH\n\
    \\DC2SimulationResponse\DC2F\n\
    \\bgas_info\CAN\SOH \SOH(\v2!.cosmos.base.abci.v1beta1.GasInfoR\agasInfoB\b\200\222\US\NUL\208\222\US\SOH\DC28\n\
    \\ACKresult\CAN\STX \SOH(\v2 .cosmos.base.abci.v1beta1.ResultR\ACKresult\"@\n\
    \\aMsgData\DC2\EM\n\
    \\bmsg_type\CAN\SOH \SOH(\tR\amsgType\DC2\DC2\n\
    \\EOTdata\CAN\STX \SOH(\fR\EOTdata:\ACK\CAN\SOH\128\220 \SOH\"\135\SOH\n\
    \\tTxMsgData\DC29\n\
    \\EOTdata\CAN\SOH \ETX(\v2!.cosmos.base.abci.v1beta1.MsgDataR\EOTdataB\STX\CAN\SOH\DC29\n\
    \\rmsg_responses\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\fmsgResponses:\EOT\128\220 \SOH\"\220\SOH\n\
    \\SISearchTxsResult\DC2\US\n\
    \\vtotal_count\CAN\SOH \SOH(\EOTR\n\
    \totalCount\DC2\DC4\n\
    \\ENQcount\CAN\STX \SOH(\EOTR\ENQcount\DC2\US\n\
    \\vpage_number\CAN\ETX \SOH(\EOTR\n\
    \pageNumber\DC2\GS\n\
    \\n\
    \page_total\CAN\EOT \SOH(\EOTR\tpageTotal\DC2\DC4\n\
    \\ENQlimit\CAN\ENQ \SOH(\EOTR\ENQlimit\DC26\n\
    \\ETXtxs\CAN\ACK \ETX(\v2$.cosmos.base.abci.v1beta1.TxResponseR\ETXtxs:\EOT\128\220 \SOH\"\216\SOH\n\
    \\DC2SearchBlocksResult\DC2\US\n\
    \\vtotal_count\CAN\SOH \SOH(\ETXR\n\
    \totalCount\DC2\DC4\n\
    \\ENQcount\CAN\STX \SOH(\ETXR\ENQcount\DC2\US\n\
    \\vpage_number\CAN\ETX \SOH(\ETXR\n\
    \pageNumber\DC2\GS\n\
    \\n\
    \page_total\CAN\EOT \SOH(\ETXR\tpageTotal\DC2\DC4\n\
    \\ENQlimit\CAN\ENQ \SOH(\ETXR\ENQlimit\DC2/\n\
    \\ACKblocks\CAN\ACK \ETX(\v2\ETB.tendermint.types.BlockR\ACKblocks:\EOT\128\220 \SOHB(Z\"github.com/cosmos/cosmos-sdk/types\216\225\RS\NULJ\153\&5\n\
    \\a\DC2\ENQ\NUL\NUL\180\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULO\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULO\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL0\n\
    \\v\n\
    \\EOT\b\155\236\ETX\DC2\ETX\t\NUL0\n\
    \\142\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL4\SOH\SUB\129\SOH TxResponse defines a structure containing relevant tx data and metadata. The\n\
    \ tags are stringified and the log is JSON decoded.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\SO\STX-\n\
    \\US\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\STX\DC3\SUB\DC2 The block height\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DLE\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE\DC1\DC2\n\
    \$\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC2\STX8\SUB\ETB The transaction hash.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DC2\DC47\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\236\251\ETX\DC2\ETX\DC2\NAK6\n\
    \%\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC4\STX\ETB\SUB\CAN Namespace for the Code\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC4\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC4\NAK\SYN\n\
    \\GS\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\SYN\STX\DC2\SUB\DLE Response code.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\SYN\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\SYN\DLE\DC1\n\
    \$\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\CAN\STX\DC2\SUB\ETB Result bytes, if any.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\CAN\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\CAN\DLE\DC1\n\
    \^\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\ESC\STX\NAK\SUBQ The output of the application's logger (raw string). May be\n\
    \ non-deterministic.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\ESC\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\ESC\DC3\DC4\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\GS\STX \EOT\SUBK The output of the application's logger (typed). May be non-deterministic.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\GS\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\GS\SUB\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\GS!\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\EOT\GS# \ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\245\251\ETX\DC2\ETX\RS\EOT0\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\233\251\ETX\DC2\ETX\US\EOT$\n\
    \@\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\"\STX\DC2\SUB3 Additional information. May be non-deterministic.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\"\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\"\DLE\DC1\n\
    \7\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX$\STX\ETB\SUB* Amount of gas requested for transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX$\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX$\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX$\NAK\SYN\n\
    \5\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX&\STX\SYN\SUB( Amount of gas consumed by transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETX&\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX&\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX&\DC3\NAK\n\
    \-\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX(\STX\RS\SUB  The request transaction bytes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETX(\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX(\SYN\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX(\ESC\GS\n\
    \\185\SOH\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX,\STX\CAN\SUB\171\SOH Time of the previous block. For heights > 1, it's the weighted median of\n\
    \ the timestamps of the valid votes in the block.LastCommit. For height == 1,\n\
    \ it's genesis time.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX,\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX,\NAK\ETB\n\
    \\205\STX\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETX3\STXL\SUB\191\STX Events defines all the events emitted by processing a transaction. Note,\n\
    \ these events include those emitted by processing all the messages and those\n\
    \ emitted from the ante. Whereas Logs contains the events, with\n\
    \ additional metadata, emitted only by processing the messages.\n\
    \\n\
    \ Since: cosmos-sdk 0.42.11, 0.44.5, 0.45\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETX3\v \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETX3!'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETX3*,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\b\DC2\ETX3-K\n\
    \\SI\n\
    \\b\EOT\NUL\STX\f\b\233\251\ETX\DC2\ETX3.J\n\
    \[\n\
    \\STX\EOT\SOH\DC2\EOT7\NULA\SOH\SUBO ABCIMessageLog defines a structure containing an indexed tx ABCI message log.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX7\b\SYN\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX8\STX%\n\
    \\r\n\
    \\ACK\EOT\SOH\a\192\139\EOT\DC2\ETX8\STX%\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX:\STX;\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX:\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX:\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX:\ETB:\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\237\251\ETX\DC2\ETX:\CAN9\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX;\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX;\t\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX;\NAK\SYN\n\
    \b\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT?\STX@P\SUBT Events contains a slice of Event objects that were emitted during some\n\
    \ execution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX?\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX?\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX? !\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX@\ACKO\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\245\251\ETX\DC2\ETX@\a0\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX@2N\n\
    \\147\SOH\n\
    \\STX\EOT\STX\DC2\EOTE\NULJ\SOH\SUB\134\SOH StringEvent defines en Event object wrapper where all the attributes\n\
    \ contain key/value pairs that are strings instead of raw bytes.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXE\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXF\STX%\n\
    \\r\n\
    \\ACK\EOT\STX\a\192\139\EOT\DC2\ETXF\STX%\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXH\STX$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXH\NAK\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXH\"#\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXI\STXC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXI\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXI\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXI\"#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXI$B\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETXI%A\n\
    \o\n\
    \\STX\EOT\ETX\DC2\EOTN\NULQ\SOH\SUBc Attribute defines an attribute wrapper where the key and value are\n\
    \ strings instead of raw bytes.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXN\b\DC1\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXO\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXO\t\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXO\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXP\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXP\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXP\DC1\DC2\n\
    \7\n\
    \\STX\EOT\EOT\DC2\EOTT\NULZ\SOH\SUB+ GasInfo defines tx execution gas context.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXT\b\SI\n\
    \R\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXV\STX\CAN\SUBE GasWanted is the maximum units of work we allow this tx to perform.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXV\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXV\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXV\SYN\ETB\n\
    \>\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXY\STX\SYN\SUB1 GasUsed is the amount of gas actually consumed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXY\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXY\DC4\NAK\n\
    \H\n\
    \\STX\EOT\ENQ\DC2\EOT]\NULq\SOH\SUB< Result is the union of ResponseFormat and ResponseCheckTx.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX]\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\a\DC2\ETX^\STX-\n\
    \\r\n\
    \\ACK\EOT\ENQ\a\129\244\ETX\DC2\ETX^\STX-\n\
    \\164\STX\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXd\STX%\SUB\150\STX Data is any data returned from message or handler execution. It MUST be\n\
    \ length prefixed in order to separate data from multiple message executions.\n\
    \ Deprecated. This field is still populated, but prefer msg_response instead\n\
    \ because it also contains the Msg response typeURL.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXd\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXd\b\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXd\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETXd\DC1$\n\
    \\r\n\
    \\ACK\EOT\ENQ\STX\NUL\b\ETX\DC2\ETXd\DC2#\n\
    \R\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXg\STX\DC1\SUBE Log contains the log information from message or handler execution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXg\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXg\t\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXg\SI\DLE\n\
    \o\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETXk\STXK\SUBb Events contains a slice of Event objects that were emitted during message\n\
    \ or handler execution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\ETXk\v \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXk!'\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXk*+\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\b\DC2\ETXk,J\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\STX\b\233\251\ETX\DC2\ETXk-I\n\
    \m\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETXp\STX1\SUB` msg_responses contains the Msg handler responses type packed in Anys.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\ETXp\v\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXp\US,\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXp/0\n\
    \n\n\
    \\STX\EOT\ACK\DC2\EOTu\NULx\SOH\SUBb SimulationResponse defines the response generated when a transaction is\n\
    \ successfully simulated.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXu\b\SUB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXv\STXP\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETXv\STX\t\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXv\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXv\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXv\ETBO\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\234\251\ETX\DC2\ETXv\CAN0\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\233\251\ETX\DC2\ETXv2N\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXw\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXw\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXw\n\
    \\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXw\NAK\SYN\n\
    \^\n\
    \\STX\EOT\a\DC2\ENQ|\NUL\130\SOH\SOH\SUBQ MsgData defines the data returned in a Result object during message\n\
    \ execution.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX|\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\a\a\DC2\ETX}\STX%\n\
    \\v\n\
    \\EOT\EOT\a\a\ETX\DC2\ETX}\STX%\n\
    \\n\
    \\n\
    \\ETX\EOT\a\a\DC2\ETX~\STX%\n\
    \\r\n\
    \\ACK\EOT\a\a\192\139\EOT\DC2\ETX~\STX%\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\128\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\128\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\128\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\128\SOH\DC4\NAK\n\
    \\f\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\129\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\129\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\129\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\129\SOH\DC4\NAK\n\
    \p\n\
    \\STX\EOT\b\DC2\ACK\134\SOH\NUL\144\SOH\SOH\SUBb TxMsgData defines a list of MsgData. A transaction will have a MsgData object\n\
    \ for each message.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\134\SOH\b\DC1\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\135\SOH\STX%\n\
    \\SO\n\
    \\ACK\EOT\b\a\192\139\EOT\DC2\EOT\135\SOH\STX%\n\
    \;\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\138\SOH\STX0\SUB- data field is deprecated and not populated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\138\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\138\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\138\SOH\DC3\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\138\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\138\SOH\FS/\n\
    \\SO\n\
    \\ACK\EOT\b\STX\NUL\b\ETX\DC2\EOT\138\SOH\GS.\n\
    \k\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\143\SOH\STX1\SUB] msg_responses contains the Msg handler responses packed into Anys.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\EOT\143\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\143\SOH\v\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\143\SOH\US,\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\143\SOH/0\n\
    \M\n\
    \\STX\EOT\t\DC2\ACK\147\SOH\NUL\162\SOH\SOH\SUB? SearchTxsResult defines a structure for querying txs pageable\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\147\SOH\b\ETB\n\
    \\v\n\
    \\ETX\EOT\t\a\DC2\EOT\148\SOH\STX%\n\
    \\SO\n\
    \\ACK\EOT\t\a\192\139\EOT\DC2\EOT\148\SOH\STX%\n\
    \ \n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\151\SOH\STX\EM\SUB\DC2 Count of all txs\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\151\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\151\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\151\SOH\ETB\CAN\n\
    \,\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\153\SOH\STX\DC3\SUB\RS Count of txs in current page\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\153\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\153\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\153\SOH\DC1\DC2\n\
    \3\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\155\SOH\STX\EM\SUB% Index of current page, start from 1\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\EOT\155\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\155\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\155\SOH\ETB\CAN\n\
    \$\n\
    \\EOT\EOT\t\STX\ETX\DC2\EOT\157\SOH\STX\CAN\SUB\SYN Count of total pages\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ENQ\DC2\EOT\157\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\EOT\157\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\EOT\157\SOH\SYN\ETB\n\
    \&\n\
    \\EOT\EOT\t\STX\EOT\DC2\EOT\159\SOH\STX\DC3\SUB\CAN Max count txs per page\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ENQ\DC2\EOT\159\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\SOH\DC2\EOT\159\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ETX\DC2\EOT\159\SOH\DC1\DC2\n\
    \+\n\
    \\EOT\EOT\t\STX\ENQ\DC2\EOT\161\SOH\STX\RS\SUB\GS List of txs in current page\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\EOT\DC2\EOT\161\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\ACK\DC2\EOT\161\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\SOH\DC2\EOT\161\SOH\SYN\EM\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\ETX\DC2\EOT\161\SOH\FS\GS\n\
    \S\n\
    \\STX\EOT\n\
    \\DC2\ACK\165\SOH\NUL\180\SOH\SOH\SUBE SearchBlocksResult defines a structure for querying blocks pageable\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\165\SOH\b\SUB\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\166\SOH\STX%\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\192\139\EOT\DC2\EOT\166\SOH\STX%\n\
    \#\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\169\SOH\STX\CAN\SUB\NAK Count of all blocks\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\169\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\169\SOH\b\DC3\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\169\SOH\SYN\ETB\n\
    \/\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\171\SOH\STX\DC2\SUB! Count of blocks in current page\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\171\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\171\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\171\SOH\DLE\DC1\n\
    \3\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\173\SOH\STX\CAN\SUB% Index of current page, start from 1\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\173\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\173\SOH\b\DC3\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\173\SOH\SYN\ETB\n\
    \$\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\175\SOH\STX\ETB\SUB\SYN Count of total pages\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\175\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\175\SOH\b\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\175\SOH\NAK\SYN\n\
    \)\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\EOT\177\SOH\STX\DC2\SUB\ESC Max count blocks per page\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ENQ\DC2\EOT\177\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\EOT\177\SOH\b\r\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\177\SOH\DLE\DC1\n\
    \.\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\EOT\179\SOH\STX-\SUB  List of blocks in current page\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\EOT\DC2\EOT\179\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ACK\DC2\EOT\179\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\EOT\179\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\EOT\179\SOH+,b\ACKproto3"