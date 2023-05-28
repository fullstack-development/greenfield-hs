{- This file was auto-generated from cosmos/slashing/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Slashing.V1beta1.Tx (
        Msg(..), MsgUnjail(), MsgUnjailResponse(), MsgUpdateParams(),
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.Cosmos.Slashing.V1beta1.Slashing
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Tx_Fields.validatorAddr' @:: Lens' MsgUnjail Data.Text.Text@ -}
data MsgUnjail
  = MsgUnjail'_constructor {_MsgUnjail'validatorAddr :: !Data.Text.Text,
                            _MsgUnjail'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUnjail where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUnjail "validatorAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUnjail'validatorAddr
           (\ x__ y__ -> x__ {_MsgUnjail'validatorAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUnjail where
  messageName _ = Data.Text.pack "cosmos.slashing.v1beta1.MsgUnjail"
  packedMessageDescriptor _
    = "\n\
      \\tMsgUnjail\DC2d\n\
      \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB=\234\222\US\aaddress\210\180-\GScosmos.ValidatorAddressString\162\231\176*\aaddress\168\231\176*\SOH:0\136\160\US\NUL\130\231\176*\SOvalidator_addr\138\231\176*\DC4cosmos-sdk/MsgUnjail"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddr")) ::
              Data.ProtoLens.FieldDescriptor MsgUnjail
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUnjail'_unknownFields
        (\ x__ y__ -> x__ {_MsgUnjail'_unknownFields = y__})
  defMessage
    = MsgUnjail'_constructor
        {_MsgUnjail'validatorAddr = Data.ProtoLens.fieldDefault,
         _MsgUnjail'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgUnjail -> Data.ProtoLens.Encoding.Bytes.Parser MsgUnjail
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
                                       "validator_addr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUnjail"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddr") _x
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
instance Control.DeepSeq.NFData MsgUnjail where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUnjail'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgUnjail'validatorAddr x__) ())
{- | Fields :
      -}
data MsgUnjailResponse
  = MsgUnjailResponse'_constructor {_MsgUnjailResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUnjailResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUnjailResponse where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.MsgUnjailResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgUnjailResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUnjailResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgUnjailResponse'_unknownFields = y__})
  defMessage
    = MsgUnjailResponse'_constructor
        {_MsgUnjailResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUnjailResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUnjailResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgUnjailResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUnjailResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUnjailResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Cosmos.Slashing.V1beta1.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Cosmos.Slashing.V1beta1.Slashing.Params@
         * 'Proto.Cosmos.Slashing.V1beta1.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params),
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
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Cosmos.Slashing.V1beta1.Slashing.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2B\n\
      \\ACKparams\CAN\STX \SOH(\v2\US.cosmos.slashing.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:8\130\231\176*\tauthority\138\231\176*%cosmos-sdk/x/slashing/MsgUpdateParams"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Slashing.V1beta1.Slashing.Params)
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
    = Data.Text.pack "cosmos.slashing.v1beta1.MsgUpdateParamsResponse"
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
  type ServicePackage Msg = "cosmos.slashing.v1beta1"
  type ServiceMethods Msg = '["unjail", "updateParams"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2X\n\
      \\ACKUnjail\DC2\".cosmos.slashing.v1beta1.MsgUnjail\SUB*.cosmos.slashing.v1beta1.MsgUnjailResponse\DC2j\n\
      \\fUpdateParams\DC2(.cosmos.slashing.v1beta1.MsgUpdateParams\SUB0.cosmos.slashing.v1beta1.MsgUpdateParamsResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "unjail" where
  type MethodName Msg "unjail" = "Unjail"
  type MethodInput Msg "unjail" = MsgUnjail
  type MethodOutput Msg "unjail" = MsgUnjailResponse
  type MethodStreamingType Msg "unjail" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/slashing/v1beta1/tx.proto\DC2\ETBcosmos.slashing.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB&cosmos/slashing/v1beta1/slashing.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\163\SOH\n\
    \\tMsgUnjail\DC2d\n\
    \\SOvalidator_addr\CAN\SOH \SOH(\tR\rvalidatorAddrB=\234\222\US\aaddress\210\180-\GScosmos.ValidatorAddressString\162\231\176*\aaddress\168\231\176*\SOH:0\136\160\US\NUL\130\231\176*\SOvalidator_addr\138\231\176*\DC4cosmos-sdk/MsgUnjail\"\DC3\n\
    \\DC1MsgUnjailResponse\"\199\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2B\n\
    \\ACKparams\CAN\STX \SOH(\v2\US.cosmos.slashing.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:8\130\231\176*\tauthority\138\231\176*%cosmos-sdk/x/slashing/MsgUpdateParams\"\EM\n\
    \\ETBMsgUpdateParamsResponse2\210\SOH\n\
    \\ETXMsg\DC2X\n\
    \\ACKUnjail\DC2\".cosmos.slashing.v1beta1.MsgUnjail\SUB*.cosmos.slashing.v1beta1.MsgUnjailResponse\DC2j\n\
    \\fUpdateParams\DC2(.cosmos.slashing.v1beta1.MsgUpdateParams\SUB0.cosmos.slashing.v1beta1.MsgUpdateParamsResponse\SUB\ENQ\128\231\176*\SOHB3Z-github.com/cosmos/cosmos-sdk/x/slashing/types\168\226\RS\SOHJ\212\r\n\
    \\ACK\DC2\EOT\NUL\NULB\"\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL \n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULO\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULO\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL$\n\
    \\v\n\
    \\EOT\b\165\236\ETX\DC2\ETX\EOT\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL0\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL\ESC\n\
    \3\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL\SUB\SOH\SUB' Msg defines the slashing Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SO\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\SO\STX(\n\
    \\184\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC3\STX4\SUB\170\SOH Unjail defines a method for unjailing a jailed validator, thus returning\n\
    \ them into the bonded validator set, so they can begin receiving provisions\n\
    \ and rewards again.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\r\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC3!2\n\
    \\184\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\EM\STXF\SUB\170\SOH UpdateParams defines a governance operation for updating the x/slashing module\n\
    \ parameters. The authority defaults to the x/gov module account.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\EM\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\EM\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\EM-D\n\
    \;\n\
    \\STX\EOT\NUL\DC2\EOT\GS\NUL)\SOH\SUB/ MsgUnjail defines the Msg/Unjail request type\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\GS\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\RS\STX3\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\RS\STX3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\US\STX9\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\US\STX9\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX!\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX!\STX-\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT#\STX(\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX#\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX#\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT#\FS(\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX$\EOT<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\237\251\ETX\DC2\ETX%\EOT&\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\244\140\166\ENQ\DC2\ETX&\EOT&\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX'\EOT!\n\
    \C\n\
    \\STX\EOT\SOH\DC2\ETX,\NUL\FS\SUB8 MsgUnjailResponse defines the Msg/Unjail response type\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX,\b\EM\n\
    \\\\n\
    \\STX\EOT\STX\DC2\EOT1\NUL<\SOH\SUBP MsgUpdateParams is the Msg/UpdateParams request type.\n\
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
    \\ETX\EOT\STX\a\DC2\ETX3\STXJ\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX3\STXJ\n\
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
    \k\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX;\STXR\SUB^ params defines the x/slashing parameters to update.\n\
    \\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX;\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX;\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX;\DC4Q\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX;\NAK1\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\245\140\166\ENQ\DC2\ETX;3P\n\
    \\134\SOH\n\
    \\STX\EOT\ETX\DC2\ETXB\NUL\"\SUB{ MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXB\b\USb\ACKproto3"