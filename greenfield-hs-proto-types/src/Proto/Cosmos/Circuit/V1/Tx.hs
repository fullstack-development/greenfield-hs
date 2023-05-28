{- This file was auto-generated from cosmos/circuit/v1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Circuit.V1.Tx (
        Msg(..), MsgAuthorizeCircuitBreaker(),
        MsgAuthorizeCircuitBreakerResponse(), MsgResetCircuitBreaker(),
        MsgResetCircuitBreakerResponse(), MsgTripCircuitBreaker(),
        MsgTripCircuitBreakerResponse()
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
import qualified Proto.Cosmos.Circuit.V1.Types
import qualified Proto.Cosmos.Msg.V1.Msg
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.granter' @:: Lens' MsgAuthorizeCircuitBreaker Data.Text.Text@
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.grantee' @:: Lens' MsgAuthorizeCircuitBreaker Data.Text.Text@
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.permissions' @:: Lens' MsgAuthorizeCircuitBreaker Proto.Cosmos.Circuit.V1.Types.Permissions@
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.maybe'permissions' @:: Lens' MsgAuthorizeCircuitBreaker (Prelude.Maybe Proto.Cosmos.Circuit.V1.Types.Permissions)@ -}
data MsgAuthorizeCircuitBreaker
  = MsgAuthorizeCircuitBreaker'_constructor {_MsgAuthorizeCircuitBreaker'granter :: !Data.Text.Text,
                                             _MsgAuthorizeCircuitBreaker'grantee :: !Data.Text.Text,
                                             _MsgAuthorizeCircuitBreaker'permissions :: !(Prelude.Maybe Proto.Cosmos.Circuit.V1.Types.Permissions),
                                             _MsgAuthorizeCircuitBreaker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgAuthorizeCircuitBreaker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgAuthorizeCircuitBreaker "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAuthorizeCircuitBreaker'granter
           (\ x__ y__ -> x__ {_MsgAuthorizeCircuitBreaker'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAuthorizeCircuitBreaker "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAuthorizeCircuitBreaker'grantee
           (\ x__ y__ -> x__ {_MsgAuthorizeCircuitBreaker'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAuthorizeCircuitBreaker "permissions" Proto.Cosmos.Circuit.V1.Types.Permissions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAuthorizeCircuitBreaker'permissions
           (\ x__ y__ -> x__ {_MsgAuthorizeCircuitBreaker'permissions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgAuthorizeCircuitBreaker "maybe'permissions" (Prelude.Maybe Proto.Cosmos.Circuit.V1.Types.Permissions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAuthorizeCircuitBreaker'permissions
           (\ x__ y__ -> x__ {_MsgAuthorizeCircuitBreaker'permissions = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgAuthorizeCircuitBreaker where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.MsgAuthorizeCircuitBreaker"
  packedMessageDescriptor _
    = "\n\
      \\SUBMsgAuthorizeCircuitBreaker\DC2\CAN\n\
      \\agranter\CAN\SOH \SOH(\tR\agranter\DC2\CAN\n\
      \\agrantee\CAN\STX \SOH(\tR\agrantee\DC2@\n\
      \\vpermissions\CAN\ETX \SOH(\v2\RS.cosmos.circuit.v1.PermissionsR\vpermissions:\f\130\231\176*\agranter"
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
              Data.ProtoLens.FieldDescriptor MsgAuthorizeCircuitBreaker
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor MsgAuthorizeCircuitBreaker
        permissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "permissions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Circuit.V1.Types.Permissions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'permissions")) ::
              Data.ProtoLens.FieldDescriptor MsgAuthorizeCircuitBreaker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor),
           (Data.ProtoLens.Tag 3, permissions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgAuthorizeCircuitBreaker'_unknownFields
        (\ x__ y__
           -> x__ {_MsgAuthorizeCircuitBreaker'_unknownFields = y__})
  defMessage
    = MsgAuthorizeCircuitBreaker'_constructor
        {_MsgAuthorizeCircuitBreaker'granter = Data.ProtoLens.fieldDefault,
         _MsgAuthorizeCircuitBreaker'grantee = Data.ProtoLens.fieldDefault,
         _MsgAuthorizeCircuitBreaker'permissions = Prelude.Nothing,
         _MsgAuthorizeCircuitBreaker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgAuthorizeCircuitBreaker
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgAuthorizeCircuitBreaker
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
                                       "permissions"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"permissions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgAuthorizeCircuitBreaker"
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
                          (Data.ProtoLens.Field.field @"maybe'permissions") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgAuthorizeCircuitBreaker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgAuthorizeCircuitBreaker'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgAuthorizeCircuitBreaker'granter x__)
                (Control.DeepSeq.deepseq
                   (_MsgAuthorizeCircuitBreaker'grantee x__)
                   (Control.DeepSeq.deepseq
                      (_MsgAuthorizeCircuitBreaker'permissions x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.success' @:: Lens' MsgAuthorizeCircuitBreakerResponse Prelude.Bool@ -}
data MsgAuthorizeCircuitBreakerResponse
  = MsgAuthorizeCircuitBreakerResponse'_constructor {_MsgAuthorizeCircuitBreakerResponse'success :: !Prelude.Bool,
                                                     _MsgAuthorizeCircuitBreakerResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgAuthorizeCircuitBreakerResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgAuthorizeCircuitBreakerResponse "success" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAuthorizeCircuitBreakerResponse'success
           (\ x__ y__
              -> x__ {_MsgAuthorizeCircuitBreakerResponse'success = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgAuthorizeCircuitBreakerResponse where
  messageName _
    = Data.Text.pack
        "cosmos.circuit.v1.MsgAuthorizeCircuitBreakerResponse"
  packedMessageDescriptor _
    = "\n\
      \\"MsgAuthorizeCircuitBreakerResponse\DC2\CAN\n\
      \\asuccess\CAN\SOH \SOH(\bR\asuccess"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"success")) ::
              Data.ProtoLens.FieldDescriptor MsgAuthorizeCircuitBreakerResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, success__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgAuthorizeCircuitBreakerResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgAuthorizeCircuitBreakerResponse'_unknownFields = y__})
  defMessage
    = MsgAuthorizeCircuitBreakerResponse'_constructor
        {_MsgAuthorizeCircuitBreakerResponse'success = Data.ProtoLens.fieldDefault,
         _MsgAuthorizeCircuitBreakerResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgAuthorizeCircuitBreakerResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgAuthorizeCircuitBreakerResponse
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
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgAuthorizeCircuitBreakerResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"success") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgAuthorizeCircuitBreakerResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgAuthorizeCircuitBreakerResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgAuthorizeCircuitBreakerResponse'success x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.authority' @:: Lens' MsgResetCircuitBreaker Data.Text.Text@
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.msgTypeUrls' @:: Lens' MsgResetCircuitBreaker [Data.Text.Text]@
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.vec'msgTypeUrls' @:: Lens' MsgResetCircuitBreaker (Data.Vector.Vector Data.Text.Text)@ -}
data MsgResetCircuitBreaker
  = MsgResetCircuitBreaker'_constructor {_MsgResetCircuitBreaker'authority :: !Data.Text.Text,
                                         _MsgResetCircuitBreaker'msgTypeUrls :: !(Data.Vector.Vector Data.Text.Text),
                                         _MsgResetCircuitBreaker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgResetCircuitBreaker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgResetCircuitBreaker "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgResetCircuitBreaker'authority
           (\ x__ y__ -> x__ {_MsgResetCircuitBreaker'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgResetCircuitBreaker "msgTypeUrls" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgResetCircuitBreaker'msgTypeUrls
           (\ x__ y__ -> x__ {_MsgResetCircuitBreaker'msgTypeUrls = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgResetCircuitBreaker "vec'msgTypeUrls" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgResetCircuitBreaker'msgTypeUrls
           (\ x__ y__ -> x__ {_MsgResetCircuitBreaker'msgTypeUrls = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgResetCircuitBreaker where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.MsgResetCircuitBreaker"
  packedMessageDescriptor _
    = "\n\
      \\SYNMsgResetCircuitBreaker\DC2\FS\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthority\DC2\"\n\
      \\rmsg_type_urls\CAN\ETX \ETX(\tR\vmsgTypeUrls:\SO\130\231\176*\tauthority"
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
              Data.ProtoLens.FieldDescriptor MsgResetCircuitBreaker
        msgTypeUrls__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type_urls"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"msgTypeUrls")) ::
              Data.ProtoLens.FieldDescriptor MsgResetCircuitBreaker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 3, msgTypeUrls__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgResetCircuitBreaker'_unknownFields
        (\ x__ y__ -> x__ {_MsgResetCircuitBreaker'_unknownFields = y__})
  defMessage
    = MsgResetCircuitBreaker'_constructor
        {_MsgResetCircuitBreaker'authority = Data.ProtoLens.fieldDefault,
         _MsgResetCircuitBreaker'msgTypeUrls = Data.Vector.Generic.empty,
         _MsgResetCircuitBreaker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgResetCircuitBreaker
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgResetCircuitBreaker
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
                                  mutable'msgTypeUrls
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
          "MsgResetCircuitBreaker"
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
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgResetCircuitBreaker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgResetCircuitBreaker'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgResetCircuitBreaker'authority x__)
                (Control.DeepSeq.deepseq
                   (_MsgResetCircuitBreaker'msgTypeUrls x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.success' @:: Lens' MsgResetCircuitBreakerResponse Prelude.Bool@ -}
data MsgResetCircuitBreakerResponse
  = MsgResetCircuitBreakerResponse'_constructor {_MsgResetCircuitBreakerResponse'success :: !Prelude.Bool,
                                                 _MsgResetCircuitBreakerResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgResetCircuitBreakerResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgResetCircuitBreakerResponse "success" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgResetCircuitBreakerResponse'success
           (\ x__ y__ -> x__ {_MsgResetCircuitBreakerResponse'success = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgResetCircuitBreakerResponse where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.MsgResetCircuitBreakerResponse"
  packedMessageDescriptor _
    = "\n\
      \\RSMsgResetCircuitBreakerResponse\DC2\CAN\n\
      \\asuccess\CAN\SOH \SOH(\bR\asuccess"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"success")) ::
              Data.ProtoLens.FieldDescriptor MsgResetCircuitBreakerResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, success__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgResetCircuitBreakerResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgResetCircuitBreakerResponse'_unknownFields = y__})
  defMessage
    = MsgResetCircuitBreakerResponse'_constructor
        {_MsgResetCircuitBreakerResponse'success = Data.ProtoLens.fieldDefault,
         _MsgResetCircuitBreakerResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgResetCircuitBreakerResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgResetCircuitBreakerResponse
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
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgResetCircuitBreakerResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"success") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgResetCircuitBreakerResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgResetCircuitBreakerResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgResetCircuitBreakerResponse'success x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.authority' @:: Lens' MsgTripCircuitBreaker Data.Text.Text@
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.msgTypeUrls' @:: Lens' MsgTripCircuitBreaker [Data.Text.Text]@
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.vec'msgTypeUrls' @:: Lens' MsgTripCircuitBreaker (Data.Vector.Vector Data.Text.Text)@ -}
data MsgTripCircuitBreaker
  = MsgTripCircuitBreaker'_constructor {_MsgTripCircuitBreaker'authority :: !Data.Text.Text,
                                        _MsgTripCircuitBreaker'msgTypeUrls :: !(Data.Vector.Vector Data.Text.Text),
                                        _MsgTripCircuitBreaker'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgTripCircuitBreaker where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgTripCircuitBreaker "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgTripCircuitBreaker'authority
           (\ x__ y__ -> x__ {_MsgTripCircuitBreaker'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgTripCircuitBreaker "msgTypeUrls" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgTripCircuitBreaker'msgTypeUrls
           (\ x__ y__ -> x__ {_MsgTripCircuitBreaker'msgTypeUrls = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgTripCircuitBreaker "vec'msgTypeUrls" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgTripCircuitBreaker'msgTypeUrls
           (\ x__ y__ -> x__ {_MsgTripCircuitBreaker'msgTypeUrls = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgTripCircuitBreaker where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.MsgTripCircuitBreaker"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgTripCircuitBreaker\DC2\FS\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthority\DC2\"\n\
      \\rmsg_type_urls\CAN\STX \ETX(\tR\vmsgTypeUrls:\SO\130\231\176*\tauthority"
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
              Data.ProtoLens.FieldDescriptor MsgTripCircuitBreaker
        msgTypeUrls__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type_urls"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"msgTypeUrls")) ::
              Data.ProtoLens.FieldDescriptor MsgTripCircuitBreaker
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, msgTypeUrls__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgTripCircuitBreaker'_unknownFields
        (\ x__ y__ -> x__ {_MsgTripCircuitBreaker'_unknownFields = y__})
  defMessage
    = MsgTripCircuitBreaker'_constructor
        {_MsgTripCircuitBreaker'authority = Data.ProtoLens.fieldDefault,
         _MsgTripCircuitBreaker'msgTypeUrls = Data.Vector.Generic.empty,
         _MsgTripCircuitBreaker'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgTripCircuitBreaker
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgTripCircuitBreaker
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
                                  mutable'msgTypeUrls
                        18
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
          "MsgTripCircuitBreaker"
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
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'msgTypeUrls") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgTripCircuitBreaker where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgTripCircuitBreaker'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgTripCircuitBreaker'authority x__)
                (Control.DeepSeq.deepseq
                   (_MsgTripCircuitBreaker'msgTypeUrls x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Tx_Fields.success' @:: Lens' MsgTripCircuitBreakerResponse Prelude.Bool@ -}
data MsgTripCircuitBreakerResponse
  = MsgTripCircuitBreakerResponse'_constructor {_MsgTripCircuitBreakerResponse'success :: !Prelude.Bool,
                                                _MsgTripCircuitBreakerResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgTripCircuitBreakerResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgTripCircuitBreakerResponse "success" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgTripCircuitBreakerResponse'success
           (\ x__ y__ -> x__ {_MsgTripCircuitBreakerResponse'success = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgTripCircuitBreakerResponse where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.MsgTripCircuitBreakerResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSMsgTripCircuitBreakerResponse\DC2\CAN\n\
      \\asuccess\CAN\SOH \SOH(\bR\asuccess"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"success")) ::
              Data.ProtoLens.FieldDescriptor MsgTripCircuitBreakerResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, success__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgTripCircuitBreakerResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgTripCircuitBreakerResponse'_unknownFields = y__})
  defMessage
    = MsgTripCircuitBreakerResponse'_constructor
        {_MsgTripCircuitBreakerResponse'success = Data.ProtoLens.fieldDefault,
         _MsgTripCircuitBreakerResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgTripCircuitBreakerResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgTripCircuitBreakerResponse
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
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgTripCircuitBreakerResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"success") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgTripCircuitBreakerResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgTripCircuitBreakerResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgTripCircuitBreakerResponse'success x__) ())
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.circuit.v1"
  type ServiceMethods Msg = '["authorizeCircuitBreaker",
                              "resetCircuitBreaker",
                              "tripCircuitBreaker"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2\DEL\n\
      \\ETBAuthorizeCircuitBreaker\DC2-.cosmos.circuit.v1.MsgAuthorizeCircuitBreaker\SUB5.cosmos.circuit.v1.MsgAuthorizeCircuitBreakerResponse\DC2p\n\
      \\DC2TripCircuitBreaker\DC2(.cosmos.circuit.v1.MsgTripCircuitBreaker\SUB0.cosmos.circuit.v1.MsgTripCircuitBreakerResponse\DC2s\n\
      \\DC3ResetCircuitBreaker\DC2).cosmos.circuit.v1.MsgResetCircuitBreaker\SUB1.cosmos.circuit.v1.MsgResetCircuitBreakerResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "authorizeCircuitBreaker" where
  type MethodName Msg "authorizeCircuitBreaker" = "AuthorizeCircuitBreaker"
  type MethodInput Msg "authorizeCircuitBreaker" = MsgAuthorizeCircuitBreaker
  type MethodOutput Msg "authorizeCircuitBreaker" = MsgAuthorizeCircuitBreakerResponse
  type MethodStreamingType Msg "authorizeCircuitBreaker" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "tripCircuitBreaker" where
  type MethodName Msg "tripCircuitBreaker" = "TripCircuitBreaker"
  type MethodInput Msg "tripCircuitBreaker" = MsgTripCircuitBreaker
  type MethodOutput Msg "tripCircuitBreaker" = MsgTripCircuitBreakerResponse
  type MethodStreamingType Msg "tripCircuitBreaker" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "resetCircuitBreaker" where
  type MethodName Msg "resetCircuitBreaker" = "ResetCircuitBreaker"
  type MethodInput Msg "resetCircuitBreaker" = MsgResetCircuitBreaker
  type MethodOutput Msg "resetCircuitBreaker" = MsgResetCircuitBreakerResponse
  type MethodStreamingType Msg "resetCircuitBreaker" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SUBcosmos/circuit/v1/tx.proto\DC2\DC1cosmos.circuit.v1\SUB\ETBcosmos/msg/v1/msg.proto\SUB\GScosmos/circuit/v1/types.proto\"\160\SOH\n\
    \\SUBMsgAuthorizeCircuitBreaker\DC2\CAN\n\
    \\agranter\CAN\SOH \SOH(\tR\agranter\DC2\CAN\n\
    \\agrantee\CAN\STX \SOH(\tR\agrantee\DC2@\n\
    \\vpermissions\CAN\ETX \SOH(\v2\RS.cosmos.circuit.v1.PermissionsR\vpermissions:\f\130\231\176*\agranter\">\n\
    \\"MsgAuthorizeCircuitBreakerResponse\DC2\CAN\n\
    \\asuccess\CAN\SOH \SOH(\bR\asuccess\"i\n\
    \\NAKMsgTripCircuitBreaker\DC2\FS\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthority\DC2\"\n\
    \\rmsg_type_urls\CAN\STX \ETX(\tR\vmsgTypeUrls:\SO\130\231\176*\tauthority\"9\n\
    \\GSMsgTripCircuitBreakerResponse\DC2\CAN\n\
    \\asuccess\CAN\SOH \SOH(\bR\asuccess\"j\n\
    \\SYNMsgResetCircuitBreaker\DC2\FS\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthority\DC2\"\n\
    \\rmsg_type_urls\CAN\ETX \ETX(\tR\vmsgTypeUrls:\SO\130\231\176*\tauthority\":\n\
    \\RSMsgResetCircuitBreakerResponse\DC2\CAN\n\
    \\asuccess\CAN\SOH \SOH(\bR\asuccess2\244\STX\n\
    \\ETXMsg\DC2\DEL\n\
    \\ETBAuthorizeCircuitBreaker\DC2-.cosmos.circuit.v1.MsgAuthorizeCircuitBreaker\SUB5.cosmos.circuit.v1.MsgAuthorizeCircuitBreakerResponse\DC2p\n\
    \\DC2TripCircuitBreaker\DC2(.cosmos.circuit.v1.MsgTripCircuitBreaker\SUB0.cosmos.circuit.v1.MsgTripCircuitBreakerResponse\DC2s\n\
    \\DC3ResetCircuitBreaker\DC2).cosmos.circuit.v1.MsgResetCircuitBreaker\SUB1.cosmos.circuit.v1.MsgResetCircuitBreakerResponse\SUB\ENQ\128\231\176*\SOHB\RSZ\FScosmossdk.io/x/circuit/typesJ\132\ETB\n\
    \\ACK\DC2\EOT\NUL\NULR\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL3\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL!\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \1\n\
    \\STX\ACK\NUL\DC2\EOT\t\NUL\SYN\SOH\SUB% Msg defines the crisis Msg service.\n\
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
    \\128\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\SO\STXg\SUBs AuthorizeCircuitBreaker allows a super-admin to grant (or revoke) another\n\
    \ account's circuit breaker permissions.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SO\ACK\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SO\RS8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SOCe\n\
    \R\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DC1\STXX\SUBE TripCircuitBreaker pauses processing of Msg's in the state machine.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC1\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC1\EM.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC19V\n\
    \\137\SOH\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\NAK\STX[\SUB| ResetCircuitBreaker resumes processing of Msg's in the state machine that\n\
    \ have been been paused using TripCircuitBreaker.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\NAK\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\NAK\SUB0\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\NAK;Y\n\
    \^\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL'\SOH\SUBR MsgAuthorizeCircuitBreaker defines the Msg/AuthorizeCircuitBreaker request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\"\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SUB\STX,\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\SUB\STX,\n\
    \j\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STX\NAK\SUB] granter is the granter of the circuit breaker permissions and must have\n\
    \ LEVEL_SUPER_ADMIN.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS\DC3\DC4\n\
    \O\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STX\NAK\SUBB grantee is the account authorized with the provided permissions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!\DC3\DC4\n\
    \\206\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX&\STX\RS\SUB\192\SOH permissions are the circuit breaker permissions that the grantee receives.\n\
    \ These will overwrite any existing permissions. LEVEL_NONE_UNSPECIFIED can\n\
    \ be specified to revoke all permissions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX&\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX&\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX&\FS\GS\n\
    \_\n\
    \\STX\EOT\SOH\DC2\EOT*\NUL,\SOH\SUBS MsgAuthorizeCircuitBreaker defines the Msg/AuthorizeCircuitBreaker response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX*\b*\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX+\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX+\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX+\a\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX+\DC1\DC2\n\
    \T\n\
    \\STX\EOT\STX\DC2\EOT/\NUL;\SOH\SUBH MsgTripCircuitBreaker defines the Msg/TripCircuitBreaker request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX/\b\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX0\STX.\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX0\STX.\n\
    \O\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX3\STX\ETB\SUBB authority is the account authorized to trip the circuit breaker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX3\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX3\NAK\SYN\n\
    \\213\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX:\STX$\SUB\199\STX msg_type_urls specifies a list of type URLs to immediately stop processing.\n\
    \ IF IT IS LEFT EMPTY, ALL MSG PROCESSING WILL STOP IMMEDIATELY.\n\
    \ This value is validated against the authority's permissions and if the\n\
    \ authority does not have permissions to trip the specified msg type URLs\n\
    \ (or all URLs), the operation will fail.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX:\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX:\"#\n\
    \U\n\
    \\STX\EOT\ETX\DC2\EOT>\NUL@\SOH\SUBI MsgTripCircuitBreaker defines the Msg/TripCircuitBreaker response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX>\b%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX?\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX?\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX?\a\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX?\DC1\DC2\n\
    \V\n\
    \\STX\EOT\EOT\DC2\EOTC\NULM\SOH\SUBJ MsgResetCircuitBreaker defines the Msg/ResetCircuitBreaker request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXC\b\RS\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXD\STX.\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXD\STX.\n\
    \X\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXG\STX\ETB\SUBK authority is the account authorized to trip or reset the circuit breaker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXG\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXG\NAK\SYN\n\
    \\192\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXL\STX$\SUB\178\SOH msg_type_urls specifies a list of Msg type URLs to resume processing. If\n\
    \ it is left empty all Msg processing for type URLs that the account is\n\
    \ authorized to trip will resume.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXL\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXL\"#\n\
    \_\n\
    \\STX\EOT\ENQ\DC2\EOTP\NULR\SOH\SUBS MsgResetCircuitBreakerResponse defines the Msg/ResetCircuitBreaker response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXP\b&\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXQ\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXQ\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXQ\a\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXQ\DC1\DC2b\ACKproto3"