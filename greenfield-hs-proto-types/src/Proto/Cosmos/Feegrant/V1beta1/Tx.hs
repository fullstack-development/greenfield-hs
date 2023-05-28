{- This file was auto-generated from cosmos/feegrant/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Feegrant.V1beta1.Tx (
        Msg(..), MsgGrantAllowance(), MsgGrantAllowanceResponse(),
        MsgRevokeAllowance(), MsgRevokeAllowanceResponse()
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Tx_Fields.granter' @:: Lens' MsgGrantAllowance Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Tx_Fields.grantee' @:: Lens' MsgGrantAllowance Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Tx_Fields.allowance' @:: Lens' MsgGrantAllowance Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Feegrant.V1beta1.Tx_Fields.maybe'allowance' @:: Lens' MsgGrantAllowance (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data MsgGrantAllowance
  = MsgGrantAllowance'_constructor {_MsgGrantAllowance'granter :: !Data.Text.Text,
                                    _MsgGrantAllowance'grantee :: !Data.Text.Text,
                                    _MsgGrantAllowance'allowance :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                    _MsgGrantAllowance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgGrantAllowance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgGrantAllowance "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrantAllowance'granter
           (\ x__ y__ -> x__ {_MsgGrantAllowance'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgGrantAllowance "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrantAllowance'grantee
           (\ x__ y__ -> x__ {_MsgGrantAllowance'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgGrantAllowance "allowance" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrantAllowance'allowance
           (\ x__ y__ -> x__ {_MsgGrantAllowance'allowance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgGrantAllowance "maybe'allowance" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrantAllowance'allowance
           (\ x__ y__ -> x__ {_MsgGrantAllowance'allowance = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgGrantAllowance where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.MsgGrantAllowance"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgGrantAllowance\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2]\n\
      \\tallowance\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\tallowanceB)\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI:-\130\231\176*\agranter\138\231\176*\FScosmos-sdk/MsgGrantAllowance"
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
              Data.ProtoLens.FieldDescriptor MsgGrantAllowance
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor MsgGrantAllowance
        allowance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowance")) ::
              Data.ProtoLens.FieldDescriptor MsgGrantAllowance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor),
           (Data.ProtoLens.Tag 3, allowance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgGrantAllowance'_unknownFields
        (\ x__ y__ -> x__ {_MsgGrantAllowance'_unknownFields = y__})
  defMessage
    = MsgGrantAllowance'_constructor
        {_MsgGrantAllowance'granter = Data.ProtoLens.fieldDefault,
         _MsgGrantAllowance'grantee = Data.ProtoLens.fieldDefault,
         _MsgGrantAllowance'allowance = Prelude.Nothing,
         _MsgGrantAllowance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgGrantAllowance
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgGrantAllowance
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
                                       "allowance"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allowance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgGrantAllowance"
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
                          (Data.ProtoLens.Field.field @"maybe'allowance") _x
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
instance Control.DeepSeq.NFData MsgGrantAllowance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgGrantAllowance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgGrantAllowance'granter x__)
                (Control.DeepSeq.deepseq
                   (_MsgGrantAllowance'grantee x__)
                   (Control.DeepSeq.deepseq (_MsgGrantAllowance'allowance x__) ())))
{- | Fields :
      -}
data MsgGrantAllowanceResponse
  = MsgGrantAllowanceResponse'_constructor {_MsgGrantAllowanceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgGrantAllowanceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgGrantAllowanceResponse where
  messageName _
    = Data.Text.pack
        "cosmos.feegrant.v1beta1.MsgGrantAllowanceResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgGrantAllowanceResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgGrantAllowanceResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgGrantAllowanceResponse'_unknownFields = y__})
  defMessage
    = MsgGrantAllowanceResponse'_constructor
        {_MsgGrantAllowanceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgGrantAllowanceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgGrantAllowanceResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgGrantAllowanceResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgGrantAllowanceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgGrantAllowanceResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Tx_Fields.granter' @:: Lens' MsgRevokeAllowance Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Tx_Fields.grantee' @:: Lens' MsgRevokeAllowance Data.Text.Text@ -}
data MsgRevokeAllowance
  = MsgRevokeAllowance'_constructor {_MsgRevokeAllowance'granter :: !Data.Text.Text,
                                     _MsgRevokeAllowance'grantee :: !Data.Text.Text,
                                     _MsgRevokeAllowance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgRevokeAllowance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgRevokeAllowance "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRevokeAllowance'granter
           (\ x__ y__ -> x__ {_MsgRevokeAllowance'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgRevokeAllowance "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRevokeAllowance'grantee
           (\ x__ y__ -> x__ {_MsgRevokeAllowance'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgRevokeAllowance where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.MsgRevokeAllowance"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgRevokeAllowance\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString:.\130\231\176*\agranter\138\231\176*\GScosmos-sdk/MsgRevokeAllowance"
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
              Data.ProtoLens.FieldDescriptor MsgRevokeAllowance
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor MsgRevokeAllowance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgRevokeAllowance'_unknownFields
        (\ x__ y__ -> x__ {_MsgRevokeAllowance'_unknownFields = y__})
  defMessage
    = MsgRevokeAllowance'_constructor
        {_MsgRevokeAllowance'granter = Data.ProtoLens.fieldDefault,
         _MsgRevokeAllowance'grantee = Data.ProtoLens.fieldDefault,
         _MsgRevokeAllowance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgRevokeAllowance
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgRevokeAllowance
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgRevokeAllowance"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgRevokeAllowance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgRevokeAllowance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgRevokeAllowance'granter x__)
                (Control.DeepSeq.deepseq (_MsgRevokeAllowance'grantee x__) ()))
{- | Fields :
      -}
data MsgRevokeAllowanceResponse
  = MsgRevokeAllowanceResponse'_constructor {_MsgRevokeAllowanceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgRevokeAllowanceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgRevokeAllowanceResponse where
  messageName _
    = Data.Text.pack
        "cosmos.feegrant.v1beta1.MsgRevokeAllowanceResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBMsgRevokeAllowanceResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgRevokeAllowanceResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgRevokeAllowanceResponse'_unknownFields = y__})
  defMessage
    = MsgRevokeAllowanceResponse'_constructor
        {_MsgRevokeAllowanceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgRevokeAllowanceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgRevokeAllowanceResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgRevokeAllowanceResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgRevokeAllowanceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgRevokeAllowanceResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.feegrant.v1beta1"
  type ServiceMethods Msg = '["grantAllowance", "revokeAllowance"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2p\n\
      \\SOGrantAllowance\DC2*.cosmos.feegrant.v1beta1.MsgGrantAllowance\SUB2.cosmos.feegrant.v1beta1.MsgGrantAllowanceResponse\DC2s\n\
      \\SIRevokeAllowance\DC2+.cosmos.feegrant.v1beta1.MsgRevokeAllowance\SUB3.cosmos.feegrant.v1beta1.MsgRevokeAllowanceResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "grantAllowance" where
  type MethodName Msg "grantAllowance" = "GrantAllowance"
  type MethodInput Msg "grantAllowance" = MsgGrantAllowance
  type MethodOutput Msg "grantAllowance" = MsgGrantAllowanceResponse
  type MethodStreamingType Msg "grantAllowance" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "revokeAllowance" where
  type MethodName Msg "revokeAllowance" = "RevokeAllowance"
  type MethodInput Msg "revokeAllowance" = MsgRevokeAllowance
  type MethodOutput Msg "revokeAllowance" = MsgRevokeAllowanceResponse
  type MethodStreamingType Msg "revokeAllowance" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/feegrant/v1beta1/tx.proto\DC2\ETBcosmos.feegrant.v1beta1\SUB\EMgoogle/protobuf/any.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\137\STX\n\
    \\DC1MsgGrantAllowance\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2]\n\
    \\tallowance\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\tallowanceB)\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI:-\130\231\176*\agranter\138\231\176*\FScosmos-sdk/MsgGrantAllowance\"\ESC\n\
    \\EMMsgGrantAllowanceResponse\"\172\SOH\n\
    \\DC2MsgRevokeAllowance\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString:.\130\231\176*\agranter\138\231\176*\GScosmos-sdk/MsgRevokeAllowance\"\FS\n\
    \\SUBMsgRevokeAllowanceResponse2\243\SOH\n\
    \\ETXMsg\DC2p\n\
    \\SOGrantAllowance\DC2*.cosmos.feegrant.v1beta1.MsgGrantAllowance\SUB2.cosmos.feegrant.v1beta1.MsgGrantAllowanceResponse\DC2s\n\
    \\SIRevokeAllowance\DC2+.cosmos.feegrant.v1beta1.MsgRevokeAllowance\SUB3.cosmos.feegrant.v1beta1.MsgRevokeAllowanceResponse\SUB\ENQ\128\231\176*\SOHB\EMZ\ETBcosmossdk.io/x/feegrantJ\145\SI\n\
    \\ACK\DC2\EOT\SOH\NUL8%\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL.\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NUL.\n\
    \3\n\
    \\STX\ACK\NUL\DC2\EOT\f\NUL\SYN\SOH\SUB' Msg defines the feegrant msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\f\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\r\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\r\STX(\n\
    \~\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC1\STXL\SUBq GrantAllowance grants fee allowance to the grantee on the granter's\n\
    \ account with the provided expiration time.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC1\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC1\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC11J\n\
    \t\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\NAK\STXO\SUBg RevokeAllowance revokes any fee allowance of granter's account that\n\
    \ has been granted to the grantee.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\NAK\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\NAK\SYN(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\NAK3M\n\
    \z\n\
    \\STX\EOT\NUL\DC2\EOT\SUB\NUL&\SOH\SUBn MsgGrantAllowance adds permission for Grantee to spend up to Allowance\n\
    \ of fees from the account of Granter.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\ESC\STX,\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\ESC\STX,\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STXA\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\FS\STXA\n\
    \W\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STXF\SUBJ granter is the address of the user granting an allowance of their funds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\US\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\US\SYND\n\
    \e\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STXF\SUBX grantee is the address of the user being granted an allowance of another user's funds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\"\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\"\SYND\n\
    \N\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX%\STXq\SUBA allowance can be any of basic, periodic, allowed fee allowance.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX%\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX%\SYN\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX%\"#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX%$p\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\201\214\ENQ\DC2\ETX%%o\n\
    \\\\n\
    \\STX\EOT\SOH\DC2\ETX)\NUL$\SUBQ MsgGrantAllowanceResponse defines the Msg/GrantAllowanceResponse response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX)\b!\n\
    \X\n\
    \\STX\EOT\STX\DC2\EOT,\NUL5\SOH\SUBL MsgRevokeAllowance removes any existing Allowance from Granter to Grantee.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX,\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX-\STX,\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX-\STX,\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX.\STXB\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX.\STXB\n\
    \W\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX1\STXF\SUBJ granter is the address of the user granting an allowance of their funds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX1\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX1\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX1\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX1\SYND\n\
    \e\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX4\STXF\SUBX grantee is the address of the user being granted an allowance of another user's funds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX4\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX4\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX4\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETX4\SYND\n\
    \^\n\
    \\STX\EOT\ETX\DC2\ETX8\NUL%\SUBS MsgRevokeAllowanceResponse defines the Msg/RevokeAllowanceResponse response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX8\b\"b\ACKproto3"