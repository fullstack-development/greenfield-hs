{- This file was auto-generated from cosmos/base/reflection/v2alpha1/reflection.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Reflection.V2alpha1.Reflection (
        ReflectionService(..), AppDescriptor(), AuthnDescriptor(),
        ChainDescriptor(), CodecDescriptor(), ConfigurationDescriptor(),
        GetAuthnDescriptorRequest(), GetAuthnDescriptorResponse(),
        GetChainDescriptorRequest(), GetChainDescriptorResponse(),
        GetCodecDescriptorRequest(), GetCodecDescriptorResponse(),
        GetConfigurationDescriptorRequest(),
        GetConfigurationDescriptorResponse(),
        GetQueryServicesDescriptorRequest(),
        GetQueryServicesDescriptorResponse(), GetTxDescriptorRequest(),
        GetTxDescriptorResponse(), InterfaceAcceptingMessageDescriptor(),
        InterfaceDescriptor(), InterfaceImplementerDescriptor(),
        MsgDescriptor(), QueryMethodDescriptor(), QueryServiceDescriptor(),
        QueryServicesDescriptor(), SigningModeDescriptor(), TxDescriptor()
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
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.authn' @:: Lens' AppDescriptor AuthnDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'authn' @:: Lens' AppDescriptor (Prelude.Maybe AuthnDescriptor)@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.chain' @:: Lens' AppDescriptor ChainDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'chain' @:: Lens' AppDescriptor (Prelude.Maybe ChainDescriptor)@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.codec' @:: Lens' AppDescriptor CodecDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'codec' @:: Lens' AppDescriptor (Prelude.Maybe CodecDescriptor)@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.configuration' @:: Lens' AppDescriptor ConfigurationDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'configuration' @:: Lens' AppDescriptor (Prelude.Maybe ConfigurationDescriptor)@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.queryServices' @:: Lens' AppDescriptor QueryServicesDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'queryServices' @:: Lens' AppDescriptor (Prelude.Maybe QueryServicesDescriptor)@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.tx' @:: Lens' AppDescriptor TxDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'tx' @:: Lens' AppDescriptor (Prelude.Maybe TxDescriptor)@ -}
data AppDescriptor
  = AppDescriptor'_constructor {_AppDescriptor'authn :: !(Prelude.Maybe AuthnDescriptor),
                                _AppDescriptor'chain :: !(Prelude.Maybe ChainDescriptor),
                                _AppDescriptor'codec :: !(Prelude.Maybe CodecDescriptor),
                                _AppDescriptor'configuration :: !(Prelude.Maybe ConfigurationDescriptor),
                                _AppDescriptor'queryServices :: !(Prelude.Maybe QueryServicesDescriptor),
                                _AppDescriptor'tx :: !(Prelude.Maybe TxDescriptor),
                                _AppDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AppDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AppDescriptor "authn" AuthnDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'authn
           (\ x__ y__ -> x__ {_AppDescriptor'authn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppDescriptor "maybe'authn" (Prelude.Maybe AuthnDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'authn
           (\ x__ y__ -> x__ {_AppDescriptor'authn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppDescriptor "chain" ChainDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'chain
           (\ x__ y__ -> x__ {_AppDescriptor'chain = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppDescriptor "maybe'chain" (Prelude.Maybe ChainDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'chain
           (\ x__ y__ -> x__ {_AppDescriptor'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppDescriptor "codec" CodecDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'codec
           (\ x__ y__ -> x__ {_AppDescriptor'codec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppDescriptor "maybe'codec" (Prelude.Maybe CodecDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'codec
           (\ x__ y__ -> x__ {_AppDescriptor'codec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppDescriptor "configuration" ConfigurationDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'configuration
           (\ x__ y__ -> x__ {_AppDescriptor'configuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppDescriptor "maybe'configuration" (Prelude.Maybe ConfigurationDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'configuration
           (\ x__ y__ -> x__ {_AppDescriptor'configuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppDescriptor "queryServices" QueryServicesDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'queryServices
           (\ x__ y__ -> x__ {_AppDescriptor'queryServices = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppDescriptor "maybe'queryServices" (Prelude.Maybe QueryServicesDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'queryServices
           (\ x__ y__ -> x__ {_AppDescriptor'queryServices = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppDescriptor "tx" TxDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'tx (\ x__ y__ -> x__ {_AppDescriptor'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppDescriptor "maybe'tx" (Prelude.Maybe TxDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppDescriptor'tx (\ x__ y__ -> x__ {_AppDescriptor'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message AppDescriptor where
  messageName _
    = Data.Text.pack "cosmos.base.reflection.v2alpha1.AppDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\rAppDescriptor\DC2F\n\
      \\ENQauthn\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.AuthnDescriptorR\ENQauthn\DC2F\n\
      \\ENQchain\CAN\STX \SOH(\v20.cosmos.base.reflection.v2alpha1.ChainDescriptorR\ENQchain\DC2F\n\
      \\ENQcodec\CAN\ETX \SOH(\v20.cosmos.base.reflection.v2alpha1.CodecDescriptorR\ENQcodec\DC2^\n\
      \\rconfiguration\CAN\EOT \SOH(\v28.cosmos.base.reflection.v2alpha1.ConfigurationDescriptorR\rconfiguration\DC2_\n\
      \\SOquery_services\CAN\ENQ \SOH(\v28.cosmos.base.reflection.v2alpha1.QueryServicesDescriptorR\rqueryServices\DC2=\n\
      \\STXtx\CAN\ACK \SOH(\v2-.cosmos.base.reflection.v2alpha1.TxDescriptorR\STXtx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authn"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AuthnDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authn")) ::
              Data.ProtoLens.FieldDescriptor AppDescriptor
        chain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ChainDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chain")) ::
              Data.ProtoLens.FieldDescriptor AppDescriptor
        codec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codec"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CodecDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'codec")) ::
              Data.ProtoLens.FieldDescriptor AppDescriptor
        configuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "configuration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigurationDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'configuration")) ::
              Data.ProtoLens.FieldDescriptor AppDescriptor
        queryServices__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_services"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QueryServicesDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queryServices")) ::
              Data.ProtoLens.FieldDescriptor AppDescriptor
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor AppDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authn__field_descriptor),
           (Data.ProtoLens.Tag 2, chain__field_descriptor),
           (Data.ProtoLens.Tag 3, codec__field_descriptor),
           (Data.ProtoLens.Tag 4, configuration__field_descriptor),
           (Data.ProtoLens.Tag 5, queryServices__field_descriptor),
           (Data.ProtoLens.Tag 6, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AppDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_AppDescriptor'_unknownFields = y__})
  defMessage
    = AppDescriptor'_constructor
        {_AppDescriptor'authn = Prelude.Nothing,
         _AppDescriptor'chain = Prelude.Nothing,
         _AppDescriptor'codec = Prelude.Nothing,
         _AppDescriptor'configuration = Prelude.Nothing,
         _AppDescriptor'queryServices = Prelude.Nothing,
         _AppDescriptor'tx = Prelude.Nothing,
         _AppDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AppDescriptor -> Data.ProtoLens.Encoding.Bytes.Parser AppDescriptor
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
                                       "authn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"authn") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "chain"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chain") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "codec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"codec") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "configuration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"configuration") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "query_services"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"queryServices") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AppDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'authn") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chain") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'codec") _x
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
                             (Data.ProtoLens.Field.field @"maybe'configuration") _x
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
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'queryServices") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tx") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData AppDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AppDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AppDescriptor'authn x__)
                (Control.DeepSeq.deepseq
                   (_AppDescriptor'chain x__)
                   (Control.DeepSeq.deepseq
                      (_AppDescriptor'codec x__)
                      (Control.DeepSeq.deepseq
                         (_AppDescriptor'configuration x__)
                         (Control.DeepSeq.deepseq
                            (_AppDescriptor'queryServices x__)
                            (Control.DeepSeq.deepseq (_AppDescriptor'tx x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.signModes' @:: Lens' AuthnDescriptor [SigningModeDescriptor]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'signModes' @:: Lens' AuthnDescriptor (Data.Vector.Vector SigningModeDescriptor)@ -}
data AuthnDescriptor
  = AuthnDescriptor'_constructor {_AuthnDescriptor'signModes :: !(Data.Vector.Vector SigningModeDescriptor),
                                  _AuthnDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthnDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AuthnDescriptor "signModes" [SigningModeDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthnDescriptor'signModes
           (\ x__ y__ -> x__ {_AuthnDescriptor'signModes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AuthnDescriptor "vec'signModes" (Data.Vector.Vector SigningModeDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthnDescriptor'signModes
           (\ x__ y__ -> x__ {_AuthnDescriptor'signModes = y__}))
        Prelude.id
instance Data.ProtoLens.Message AuthnDescriptor where
  messageName _
    = Data.Text.pack "cosmos.base.reflection.v2alpha1.AuthnDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\SIAuthnDescriptor\DC2U\n\
      \\n\
      \sign_modes\CAN\SOH \ETX(\v26.cosmos.base.reflection.v2alpha1.SigningModeDescriptorR\tsignModes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signModes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sign_modes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SigningModeDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signModes")) ::
              Data.ProtoLens.FieldDescriptor AuthnDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signModes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AuthnDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_AuthnDescriptor'_unknownFields = y__})
  defMessage
    = AuthnDescriptor'_constructor
        {_AuthnDescriptor'signModes = Data.Vector.Generic.empty,
         _AuthnDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AuthnDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SigningModeDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser AuthnDescriptor
        loop x mutable'signModes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'signModes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'signModes)
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
                              (Data.ProtoLens.Field.field @"vec'signModes") frozen'signModes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "sign_modes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'signModes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'signModes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'signModes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'signModes)
          "AuthnDescriptor"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'signModes") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AuthnDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AuthnDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AuthnDescriptor'signModes x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.id' @:: Lens' ChainDescriptor Data.Text.Text@ -}
data ChainDescriptor
  = ChainDescriptor'_constructor {_ChainDescriptor'id :: !Data.Text.Text,
                                  _ChainDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ChainDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ChainDescriptor "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ChainDescriptor'id (\ x__ y__ -> x__ {_ChainDescriptor'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message ChainDescriptor where
  messageName _
    = Data.Text.pack "cosmos.base.reflection.v2alpha1.ChainDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\SIChainDescriptor\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor ChainDescriptor
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ChainDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ChainDescriptor'_unknownFields = y__})
  defMessage
    = ChainDescriptor'_constructor
        {_ChainDescriptor'id = Data.ProtoLens.fieldDefault,
         _ChainDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ChainDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser ChainDescriptor
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ChainDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
instance Control.DeepSeq.NFData ChainDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ChainDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ChainDescriptor'id x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.interfaces' @:: Lens' CodecDescriptor [InterfaceDescriptor]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'interfaces' @:: Lens' CodecDescriptor (Data.Vector.Vector InterfaceDescriptor)@ -}
data CodecDescriptor
  = CodecDescriptor'_constructor {_CodecDescriptor'interfaces :: !(Data.Vector.Vector InterfaceDescriptor),
                                  _CodecDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CodecDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CodecDescriptor "interfaces" [InterfaceDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CodecDescriptor'interfaces
           (\ x__ y__ -> x__ {_CodecDescriptor'interfaces = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CodecDescriptor "vec'interfaces" (Data.Vector.Vector InterfaceDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CodecDescriptor'interfaces
           (\ x__ y__ -> x__ {_CodecDescriptor'interfaces = y__}))
        Prelude.id
instance Data.ProtoLens.Message CodecDescriptor where
  messageName _
    = Data.Text.pack "cosmos.base.reflection.v2alpha1.CodecDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\SICodecDescriptor\DC2T\n\
      \\n\
      \interfaces\CAN\SOH \ETX(\v24.cosmos.base.reflection.v2alpha1.InterfaceDescriptorR\n\
      \interfaces"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        interfaces__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interfaces"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor InterfaceDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"interfaces")) ::
              Data.ProtoLens.FieldDescriptor CodecDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, interfaces__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CodecDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_CodecDescriptor'_unknownFields = y__})
  defMessage
    = CodecDescriptor'_constructor
        {_CodecDescriptor'interfaces = Data.Vector.Generic.empty,
         _CodecDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CodecDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld InterfaceDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser CodecDescriptor
        loop x mutable'interfaces
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'interfaces <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'interfaces)
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
                              (Data.ProtoLens.Field.field @"vec'interfaces") frozen'interfaces
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "interfaces"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'interfaces y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'interfaces
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'interfaces <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'interfaces)
          "CodecDescriptor"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'interfaces") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CodecDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CodecDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CodecDescriptor'interfaces x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.bech32AccountAddressPrefix' @:: Lens' ConfigurationDescriptor Data.Text.Text@ -}
data ConfigurationDescriptor
  = ConfigurationDescriptor'_constructor {_ConfigurationDescriptor'bech32AccountAddressPrefix :: !Data.Text.Text,
                                          _ConfigurationDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigurationDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigurationDescriptor "bech32AccountAddressPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigurationDescriptor'bech32AccountAddressPrefix
           (\ x__ y__
              -> x__
                   {_ConfigurationDescriptor'bech32AccountAddressPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigurationDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.ConfigurationDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\ETBConfigurationDescriptor\DC2A\n\
      \\GSbech32_account_address_prefix\CAN\SOH \SOH(\tR\SUBbech32AccountAddressPrefix"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bech32AccountAddressPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bech32_account_address_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bech32AccountAddressPrefix")) ::
              Data.ProtoLens.FieldDescriptor ConfigurationDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            bech32AccountAddressPrefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigurationDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ConfigurationDescriptor'_unknownFields = y__})
  defMessage
    = ConfigurationDescriptor'_constructor
        {_ConfigurationDescriptor'bech32AccountAddressPrefix = Data.ProtoLens.fieldDefault,
         _ConfigurationDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigurationDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser ConfigurationDescriptor
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
                                       "bech32_account_address_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bech32AccountAddressPrefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConfigurationDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"bech32AccountAddressPrefix") _x
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
instance Control.DeepSeq.NFData ConfigurationDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigurationDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConfigurationDescriptor'bech32AccountAddressPrefix x__) ())
{- | Fields :
      -}
data GetAuthnDescriptorRequest
  = GetAuthnDescriptorRequest'_constructor {_GetAuthnDescriptorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetAuthnDescriptorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetAuthnDescriptorRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetAuthnDescriptorRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMGetAuthnDescriptorRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetAuthnDescriptorRequest'_unknownFields
        (\ x__ y__
           -> x__ {_GetAuthnDescriptorRequest'_unknownFields = y__})
  defMessage
    = GetAuthnDescriptorRequest'_constructor
        {_GetAuthnDescriptorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetAuthnDescriptorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetAuthnDescriptorRequest
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
          (do loop Data.ProtoLens.defMessage) "GetAuthnDescriptorRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetAuthnDescriptorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetAuthnDescriptorRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.authn' @:: Lens' GetAuthnDescriptorResponse AuthnDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'authn' @:: Lens' GetAuthnDescriptorResponse (Prelude.Maybe AuthnDescriptor)@ -}
data GetAuthnDescriptorResponse
  = GetAuthnDescriptorResponse'_constructor {_GetAuthnDescriptorResponse'authn :: !(Prelude.Maybe AuthnDescriptor),
                                             _GetAuthnDescriptorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetAuthnDescriptorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetAuthnDescriptorResponse "authn" AuthnDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetAuthnDescriptorResponse'authn
           (\ x__ y__ -> x__ {_GetAuthnDescriptorResponse'authn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetAuthnDescriptorResponse "maybe'authn" (Prelude.Maybe AuthnDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetAuthnDescriptorResponse'authn
           (\ x__ y__ -> x__ {_GetAuthnDescriptorResponse'authn = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetAuthnDescriptorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetAuthnDescriptorResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBGetAuthnDescriptorResponse\DC2F\n\
      \\ENQauthn\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.AuthnDescriptorR\ENQauthn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authn"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AuthnDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authn")) ::
              Data.ProtoLens.FieldDescriptor GetAuthnDescriptorResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, authn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetAuthnDescriptorResponse'_unknownFields
        (\ x__ y__
           -> x__ {_GetAuthnDescriptorResponse'_unknownFields = y__})
  defMessage
    = GetAuthnDescriptorResponse'_constructor
        {_GetAuthnDescriptorResponse'authn = Prelude.Nothing,
         _GetAuthnDescriptorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetAuthnDescriptorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetAuthnDescriptorResponse
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
                                       "authn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"authn") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetAuthnDescriptorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'authn") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetAuthnDescriptorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetAuthnDescriptorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetAuthnDescriptorResponse'authn x__) ())
{- | Fields :
      -}
data GetChainDescriptorRequest
  = GetChainDescriptorRequest'_constructor {_GetChainDescriptorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetChainDescriptorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetChainDescriptorRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetChainDescriptorRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMGetChainDescriptorRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetChainDescriptorRequest'_unknownFields
        (\ x__ y__
           -> x__ {_GetChainDescriptorRequest'_unknownFields = y__})
  defMessage
    = GetChainDescriptorRequest'_constructor
        {_GetChainDescriptorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetChainDescriptorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetChainDescriptorRequest
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
          (do loop Data.ProtoLens.defMessage) "GetChainDescriptorRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetChainDescriptorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetChainDescriptorRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.chain' @:: Lens' GetChainDescriptorResponse ChainDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'chain' @:: Lens' GetChainDescriptorResponse (Prelude.Maybe ChainDescriptor)@ -}
data GetChainDescriptorResponse
  = GetChainDescriptorResponse'_constructor {_GetChainDescriptorResponse'chain :: !(Prelude.Maybe ChainDescriptor),
                                             _GetChainDescriptorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetChainDescriptorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetChainDescriptorResponse "chain" ChainDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainDescriptorResponse'chain
           (\ x__ y__ -> x__ {_GetChainDescriptorResponse'chain = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetChainDescriptorResponse "maybe'chain" (Prelude.Maybe ChainDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetChainDescriptorResponse'chain
           (\ x__ y__ -> x__ {_GetChainDescriptorResponse'chain = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetChainDescriptorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetChainDescriptorResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBGetChainDescriptorResponse\DC2F\n\
      \\ENQchain\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.ChainDescriptorR\ENQchain"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ChainDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chain")) ::
              Data.ProtoLens.FieldDescriptor GetChainDescriptorResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, chain__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetChainDescriptorResponse'_unknownFields
        (\ x__ y__
           -> x__ {_GetChainDescriptorResponse'_unknownFields = y__})
  defMessage
    = GetChainDescriptorResponse'_constructor
        {_GetChainDescriptorResponse'chain = Prelude.Nothing,
         _GetChainDescriptorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetChainDescriptorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetChainDescriptorResponse
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
                                       "chain"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chain") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetChainDescriptorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chain") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetChainDescriptorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetChainDescriptorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetChainDescriptorResponse'chain x__) ())
{- | Fields :
      -}
data GetCodecDescriptorRequest
  = GetCodecDescriptorRequest'_constructor {_GetCodecDescriptorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetCodecDescriptorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetCodecDescriptorRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetCodecDescriptorRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMGetCodecDescriptorRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetCodecDescriptorRequest'_unknownFields
        (\ x__ y__
           -> x__ {_GetCodecDescriptorRequest'_unknownFields = y__})
  defMessage
    = GetCodecDescriptorRequest'_constructor
        {_GetCodecDescriptorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetCodecDescriptorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetCodecDescriptorRequest
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
          (do loop Data.ProtoLens.defMessage) "GetCodecDescriptorRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetCodecDescriptorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetCodecDescriptorRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.codec' @:: Lens' GetCodecDescriptorResponse CodecDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'codec' @:: Lens' GetCodecDescriptorResponse (Prelude.Maybe CodecDescriptor)@ -}
data GetCodecDescriptorResponse
  = GetCodecDescriptorResponse'_constructor {_GetCodecDescriptorResponse'codec :: !(Prelude.Maybe CodecDescriptor),
                                             _GetCodecDescriptorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetCodecDescriptorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetCodecDescriptorResponse "codec" CodecDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetCodecDescriptorResponse'codec
           (\ x__ y__ -> x__ {_GetCodecDescriptorResponse'codec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetCodecDescriptorResponse "maybe'codec" (Prelude.Maybe CodecDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetCodecDescriptorResponse'codec
           (\ x__ y__ -> x__ {_GetCodecDescriptorResponse'codec = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetCodecDescriptorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetCodecDescriptorResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBGetCodecDescriptorResponse\DC2F\n\
      \\ENQcodec\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.CodecDescriptorR\ENQcodec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        codec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codec"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CodecDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'codec")) ::
              Data.ProtoLens.FieldDescriptor GetCodecDescriptorResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, codec__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetCodecDescriptorResponse'_unknownFields
        (\ x__ y__
           -> x__ {_GetCodecDescriptorResponse'_unknownFields = y__})
  defMessage
    = GetCodecDescriptorResponse'_constructor
        {_GetCodecDescriptorResponse'codec = Prelude.Nothing,
         _GetCodecDescriptorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetCodecDescriptorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetCodecDescriptorResponse
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
                                       "codec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"codec") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetCodecDescriptorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'codec") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetCodecDescriptorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetCodecDescriptorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetCodecDescriptorResponse'codec x__) ())
{- | Fields :
      -}
data GetConfigurationDescriptorRequest
  = GetConfigurationDescriptorRequest'_constructor {_GetConfigurationDescriptorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetConfigurationDescriptorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetConfigurationDescriptorRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetConfigurationDescriptorRequest"
  packedMessageDescriptor _
    = "\n\
      \!GetConfigurationDescriptorRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetConfigurationDescriptorRequest'_unknownFields
        (\ x__ y__
           -> x__ {_GetConfigurationDescriptorRequest'_unknownFields = y__})
  defMessage
    = GetConfigurationDescriptorRequest'_constructor
        {_GetConfigurationDescriptorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetConfigurationDescriptorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetConfigurationDescriptorRequest
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
          (do loop Data.ProtoLens.defMessage)
          "GetConfigurationDescriptorRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetConfigurationDescriptorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetConfigurationDescriptorRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.config' @:: Lens' GetConfigurationDescriptorResponse ConfigurationDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'config' @:: Lens' GetConfigurationDescriptorResponse (Prelude.Maybe ConfigurationDescriptor)@ -}
data GetConfigurationDescriptorResponse
  = GetConfigurationDescriptorResponse'_constructor {_GetConfigurationDescriptorResponse'config :: !(Prelude.Maybe ConfigurationDescriptor),
                                                     _GetConfigurationDescriptorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetConfigurationDescriptorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetConfigurationDescriptorResponse "config" ConfigurationDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetConfigurationDescriptorResponse'config
           (\ x__ y__
              -> x__ {_GetConfigurationDescriptorResponse'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetConfigurationDescriptorResponse "maybe'config" (Prelude.Maybe ConfigurationDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetConfigurationDescriptorResponse'config
           (\ x__ y__
              -> x__ {_GetConfigurationDescriptorResponse'config = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetConfigurationDescriptorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetConfigurationDescriptorResponse"
  packedMessageDescriptor _
    = "\n\
      \\"GetConfigurationDescriptorResponse\DC2P\n\
      \\ACKconfig\CAN\SOH \SOH(\v28.cosmos.base.reflection.v2alpha1.ConfigurationDescriptorR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigurationDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor GetConfigurationDescriptorResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetConfigurationDescriptorResponse'_unknownFields
        (\ x__ y__
           -> x__ {_GetConfigurationDescriptorResponse'_unknownFields = y__})
  defMessage
    = GetConfigurationDescriptorResponse'_constructor
        {_GetConfigurationDescriptorResponse'config = Prelude.Nothing,
         _GetConfigurationDescriptorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetConfigurationDescriptorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetConfigurationDescriptorResponse
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
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "GetConfigurationDescriptorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetConfigurationDescriptorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetConfigurationDescriptorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetConfigurationDescriptorResponse'config x__) ())
{- | Fields :
      -}
data GetQueryServicesDescriptorRequest
  = GetQueryServicesDescriptorRequest'_constructor {_GetQueryServicesDescriptorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetQueryServicesDescriptorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetQueryServicesDescriptorRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetQueryServicesDescriptorRequest"
  packedMessageDescriptor _
    = "\n\
      \!GetQueryServicesDescriptorRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetQueryServicesDescriptorRequest'_unknownFields
        (\ x__ y__
           -> x__ {_GetQueryServicesDescriptorRequest'_unknownFields = y__})
  defMessage
    = GetQueryServicesDescriptorRequest'_constructor
        {_GetQueryServicesDescriptorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetQueryServicesDescriptorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetQueryServicesDescriptorRequest
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
          (do loop Data.ProtoLens.defMessage)
          "GetQueryServicesDescriptorRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetQueryServicesDescriptorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetQueryServicesDescriptorRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.queries' @:: Lens' GetQueryServicesDescriptorResponse QueryServicesDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'queries' @:: Lens' GetQueryServicesDescriptorResponse (Prelude.Maybe QueryServicesDescriptor)@ -}
data GetQueryServicesDescriptorResponse
  = GetQueryServicesDescriptorResponse'_constructor {_GetQueryServicesDescriptorResponse'queries :: !(Prelude.Maybe QueryServicesDescriptor),
                                                     _GetQueryServicesDescriptorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetQueryServicesDescriptorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetQueryServicesDescriptorResponse "queries" QueryServicesDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetQueryServicesDescriptorResponse'queries
           (\ x__ y__
              -> x__ {_GetQueryServicesDescriptorResponse'queries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetQueryServicesDescriptorResponse "maybe'queries" (Prelude.Maybe QueryServicesDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetQueryServicesDescriptorResponse'queries
           (\ x__ y__
              -> x__ {_GetQueryServicesDescriptorResponse'queries = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetQueryServicesDescriptorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetQueryServicesDescriptorResponse"
  packedMessageDescriptor _
    = "\n\
      \\"GetQueryServicesDescriptorResponse\DC2R\n\
      \\aqueries\CAN\SOH \SOH(\v28.cosmos.base.reflection.v2alpha1.QueryServicesDescriptorR\aqueries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        queries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "queries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QueryServicesDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queries")) ::
              Data.ProtoLens.FieldDescriptor GetQueryServicesDescriptorResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, queries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetQueryServicesDescriptorResponse'_unknownFields
        (\ x__ y__
           -> x__ {_GetQueryServicesDescriptorResponse'_unknownFields = y__})
  defMessage
    = GetQueryServicesDescriptorResponse'_constructor
        {_GetQueryServicesDescriptorResponse'queries = Prelude.Nothing,
         _GetQueryServicesDescriptorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetQueryServicesDescriptorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetQueryServicesDescriptorResponse
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
                                       "queries"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"queries") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "GetQueryServicesDescriptorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'queries") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetQueryServicesDescriptorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetQueryServicesDescriptorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetQueryServicesDescriptorResponse'queries x__) ())
{- | Fields :
      -}
data GetTxDescriptorRequest
  = GetTxDescriptorRequest'_constructor {_GetTxDescriptorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetTxDescriptorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetTxDescriptorRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetTxDescriptorRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNGetTxDescriptorRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetTxDescriptorRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetTxDescriptorRequest'_unknownFields = y__})
  defMessage
    = GetTxDescriptorRequest'_constructor
        {_GetTxDescriptorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetTxDescriptorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetTxDescriptorRequest
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
          (do loop Data.ProtoLens.defMessage) "GetTxDescriptorRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetTxDescriptorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetTxDescriptorRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.tx' @:: Lens' GetTxDescriptorResponse TxDescriptor@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.maybe'tx' @:: Lens' GetTxDescriptorResponse (Prelude.Maybe TxDescriptor)@ -}
data GetTxDescriptorResponse
  = GetTxDescriptorResponse'_constructor {_GetTxDescriptorResponse'tx :: !(Prelude.Maybe TxDescriptor),
                                          _GetTxDescriptorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetTxDescriptorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetTxDescriptorResponse "tx" TxDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxDescriptorResponse'tx
           (\ x__ y__ -> x__ {_GetTxDescriptorResponse'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetTxDescriptorResponse "maybe'tx" (Prelude.Maybe TxDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxDescriptorResponse'tx
           (\ x__ y__ -> x__ {_GetTxDescriptorResponse'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetTxDescriptorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.GetTxDescriptorResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBGetTxDescriptorResponse\DC2=\n\
      \\STXtx\CAN\SOH \SOH(\v2-.cosmos.base.reflection.v2alpha1.TxDescriptorR\STXtx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor GetTxDescriptorResponse
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetTxDescriptorResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetTxDescriptorResponse'_unknownFields = y__})
  defMessage
    = GetTxDescriptorResponse'_constructor
        {_GetTxDescriptorResponse'tx = Prelude.Nothing,
         _GetTxDescriptorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetTxDescriptorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetTxDescriptorResponse
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
                                       "tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetTxDescriptorResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tx") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetTxDescriptorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetTxDescriptorResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetTxDescriptorResponse'tx x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.fullname' @:: Lens' InterfaceAcceptingMessageDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.fieldDescriptorNames' @:: Lens' InterfaceAcceptingMessageDescriptor [Data.Text.Text]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'fieldDescriptorNames' @:: Lens' InterfaceAcceptingMessageDescriptor (Data.Vector.Vector Data.Text.Text)@ -}
data InterfaceAcceptingMessageDescriptor
  = InterfaceAcceptingMessageDescriptor'_constructor {_InterfaceAcceptingMessageDescriptor'fullname :: !Data.Text.Text,
                                                      _InterfaceAcceptingMessageDescriptor'fieldDescriptorNames :: !(Data.Vector.Vector Data.Text.Text),
                                                      _InterfaceAcceptingMessageDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InterfaceAcceptingMessageDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InterfaceAcceptingMessageDescriptor "fullname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceAcceptingMessageDescriptor'fullname
           (\ x__ y__
              -> x__ {_InterfaceAcceptingMessageDescriptor'fullname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InterfaceAcceptingMessageDescriptor "fieldDescriptorNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceAcceptingMessageDescriptor'fieldDescriptorNames
           (\ x__ y__
              -> x__
                   {_InterfaceAcceptingMessageDescriptor'fieldDescriptorNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InterfaceAcceptingMessageDescriptor "vec'fieldDescriptorNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceAcceptingMessageDescriptor'fieldDescriptorNames
           (\ x__ y__
              -> x__
                   {_InterfaceAcceptingMessageDescriptor'fieldDescriptorNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message InterfaceAcceptingMessageDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.InterfaceAcceptingMessageDescriptor"
  packedMessageDescriptor _
    = "\n\
      \#InterfaceAcceptingMessageDescriptor\DC2\SUB\n\
      \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC24\n\
      \\SYNfield_descriptor_names\CAN\STX \ETX(\tR\DC4fieldDescriptorNames"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fullname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fullname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fullname")) ::
              Data.ProtoLens.FieldDescriptor InterfaceAcceptingMessageDescriptor
        fieldDescriptorNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field_descriptor_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fieldDescriptorNames")) ::
              Data.ProtoLens.FieldDescriptor InterfaceAcceptingMessageDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fullname__field_descriptor),
           (Data.ProtoLens.Tag 2, fieldDescriptorNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InterfaceAcceptingMessageDescriptor'_unknownFields
        (\ x__ y__
           -> x__ {_InterfaceAcceptingMessageDescriptor'_unknownFields = y__})
  defMessage
    = InterfaceAcceptingMessageDescriptor'_constructor
        {_InterfaceAcceptingMessageDescriptor'fullname = Data.ProtoLens.fieldDefault,
         _InterfaceAcceptingMessageDescriptor'fieldDescriptorNames = Data.Vector.Generic.empty,
         _InterfaceAcceptingMessageDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InterfaceAcceptingMessageDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser InterfaceAcceptingMessageDescriptor
        loop x mutable'fieldDescriptorNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fieldDescriptorNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'fieldDescriptorNames)
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
                              (Data.ProtoLens.Field.field @"vec'fieldDescriptorNames")
                              frozen'fieldDescriptorNames x))
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
                                       "fullname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fullname") y x)
                                  mutable'fieldDescriptorNames
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
                                        "field_descriptor_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'fieldDescriptorNames y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fieldDescriptorNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fieldDescriptorNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'fieldDescriptorNames)
          "InterfaceAcceptingMessageDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fullname") _x
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
                      (Data.ProtoLens.Field.field @"vec'fieldDescriptorNames") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData InterfaceAcceptingMessageDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InterfaceAcceptingMessageDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InterfaceAcceptingMessageDescriptor'fullname x__)
                (Control.DeepSeq.deepseq
                   (_InterfaceAcceptingMessageDescriptor'fieldDescriptorNames x__)
                   ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.fullname' @:: Lens' InterfaceDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.interfaceAcceptingMessages' @:: Lens' InterfaceDescriptor [InterfaceAcceptingMessageDescriptor]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'interfaceAcceptingMessages' @:: Lens' InterfaceDescriptor (Data.Vector.Vector InterfaceAcceptingMessageDescriptor)@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.interfaceImplementers' @:: Lens' InterfaceDescriptor [InterfaceImplementerDescriptor]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'interfaceImplementers' @:: Lens' InterfaceDescriptor (Data.Vector.Vector InterfaceImplementerDescriptor)@ -}
data InterfaceDescriptor
  = InterfaceDescriptor'_constructor {_InterfaceDescriptor'fullname :: !Data.Text.Text,
                                      _InterfaceDescriptor'interfaceAcceptingMessages :: !(Data.Vector.Vector InterfaceAcceptingMessageDescriptor),
                                      _InterfaceDescriptor'interfaceImplementers :: !(Data.Vector.Vector InterfaceImplementerDescriptor),
                                      _InterfaceDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InterfaceDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InterfaceDescriptor "fullname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceDescriptor'fullname
           (\ x__ y__ -> x__ {_InterfaceDescriptor'fullname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InterfaceDescriptor "interfaceAcceptingMessages" [InterfaceAcceptingMessageDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceDescriptor'interfaceAcceptingMessages
           (\ x__ y__
              -> x__ {_InterfaceDescriptor'interfaceAcceptingMessages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InterfaceDescriptor "vec'interfaceAcceptingMessages" (Data.Vector.Vector InterfaceAcceptingMessageDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceDescriptor'interfaceAcceptingMessages
           (\ x__ y__
              -> x__ {_InterfaceDescriptor'interfaceAcceptingMessages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InterfaceDescriptor "interfaceImplementers" [InterfaceImplementerDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceDescriptor'interfaceImplementers
           (\ x__ y__
              -> x__ {_InterfaceDescriptor'interfaceImplementers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InterfaceDescriptor "vec'interfaceImplementers" (Data.Vector.Vector InterfaceImplementerDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceDescriptor'interfaceImplementers
           (\ x__ y__
              -> x__ {_InterfaceDescriptor'interfaceImplementers = y__}))
        Prelude.id
instance Data.ProtoLens.Message InterfaceDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.InterfaceDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC3InterfaceDescriptor\DC2\SUB\n\
      \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2\134\SOH\n\
      \\FSinterface_accepting_messages\CAN\STX \ETX(\v2D.cosmos.base.reflection.v2alpha1.InterfaceAcceptingMessageDescriptorR\SUBinterfaceAcceptingMessages\DC2v\n\
      \\SYNinterface_implementers\CAN\ETX \ETX(\v2?.cosmos.base.reflection.v2alpha1.InterfaceImplementerDescriptorR\NAKinterfaceImplementers"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fullname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fullname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fullname")) ::
              Data.ProtoLens.FieldDescriptor InterfaceDescriptor
        interfaceAcceptingMessages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interface_accepting_messages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor InterfaceAcceptingMessageDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"interfaceAcceptingMessages")) ::
              Data.ProtoLens.FieldDescriptor InterfaceDescriptor
        interfaceImplementers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interface_implementers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor InterfaceImplementerDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"interfaceImplementers")) ::
              Data.ProtoLens.FieldDescriptor InterfaceDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fullname__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            interfaceAcceptingMessages__field_descriptor),
           (Data.ProtoLens.Tag 3, interfaceImplementers__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InterfaceDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_InterfaceDescriptor'_unknownFields = y__})
  defMessage
    = InterfaceDescriptor'_constructor
        {_InterfaceDescriptor'fullname = Data.ProtoLens.fieldDefault,
         _InterfaceDescriptor'interfaceAcceptingMessages = Data.Vector.Generic.empty,
         _InterfaceDescriptor'interfaceImplementers = Data.Vector.Generic.empty,
         _InterfaceDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InterfaceDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld InterfaceAcceptingMessageDescriptor
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld InterfaceImplementerDescriptor
                -> Data.ProtoLens.Encoding.Bytes.Parser InterfaceDescriptor
        loop
          x
          mutable'interfaceAcceptingMessages
          mutable'interfaceImplementers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'interfaceAcceptingMessages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                mutable'interfaceAcceptingMessages)
                      frozen'interfaceImplementers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'interfaceImplementers)
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
                              (Data.ProtoLens.Field.field @"vec'interfaceAcceptingMessages")
                              frozen'interfaceAcceptingMessages
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'interfaceImplementers")
                                 frozen'interfaceImplementers x)))
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
                                       "fullname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fullname") y x)
                                  mutable'interfaceAcceptingMessages mutable'interfaceImplementers
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "interface_accepting_messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'interfaceAcceptingMessages y)
                                loop x v mutable'interfaceImplementers
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "interface_implementers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'interfaceImplementers y)
                                loop x mutable'interfaceAcceptingMessages v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'interfaceAcceptingMessages mutable'interfaceImplementers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'interfaceAcceptingMessages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      Data.ProtoLens.Encoding.Growing.new
              mutable'interfaceImplementers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'interfaceAcceptingMessages
                mutable'interfaceImplementers)
          "InterfaceDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fullname") _x
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
                      (Data.ProtoLens.Field.field @"vec'interfaceAcceptingMessages") _x))
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'interfaceImplementers") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData InterfaceDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InterfaceDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InterfaceDescriptor'fullname x__)
                (Control.DeepSeq.deepseq
                   (_InterfaceDescriptor'interfaceAcceptingMessages x__)
                   (Control.DeepSeq.deepseq
                      (_InterfaceDescriptor'interfaceImplementers x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.fullname' @:: Lens' InterfaceImplementerDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.typeUrl' @:: Lens' InterfaceImplementerDescriptor Data.Text.Text@ -}
data InterfaceImplementerDescriptor
  = InterfaceImplementerDescriptor'_constructor {_InterfaceImplementerDescriptor'fullname :: !Data.Text.Text,
                                                 _InterfaceImplementerDescriptor'typeUrl :: !Data.Text.Text,
                                                 _InterfaceImplementerDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InterfaceImplementerDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InterfaceImplementerDescriptor "fullname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceImplementerDescriptor'fullname
           (\ x__ y__
              -> x__ {_InterfaceImplementerDescriptor'fullname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InterfaceImplementerDescriptor "typeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceImplementerDescriptor'typeUrl
           (\ x__ y__ -> x__ {_InterfaceImplementerDescriptor'typeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Message InterfaceImplementerDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.InterfaceImplementerDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\RSInterfaceImplementerDescriptor\DC2\SUB\n\
      \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2\EM\n\
      \\btype_url\CAN\STX \SOH(\tR\atypeUrl"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fullname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fullname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fullname")) ::
              Data.ProtoLens.FieldDescriptor InterfaceImplementerDescriptor
        typeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"typeUrl")) ::
              Data.ProtoLens.FieldDescriptor InterfaceImplementerDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fullname__field_descriptor),
           (Data.ProtoLens.Tag 2, typeUrl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InterfaceImplementerDescriptor'_unknownFields
        (\ x__ y__
           -> x__ {_InterfaceImplementerDescriptor'_unknownFields = y__})
  defMessage
    = InterfaceImplementerDescriptor'_constructor
        {_InterfaceImplementerDescriptor'fullname = Data.ProtoLens.fieldDefault,
         _InterfaceImplementerDescriptor'typeUrl = Data.ProtoLens.fieldDefault,
         _InterfaceImplementerDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InterfaceImplementerDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser InterfaceImplementerDescriptor
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
                                       "fullname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fullname") y x)
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
                                       "type_url"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"typeUrl") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "InterfaceImplementerDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fullname") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"typeUrl") _x
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
instance Control.DeepSeq.NFData InterfaceImplementerDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InterfaceImplementerDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InterfaceImplementerDescriptor'fullname x__)
                (Control.DeepSeq.deepseq
                   (_InterfaceImplementerDescriptor'typeUrl x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.msgTypeUrl' @:: Lens' MsgDescriptor Data.Text.Text@ -}
data MsgDescriptor
  = MsgDescriptor'_constructor {_MsgDescriptor'msgTypeUrl :: !Data.Text.Text,
                                _MsgDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDescriptor "msgTypeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDescriptor'msgTypeUrl
           (\ x__ y__ -> x__ {_MsgDescriptor'msgTypeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDescriptor where
  messageName _
    = Data.Text.pack "cosmos.base.reflection.v2alpha1.MsgDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\rMsgDescriptor\DC2 \n\
      \\fmsg_type_url\CAN\SOH \SOH(\tR\n\
      \msgTypeUrl"
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
              Data.ProtoLens.FieldDescriptor MsgDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, msgTypeUrl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_MsgDescriptor'_unknownFields = y__})
  defMessage
    = MsgDescriptor'_constructor
        {_MsgDescriptor'msgTypeUrl = Data.ProtoLens.fieldDefault,
         _MsgDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDescriptor -> Data.ProtoLens.Encoding.Bytes.Parser MsgDescriptor
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
                                       "msg_type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"msgTypeUrl") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgDescriptor"
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
instance Control.DeepSeq.NFData MsgDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgDescriptor'msgTypeUrl x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.name' @:: Lens' QueryMethodDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.fullQueryPath' @:: Lens' QueryMethodDescriptor Data.Text.Text@ -}
data QueryMethodDescriptor
  = QueryMethodDescriptor'_constructor {_QueryMethodDescriptor'name :: !Data.Text.Text,
                                        _QueryMethodDescriptor'fullQueryPath :: !Data.Text.Text,
                                        _QueryMethodDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryMethodDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryMethodDescriptor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryMethodDescriptor'name
           (\ x__ y__ -> x__ {_QueryMethodDescriptor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryMethodDescriptor "fullQueryPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryMethodDescriptor'fullQueryPath
           (\ x__ y__ -> x__ {_QueryMethodDescriptor'fullQueryPath = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryMethodDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.QueryMethodDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryMethodDescriptor\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2&\n\
      \\SIfull_query_path\CAN\STX \SOH(\tR\rfullQueryPath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor QueryMethodDescriptor
        fullQueryPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "full_query_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fullQueryPath")) ::
              Data.ProtoLens.FieldDescriptor QueryMethodDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, fullQueryPath__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryMethodDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_QueryMethodDescriptor'_unknownFields = y__})
  defMessage
    = QueryMethodDescriptor'_constructor
        {_QueryMethodDescriptor'name = Data.ProtoLens.fieldDefault,
         _QueryMethodDescriptor'fullQueryPath = Data.ProtoLens.fieldDefault,
         _QueryMethodDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryMethodDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryMethodDescriptor
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "full_query_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fullQueryPath") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryMethodDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                         (Data.ProtoLens.Field.field @"fullQueryPath") _x
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
instance Control.DeepSeq.NFData QueryMethodDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryMethodDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryMethodDescriptor'name x__)
                (Control.DeepSeq.deepseq
                   (_QueryMethodDescriptor'fullQueryPath x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.fullname' @:: Lens' QueryServiceDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.isModule' @:: Lens' QueryServiceDescriptor Prelude.Bool@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.methods' @:: Lens' QueryServiceDescriptor [QueryMethodDescriptor]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'methods' @:: Lens' QueryServiceDescriptor (Data.Vector.Vector QueryMethodDescriptor)@ -}
data QueryServiceDescriptor
  = QueryServiceDescriptor'_constructor {_QueryServiceDescriptor'fullname :: !Data.Text.Text,
                                         _QueryServiceDescriptor'isModule :: !Prelude.Bool,
                                         _QueryServiceDescriptor'methods :: !(Data.Vector.Vector QueryMethodDescriptor),
                                         _QueryServiceDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryServiceDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryServiceDescriptor "fullname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryServiceDescriptor'fullname
           (\ x__ y__ -> x__ {_QueryServiceDescriptor'fullname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryServiceDescriptor "isModule" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryServiceDescriptor'isModule
           (\ x__ y__ -> x__ {_QueryServiceDescriptor'isModule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryServiceDescriptor "methods" [QueryMethodDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryServiceDescriptor'methods
           (\ x__ y__ -> x__ {_QueryServiceDescriptor'methods = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryServiceDescriptor "vec'methods" (Data.Vector.Vector QueryMethodDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryServiceDescriptor'methods
           (\ x__ y__ -> x__ {_QueryServiceDescriptor'methods = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryServiceDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.QueryServiceDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryServiceDescriptor\DC2\SUB\n\
      \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2\ESC\n\
      \\tis_module\CAN\STX \SOH(\bR\bisModule\DC2P\n\
      \\amethods\CAN\ETX \ETX(\v26.cosmos.base.reflection.v2alpha1.QueryMethodDescriptorR\amethods"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fullname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fullname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fullname")) ::
              Data.ProtoLens.FieldDescriptor QueryServiceDescriptor
        isModule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_module"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"isModule")) ::
              Data.ProtoLens.FieldDescriptor QueryServiceDescriptor
        methods__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "methods"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QueryMethodDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"methods")) ::
              Data.ProtoLens.FieldDescriptor QueryServiceDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fullname__field_descriptor),
           (Data.ProtoLens.Tag 2, isModule__field_descriptor),
           (Data.ProtoLens.Tag 3, methods__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryServiceDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_QueryServiceDescriptor'_unknownFields = y__})
  defMessage
    = QueryServiceDescriptor'_constructor
        {_QueryServiceDescriptor'fullname = Data.ProtoLens.fieldDefault,
         _QueryServiceDescriptor'isModule = Data.ProtoLens.fieldDefault,
         _QueryServiceDescriptor'methods = Data.Vector.Generic.empty,
         _QueryServiceDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryServiceDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld QueryMethodDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryServiceDescriptor
        loop x mutable'methods
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'methods <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'methods)
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
                              (Data.ProtoLens.Field.field @"vec'methods") frozen'methods x))
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
                                       "fullname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fullname") y x)
                                  mutable'methods
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_module"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isModule") y x)
                                  mutable'methods
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "methods"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'methods y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'methods
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'methods <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'methods)
          "QueryServiceDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fullname") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"isModule") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'methods") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData QueryServiceDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryServiceDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryServiceDescriptor'fullname x__)
                (Control.DeepSeq.deepseq
                   (_QueryServiceDescriptor'isModule x__)
                   (Control.DeepSeq.deepseq
                      (_QueryServiceDescriptor'methods x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.queryServices' @:: Lens' QueryServicesDescriptor [QueryServiceDescriptor]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'queryServices' @:: Lens' QueryServicesDescriptor (Data.Vector.Vector QueryServiceDescriptor)@ -}
data QueryServicesDescriptor
  = QueryServicesDescriptor'_constructor {_QueryServicesDescriptor'queryServices :: !(Data.Vector.Vector QueryServiceDescriptor),
                                          _QueryServicesDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryServicesDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryServicesDescriptor "queryServices" [QueryServiceDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryServicesDescriptor'queryServices
           (\ x__ y__ -> x__ {_QueryServicesDescriptor'queryServices = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryServicesDescriptor "vec'queryServices" (Data.Vector.Vector QueryServiceDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryServicesDescriptor'queryServices
           (\ x__ y__ -> x__ {_QueryServicesDescriptor'queryServices = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryServicesDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.QueryServicesDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryServicesDescriptor\DC2^\n\
      \\SOquery_services\CAN\SOH \ETX(\v27.cosmos.base.reflection.v2alpha1.QueryServiceDescriptorR\rqueryServices"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        queryServices__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query_services"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QueryServiceDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"queryServices")) ::
              Data.ProtoLens.FieldDescriptor QueryServicesDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, queryServices__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryServicesDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_QueryServicesDescriptor'_unknownFields = y__})
  defMessage
    = QueryServicesDescriptor'_constructor
        {_QueryServicesDescriptor'queryServices = Data.Vector.Generic.empty,
         _QueryServicesDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryServicesDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld QueryServiceDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryServicesDescriptor
        loop x mutable'queryServices
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'queryServices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'queryServices)
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
                              (Data.ProtoLens.Field.field @"vec'queryServices")
                              frozen'queryServices x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "query_services"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'queryServices y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'queryServices
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'queryServices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'queryServices)
          "QueryServicesDescriptor"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'queryServices") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryServicesDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryServicesDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryServicesDescriptor'queryServices x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.name' @:: Lens' SigningModeDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.number' @:: Lens' SigningModeDescriptor Data.Int.Int32@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.authnInfoProviderMethodFullname' @:: Lens' SigningModeDescriptor Data.Text.Text@ -}
data SigningModeDescriptor
  = SigningModeDescriptor'_constructor {_SigningModeDescriptor'name :: !Data.Text.Text,
                                        _SigningModeDescriptor'number :: !Data.Int.Int32,
                                        _SigningModeDescriptor'authnInfoProviderMethodFullname :: !Data.Text.Text,
                                        _SigningModeDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SigningModeDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SigningModeDescriptor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SigningModeDescriptor'name
           (\ x__ y__ -> x__ {_SigningModeDescriptor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SigningModeDescriptor "number" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SigningModeDescriptor'number
           (\ x__ y__ -> x__ {_SigningModeDescriptor'number = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SigningModeDescriptor "authnInfoProviderMethodFullname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SigningModeDescriptor'authnInfoProviderMethodFullname
           (\ x__ y__
              -> x__
                   {_SigningModeDescriptor'authnInfoProviderMethodFullname = y__}))
        Prelude.id
instance Data.ProtoLens.Message SigningModeDescriptor where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v2alpha1.SigningModeDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\NAKSigningModeDescriptor\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKnumber\CAN\STX \SOH(\ENQR\ACKnumber\DC2L\n\
      \#authn_info_provider_method_fullname\CAN\ETX \SOH(\tR\USauthnInfoProviderMethodFullname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor SigningModeDescriptor
        number__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"number")) ::
              Data.ProtoLens.FieldDescriptor SigningModeDescriptor
        authnInfoProviderMethodFullname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authn_info_provider_method_fullname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authnInfoProviderMethodFullname")) ::
              Data.ProtoLens.FieldDescriptor SigningModeDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, number__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            authnInfoProviderMethodFullname__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SigningModeDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_SigningModeDescriptor'_unknownFields = y__})
  defMessage
    = SigningModeDescriptor'_constructor
        {_SigningModeDescriptor'name = Data.ProtoLens.fieldDefault,
         _SigningModeDescriptor'number = Data.ProtoLens.fieldDefault,
         _SigningModeDescriptor'authnInfoProviderMethodFullname = Data.ProtoLens.fieldDefault,
         _SigningModeDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SigningModeDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser SigningModeDescriptor
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "number"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"number") y x)
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
                                       "authn_info_provider_method_fullname"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authnInfoProviderMethodFullname")
                                     y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SigningModeDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"number") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"authnInfoProviderMethodFullname") _x
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
instance Control.DeepSeq.NFData SigningModeDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SigningModeDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SigningModeDescriptor'name x__)
                (Control.DeepSeq.deepseq
                   (_SigningModeDescriptor'number x__)
                   (Control.DeepSeq.deepseq
                      (_SigningModeDescriptor'authnInfoProviderMethodFullname x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.fullname' @:: Lens' TxDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.msgs' @:: Lens' TxDescriptor [MsgDescriptor]@
         * 'Proto.Cosmos.Base.Reflection.V2alpha1.Reflection_Fields.vec'msgs' @:: Lens' TxDescriptor (Data.Vector.Vector MsgDescriptor)@ -}
data TxDescriptor
  = TxDescriptor'_constructor {_TxDescriptor'fullname :: !Data.Text.Text,
                               _TxDescriptor'msgs :: !(Data.Vector.Vector MsgDescriptor),
                               _TxDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxDescriptor "fullname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDescriptor'fullname
           (\ x__ y__ -> x__ {_TxDescriptor'fullname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxDescriptor "msgs" [MsgDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDescriptor'msgs (\ x__ y__ -> x__ {_TxDescriptor'msgs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxDescriptor "vec'msgs" (Data.Vector.Vector MsgDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDescriptor'msgs (\ x__ y__ -> x__ {_TxDescriptor'msgs = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxDescriptor where
  messageName _
    = Data.Text.pack "cosmos.base.reflection.v2alpha1.TxDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\fTxDescriptor\DC2\SUB\n\
      \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2B\n\
      \\EOTmsgs\CAN\STX \ETX(\v2..cosmos.base.reflection.v2alpha1.MsgDescriptorR\EOTmsgs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fullname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fullname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fullname")) ::
              Data.ProtoLens.FieldDescriptor TxDescriptor
        msgs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msgs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MsgDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"msgs")) ::
              Data.ProtoLens.FieldDescriptor TxDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fullname__field_descriptor),
           (Data.ProtoLens.Tag 2, msgs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_TxDescriptor'_unknownFields = y__})
  defMessage
    = TxDescriptor'_constructor
        {_TxDescriptor'fullname = Data.ProtoLens.fieldDefault,
         _TxDescriptor'msgs = Data.Vector.Generic.empty,
         _TxDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MsgDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser TxDescriptor
        loop x mutable'msgs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'msgs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'msgs)
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
                              (Data.ProtoLens.Field.field @"vec'msgs") frozen'msgs x))
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
                                       "fullname"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fullname") y x)
                                  mutable'msgs
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "msgs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'msgs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'msgs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'msgs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'msgs)
          "TxDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fullname") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'msgs") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TxDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxDescriptor'fullname x__)
                (Control.DeepSeq.deepseq (_TxDescriptor'msgs x__) ()))
data ReflectionService = ReflectionService {}
instance Data.ProtoLens.Service.Types.Service ReflectionService where
  type ServiceName ReflectionService = "ReflectionService"
  type ServicePackage ReflectionService = "cosmos.base.reflection.v2alpha1"
  type ServiceMethods ReflectionService = '["getAuthnDescriptor",
                                            "getChainDescriptor",
                                            "getCodecDescriptor",
                                            "getConfigurationDescriptor",
                                            "getQueryServicesDescriptor",
                                            "getTxDescriptor"]
  packedServiceDescriptor _
    = "\n\
      \\DC1ReflectionService\DC2\203\SOH\n\
      \\DC2GetAuthnDescriptor\DC2:.cosmos.base.reflection.v2alpha1.GetAuthnDescriptorRequest\SUB;.cosmos.base.reflection.v2alpha1.GetAuthnDescriptorResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/reflection/v1beta1/app_descriptor/authn\DC2\203\SOH\n\
      \\DC2GetChainDescriptor\DC2:.cosmos.base.reflection.v2alpha1.GetChainDescriptorRequest\SUB;.cosmos.base.reflection.v2alpha1.GetChainDescriptorResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/reflection/v1beta1/app_descriptor/chain\DC2\203\SOH\n\
      \\DC2GetCodecDescriptor\DC2:.cosmos.base.reflection.v2alpha1.GetCodecDescriptorRequest\SUB;.cosmos.base.reflection.v2alpha1.GetCodecDescriptorResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/reflection/v1beta1/app_descriptor/codec\DC2\235\SOH\n\
      \\SUBGetConfigurationDescriptor\DC2B.cosmos.base.reflection.v2alpha1.GetConfigurationDescriptorRequest\SUBC.cosmos.base.reflection.v2alpha1.GetConfigurationDescriptorResponse\"D\130\211\228\147\STX>\DC2</cosmos/base/reflection/v1beta1/app_descriptor/configuration\DC2\236\SOH\n\
      \\SUBGetQueryServicesDescriptor\DC2B.cosmos.base.reflection.v2alpha1.GetQueryServicesDescriptorRequest\SUBC.cosmos.base.reflection.v2alpha1.GetQueryServicesDescriptorResponse\"E\130\211\228\147\STX?\DC2=/cosmos/base/reflection/v1beta1/app_descriptor/query_services\DC2\202\SOH\n\
      \\SIGetTxDescriptor\DC27.cosmos.base.reflection.v2alpha1.GetTxDescriptorRequest\SUB8.cosmos.base.reflection.v2alpha1.GetTxDescriptorResponse\"D\130\211\228\147\STX>\DC2</cosmos/base/reflection/v1beta1/app_descriptor/tx_descriptor"
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "getAuthnDescriptor" where
  type MethodName ReflectionService "getAuthnDescriptor" = "GetAuthnDescriptor"
  type MethodInput ReflectionService "getAuthnDescriptor" = GetAuthnDescriptorRequest
  type MethodOutput ReflectionService "getAuthnDescriptor" = GetAuthnDescriptorResponse
  type MethodStreamingType ReflectionService "getAuthnDescriptor" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "getChainDescriptor" where
  type MethodName ReflectionService "getChainDescriptor" = "GetChainDescriptor"
  type MethodInput ReflectionService "getChainDescriptor" = GetChainDescriptorRequest
  type MethodOutput ReflectionService "getChainDescriptor" = GetChainDescriptorResponse
  type MethodStreamingType ReflectionService "getChainDescriptor" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "getCodecDescriptor" where
  type MethodName ReflectionService "getCodecDescriptor" = "GetCodecDescriptor"
  type MethodInput ReflectionService "getCodecDescriptor" = GetCodecDescriptorRequest
  type MethodOutput ReflectionService "getCodecDescriptor" = GetCodecDescriptorResponse
  type MethodStreamingType ReflectionService "getCodecDescriptor" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "getConfigurationDescriptor" where
  type MethodName ReflectionService "getConfigurationDescriptor" = "GetConfigurationDescriptor"
  type MethodInput ReflectionService "getConfigurationDescriptor" = GetConfigurationDescriptorRequest
  type MethodOutput ReflectionService "getConfigurationDescriptor" = GetConfigurationDescriptorResponse
  type MethodStreamingType ReflectionService "getConfigurationDescriptor" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "getQueryServicesDescriptor" where
  type MethodName ReflectionService "getQueryServicesDescriptor" = "GetQueryServicesDescriptor"
  type MethodInput ReflectionService "getQueryServicesDescriptor" = GetQueryServicesDescriptorRequest
  type MethodOutput ReflectionService "getQueryServicesDescriptor" = GetQueryServicesDescriptorResponse
  type MethodStreamingType ReflectionService "getQueryServicesDescriptor" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "getTxDescriptor" where
  type MethodName ReflectionService "getTxDescriptor" = "GetTxDescriptor"
  type MethodInput ReflectionService "getTxDescriptor" = GetTxDescriptorRequest
  type MethodOutput ReflectionService "getTxDescriptor" = GetTxDescriptorResponse
  type MethodStreamingType ReflectionService "getTxDescriptor" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \0cosmos/base/reflection/v2alpha1/reflection.proto\DC2\UScosmos.base.reflection.v2alpha1\SUB\FSgoogle/api/annotations.proto\"\231\ETX\n\
    \\rAppDescriptor\DC2F\n\
    \\ENQauthn\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.AuthnDescriptorR\ENQauthn\DC2F\n\
    \\ENQchain\CAN\STX \SOH(\v20.cosmos.base.reflection.v2alpha1.ChainDescriptorR\ENQchain\DC2F\n\
    \\ENQcodec\CAN\ETX \SOH(\v20.cosmos.base.reflection.v2alpha1.CodecDescriptorR\ENQcodec\DC2^\n\
    \\rconfiguration\CAN\EOT \SOH(\v28.cosmos.base.reflection.v2alpha1.ConfigurationDescriptorR\rconfiguration\DC2_\n\
    \\SOquery_services\CAN\ENQ \SOH(\v28.cosmos.base.reflection.v2alpha1.QueryServicesDescriptorR\rqueryServices\DC2=\n\
    \\STXtx\CAN\ACK \SOH(\v2-.cosmos.base.reflection.v2alpha1.TxDescriptorR\STXtx\"n\n\
    \\fTxDescriptor\DC2\SUB\n\
    \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2B\n\
    \\EOTmsgs\CAN\STX \ETX(\v2..cosmos.base.reflection.v2alpha1.MsgDescriptorR\EOTmsgs\"h\n\
    \\SIAuthnDescriptor\DC2U\n\
    \\n\
    \sign_modes\CAN\SOH \ETX(\v26.cosmos.base.reflection.v2alpha1.SigningModeDescriptorR\tsignModes\"\145\SOH\n\
    \\NAKSigningModeDescriptor\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
    \\ACKnumber\CAN\STX \SOH(\ENQR\ACKnumber\DC2L\n\
    \#authn_info_provider_method_fullname\CAN\ETX \SOH(\tR\USauthnInfoProviderMethodFullname\"!\n\
    \\SIChainDescriptor\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\"g\n\
    \\SICodecDescriptor\DC2T\n\
    \\n\
    \interfaces\CAN\SOH \ETX(\v24.cosmos.base.reflection.v2alpha1.InterfaceDescriptorR\n\
    \interfaces\"\178\STX\n\
    \\DC3InterfaceDescriptor\DC2\SUB\n\
    \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2\134\SOH\n\
    \\FSinterface_accepting_messages\CAN\STX \ETX(\v2D.cosmos.base.reflection.v2alpha1.InterfaceAcceptingMessageDescriptorR\SUBinterfaceAcceptingMessages\DC2v\n\
    \\SYNinterface_implementers\CAN\ETX \ETX(\v2?.cosmos.base.reflection.v2alpha1.InterfaceImplementerDescriptorR\NAKinterfaceImplementers\"W\n\
    \\RSInterfaceImplementerDescriptor\DC2\SUB\n\
    \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2\EM\n\
    \\btype_url\CAN\STX \SOH(\tR\atypeUrl\"w\n\
    \#InterfaceAcceptingMessageDescriptor\DC2\SUB\n\
    \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC24\n\
    \\SYNfield_descriptor_names\CAN\STX \ETX(\tR\DC4fieldDescriptorNames\"\\\n\
    \\ETBConfigurationDescriptor\DC2A\n\
    \\GSbech32_account_address_prefix\CAN\SOH \SOH(\tR\SUBbech32AccountAddressPrefix\"1\n\
    \\rMsgDescriptor\DC2 \n\
    \\fmsg_type_url\CAN\SOH \SOH(\tR\n\
    \msgTypeUrl\"\ESC\n\
    \\EMGetAuthnDescriptorRequest\"d\n\
    \\SUBGetAuthnDescriptorResponse\DC2F\n\
    \\ENQauthn\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.AuthnDescriptorR\ENQauthn\"\ESC\n\
    \\EMGetChainDescriptorRequest\"d\n\
    \\SUBGetChainDescriptorResponse\DC2F\n\
    \\ENQchain\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.ChainDescriptorR\ENQchain\"\ESC\n\
    \\EMGetCodecDescriptorRequest\"d\n\
    \\SUBGetCodecDescriptorResponse\DC2F\n\
    \\ENQcodec\CAN\SOH \SOH(\v20.cosmos.base.reflection.v2alpha1.CodecDescriptorR\ENQcodec\"#\n\
    \!GetConfigurationDescriptorRequest\"v\n\
    \\"GetConfigurationDescriptorResponse\DC2P\n\
    \\ACKconfig\CAN\SOH \SOH(\v28.cosmos.base.reflection.v2alpha1.ConfigurationDescriptorR\ACKconfig\"#\n\
    \!GetQueryServicesDescriptorRequest\"x\n\
    \\"GetQueryServicesDescriptorResponse\DC2R\n\
    \\aqueries\CAN\SOH \SOH(\v28.cosmos.base.reflection.v2alpha1.QueryServicesDescriptorR\aqueries\"\CAN\n\
    \\SYNGetTxDescriptorRequest\"X\n\
    \\ETBGetTxDescriptorResponse\DC2=\n\
    \\STXtx\CAN\SOH \SOH(\v2-.cosmos.base.reflection.v2alpha1.TxDescriptorR\STXtx\"y\n\
    \\ETBQueryServicesDescriptor\DC2^\n\
    \\SOquery_services\CAN\SOH \ETX(\v27.cosmos.base.reflection.v2alpha1.QueryServiceDescriptorR\rqueryServices\"\163\SOH\n\
    \\SYNQueryServiceDescriptor\DC2\SUB\n\
    \\bfullname\CAN\SOH \SOH(\tR\bfullname\DC2\ESC\n\
    \\tis_module\CAN\STX \SOH(\bR\bisModule\DC2P\n\
    \\amethods\CAN\ETX \ETX(\v26.cosmos.base.reflection.v2alpha1.QueryMethodDescriptorR\amethods\"S\n\
    \\NAKQueryMethodDescriptor\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2&\n\
    \\SIfull_query_path\CAN\STX \SOH(\tR\rfullQueryPath2\167\n\
    \\n\
    \\DC1ReflectionService\DC2\203\SOH\n\
    \\DC2GetAuthnDescriptor\DC2:.cosmos.base.reflection.v2alpha1.GetAuthnDescriptorRequest\SUB;.cosmos.base.reflection.v2alpha1.GetAuthnDescriptorResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/reflection/v1beta1/app_descriptor/authn\DC2\203\SOH\n\
    \\DC2GetChainDescriptor\DC2:.cosmos.base.reflection.v2alpha1.GetChainDescriptorRequest\SUB;.cosmos.base.reflection.v2alpha1.GetChainDescriptorResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/reflection/v1beta1/app_descriptor/chain\DC2\203\SOH\n\
    \\DC2GetCodecDescriptor\DC2:.cosmos.base.reflection.v2alpha1.GetCodecDescriptorRequest\SUB;.cosmos.base.reflection.v2alpha1.GetCodecDescriptorResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/reflection/v1beta1/app_descriptor/codec\DC2\235\SOH\n\
    \\SUBGetConfigurationDescriptor\DC2B.cosmos.base.reflection.v2alpha1.GetConfigurationDescriptorRequest\SUBC.cosmos.base.reflection.v2alpha1.GetConfigurationDescriptorResponse\"D\130\211\228\147\STX>\DC2</cosmos/base/reflection/v1beta1/app_descriptor/configuration\DC2\236\SOH\n\
    \\SUBGetQueryServicesDescriptor\DC2B.cosmos.base.reflection.v2alpha1.GetQueryServicesDescriptorRequest\SUBC.cosmos.base.reflection.v2alpha1.GetQueryServicesDescriptorResponse\"E\130\211\228\147\STX?\DC2=/cosmos/base/reflection/v1beta1/app_descriptor/query_services\DC2\202\SOH\n\
    \\SIGetTxDescriptor\DC27.cosmos.base.reflection.v2alpha1.GetTxDescriptorRequest\SUB8.cosmos.base.reflection.v2alpha1.GetTxDescriptorResponse\"D\130\211\228\147\STX>\DC2</cosmos/base/reflection/v1beta1/app_descriptor/tx_descriptorB>Z<github.com/cosmos/cosmos-sdk/server/grpc/reflection/v2alpha1J\133M\n\
    \\a\DC2\ENQ\SOH\NUL\217\SOH\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL(\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULS\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULS\n\
    \D\n\
    \\STX\EOT\NUL\DC2\EOT\t\NUL\ETB\SOH\SUB8 AppDescriptor describes a cosmos-sdk based application\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\NAK\n\
    \\169\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STX\FS\SUB\155\SOH AuthnDescriptor provides information on how to authenticate transactions on the application\n\
    \ NOTE: experimental and subject to change in future releases.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\f\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\SUB\ESC\n\
    \2\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX\FS\SUB% chain provides the chain descriptor\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SO\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\SUB\ESC\n\
    \P\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\STX\FS\SUBC codec provides metadata information regarding codec related types\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DLE\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE\SUB\ESC\n\
    \X\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC2\STX,\SUBK configuration provides metadata information regarding the sdk.Config type\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\DC2\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC2\SUB'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC2*+\n\
    \g\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\DC4\STX-\SUBZ query_services provides metadata information regarding the available queriable endpoints\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\DC4\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\DC4\SUB(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\DC4+,\n\
    \k\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\SYN\STX\SYN\SUB^ tx provides metadata information regarding how to send transactions to the given application\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX\SYN\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\SYN\SI\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\SYN\DC4\NAK\n\
    \B\n\
    \\STX\EOT\SOH\DC2\EOT\SUB\NUL!\SOH\SUB6 TxDescriptor describes the accepted transaction type\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SUB\b\DC4\n\
    \\171\STX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\RS\STX\SYN\SUB\157\STX fullname is the protobuf fullname of the raw transaction type (for instance the tx.Tx type)\n\
    \ it is not meant to support polymorphism of transaction types, it is supposed to be used by\n\
    \ reflection clients to understand if they can handle a specific transaction type in an application.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\RS\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\RS\DC4\NAK\n\
    \E\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX \STX\"\SUB8 msgs lists the accepted application messages (sdk.Msg)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX \v\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX \EM\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX  !\n\
    \\164\SOH\n\
    \\STX\EOT\STX\DC2\EOT%\NUL(\SOH\SUB\151\SOH AuthnDescriptor provides information on how to sign transactions without relying\n\
    \ on the online RPCs GetTxMetadata and CombineUnsignedTxAndSignatures\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX%\b\ETB\n\
    \C\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX'\STX0\SUB6 sign_modes defines the supported signature algorithm\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX'\v \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX'!+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'./\n\
    \\142\STX\n\
    \\STX\EOT\ETX\DC2\EOT.\NUL6\SOH\SUB\129\STX SigningModeDescriptor provides information on a signing flow of the application\n\
    \ NOTE(fdymylja): here we could go as far as providing an entire flow on how\n\
    \ to sign a message given a SigningModeDescriptor, but it's better to think about\n\
    \ this another time\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX.\b\GS\n\
    \?\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX0\STX\DC2\SUB2 name defines the unique name of the signing mode\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX0\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX0\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX0\DLE\DC1\n\
    \K\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX2\STX\DC3\SUB> number is the unique int32 identifier for the sign_mode enum\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX2\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX2\b\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX2\DC1\DC2\n\
    \\170\SOH\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX5\STX1\SUB\156\SOH authn_info_provider_method_fullname defines the fullname of the method to call to get\n\
    \ the metadata required to authenticate using the provided sign_modes\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX5\t,\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX5/0\n\
    \L\n\
    \\STX\EOT\EOT\DC2\EOT9\NUL<\SOH\SUB@ ChainDescriptor describes chain information of the application\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX9\b\ETB\n\
    \!\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX;\STX\DLE\SUB\DC4 id is the chain id\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX;\t\v\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX;\SO\SI\n\
    \p\n\
    \\STX\EOT\ENQ\DC2\EOT?\NULB\SOH\SUBd CodecDescriptor describes the registered interfaces and provides metadata information on the types\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX?\b\ETB\n\
    \M\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXA\STX.\SUB@ interfaces is a list of the registerted interfaces descriptors\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXA\v\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXA\US)\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXA,-\n\
    \N\n\
    \\STX\EOT\ACK\DC2\EOTE\NULM\SOH\SUBB InterfaceDescriptor describes the implementation of an interface\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXE\b\ESC\n\
    \4\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXG\STX\SYN\SUB' fullname is the name of the interface\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXG\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXG\DC4\NAK\n\
    \\152\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXJ\STXP\SUB\138\SOH interface_accepting_messages contains information regarding the proto messages which contain the interface as\n\
    \ google.protobuf.Any field\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXJ\v.\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXJ/K\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXJNO\n\
    \`\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXL\STXE\SUBS interface_implementers is a list of the descriptors of the interface implementers\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETXL\v)\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXL*@\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXLCD\n\
    \O\n\
    \\STX\EOT\a\DC2\EOTP\NULX\SOH\SUBC InterfaceImplementerDescriptor describes an interface implementer\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXP\b&\n\
    \S\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXR\STX\SYN\SUBF fullname is the protobuf queryable name of the interface implementer\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXR\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXR\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXR\DC4\NAK\n\
    \\255\SOH\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXW\STX\SYN\SUB\241\SOH type_url defines the type URL used when marshalling the type as any\n\
    \ this is required so we can provide type safe google.protobuf.Any marshalling and\n\
    \ unmarshalling, making sure that we don't accept just 'any' type\n\
    \ in our interface fields\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXW\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXW\DC4\NAK\n\
    \\145\SOH\n\
    \\STX\EOT\b\DC2\EOT\\\NULc\SOH\SUB\132\SOH InterfaceAcceptingMessageDescriptor describes a protobuf message which contains\n\
    \ an interface represented as a google.protobuf.Any\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX\\\b+\n\
    \U\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX^\STX\SYN\SUBH fullname is the protobuf fullname of the type containing the interface\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX^\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX^\DC4\NAK\n\
    \\239\SOH\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXb\STX-\SUB\225\SOH field_descriptor_names is a list of the protobuf name (not fullname) of the field\n\
    \ which contains the interface as google.protobuf.Any (the interface is the same, but\n\
    \ it can be in multiple fields of the same proto message)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETXb\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXb\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXb\DC2(\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXb+,\n\
    \U\n\
    \\STX\EOT\t\DC2\EOTf\NULi\SOH\SUBI ConfigurationDescriptor contains metadata information on the sdk.Config\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXf\b\US\n\
    \J\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXh\STX+\SUB= bech32_account_address_prefix is the account address prefix\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXh\STX\b\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXh\t&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXh)*\n\
    \c\n\
    \\STX\EOT\n\
    \\DC2\EOTl\NULo\SOH\SUBW MsgDescriptor describes a cosmos-sdk message that can be delivered with a transaction\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXl\b\NAK\n\
    \>\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXn\STX\SUB\SUB1 msg_type_url contains the TypeURL of a sdk.Msg.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXn\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXn\CAN\EM\n\
    \N\n\
    \\STX\ACK\NUL\DC2\ENQr\NUL\141\SOH\SOH\SUBA ReflectionService defines a service for application reflection.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETXr\b\EM\n\
    \\239\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOTv\STXx\ETX\SUB\224\SOH GetAuthnDescriptor returns information on how to authenticate transactions in the application\n\
    \ NOTE: this RPC is still experimental and might be subject to breaking changes or removal in\n\
    \ future releases of the cosmos-sdk.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETXv\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETXv\EM2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETXv=W\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETXw\EOTZ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETXw\EOTZ\n\
    \G\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOTz\STX|\ETX\SUB9 GetChainDescriptor returns the description of the chain\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETXz\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETXz\EM2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETXz=W\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX{\EOTZ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX{\EOTZ\n\
    \Z\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ENQ~\STX\128\SOH\ETX\SUBK GetCodecDescriptor returns the descriptor of the codec of the application\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX~\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX~\EM2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX~=W\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\DEL\EOTZ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\DEL\EOTZ\n\
    \i\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ACK\130\SOH\STX\132\SOH\ETX\SUBY GetConfigurationDescriptor returns the descriptor for the sdk.Config of the application\n\
    \\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\EOT\130\SOH\ACK \n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\EOT\130\SOH!B\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\EOT\130\SOHMo\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\EOT\131\SOH\EOTb\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\EOT\131\SOH\EOTb\n\
    \m\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ACK\134\SOH\STX\136\SOH\ETX\SUB] GetQueryServicesDescriptor returns the available gRPC queryable services of the application\n\
    \\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\EOT\134\SOH\ACK \n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\EOT\134\SOH!B\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\EOT\134\SOHMo\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\EOT\135\SOH\EOTc\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\EOT\135\SOH\EOTc\n\
    \x\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ACK\138\SOH\STX\140\SOH\ETX\SUBh GetTxDescriptor returns information on the used transaction object and available msgs that can be used\n\
    \\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\EOT\138\SOH\ACK\NAK\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\EOT\138\SOH\SYN,\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\EOT\138\SOH7N\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\EOT\139\SOH\EOTb\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\EOT\139\SOH\EOTb\n\
    \Z\n\
    \\STX\EOT\v\DC2\EOT\144\SOH\NUL$\SUBN GetAuthnDescriptorRequest is the request used for the GetAuthnDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\144\SOH\b!\n\
    \a\n\
    \\STX\EOT\f\DC2\ACK\146\SOH\NUL\149\SOH\SOH\SUBS GetAuthnDescriptorResponse is the response returned by the GetAuthnDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\146\SOH\b\"\n\
    \`\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\148\SOH\STX\FS\SUBR authn describes how to authenticate to the application when sending transactions\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\148\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\148\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\148\SOH\SUB\ESC\n\
    \Z\n\
    \\STX\EOT\r\DC2\EOT\152\SOH\NUL$\SUBN GetChainDescriptorRequest is the request used for the GetChainDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\152\SOH\b!\n\
    \a\n\
    \\STX\EOT\SO\DC2\ACK\154\SOH\NUL\157\SOH\SOH\SUBS GetChainDescriptorResponse is the response returned by the GetChainDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\154\SOH\b\"\n\
    \=\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\156\SOH\STX\FS\SUB/ chain describes application chain information\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\EOT\156\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\156\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\156\SOH\SUB\ESC\n\
    \Z\n\
    \\STX\EOT\SI\DC2\EOT\160\SOH\NUL$\SUBN GetCodecDescriptorRequest is the request used for the GetCodecDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\160\SOH\b!\n\
    \a\n\
    \\STX\EOT\DLE\DC2\ACK\162\SOH\NUL\165\SOH\SOH\SUBS GetCodecDescriptorResponse is the response returned by the GetCodecDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\162\SOH\b\"\n\
    \g\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\164\SOH\STX\FS\SUBY codec describes the application codec such as registered interfaces and implementations\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\EOT\164\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\164\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\164\SOH\SUB\ESC\n\
    \j\n\
    \\STX\EOT\DC1\DC2\EOT\168\SOH\NUL,\SUB^ GetConfigurationDescriptorRequest is the request used for the GetConfigurationDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\168\SOH\b)\n\
    \q\n\
    \\STX\EOT\DC2\DC2\ACK\170\SOH\NUL\173\SOH\SOH\SUBc GetConfigurationDescriptorResponse is the response returned by the GetConfigurationDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\170\SOH\b*\n\
    \=\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\172\SOH\STX%\SUB/ config describes the application's sdk.Config\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\172\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\172\SOH\SUB \n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\172\SOH#$\n\
    \j\n\
    \\STX\EOT\DC3\DC2\EOT\176\SOH\NUL,\SUB^ GetQueryServicesDescriptorRequest is the request used for the GetQueryServicesDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\176\SOH\b)\n\
    \q\n\
    \\STX\EOT\DC4\DC2\ACK\178\SOH\NUL\181\SOH\SOH\SUBc GetQueryServicesDescriptorResponse is the response returned by the GetQueryServicesDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\178\SOH\b*\n\
    \P\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\180\SOH\STX&\SUBB queries provides information on the available queryable services\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\180\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\180\SOH\SUB!\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\180\SOH$%\n\
    \T\n\
    \\STX\EOT\NAK\DC2\EOT\184\SOH\NUL!\SUBH GetTxDescriptorRequest is the request used for the GetTxDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\184\SOH\b\RS\n\
    \[\n\
    \\STX\EOT\SYN\DC2\ACK\186\SOH\NUL\190\SOH\SOH\SUBM GetTxDescriptorResponse is the response returned by the GetTxDescriptor RPC\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\186\SOH\b\US\n\
    \\138\SOH\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\189\SOH\STX\SYN\SUB| tx provides information on msgs that can be forwarded to the application\n\
    \ alongside the accepted transaction protobuf type\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ACK\DC2\EOT\189\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\189\SOH\SI\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\189\SOH\DC4\NAK\n\
    \Z\n\
    \\STX\EOT\ETB\DC2\ACK\193\SOH\NUL\196\SOH\SOH\SUBL QueryServicesDescriptor contains the list of cosmos-sdk queriable services\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\193\SOH\b\US\n\
    \M\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\195\SOH\STX5\SUB? query_services is a list of cosmos-sdk QueryServiceDescriptor\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\EOT\DC2\EOT\195\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ACK\DC2\EOT\195\SOH\v!\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\195\SOH\"0\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\195\SOH34\n\
    \O\n\
    \\STX\EOT\CAN\DC2\ACK\199\SOH\NUL\206\SOH\SOH\SUBA QueryServiceDescriptor describes a cosmos-sdk queryable service\n\
    \\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\199\SOH\b\RS\n\
    \K\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\201\SOH\STX\SYN\SUB= fullname is the protobuf fullname of the service descriptor\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\201\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\201\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\201\SOH\DC4\NAK\n\
    \b\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\203\SOH\STX\NAK\SUBT is_module describes if this service is actually exposed by an application's module\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\203\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\203\SOH\a\DLE\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\203\SOH\DC3\DC4\n\
    \@\n\
    \\EOT\EOT\CAN\STX\STX\DC2\EOT\205\SOH\STX-\SUB2 methods provides a list of query service methods\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\EOT\DC2\EOT\205\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ACK\DC2\EOT\205\SOH\v \n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\SOH\DC2\EOT\205\SOH!(\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ETX\DC2\EOT\205\SOH+,\n\
    \\226\SOH\n\
    \\STX\EOT\EM\DC2\ACK\211\SOH\NUL\217\SOH\SOH\SUB\211\SOH QueryMethodDescriptor describes a queryable method of a query service\n\
    \ no other info is provided beside method name and tendermint queryable path\n\
    \ because it would be redundant with the grpc reflection service\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\211\SOH\b\GS\n\
    \F\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\213\SOH\STX\DC2\SUB8 name is the protobuf name (not fullname) of the method\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\EOT\213\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\213\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\213\SOH\DLE\DC1\n\
    \l\n\
    \\EOT\EOT\EM\STX\SOH\DC2\EOT\216\SOH\STX\GS\SUB^ full_query_path is the path that can be used to query\n\
    \ this method via tendermint abci.Query\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ENQ\DC2\EOT\216\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\SOH\DC2\EOT\216\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ETX\DC2\EOT\216\SOH\ESC\FSb\ACKproto3"