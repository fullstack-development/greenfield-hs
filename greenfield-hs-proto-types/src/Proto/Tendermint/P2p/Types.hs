{- This file was auto-generated from tendermint/p2p/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.P2p.Types (
        DefaultNodeInfo(), DefaultNodeInfoOther(), NetAddress(),
        ProtocolVersion()
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
{- | Fields :
     
         * 'Proto.Tendermint.P2p.Types_Fields.protocolVersion' @:: Lens' DefaultNodeInfo ProtocolVersion@
         * 'Proto.Tendermint.P2p.Types_Fields.maybe'protocolVersion' @:: Lens' DefaultNodeInfo (Prelude.Maybe ProtocolVersion)@
         * 'Proto.Tendermint.P2p.Types_Fields.defaultNodeId' @:: Lens' DefaultNodeInfo Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.listenAddr' @:: Lens' DefaultNodeInfo Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.network' @:: Lens' DefaultNodeInfo Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.version' @:: Lens' DefaultNodeInfo Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.channels' @:: Lens' DefaultNodeInfo Data.ByteString.ByteString@
         * 'Proto.Tendermint.P2p.Types_Fields.moniker' @:: Lens' DefaultNodeInfo Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.other' @:: Lens' DefaultNodeInfo DefaultNodeInfoOther@
         * 'Proto.Tendermint.P2p.Types_Fields.maybe'other' @:: Lens' DefaultNodeInfo (Prelude.Maybe DefaultNodeInfoOther)@ -}
data DefaultNodeInfo
  = DefaultNodeInfo'_constructor {_DefaultNodeInfo'protocolVersion :: !(Prelude.Maybe ProtocolVersion),
                                  _DefaultNodeInfo'defaultNodeId :: !Data.Text.Text,
                                  _DefaultNodeInfo'listenAddr :: !Data.Text.Text,
                                  _DefaultNodeInfo'network :: !Data.Text.Text,
                                  _DefaultNodeInfo'version :: !Data.Text.Text,
                                  _DefaultNodeInfo'channels :: !Data.ByteString.ByteString,
                                  _DefaultNodeInfo'moniker :: !Data.Text.Text,
                                  _DefaultNodeInfo'other :: !(Prelude.Maybe DefaultNodeInfoOther),
                                  _DefaultNodeInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DefaultNodeInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "protocolVersion" ProtocolVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'protocolVersion
           (\ x__ y__ -> x__ {_DefaultNodeInfo'protocolVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "maybe'protocolVersion" (Prelude.Maybe ProtocolVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'protocolVersion
           (\ x__ y__ -> x__ {_DefaultNodeInfo'protocolVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "defaultNodeId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'defaultNodeId
           (\ x__ y__ -> x__ {_DefaultNodeInfo'defaultNodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "listenAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'listenAddr
           (\ x__ y__ -> x__ {_DefaultNodeInfo'listenAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "network" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'network
           (\ x__ y__ -> x__ {_DefaultNodeInfo'network = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'version
           (\ x__ y__ -> x__ {_DefaultNodeInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "channels" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'channels
           (\ x__ y__ -> x__ {_DefaultNodeInfo'channels = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "moniker" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'moniker
           (\ x__ y__ -> x__ {_DefaultNodeInfo'moniker = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "other" DefaultNodeInfoOther where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'other
           (\ x__ y__ -> x__ {_DefaultNodeInfo'other = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DefaultNodeInfo "maybe'other" (Prelude.Maybe DefaultNodeInfoOther) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfo'other
           (\ x__ y__ -> x__ {_DefaultNodeInfo'other = y__}))
        Prelude.id
instance Data.ProtoLens.Message DefaultNodeInfo where
  messageName _ = Data.Text.pack "tendermint.p2p.DefaultNodeInfo"
  packedMessageDescriptor _
    = "\n\
      \\SIDefaultNodeInfo\DC2P\n\
      \\DLEprotocol_version\CAN\SOH \SOH(\v2\US.tendermint.p2p.ProtocolVersionR\SIprotocolVersionB\EOT\200\222\US\NUL\DC29\n\
      \\SIdefault_node_id\CAN\STX \SOH(\tR\rdefaultNodeIdB\DC1\226\222\US\rDefaultNodeID\DC2\US\n\
      \\vlisten_addr\CAN\ETX \SOH(\tR\n\
      \listenAddr\DC2\CAN\n\
      \\anetwork\CAN\EOT \SOH(\tR\anetwork\DC2\CAN\n\
      \\aversion\CAN\ENQ \SOH(\tR\aversion\DC2\SUB\n\
      \\bchannels\CAN\ACK \SOH(\fR\bchannels\DC2\CAN\n\
      \\amoniker\CAN\a \SOH(\tR\amoniker\DC2@\n\
      \\ENQother\CAN\b \SOH(\v2$.tendermint.p2p.DefaultNodeInfoOtherR\ENQotherB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        protocolVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProtocolVersion)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocolVersion")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
        defaultNodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_node_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultNodeId")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
        listenAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listen_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"listenAddr")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
        network__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "network"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"network")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
        channels__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "channels"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"channels")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
        moniker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "moniker"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"moniker")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
        other__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "other"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DefaultNodeInfoOther)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'other")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, protocolVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, defaultNodeId__field_descriptor),
           (Data.ProtoLens.Tag 3, listenAddr__field_descriptor),
           (Data.ProtoLens.Tag 4, network__field_descriptor),
           (Data.ProtoLens.Tag 5, version__field_descriptor),
           (Data.ProtoLens.Tag 6, channels__field_descriptor),
           (Data.ProtoLens.Tag 7, moniker__field_descriptor),
           (Data.ProtoLens.Tag 8, other__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DefaultNodeInfo'_unknownFields
        (\ x__ y__ -> x__ {_DefaultNodeInfo'_unknownFields = y__})
  defMessage
    = DefaultNodeInfo'_constructor
        {_DefaultNodeInfo'protocolVersion = Prelude.Nothing,
         _DefaultNodeInfo'defaultNodeId = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfo'listenAddr = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfo'network = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfo'version = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfo'channels = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfo'moniker = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfo'other = Prelude.Nothing,
         _DefaultNodeInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DefaultNodeInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser DefaultNodeInfo
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
                                       "protocol_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolVersion") y x)
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
                                       "default_node_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultNodeId") y x)
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
                                       "listen_addr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listenAddr") y x)
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
                                       "network"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"network") y x)
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "channels"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"channels") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "moniker"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"moniker") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "other"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"other") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DefaultNodeInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'protocolVersion") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"defaultNodeId") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"listenAddr") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"network") _x
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
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"channels") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"moniker") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'other") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData DefaultNodeInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DefaultNodeInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DefaultNodeInfo'protocolVersion x__)
                (Control.DeepSeq.deepseq
                   (_DefaultNodeInfo'defaultNodeId x__)
                   (Control.DeepSeq.deepseq
                      (_DefaultNodeInfo'listenAddr x__)
                      (Control.DeepSeq.deepseq
                         (_DefaultNodeInfo'network x__)
                         (Control.DeepSeq.deepseq
                            (_DefaultNodeInfo'version x__)
                            (Control.DeepSeq.deepseq
                               (_DefaultNodeInfo'channels x__)
                               (Control.DeepSeq.deepseq
                                  (_DefaultNodeInfo'moniker x__)
                                  (Control.DeepSeq.deepseq (_DefaultNodeInfo'other x__) ()))))))))
{- | Fields :
     
         * 'Proto.Tendermint.P2p.Types_Fields.txIndex' @:: Lens' DefaultNodeInfoOther Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.rpcAddress' @:: Lens' DefaultNodeInfoOther Data.Text.Text@ -}
data DefaultNodeInfoOther
  = DefaultNodeInfoOther'_constructor {_DefaultNodeInfoOther'txIndex :: !Data.Text.Text,
                                       _DefaultNodeInfoOther'rpcAddress :: !Data.Text.Text,
                                       _DefaultNodeInfoOther'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DefaultNodeInfoOther where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DefaultNodeInfoOther "txIndex" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfoOther'txIndex
           (\ x__ y__ -> x__ {_DefaultNodeInfoOther'txIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DefaultNodeInfoOther "rpcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DefaultNodeInfoOther'rpcAddress
           (\ x__ y__ -> x__ {_DefaultNodeInfoOther'rpcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message DefaultNodeInfoOther where
  messageName _
    = Data.Text.pack "tendermint.p2p.DefaultNodeInfoOther"
  packedMessageDescriptor _
    = "\n\
      \\DC4DefaultNodeInfoOther\DC2\EM\n\
      \\btx_index\CAN\SOH \SOH(\tR\atxIndex\DC2/\n\
      \\vrpc_address\CAN\STX \SOH(\tR\n\
      \rpcAddressB\SO\226\222\US\n\
      \RPCAddress"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"txIndex")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfoOther
        rpcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rpc_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rpcAddress")) ::
              Data.ProtoLens.FieldDescriptor DefaultNodeInfoOther
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txIndex__field_descriptor),
           (Data.ProtoLens.Tag 2, rpcAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DefaultNodeInfoOther'_unknownFields
        (\ x__ y__ -> x__ {_DefaultNodeInfoOther'_unknownFields = y__})
  defMessage
    = DefaultNodeInfoOther'_constructor
        {_DefaultNodeInfoOther'txIndex = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfoOther'rpcAddress = Data.ProtoLens.fieldDefault,
         _DefaultNodeInfoOther'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DefaultNodeInfoOther
          -> Data.ProtoLens.Encoding.Bytes.Parser DefaultNodeInfoOther
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
                                       "tx_index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"txIndex") y x)
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
                                       "rpc_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rpcAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DefaultNodeInfoOther"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txIndex") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"rpcAddress") _x
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
instance Control.DeepSeq.NFData DefaultNodeInfoOther where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DefaultNodeInfoOther'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DefaultNodeInfoOther'txIndex x__)
                (Control.DeepSeq.deepseq
                   (_DefaultNodeInfoOther'rpcAddress x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.P2p.Types_Fields.id' @:: Lens' NetAddress Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.ip' @:: Lens' NetAddress Data.Text.Text@
         * 'Proto.Tendermint.P2p.Types_Fields.port' @:: Lens' NetAddress Data.Word.Word32@ -}
data NetAddress
  = NetAddress'_constructor {_NetAddress'id :: !Data.Text.Text,
                             _NetAddress'ip :: !Data.Text.Text,
                             _NetAddress'port :: !Data.Word.Word32,
                             _NetAddress'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NetAddress where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NetAddress "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetAddress'id (\ x__ y__ -> x__ {_NetAddress'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NetAddress "ip" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetAddress'ip (\ x__ y__ -> x__ {_NetAddress'ip = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NetAddress "port" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetAddress'port (\ x__ y__ -> x__ {_NetAddress'port = y__}))
        Prelude.id
instance Data.ProtoLens.Message NetAddress where
  messageName _ = Data.Text.pack "tendermint.p2p.NetAddress"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \NetAddress\DC2\SYN\n\
      \\STXid\CAN\SOH \SOH(\tR\STXidB\ACK\226\222\US\STXID\DC2\SYN\n\
      \\STXip\CAN\STX \SOH(\tR\STXipB\ACK\226\222\US\STXIP\DC2\DC2\n\
      \\EOTport\CAN\ETX \SOH(\rR\EOTport"
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
              Data.ProtoLens.FieldDescriptor NetAddress
        ip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"ip")) ::
              Data.ProtoLens.FieldDescriptor NetAddress
        port__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"port")) ::
              Data.ProtoLens.FieldDescriptor NetAddress
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, ip__field_descriptor),
           (Data.ProtoLens.Tag 3, port__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NetAddress'_unknownFields
        (\ x__ y__ -> x__ {_NetAddress'_unknownFields = y__})
  defMessage
    = NetAddress'_constructor
        {_NetAddress'id = Data.ProtoLens.fieldDefault,
         _NetAddress'ip = Data.ProtoLens.fieldDefault,
         _NetAddress'port = Data.ProtoLens.fieldDefault,
         _NetAddress'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NetAddress -> Data.ProtoLens.Encoding.Bytes.Parser NetAddress
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
                                       "ip"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ip") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "port"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"port") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NetAddress"
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
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"ip") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"port") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData NetAddress where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NetAddress'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NetAddress'id x__)
                (Control.DeepSeq.deepseq
                   (_NetAddress'ip x__)
                   (Control.DeepSeq.deepseq (_NetAddress'port x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.P2p.Types_Fields.p2p' @:: Lens' ProtocolVersion Data.Word.Word64@
         * 'Proto.Tendermint.P2p.Types_Fields.block' @:: Lens' ProtocolVersion Data.Word.Word64@
         * 'Proto.Tendermint.P2p.Types_Fields.app' @:: Lens' ProtocolVersion Data.Word.Word64@ -}
data ProtocolVersion
  = ProtocolVersion'_constructor {_ProtocolVersion'p2p :: !Data.Word.Word64,
                                  _ProtocolVersion'block :: !Data.Word.Word64,
                                  _ProtocolVersion'app :: !Data.Word.Word64,
                                  _ProtocolVersion'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProtocolVersion where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProtocolVersion "p2p" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolVersion'p2p
           (\ x__ y__ -> x__ {_ProtocolVersion'p2p = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProtocolVersion "block" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolVersion'block
           (\ x__ y__ -> x__ {_ProtocolVersion'block = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProtocolVersion "app" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolVersion'app
           (\ x__ y__ -> x__ {_ProtocolVersion'app = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProtocolVersion where
  messageName _ = Data.Text.pack "tendermint.p2p.ProtocolVersion"
  packedMessageDescriptor _
    = "\n\
      \\SIProtocolVersion\DC2\EM\n\
      \\ETXp2p\CAN\SOH \SOH(\EOTR\ETXp2pB\a\226\222\US\ETXP2P\DC2\DC4\n\
      \\ENQblock\CAN\STX \SOH(\EOTR\ENQblock\DC2\DLE\n\
      \\ETXapp\CAN\ETX \SOH(\EOTR\ETXapp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        p2p__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "p2p"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"p2p")) ::
              Data.ProtoLens.FieldDescriptor ProtocolVersion
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"block")) ::
              Data.ProtoLens.FieldDescriptor ProtocolVersion
        app__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"app")) ::
              Data.ProtoLens.FieldDescriptor ProtocolVersion
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, p2p__field_descriptor),
           (Data.ProtoLens.Tag 2, block__field_descriptor),
           (Data.ProtoLens.Tag 3, app__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProtocolVersion'_unknownFields
        (\ x__ y__ -> x__ {_ProtocolVersion'_unknownFields = y__})
  defMessage
    = ProtocolVersion'_constructor
        {_ProtocolVersion'p2p = Data.ProtoLens.fieldDefault,
         _ProtocolVersion'block = Data.ProtoLens.fieldDefault,
         _ProtocolVersion'app = Data.ProtoLens.fieldDefault,
         _ProtocolVersion'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProtocolVersion
          -> Data.ProtoLens.Encoding.Bytes.Parser ProtocolVersion
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "p2p"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"p2p") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "block"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"app") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProtocolVersion"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"p2p") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"block") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"app") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ProtocolVersion where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProtocolVersion'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProtocolVersion'p2p x__)
                (Control.DeepSeq.deepseq
                   (_ProtocolVersion'block x__)
                   (Control.DeepSeq.deepseq (_ProtocolVersion'app x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SUBtendermint/p2p/types.proto\DC2\SOtendermint.p2p\SUB\DC4gogoproto/gogo.proto\"P\n\
    \\n\
    \NetAddress\DC2\SYN\n\
    \\STXid\CAN\SOH \SOH(\tR\STXidB\ACK\226\222\US\STXID\DC2\SYN\n\
    \\STXip\CAN\STX \SOH(\tR\STXipB\ACK\226\222\US\STXIP\DC2\DC2\n\
    \\EOTport\CAN\ETX \SOH(\rR\EOTport\"T\n\
    \\SIProtocolVersion\DC2\EM\n\
    \\ETXp2p\CAN\SOH \SOH(\EOTR\ETXp2pB\a\226\222\US\ETXP2P\DC2\DC4\n\
    \\ENQblock\CAN\STX \SOH(\EOTR\ENQblock\DC2\DLE\n\
    \\ETXapp\CAN\ETX \SOH(\EOTR\ETXapp\"\235\STX\n\
    \\SIDefaultNodeInfo\DC2P\n\
    \\DLEprotocol_version\CAN\SOH \SOH(\v2\US.tendermint.p2p.ProtocolVersionR\SIprotocolVersionB\EOT\200\222\US\NUL\DC29\n\
    \\SIdefault_node_id\CAN\STX \SOH(\tR\rdefaultNodeIdB\DC1\226\222\US\rDefaultNodeID\DC2\US\n\
    \\vlisten_addr\CAN\ETX \SOH(\tR\n\
    \listenAddr\DC2\CAN\n\
    \\anetwork\CAN\EOT \SOH(\tR\anetwork\DC2\CAN\n\
    \\aversion\CAN\ENQ \SOH(\tR\aversion\DC2\SUB\n\
    \\bchannels\CAN\ACK \SOH(\fR\bchannels\DC2\CAN\n\
    \\amoniker\CAN\a \SOH(\tR\amoniker\DC2@\n\
    \\ENQother\CAN\b \SOH(\v2$.tendermint.p2p.DefaultNodeInfoOtherR\ENQotherB\EOT\200\222\US\NUL\"b\n\
    \\DC4DefaultNodeInfoOther\DC2\EM\n\
    \\btx_index\CAN\SOH \SOH(\tR\atxIndex\DC2/\n\
    \\vrpc_address\CAN\STX \SOH(\tR\n\
    \rpcAddressB\SO\226\222\US\n\
    \RPCAddressB3Z1github.com/cometbft/cometbft/proto/tendermint/p2pJ\229\t\n\
    \\ACK\DC2\EOT\NUL\NUL!\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ETB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULH\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\v\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\b\DC21\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\236\251\ETX\DC2\ETX\b\DC30\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\t\DC21\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\236\251\ETX\DC2\ETX\t\DC30\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\t\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\SO\DC33\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\236\251\ETX\DC2\ETX\SO\DC42\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SI\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SI\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SI\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DLE\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DLE\t\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DLE\DC1\DC2\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC3\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC3\b\ETB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC4\STXK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\DC4\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC4\ETB'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC4*+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX\DC4,J\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\233\251\ETX\DC2\ETX\DC4-I\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\NAK\STXW\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\NAK\ETB&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\NAK*+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX\NAK,V\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\236\251\ETX\DC2\ETX\NAK-U\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SYN\STX,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SYN\ETB\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SYN*+\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\ETB\STX,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\ETB\ETB\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\ETB*+\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\CAN\STX,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\CAN\ETB\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\CAN*+\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\EM\STX,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX\EM\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\EM\ETB\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\EM*+\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX\SUB\STX,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX\SUB\ETB\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX\SUB*+\n\
    \\v\n\
    \\EOT\EOT\STX\STX\a\DC2\ETX\ESC\STXK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\ETX\ESC\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETX\ESC\ETB\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETX\ESC*+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\b\DC2\ETX\ESC,J\n\
    \\SI\n\
    \\b\EOT\STX\STX\a\b\233\251\ETX\DC2\ETX\ESC-I\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\RS\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\RS\b\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\US\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\US\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\US\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX \STXA\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX \t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX \ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\ETX \EM@\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\236\251\ETX\DC2\ETX \SUB?b\ACKproto3"