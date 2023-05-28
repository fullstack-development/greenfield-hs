{- This file was auto-generated from cosmos/nft/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Nft.V1beta1.Tx (
        Msg(..), MsgSend(), MsgSendResponse()
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
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Tx_Fields.classId' @:: Lens' MsgSend Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Tx_Fields.id' @:: Lens' MsgSend Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Tx_Fields.sender' @:: Lens' MsgSend Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Tx_Fields.receiver' @:: Lens' MsgSend Data.Text.Text@ -}
data MsgSend
  = MsgSend'_constructor {_MsgSend'classId :: !Data.Text.Text,
                          _MsgSend'id :: !Data.Text.Text,
                          _MsgSend'sender :: !Data.Text.Text,
                          _MsgSend'receiver :: !Data.Text.Text,
                          _MsgSend'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSend where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSend "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'classId (\ x__ y__ -> x__ {_MsgSend'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSend "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'id (\ x__ y__ -> x__ {_MsgSend'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSend "sender" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'sender (\ x__ y__ -> x__ {_MsgSend'sender = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSend "receiver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSend'receiver (\ x__ y__ -> x__ {_MsgSend'receiver = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSend where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.MsgSend"
  packedMessageDescriptor _
    = "\n\
      \\aMsgSend\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC20\n\
      \\ACKsender\CAN\ETX \SOH(\tR\ACKsenderB\CAN\210\180-\DC4cosmos.AddressString\DC24\n\
      \\breceiver\CAN\EOT \SOH(\tR\breceiverB\CAN\210\180-\DC4cosmos.AddressString:\v\130\231\176*\ACKsender"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        classId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "class_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"classId")) ::
              Data.ProtoLens.FieldDescriptor MsgSend
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor MsgSend
        sender__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sender"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sender")) ::
              Data.ProtoLens.FieldDescriptor MsgSend
        receiver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "receiver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"receiver")) ::
              Data.ProtoLens.FieldDescriptor MsgSend
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, sender__field_descriptor),
           (Data.ProtoLens.Tag 4, receiver__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSend'_unknownFields
        (\ x__ y__ -> x__ {_MsgSend'_unknownFields = y__})
  defMessage
    = MsgSend'_constructor
        {_MsgSend'classId = Data.ProtoLens.fieldDefault,
         _MsgSend'id = Data.ProtoLens.fieldDefault,
         _MsgSend'sender = Data.ProtoLens.fieldDefault,
         _MsgSend'receiver = Data.ProtoLens.fieldDefault,
         _MsgSend'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgSend -> Data.ProtoLens.Encoding.Bytes.Parser MsgSend
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
                                       "class_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"classId") y x)
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
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
                                       "sender"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sender") y x)
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
                                       "receiver"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"receiver") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSend"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"classId") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sender") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"receiver") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MsgSend where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSend'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSend'classId x__)
                (Control.DeepSeq.deepseq
                   (_MsgSend'id x__)
                   (Control.DeepSeq.deepseq
                      (_MsgSend'sender x__)
                      (Control.DeepSeq.deepseq (_MsgSend'receiver x__) ()))))
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
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.MsgSendResponse"
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
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.nft.v1beta1"
  type ServiceMethods Msg = '["send"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2H\n\
      \\EOTSend\DC2\ESC.cosmos.nft.v1beta1.MsgSend\SUB#.cosmos.nft.v1beta1.MsgSendResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "send" where
  type MethodName Msg "send" = "Send"
  type MethodInput Msg "send" = MsgSend
  type MethodOutput Msg "send" = MsgSendResponse
  type MethodStreamingType Msg "send" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCcosmos/nft/v1beta1/tx.proto\DC2\DC2cosmos.nft.v1beta1\SUB\EMcosmos_proto/cosmos.proto\SUB\ETBcosmos/msg/v1/msg.proto\"\169\SOH\n\
    \\aMsgSend\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC20\n\
    \\ACKsender\CAN\ETX \SOH(\tR\ACKsenderB\CAN\210\180-\DC4cosmos.AddressString\DC24\n\
    \\breceiver\CAN\EOT \SOH(\tR\breceiverB\CAN\210\180-\DC4cosmos.AddressString:\v\130\231\176*\ACKsender\"\DC1\n\
    \\SIMsgSendResponse2V\n\
    \\ETXMsg\DC2H\n\
    \\EOTSend\DC2\ESC.cosmos.nft.v1beta1.MsgSend\SUB#.cosmos.nft.v1beta1.MsgSendResponse\SUB\ENQ\128\231\176*\SOHB\DC4Z\DC2cosmossdk.io/x/nftJ\136\b\n\
    \\ACK\DC2\EOT\NUL\NUL!\SUB\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL)\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL)\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL!\n\
    \.\n\
    \\STX\ACK\NUL\DC2\EOT\t\NUL\SO\SOH\SUB\" Msg defines the nft Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\t\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\n\
    \\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\n\
    \\STX(\n\
    \W\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\r\STX.\SUBJ Send defines a method to send a nft from one account to another account.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\r\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\r\v\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\r\GS,\n\
    \]\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\US\SOH\SUBQ MsgSend represents a message to send a nft from one account to another account.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC2\STX+\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\DC2\STX+\n\
    \z\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STX\SYN\SUBm class_id defines the unique identifier of the nft classification, similar to the contract address of ERC721\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK\DC4\NAK\n\
    \:\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\STX\DLE\SUB- id defines the unique identification of nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN\SO\SI\n\
    \8\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ESC\STXE\SUB+ sender is the address of the owner of nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ESC\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ESC\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\ESC\DC4D\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX\ESC\NAKC\n\
    \6\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\RS\STXG\SUB) receiver is the receiver address of nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\RS\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\RS\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\RS\SYNF\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\RS\ETBE\n\
    \@\n\
    \\STX\EOT\SOH\DC2\ETX!\NUL\SUB\SUB5 MsgSendResponse defines the Msg/Send response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b\ETBb\ACKproto3"