{- This file was auto-generated from cosmos/crisis/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crisis.V1beta1.Tx (
        Msg(..), MsgUpdateParams(), MsgUpdateParamsResponse(),
        MsgVerifyInvariant(), MsgVerifyInvariantResponse()
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Crisis.V1beta1.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Cosmos.Crisis.V1beta1.Tx_Fields.constantFee' @:: Lens' MsgUpdateParams Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Crisis.V1beta1.Tx_Fields.maybe'constantFee' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'constantFee :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
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
instance Data.ProtoLens.Field.HasField MsgUpdateParams "constantFee" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'constantFee
           (\ x__ y__ -> x__ {_MsgUpdateParams'constantFee = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'constantFee" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'constantFee
           (\ x__ y__ -> x__ {_MsgUpdateParams'constantFee = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _
    = Data.Text.pack "cosmos.crisis.v1beta1.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2G\n\
      \\fconstant_fee\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\vconstantFeeB\t\200\222\US\NUL\168\231\176*\SOH:6\130\231\176*\tauthority\138\231\176*#cosmos-sdk/x/crisis/MsgUpdateParams"
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
        constantFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "constant_fee"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'constantFee")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, constantFee__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParams'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParams'_unknownFields = y__})
  defMessage
    = MsgUpdateParams'_constructor
        {_MsgUpdateParams'authority = Data.ProtoLens.fieldDefault,
         _MsgUpdateParams'constantFee = Prelude.Nothing,
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
                                       "constant_fee"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"constantFee") y x)
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'constantFee") _x
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
                (Control.DeepSeq.deepseq (_MsgUpdateParams'constantFee x__) ()))
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
    = Data.Text.pack "cosmos.crisis.v1beta1.MsgUpdateParamsResponse"
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
{- | Fields :
     
         * 'Proto.Cosmos.Crisis.V1beta1.Tx_Fields.sender' @:: Lens' MsgVerifyInvariant Data.Text.Text@
         * 'Proto.Cosmos.Crisis.V1beta1.Tx_Fields.invariantModuleName' @:: Lens' MsgVerifyInvariant Data.Text.Text@
         * 'Proto.Cosmos.Crisis.V1beta1.Tx_Fields.invariantRoute' @:: Lens' MsgVerifyInvariant Data.Text.Text@ -}
data MsgVerifyInvariant
  = MsgVerifyInvariant'_constructor {_MsgVerifyInvariant'sender :: !Data.Text.Text,
                                     _MsgVerifyInvariant'invariantModuleName :: !Data.Text.Text,
                                     _MsgVerifyInvariant'invariantRoute :: !Data.Text.Text,
                                     _MsgVerifyInvariant'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVerifyInvariant where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgVerifyInvariant "sender" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVerifyInvariant'sender
           (\ x__ y__ -> x__ {_MsgVerifyInvariant'sender = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVerifyInvariant "invariantModuleName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVerifyInvariant'invariantModuleName
           (\ x__ y__ -> x__ {_MsgVerifyInvariant'invariantModuleName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVerifyInvariant "invariantRoute" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVerifyInvariant'invariantRoute
           (\ x__ y__ -> x__ {_MsgVerifyInvariant'invariantRoute = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgVerifyInvariant where
  messageName _
    = Data.Text.pack "cosmos.crisis.v1beta1.MsgVerifyInvariant"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgVerifyInvariant\DC20\n\
      \\ACKsender\CAN\SOH \SOH(\tR\ACKsenderB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\NAKinvariant_module_name\CAN\STX \SOH(\tR\DC3invariantModuleName\DC2'\n\
      \\SIinvariant_route\CAN\ETX \SOH(\tR\SOinvariantRoute:5\136\160\US\NUL\232\160\US\NUL\130\231\176*\ACKsender\138\231\176*\GScosmos-sdk/MsgVerifyInvariant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sender__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sender"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sender")) ::
              Data.ProtoLens.FieldDescriptor MsgVerifyInvariant
        invariantModuleName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invariant_module_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"invariantModuleName")) ::
              Data.ProtoLens.FieldDescriptor MsgVerifyInvariant
        invariantRoute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invariant_route"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"invariantRoute")) ::
              Data.ProtoLens.FieldDescriptor MsgVerifyInvariant
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sender__field_descriptor),
           (Data.ProtoLens.Tag 2, invariantModuleName__field_descriptor),
           (Data.ProtoLens.Tag 3, invariantRoute__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVerifyInvariant'_unknownFields
        (\ x__ y__ -> x__ {_MsgVerifyInvariant'_unknownFields = y__})
  defMessage
    = MsgVerifyInvariant'_constructor
        {_MsgVerifyInvariant'sender = Data.ProtoLens.fieldDefault,
         _MsgVerifyInvariant'invariantModuleName = Data.ProtoLens.fieldDefault,
         _MsgVerifyInvariant'invariantRoute = Data.ProtoLens.fieldDefault,
         _MsgVerifyInvariant'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgVerifyInvariant
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgVerifyInvariant
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
                                       "sender"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sender") y x)
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
                                       "invariant_module_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invariantModuleName") y x)
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
                                       "invariant_route"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invariantRoute") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgVerifyInvariant"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sender") _x
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
                         (Data.ProtoLens.Field.field @"invariantModuleName") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"invariantRoute") _x
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
instance Control.DeepSeq.NFData MsgVerifyInvariant where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVerifyInvariant'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgVerifyInvariant'sender x__)
                (Control.DeepSeq.deepseq
                   (_MsgVerifyInvariant'invariantModuleName x__)
                   (Control.DeepSeq.deepseq
                      (_MsgVerifyInvariant'invariantRoute x__) ())))
{- | Fields :
      -}
data MsgVerifyInvariantResponse
  = MsgVerifyInvariantResponse'_constructor {_MsgVerifyInvariantResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVerifyInvariantResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgVerifyInvariantResponse where
  messageName _
    = Data.Text.pack "cosmos.crisis.v1beta1.MsgVerifyInvariantResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBMsgVerifyInvariantResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVerifyInvariantResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgVerifyInvariantResponse'_unknownFields = y__})
  defMessage
    = MsgVerifyInvariantResponse'_constructor
        {_MsgVerifyInvariantResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgVerifyInvariantResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgVerifyInvariantResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgVerifyInvariantResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgVerifyInvariantResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVerifyInvariantResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.crisis.v1beta1"
  type ServiceMethods Msg = '["updateParams", "verifyInvariant"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2o\n\
      \\SIVerifyInvariant\DC2).cosmos.crisis.v1beta1.MsgVerifyInvariant\SUB1.cosmos.crisis.v1beta1.MsgVerifyInvariantResponse\DC2f\n\
      \\fUpdateParams\DC2&.cosmos.crisis.v1beta1.MsgUpdateParams\SUB..cosmos.crisis.v1beta1.MsgUpdateParamsResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "verifyInvariant" where
  type MethodName Msg "verifyInvariant" = "VerifyInvariant"
  type MethodInput Msg "verifyInvariant" = MsgVerifyInvariant
  type MethodOutput Msg "verifyInvariant" = MsgVerifyInvariantResponse
  type MethodStreamingType Msg "verifyInvariant" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/crisis/v1beta1/tx.proto\DC2\NAKcosmos.crisis.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\SUB\RScosmos/base/v1beta1/coin.proto\"\218\SOH\n\
    \\DC2MsgVerifyInvariant\DC20\n\
    \\ACKsender\CAN\SOH \SOH(\tR\ACKsenderB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\NAKinvariant_module_name\CAN\STX \SOH(\tR\DC3invariantModuleName\DC2'\n\
    \\SIinvariant_route\CAN\ETX \SOH(\tR\SOinvariantRoute:5\136\160\US\NUL\232\160\US\NUL\130\231\176*\ACKsender\138\231\176*\GScosmos-sdk/MsgVerifyInvariant\"\FS\n\
    \\SUBMsgVerifyInvariantResponse\"\202\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2G\n\
    \\fconstant_fee\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\vconstantFeeB\t\200\222\US\NUL\168\231\176*\SOH:6\130\231\176*\tauthority\138\231\176*#cosmos-sdk/x/crisis/MsgUpdateParams\"\EM\n\
    \\ETBMsgUpdateParamsResponse2\229\SOH\n\
    \\ETXMsg\DC2o\n\
    \\SIVerifyInvariant\DC2).cosmos.crisis.v1beta1.MsgVerifyInvariant\SUB1.cosmos.crisis.v1beta1.MsgVerifyInvariantResponse\DC2f\n\
    \\fUpdateParams\DC2&.cosmos.crisis.v1beta1.MsgUpdateParams\SUB..cosmos.crisis.v1beta1.MsgUpdateParamsResponse\SUB\ENQ\128\231\176*\SOHB-Z+github.com/cosmos/cosmos-sdk/x/crisis/typesJ\191\SO\n\
    \\ACK\DC2\EOT\NUL\NUL@\"\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULB\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \/\n\
    \\STX\ACK\NUL\DC2\EOT\f\NUL\ETB\SOH\SUB# Msg defines the bank Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\f\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\r\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\r\STX(\n\
    \Q\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DLE\STXO\SUBD VerifyInvariant defines a method to verify a particular invariant.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DLE\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DLE\SYN(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DLE3M\n\
    \\170\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\SYN\STXF\SUB\156\SOH UpdateParams defines a governance operation for updating the x/crisis module\n\
    \ parameters. The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\SYN\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\SYN\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\SYN-D\n\
    \X\n\
    \\STX\EOT\NUL\DC2\EOT\SUB\NUL)\SOH\SUBL MsgVerifyInvariant represents a message to verify a particular invariance.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\ESC\STX+\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\ESC\STX+\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STXB\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\FS\STXB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\RS\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\RS\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\US\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\US\STX-\n\
    \c\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\"\STXE\SUBV sender is the account address of private key to send coins to fee collector account.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\"\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\"\DC4D\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\"\NAKC\n\
    \,\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX%\STX#\SUB\US name of the invariant module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX%\t\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX%!\"\n\
    \<\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX(\STX\GS\SUB/ invariant_route is the msg's invariant route.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX(\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX(\ESC\FS\n\
    \V\n\
    \\STX\EOT\SOH\DC2\ETX,\NUL%\SUBK MsgVerifyInvariantResponse defines the Msg/VerifyInvariant response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX,\b\"\n\
    \\\\n\
    \\STX\EOT\STX\DC2\EOT1\NUL:\SOH\SUBP MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX1\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX2\STX.\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX2\STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX3\STXH\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX3\STXH\n\
    \h\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX6\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX6\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX6\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX6\ETBG\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX6\CANF\n\
    \;\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX9\STXj\SUB. constant_fee defines the x/crisis parameter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX9\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX9\ESC'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX9*+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX9,i\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX9-I\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\245\140\166\ENQ\DC2\ETX9Kh\n\
    \\134\SOH\n\
    \\STX\EOT\ETX\DC2\ETX@\NUL\"\SUB{ MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX@\b\USb\ACKproto3"