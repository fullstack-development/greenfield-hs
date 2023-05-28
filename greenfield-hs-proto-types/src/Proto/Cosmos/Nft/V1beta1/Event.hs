{- This file was auto-generated from cosmos/nft/v1beta1/event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Nft.V1beta1.Event (
        EventBurn(), EventMint(), EventSend()
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
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.classId' @:: Lens' EventBurn Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.id' @:: Lens' EventBurn Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.owner' @:: Lens' EventBurn Data.Text.Text@ -}
data EventBurn
  = EventBurn'_constructor {_EventBurn'classId :: !Data.Text.Text,
                            _EventBurn'id :: !Data.Text.Text,
                            _EventBurn'owner :: !Data.Text.Text,
                            _EventBurn'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventBurn where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventBurn "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventBurn'classId (\ x__ y__ -> x__ {_EventBurn'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventBurn "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventBurn'id (\ x__ y__ -> x__ {_EventBurn'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventBurn "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventBurn'owner (\ x__ y__ -> x__ {_EventBurn'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventBurn where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.EventBurn"
  packedMessageDescriptor _
    = "\n\
      \\tEventBurn\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC2\DC4\n\
      \\ENQowner\CAN\ETX \SOH(\tR\ENQowner"
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
              Data.ProtoLens.FieldDescriptor EventBurn
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor EventBurn
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventBurn
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, owner__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventBurn'_unknownFields
        (\ x__ y__ -> x__ {_EventBurn'_unknownFields = y__})
  defMessage
    = EventBurn'_constructor
        {_EventBurn'classId = Data.ProtoLens.fieldDefault,
         _EventBurn'id = Data.ProtoLens.fieldDefault,
         _EventBurn'owner = Data.ProtoLens.fieldDefault,
         _EventBurn'_unknownFields = []}
  parseMessage
    = let
        loop :: EventBurn -> Data.ProtoLens.Encoding.Bytes.Parser EventBurn
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventBurn"
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
instance Control.DeepSeq.NFData EventBurn where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventBurn'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventBurn'classId x__)
                (Control.DeepSeq.deepseq
                   (_EventBurn'id x__)
                   (Control.DeepSeq.deepseq (_EventBurn'owner x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.classId' @:: Lens' EventMint Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.id' @:: Lens' EventMint Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.owner' @:: Lens' EventMint Data.Text.Text@ -}
data EventMint
  = EventMint'_constructor {_EventMint'classId :: !Data.Text.Text,
                            _EventMint'id :: !Data.Text.Text,
                            _EventMint'owner :: !Data.Text.Text,
                            _EventMint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventMint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventMint "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMint'classId (\ x__ y__ -> x__ {_EventMint'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMint "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMint'id (\ x__ y__ -> x__ {_EventMint'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventMint "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventMint'owner (\ x__ y__ -> x__ {_EventMint'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventMint where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.EventMint"
  packedMessageDescriptor _
    = "\n\
      \\tEventMint\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC2\DC4\n\
      \\ENQowner\CAN\ETX \SOH(\tR\ENQowner"
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
              Data.ProtoLens.FieldDescriptor EventMint
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor EventMint
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor EventMint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, owner__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventMint'_unknownFields
        (\ x__ y__ -> x__ {_EventMint'_unknownFields = y__})
  defMessage
    = EventMint'_constructor
        {_EventMint'classId = Data.ProtoLens.fieldDefault,
         _EventMint'id = Data.ProtoLens.fieldDefault,
         _EventMint'owner = Data.ProtoLens.fieldDefault,
         _EventMint'_unknownFields = []}
  parseMessage
    = let
        loop :: EventMint -> Data.ProtoLens.Encoding.Bytes.Parser EventMint
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventMint"
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
instance Control.DeepSeq.NFData EventMint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventMint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventMint'classId x__)
                (Control.DeepSeq.deepseq
                   (_EventMint'id x__)
                   (Control.DeepSeq.deepseq (_EventMint'owner x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.classId' @:: Lens' EventSend Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.id' @:: Lens' EventSend Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.sender' @:: Lens' EventSend Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Event_Fields.receiver' @:: Lens' EventSend Data.Text.Text@ -}
data EventSend
  = EventSend'_constructor {_EventSend'classId :: !Data.Text.Text,
                            _EventSend'id :: !Data.Text.Text,
                            _EventSend'sender :: !Data.Text.Text,
                            _EventSend'receiver :: !Data.Text.Text,
                            _EventSend'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventSend where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventSend "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSend'classId (\ x__ y__ -> x__ {_EventSend'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSend "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSend'id (\ x__ y__ -> x__ {_EventSend'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSend "sender" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSend'sender (\ x__ y__ -> x__ {_EventSend'sender = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventSend "receiver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSend'receiver (\ x__ y__ -> x__ {_EventSend'receiver = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventSend where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.EventSend"
  packedMessageDescriptor _
    = "\n\
      \\tEventSend\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC2\SYN\n\
      \\ACKsender\CAN\ETX \SOH(\tR\ACKsender\DC2\SUB\n\
      \\breceiver\CAN\EOT \SOH(\tR\breceiver"
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
              Data.ProtoLens.FieldDescriptor EventSend
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor EventSend
        sender__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sender"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sender")) ::
              Data.ProtoLens.FieldDescriptor EventSend
        receiver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "receiver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"receiver")) ::
              Data.ProtoLens.FieldDescriptor EventSend
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, sender__field_descriptor),
           (Data.ProtoLens.Tag 4, receiver__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventSend'_unknownFields
        (\ x__ y__ -> x__ {_EventSend'_unknownFields = y__})
  defMessage
    = EventSend'_constructor
        {_EventSend'classId = Data.ProtoLens.fieldDefault,
         _EventSend'id = Data.ProtoLens.fieldDefault,
         _EventSend'sender = Data.ProtoLens.fieldDefault,
         _EventSend'receiver = Data.ProtoLens.fieldDefault,
         _EventSend'_unknownFields = []}
  parseMessage
    = let
        loop :: EventSend -> Data.ProtoLens.Encoding.Bytes.Parser EventSend
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
          (do loop Data.ProtoLens.defMessage) "EventSend"
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
instance Control.DeepSeq.NFData EventSend where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventSend'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventSend'classId x__)
                (Control.DeepSeq.deepseq
                   (_EventSend'id x__)
                   (Control.DeepSeq.deepseq
                      (_EventSend'sender x__)
                      (Control.DeepSeq.deepseq (_EventSend'receiver x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/nft/v1beta1/event.proto\DC2\DC2cosmos.nft.v1beta1\"j\n\
    \\tEventSend\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC2\SYN\n\
    \\ACKsender\CAN\ETX \SOH(\tR\ACKsender\DC2\SUB\n\
    \\breceiver\CAN\EOT \SOH(\tR\breceiver\"L\n\
    \\tEventMint\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC2\DC4\n\
    \\ENQowner\CAN\ETX \SOH(\tR\ENQowner\"L\n\
    \\tEventBurn\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC2\DC4\n\
    \\ENQowner\CAN\ETX \SOH(\tR\ENQownerB\DC4Z\DC2cosmossdk.io/x/nftJ\145\t\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL)\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL)\n\
    \.\n\
    \\STX\EOT\NUL\DC2\EOT\ACK\NUL\DC2\SOH\SUB\" EventSend is emitted on Msg/Send\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ACK\b\DC1\n\
    \/\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\DC4\NAK\n\
    \3\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\v\STX\DLE\SUB& id is a unique identifier of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\v\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\v\SO\SI\n\
    \8\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SO\STX\DC4\SUB+ sender is the address of the owner of nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SO\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SO\DC2\DC3\n\
    \6\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC1\STX\SYN\SUB) receiver is the receiver address of nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC1\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC1\DC4\NAK\n\
    \*\n\
    \\STX\EOT\SOH\DC2\EOT\NAK\NUL\RS\SOH\SUB\RS EventMint is emitted on Mint\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\NAK\b\DC1\n\
    \/\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\ETB\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\ETB\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\ETB\DC4\NAK\n\
    \3\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SUB\STX\DLE\SUB& id is a unique identifier of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SUB\t\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SUB\SO\SI\n\
    \4\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\GS\STX\DC3\SUB' owner is the owner address of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\GS\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\GS\DC1\DC2\n\
    \*\n\
    \\STX\EOT\STX\DC2\EOT!\NUL*\SOH\SUB\RS EventBurn is emitted on Burn\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\DC1\n\
    \/\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX#\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX#\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX#\DC4\NAK\n\
    \3\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX&\STX\DLE\SUB& id is a unique identifier of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX&\t\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX&\SO\SI\n\
    \4\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX)\STX\DC3\SUB' owner is the owner address of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX)\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX)\DC1\DC2b\ACKproto3"