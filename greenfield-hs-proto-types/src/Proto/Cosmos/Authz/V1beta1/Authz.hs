{- This file was auto-generated from cosmos/authz/v1beta1/authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Authz.V1beta1.Authz (
        GenericAuthorization(), Grant(), GrantAuthorization(),
        GrantQueueItem()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.msg' @:: Lens' GenericAuthorization Data.Text.Text@ -}
data GenericAuthorization
  = GenericAuthorization'_constructor {_GenericAuthorization'msg :: !Data.Text.Text,
                                       _GenericAuthorization'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenericAuthorization where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenericAuthorization "msg" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericAuthorization'msg
           (\ x__ y__ -> x__ {_GenericAuthorization'msg = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenericAuthorization where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.GenericAuthorization"
  packedMessageDescriptor _
    = "\n\
      \\DC4GenericAuthorization\DC2\DLE\n\
      \\ETXmsg\CAN\SOH \SOH(\tR\ETXmsg:J\202\180-\"cosmos.authz.v1beta1.Authorization\138\231\176*\UScosmos-sdk/GenericAuthorization"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        msg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"msg")) ::
              Data.ProtoLens.FieldDescriptor GenericAuthorization
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, msg__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenericAuthorization'_unknownFields
        (\ x__ y__ -> x__ {_GenericAuthorization'_unknownFields = y__})
  defMessage
    = GenericAuthorization'_constructor
        {_GenericAuthorization'msg = Data.ProtoLens.fieldDefault,
         _GenericAuthorization'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenericAuthorization
          -> Data.ProtoLens.Encoding.Bytes.Parser GenericAuthorization
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
                                       "msg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"msg") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GenericAuthorization"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"msg") _x
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
instance Control.DeepSeq.NFData GenericAuthorization where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenericAuthorization'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GenericAuthorization'msg x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.authorization' @:: Lens' Grant Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.maybe'authorization' @:: Lens' Grant (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.expiration' @:: Lens' Grant Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.maybe'expiration' @:: Lens' Grant (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data Grant
  = Grant'_constructor {_Grant'authorization :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                        _Grant'expiration :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                        _Grant'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Grant where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Grant "authorization" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'authorization
           (\ x__ y__ -> x__ {_Grant'authorization = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Grant "maybe'authorization" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'authorization
           (\ x__ y__ -> x__ {_Grant'authorization = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Grant "expiration" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'expiration (\ x__ y__ -> x__ {_Grant'expiration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Grant "maybe'expiration" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'expiration (\ x__ y__ -> x__ {_Grant'expiration = y__}))
        Prelude.id
instance Data.ProtoLens.Message Grant where
  messageName _ = Data.Text.pack "cosmos.authz.v1beta1.Grant"
  packedMessageDescriptor _
    = "\n\
      \\ENQGrant\DC2b\n\
      \\rauthorization\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\rauthorizationB&\202\180-\"cosmos.authz.v1beta1.Authorization\DC2D\n\
      \\n\
      \expiration\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \expirationB\b\200\222\US\SOH\144\223\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authorization__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authorization")) ::
              Data.ProtoLens.FieldDescriptor Grant
        expiration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expiration")) ::
              Data.ProtoLens.FieldDescriptor Grant
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authorization__field_descriptor),
           (Data.ProtoLens.Tag 2, expiration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Grant'_unknownFields
        (\ x__ y__ -> x__ {_Grant'_unknownFields = y__})
  defMessage
    = Grant'_constructor
        {_Grant'authorization = Prelude.Nothing,
         _Grant'expiration = Prelude.Nothing, _Grant'_unknownFields = []}
  parseMessage
    = let
        loop :: Grant -> Data.ProtoLens.Encoding.Bytes.Parser Grant
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
                                       "authorization"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authorization") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expiration") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Grant"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'authorization") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'expiration") _x
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
instance Control.DeepSeq.NFData Grant where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Grant'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Grant'authorization x__)
                (Control.DeepSeq.deepseq (_Grant'expiration x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.granter' @:: Lens' GrantAuthorization Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.grantee' @:: Lens' GrantAuthorization Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.authorization' @:: Lens' GrantAuthorization Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.maybe'authorization' @:: Lens' GrantAuthorization (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.expiration' @:: Lens' GrantAuthorization Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.maybe'expiration' @:: Lens' GrantAuthorization (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data GrantAuthorization
  = GrantAuthorization'_constructor {_GrantAuthorization'granter :: !Data.Text.Text,
                                     _GrantAuthorization'grantee :: !Data.Text.Text,
                                     _GrantAuthorization'authorization :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                     _GrantAuthorization'expiration :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                     _GrantAuthorization'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrantAuthorization where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrantAuthorization "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantAuthorization'granter
           (\ x__ y__ -> x__ {_GrantAuthorization'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrantAuthorization "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantAuthorization'grantee
           (\ x__ y__ -> x__ {_GrantAuthorization'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrantAuthorization "authorization" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantAuthorization'authorization
           (\ x__ y__ -> x__ {_GrantAuthorization'authorization = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrantAuthorization "maybe'authorization" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantAuthorization'authorization
           (\ x__ y__ -> x__ {_GrantAuthorization'authorization = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrantAuthorization "expiration" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantAuthorization'expiration
           (\ x__ y__ -> x__ {_GrantAuthorization'expiration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrantAuthorization "maybe'expiration" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantAuthorization'expiration
           (\ x__ y__ -> x__ {_GrantAuthorization'expiration = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrantAuthorization where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.GrantAuthorization"
  packedMessageDescriptor _
    = "\n\
      \\DC2GrantAuthorization\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2b\n\
      \\rauthorization\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\rauthorizationB&\202\180-\"cosmos.authz.v1beta1.Authorization\DC2@\n\
      \\n\
      \expiration\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \expirationB\EOT\144\223\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor GrantAuthorization
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor GrantAuthorization
        authorization__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authorization")) ::
              Data.ProtoLens.FieldDescriptor GrantAuthorization
        expiration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expiration")) ::
              Data.ProtoLens.FieldDescriptor GrantAuthorization
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor),
           (Data.ProtoLens.Tag 3, authorization__field_descriptor),
           (Data.ProtoLens.Tag 4, expiration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrantAuthorization'_unknownFields
        (\ x__ y__ -> x__ {_GrantAuthorization'_unknownFields = y__})
  defMessage
    = GrantAuthorization'_constructor
        {_GrantAuthorization'granter = Data.ProtoLens.fieldDefault,
         _GrantAuthorization'grantee = Data.ProtoLens.fieldDefault,
         _GrantAuthorization'authorization = Prelude.Nothing,
         _GrantAuthorization'expiration = Prelude.Nothing,
         _GrantAuthorization'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrantAuthorization
          -> Data.ProtoLens.Encoding.Bytes.Parser GrantAuthorization
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "authorization"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authorization") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expiration") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GrantAuthorization"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'authorization") _x
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
                             (Data.ProtoLens.Field.field @"maybe'expiration") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData GrantAuthorization where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrantAuthorization'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrantAuthorization'granter x__)
                (Control.DeepSeq.deepseq
                   (_GrantAuthorization'grantee x__)
                   (Control.DeepSeq.deepseq
                      (_GrantAuthorization'authorization x__)
                      (Control.DeepSeq.deepseq
                         (_GrantAuthorization'expiration x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.msgTypeUrls' @:: Lens' GrantQueueItem [Data.Text.Text]@
         * 'Proto.Cosmos.Authz.V1beta1.Authz_Fields.vec'msgTypeUrls' @:: Lens' GrantQueueItem (Data.Vector.Vector Data.Text.Text)@ -}
data GrantQueueItem
  = GrantQueueItem'_constructor {_GrantQueueItem'msgTypeUrls :: !(Data.Vector.Vector Data.Text.Text),
                                 _GrantQueueItem'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrantQueueItem where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrantQueueItem "msgTypeUrls" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantQueueItem'msgTypeUrls
           (\ x__ y__ -> x__ {_GrantQueueItem'msgTypeUrls = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrantQueueItem "vec'msgTypeUrls" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrantQueueItem'msgTypeUrls
           (\ x__ y__ -> x__ {_GrantQueueItem'msgTypeUrls = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrantQueueItem where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.GrantQueueItem"
  packedMessageDescriptor _
    = "\n\
      \\SOGrantQueueItem\DC2\"\n\
      \\rmsg_type_urls\CAN\SOH \ETX(\tR\vmsgTypeUrls"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        msgTypeUrls__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type_urls"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"msgTypeUrls")) ::
              Data.ProtoLens.FieldDescriptor GrantQueueItem
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, msgTypeUrls__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrantQueueItem'_unknownFields
        (\ x__ y__ -> x__ {_GrantQueueItem'_unknownFields = y__})
  defMessage
    = GrantQueueItem'_constructor
        {_GrantQueueItem'msgTypeUrls = Data.Vector.Generic.empty,
         _GrantQueueItem'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrantQueueItem
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser GrantQueueItem
        loop x mutable'msgTypeUrls
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'msgTypeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'msgTypeUrls)
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
                              (Data.ProtoLens.Field.field @"vec'msgTypeUrls") frozen'msgTypeUrls
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "msg_type_urls"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'msgTypeUrls y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'msgTypeUrls
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'msgTypeUrls <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'msgTypeUrls)
          "GrantQueueItem"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'msgTypeUrls") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GrantQueueItem where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrantQueueItem'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GrantQueueItem'msgTypeUrls x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/authz/v1beta1/authz.proto\DC2\DC4cosmos.authz.v1beta1\SUB\DC1amino/amino.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\"t\n\
    \\DC4GenericAuthorization\DC2\DLE\n\
    \\ETXmsg\CAN\SOH \SOH(\tR\ETXmsg:J\202\180-\"cosmos.authz.v1beta1.Authorization\138\231\176*\UScosmos-sdk/GenericAuthorization\"\177\SOH\n\
    \\ENQGrant\DC2b\n\
    \\rauthorization\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\rauthorizationB&\202\180-\"cosmos.authz.v1beta1.Authorization\DC2D\n\
    \\n\
    \expiration\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \expirationB\b\200\222\US\SOH\144\223\US\SOH\"\162\STX\n\
    \\DC2GrantAuthorization\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2b\n\
    \\rauthorization\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\rauthorizationB&\202\180-\"cosmos.authz.v1beta1.Authorization\DC2@\n\
    \\n\
    \expiration\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \expirationB\EOT\144\223\US\SOH\"4\n\
    \\SOGrantQueueItem\DC2\"\n\
    \\rmsg_type_urls\CAN\SOH \ETX(\tR\vmsgTypeUrlsB*Z$github.com/cosmos/cosmos-sdk/x/authz\200\225\RS\NULJ\170\r\n\
    \\ACK\DC2\EOT\SOH\NUL/\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL\RS\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULP\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL/\n\
    \\v\n\
    \\EOT\b\153\236\ETX\DC2\ETX\v\NUL/\n\
    \\146\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\NAK\SOH\SUB\133\SOH GenericAuthorization gives the grantee unrestricted permissions to execute\n\
    \ the provided method on behalf of the granter's account.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\FS\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DLE\STXQ\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\DLE\STXQ\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STXT\n\
    \\SO\n\
    \\a\EOT\NUL\a\201\214\ENQ\NUL\DC2\ETX\DC1\STXT\n\
    \]\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\STX\DC1\SUBP Msg, identified by it's type URL, to grant unrestricted permissions to execute\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4\SI\DLE\n\
    \Z\n\
    \\STX\EOT\SOH\DC2\EOT\EM\NUL\US\SOH\SUBN Grant gives permissions to execute\n\
    \ the provide method with expiration time.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\EM\b\r\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SUB\STXr\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\SUB\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SUB\SYN#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SUB&'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\SUB(q\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\201\214\ENQ\DC2\ETX\SUB)p\n\
    \\197\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\RS\STXe\SUB\183\SOH time when the grant will expire and will be pruned. If null, then the grant\n\
    \ doesn't have a time expiration (other conditions  in `authorization`\n\
    \ may apply to invalidate the grant)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\RS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\RS\FS&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\RS)*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\RS+d\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\242\251\ETX\DC2\ETX\RS,F\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX\RSHc\n\
    \\146\SOH\n\
    \\STX\EOT\STX\DC2\EOT#\NUL)\SOH\SUB\133\SOH GrantAuthorization extends a grant with both the addresses of the grantee and granter.\n\
    \ It is used in genesis.proto and query.proto\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX#\b\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX$\STXF\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX$\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX$\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX$\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX$\SYND\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX%\STXF\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX%\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX%\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX%\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETX%\SYND\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX'\STXx\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX'\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX'\FS)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX',-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETX'.w\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\201\214\ENQ\DC2\ETX'/v\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX(\STXK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX(\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX(\FS&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX(,-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\b\DC2\ETX(.J\n\
    \\SI\n\
    \\b\EOT\STX\STX\ETX\b\242\251\ETX\DC2\ETX(/I\n\
    \G\n\
    \\STX\EOT\ETX\DC2\EOT,\NUL/\SOH\SUB; GrantQueueItem contains the list of TypeURL of a sdk.Msg.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX,\b\SYN\n\
    \G\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX.\STX$\SUB: msg_type_urls contains the list of TypeURL of a sdk.Msg.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX.\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX.\"#b\ACKproto3"