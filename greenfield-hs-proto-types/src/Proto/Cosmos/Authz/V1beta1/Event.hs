{- This file was auto-generated from cosmos/authz/v1beta1/event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Authz.V1beta1.Event (
        EventGrant(), EventRevoke()
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
     
         * 'Proto.Cosmos.Authz.V1beta1.Event_Fields.msgTypeUrl' @:: Lens' EventGrant Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Event_Fields.granter' @:: Lens' EventGrant Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Event_Fields.grantee' @:: Lens' EventGrant Data.Text.Text@ -}
data EventGrant
  = EventGrant'_constructor {_EventGrant'msgTypeUrl :: !Data.Text.Text,
                             _EventGrant'granter :: !Data.Text.Text,
                             _EventGrant'grantee :: !Data.Text.Text,
                             _EventGrant'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventGrant where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventGrant "msgTypeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGrant'msgTypeUrl
           (\ x__ y__ -> x__ {_EventGrant'msgTypeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventGrant "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGrant'granter (\ x__ y__ -> x__ {_EventGrant'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventGrant "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventGrant'grantee (\ x__ y__ -> x__ {_EventGrant'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventGrant where
  messageName _ = Data.Text.pack "cosmos.authz.v1beta1.EventGrant"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \EventGrant\DC2 \n\
      \\fmsg_type_url\CAN\STX \SOH(\tR\n\
      \msgTypeUrl\DC22\n\
      \\agranter\CAN\ETX \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\EOT \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        msgTypeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"msgTypeUrl")) ::
              Data.ProtoLens.FieldDescriptor EventGrant
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor EventGrant
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor EventGrant
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, msgTypeUrl__field_descriptor),
           (Data.ProtoLens.Tag 3, granter__field_descriptor),
           (Data.ProtoLens.Tag 4, grantee__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventGrant'_unknownFields
        (\ x__ y__ -> x__ {_EventGrant'_unknownFields = y__})
  defMessage
    = EventGrant'_constructor
        {_EventGrant'msgTypeUrl = Data.ProtoLens.fieldDefault,
         _EventGrant'granter = Data.ProtoLens.fieldDefault,
         _EventGrant'grantee = Data.ProtoLens.fieldDefault,
         _EventGrant'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventGrant -> Data.ProtoLens.Encoding.Bytes.Parser EventGrant
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
                                       "msg_type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"msgTypeUrl") y x)
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventGrant"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"msgTypeUrl") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventGrant where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventGrant'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventGrant'msgTypeUrl x__)
                (Control.DeepSeq.deepseq
                   (_EventGrant'granter x__)
                   (Control.DeepSeq.deepseq (_EventGrant'grantee x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Event_Fields.msgTypeUrl' @:: Lens' EventRevoke Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Event_Fields.granter' @:: Lens' EventRevoke Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Event_Fields.grantee' @:: Lens' EventRevoke Data.Text.Text@ -}
data EventRevoke
  = EventRevoke'_constructor {_EventRevoke'msgTypeUrl :: !Data.Text.Text,
                              _EventRevoke'granter :: !Data.Text.Text,
                              _EventRevoke'grantee :: !Data.Text.Text,
                              _EventRevoke'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventRevoke where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventRevoke "msgTypeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventRevoke'msgTypeUrl
           (\ x__ y__ -> x__ {_EventRevoke'msgTypeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventRevoke "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventRevoke'granter
           (\ x__ y__ -> x__ {_EventRevoke'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventRevoke "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventRevoke'grantee
           (\ x__ y__ -> x__ {_EventRevoke'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventRevoke where
  messageName _ = Data.Text.pack "cosmos.authz.v1beta1.EventRevoke"
  packedMessageDescriptor _
    = "\n\
      \\vEventRevoke\DC2 \n\
      \\fmsg_type_url\CAN\STX \SOH(\tR\n\
      \msgTypeUrl\DC22\n\
      \\agranter\CAN\ETX \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\EOT \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        msgTypeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"msgTypeUrl")) ::
              Data.ProtoLens.FieldDescriptor EventRevoke
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor EventRevoke
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor EventRevoke
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, msgTypeUrl__field_descriptor),
           (Data.ProtoLens.Tag 3, granter__field_descriptor),
           (Data.ProtoLens.Tag 4, grantee__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventRevoke'_unknownFields
        (\ x__ y__ -> x__ {_EventRevoke'_unknownFields = y__})
  defMessage
    = EventRevoke'_constructor
        {_EventRevoke'msgTypeUrl = Data.ProtoLens.fieldDefault,
         _EventRevoke'granter = Data.ProtoLens.fieldDefault,
         _EventRevoke'grantee = Data.ProtoLens.fieldDefault,
         _EventRevoke'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventRevoke -> Data.ProtoLens.Encoding.Bytes.Parser EventRevoke
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
                                       "msg_type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"msgTypeUrl") y x)
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventRevoke"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"msgTypeUrl") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventRevoke where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventRevoke'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventRevoke'msgTypeUrl x__)
                (Control.DeepSeq.deepseq
                   (_EventRevoke'granter x__)
                   (Control.DeepSeq.deepseq (_EventRevoke'grantee x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/authz/v1beta1/event.proto\DC2\DC4cosmos.authz.v1beta1\SUB\EMcosmos_proto/cosmos.proto\"\150\SOH\n\
    \\n\
    \EventGrant\DC2 \n\
    \\fmsg_type_url\CAN\STX \SOH(\tR\n\
    \msgTypeUrl\DC22\n\
    \\agranter\CAN\ETX \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\EOT \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\"\151\SOH\n\
    \\vEventRevoke\DC2 \n\
    \\fmsg_type_url\CAN\STX \SOH(\tR\n\
    \msgTypeUrl\DC22\n\
    \\agranter\CAN\ETX \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\EOT \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressStringB&Z$github.com/cosmos/cosmos-sdk/x/authzJ\240\ACK\n\
    \\ACK\DC2\EOT\SOH\NUL\SUB\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL;\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NUL;\n\
    \0\n\
    \\STX\EOT\NUL\DC2\EOT\t\NUL\DLE\SOH\SUB$ EventGrant is emitted on Msg/Grant\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\DC2\n\
    \@\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STX\SUB\SUB3 Msg type URL for which an autorization is granted\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v\CAN\EM\n\
    \&\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\r\STXF\SUB\EM Granter account address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\r\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\r\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\r\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\r\SYND\n\
    \&\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SI\STXF\SUB\EM Grantee account address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SI\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SI\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\SI\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX\SI\SYND\n\
    \2\n\
    \\STX\EOT\SOH\DC2\EOT\DC3\NUL\SUB\SOH\SUB& EventRevoke is emitted on Msg/Revoke\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC3\b\DC3\n\
    \@\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\NAK\STX\SUB\SUB3 Msg type URL for which an autorization is revoked\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\NAK\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\NAK\CAN\EM\n\
    \&\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\ETB\STXF\SUB\EM Granter account address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\ETB\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\ETB\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\ETB\NAKE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETX\ETB\SYND\n\
    \&\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\EM\STXF\SUB\EM Grantee account address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\EM\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\EM\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX\EM\NAKE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\202\214\ENQ\DC2\ETX\EM\SYNDb\ACKproto3"