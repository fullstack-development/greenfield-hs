{- This file was auto-generated from cosmos/base/node/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Node.V1beta1.Query (
        Service(..), ConfigRequest(), ConfigResponse(), StatusRequest(),
        StatusResponse()
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
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
      -}
data ConfigRequest
  = ConfigRequest'_constructor {_ConfigRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ConfigRequest where
  messageName _
    = Data.Text.pack "cosmos.base.node.v1beta1.ConfigRequest"
  packedMessageDescriptor _
    = "\n\
      \\rConfigRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigRequest'_unknownFields
        (\ x__ y__ -> x__ {_ConfigRequest'_unknownFields = y__})
  defMessage
    = ConfigRequest'_constructor {_ConfigRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigRequest -> Data.ProtoLens.Encoding.Bytes.Parser ConfigRequest
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
          (do loop Data.ProtoLens.defMessage) "ConfigRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ConfigRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_ConfigRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.minimumGasPrice' @:: Lens' ConfigResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.pruningKeepRecent' @:: Lens' ConfigResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.pruningInterval' @:: Lens' ConfigResponse Data.Text.Text@ -}
data ConfigResponse
  = ConfigResponse'_constructor {_ConfigResponse'minimumGasPrice :: !Data.Text.Text,
                                 _ConfigResponse'pruningKeepRecent :: !Data.Text.Text,
                                 _ConfigResponse'pruningInterval :: !Data.Text.Text,
                                 _ConfigResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigResponse "minimumGasPrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigResponse'minimumGasPrice
           (\ x__ y__ -> x__ {_ConfigResponse'minimumGasPrice = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigResponse "pruningKeepRecent" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigResponse'pruningKeepRecent
           (\ x__ y__ -> x__ {_ConfigResponse'pruningKeepRecent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigResponse "pruningInterval" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigResponse'pruningInterval
           (\ x__ y__ -> x__ {_ConfigResponse'pruningInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigResponse where
  messageName _
    = Data.Text.pack "cosmos.base.node.v1beta1.ConfigResponse"
  packedMessageDescriptor _
    = "\n\
      \\SOConfigResponse\DC2*\n\
      \\DC1minimum_gas_price\CAN\SOH \SOH(\tR\SIminimumGasPrice\DC2.\n\
      \\DC3pruning_keep_recent\CAN\STX \SOH(\tR\DC1pruningKeepRecent\DC2)\n\
      \\DLEpruning_interval\CAN\ETX \SOH(\tR\SIpruningInterval"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        minimumGasPrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minimum_gas_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minimumGasPrice")) ::
              Data.ProtoLens.FieldDescriptor ConfigResponse
        pruningKeepRecent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pruning_keep_recent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pruningKeepRecent")) ::
              Data.ProtoLens.FieldDescriptor ConfigResponse
        pruningInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pruning_interval"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pruningInterval")) ::
              Data.ProtoLens.FieldDescriptor ConfigResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, minimumGasPrice__field_descriptor),
           (Data.ProtoLens.Tag 2, pruningKeepRecent__field_descriptor),
           (Data.ProtoLens.Tag 3, pruningInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigResponse'_unknownFields
        (\ x__ y__ -> x__ {_ConfigResponse'_unknownFields = y__})
  defMessage
    = ConfigResponse'_constructor
        {_ConfigResponse'minimumGasPrice = Data.ProtoLens.fieldDefault,
         _ConfigResponse'pruningKeepRecent = Data.ProtoLens.fieldDefault,
         _ConfigResponse'pruningInterval = Data.ProtoLens.fieldDefault,
         _ConfigResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ConfigResponse
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
                                       "minimum_gas_price"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minimumGasPrice") y x)
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
                                       "pruning_keep_recent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pruningKeepRecent") y x)
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
                                       "pruning_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pruningInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConfigResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"minimumGasPrice") _x
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
                         (Data.ProtoLens.Field.field @"pruningKeepRecent") _x
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
                            (Data.ProtoLens.Field.field @"pruningInterval") _x
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
instance Control.DeepSeq.NFData ConfigResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConfigResponse'minimumGasPrice x__)
                (Control.DeepSeq.deepseq
                   (_ConfigResponse'pruningKeepRecent x__)
                   (Control.DeepSeq.deepseq
                      (_ConfigResponse'pruningInterval x__) ())))
{- | Fields :
      -}
data StatusRequest
  = StatusRequest'_constructor {_StatusRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StatusRequest where
  messageName _
    = Data.Text.pack "cosmos.base.node.v1beta1.StatusRequest"
  packedMessageDescriptor _
    = "\n\
      \\rStatusRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatusRequest'_unknownFields
        (\ x__ y__ -> x__ {_StatusRequest'_unknownFields = y__})
  defMessage
    = StatusRequest'_constructor {_StatusRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StatusRequest -> Data.ProtoLens.Encoding.Bytes.Parser StatusRequest
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
          (do loop Data.ProtoLens.defMessage) "StatusRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData StatusRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_StatusRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.earliestStoreHeight' @:: Lens' StatusResponse Data.Word.Word64@
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.height' @:: Lens' StatusResponse Data.Word.Word64@
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.timestamp' @:: Lens' StatusResponse Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.maybe'timestamp' @:: Lens' StatusResponse (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.appHash' @:: Lens' StatusResponse Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Node.V1beta1.Query_Fields.validatorHash' @:: Lens' StatusResponse Data.ByteString.ByteString@ -}
data StatusResponse
  = StatusResponse'_constructor {_StatusResponse'earliestStoreHeight :: !Data.Word.Word64,
                                 _StatusResponse'height :: !Data.Word.Word64,
                                 _StatusResponse'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _StatusResponse'appHash :: !Data.ByteString.ByteString,
                                 _StatusResponse'validatorHash :: !Data.ByteString.ByteString,
                                 _StatusResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StatusResponse "earliestStoreHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusResponse'earliestStoreHeight
           (\ x__ y__ -> x__ {_StatusResponse'earliestStoreHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatusResponse "height" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusResponse'height
           (\ x__ y__ -> x__ {_StatusResponse'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatusResponse "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusResponse'timestamp
           (\ x__ y__ -> x__ {_StatusResponse'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StatusResponse "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusResponse'timestamp
           (\ x__ y__ -> x__ {_StatusResponse'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatusResponse "appHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusResponse'appHash
           (\ x__ y__ -> x__ {_StatusResponse'appHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StatusResponse "validatorHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StatusResponse'validatorHash
           (\ x__ y__ -> x__ {_StatusResponse'validatorHash = y__}))
        Prelude.id
instance Data.ProtoLens.Message StatusResponse where
  messageName _
    = Data.Text.pack "cosmos.base.node.v1beta1.StatusResponse"
  packedMessageDescriptor _
    = "\n\
      \\SOStatusResponse\DC22\n\
      \\NAKearliest_store_height\CAN\SOH \SOH(\EOTR\DC3earliestStoreHeight\DC2\SYN\n\
      \\ACKheight\CAN\STX \SOH(\EOTR\ACKheight\DC2>\n\
      \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\EOT\144\223\US\SOH\DC2\EM\n\
      \\bapp_hash\CAN\EOT \SOH(\fR\aappHash\DC2%\n\
      \\SOvalidator_hash\CAN\ENQ \SOH(\fR\rvalidatorHash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        earliestStoreHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "earliest_store_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"earliestStoreHeight")) ::
              Data.ProtoLens.FieldDescriptor StatusResponse
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor StatusResponse
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor StatusResponse
        appHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"appHash")) ::
              Data.ProtoLens.FieldDescriptor StatusResponse
        validatorHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorHash")) ::
              Data.ProtoLens.FieldDescriptor StatusResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, earliestStoreHeight__field_descriptor),
           (Data.ProtoLens.Tag 2, height__field_descriptor),
           (Data.ProtoLens.Tag 3, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 4, appHash__field_descriptor),
           (Data.ProtoLens.Tag 5, validatorHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StatusResponse'_unknownFields
        (\ x__ y__ -> x__ {_StatusResponse'_unknownFields = y__})
  defMessage
    = StatusResponse'_constructor
        {_StatusResponse'earliestStoreHeight = Data.ProtoLens.fieldDefault,
         _StatusResponse'height = Data.ProtoLens.fieldDefault,
         _StatusResponse'timestamp = Prelude.Nothing,
         _StatusResponse'appHash = Data.ProtoLens.fieldDefault,
         _StatusResponse'validatorHash = Data.ProtoLens.fieldDefault,
         _StatusResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StatusResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StatusResponse
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "earliest_store_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"earliestStoreHeight") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "app_hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appHash") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "validator_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorHash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StatusResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"earliestStoreHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"appHash") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"validatorHash") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData StatusResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StatusResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StatusResponse'earliestStoreHeight x__)
                (Control.DeepSeq.deepseq
                   (_StatusResponse'height x__)
                   (Control.DeepSeq.deepseq
                      (_StatusResponse'timestamp x__)
                      (Control.DeepSeq.deepseq
                         (_StatusResponse'appHash x__)
                         (Control.DeepSeq.deepseq
                            (_StatusResponse'validatorHash x__) ())))))
data Service = Service {}
instance Data.ProtoLens.Service.Types.Service Service where
  type ServiceName Service = "Service"
  type ServicePackage Service = "cosmos.base.node.v1beta1"
  type ServiceMethods Service = '["config", "status"]
  packedServiceDescriptor _
    = "\n\
      \\aService\DC2\133\SOH\n\
      \\ACKConfig\DC2'.cosmos.base.node.v1beta1.ConfigRequest\SUB(.cosmos.base.node.v1beta1.ConfigResponse\"(\130\211\228\147\STX\"\DC2 /cosmos/base/node/v1beta1/config\DC2\133\SOH\n\
      \\ACKStatus\DC2'.cosmos.base.node.v1beta1.StatusRequest\SUB(.cosmos.base.node.v1beta1.StatusResponse\"(\130\211\228\147\STX\"\DC2 /cosmos/base/node/v1beta1/status"
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "config" where
  type MethodName Service "config" = "Config"
  type MethodInput Service "config" = ConfigRequest
  type MethodOutput Service "config" = ConfigResponse
  type MethodStreamingType Service "config" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "status" where
  type MethodName Service "status" = "Status"
  type MethodInput Service "status" = StatusRequest
  type MethodOutput Service "status" = StatusResponse
  type MethodStreamingType Service "status" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$cosmos/base/node/v1beta1/query.proto\DC2\CANcosmos.base.node.v1beta1\SUB\FSgoogle/api/annotations.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\DC4gogoproto/gogo.proto\"\SI\n\
    \\rConfigRequest\"\151\SOH\n\
    \\SOConfigResponse\DC2*\n\
    \\DC1minimum_gas_price\CAN\SOH \SOH(\tR\SIminimumGasPrice\DC2.\n\
    \\DC3pruning_keep_recent\CAN\STX \SOH(\tR\DC1pruningKeepRecent\DC2)\n\
    \\DLEpruning_interval\CAN\ETX \SOH(\tR\SIpruningInterval\"\SI\n\
    \\rStatusRequest\"\222\SOH\n\
    \\SOStatusResponse\DC22\n\
    \\NAKearliest_store_height\CAN\SOH \SOH(\EOTR\DC3earliestStoreHeight\DC2\SYN\n\
    \\ACKheight\CAN\STX \SOH(\EOTR\ACKheight\DC2>\n\
    \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\EOT\144\223\US\SOH\DC2\EM\n\
    \\bapp_hash\CAN\EOT \SOH(\fR\aappHash\DC2%\n\
    \\SOvalidator_hash\CAN\ENQ \SOH(\fR\rvalidatorHash2\153\STX\n\
    \\aService\DC2\133\SOH\n\
    \\ACKConfig\DC2'.cosmos.base.node.v1beta1.ConfigRequest\SUB(.cosmos.base.node.v1beta1.ConfigResponse\"(\130\211\228\147\STX\"\DC2 /cosmos/base/node/v1beta1/config\DC2\133\SOH\n\
    \\ACKStatus\DC2'.cosmos.base.node.v1beta1.StatusRequest\SUB(.cosmos.base.node.v1beta1.StatusResponse\"(\130\211\228\147\STX\"\DC2 /cosmos/base/node/v1beta1/statusB/Z-github.com/cosmos/cosmos-sdk/client/grpc/nodeJ\226\v\n\
    \\ACK\DC2\EOT\NUL\NUL*\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULD\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULD\n\
    \P\n\
    \\STX\ACK\NUL\DC2\EOT\n\
    \\NUL\DC3\SOH\SUBD Service defines the gRPC querier service for node related queries.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\n\
    \\b\SI\n\
    \>\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\f\STX\SO\ETX\SUB0 Config queries for the operator configuration.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\f\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\f\r\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\f%3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\r\EOTF\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\r\EOTF\n\
    \3\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DLE\STX\DC2\ETX\SUB% Status queries for the node status.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DLE\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DLE\r\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DLE%3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\DC1\EOTF\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\DC1\EOTF\n\
    \S\n\
    \\STX\EOT\NUL\DC2\ETX\SYN\NUL\CAN\SUBH ConfigRequest defines the request structure for the Config gRPC query.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\NAK\n\
    \V\n\
    \\STX\EOT\SOH\DC2\EOT\EM\NUL\RS\SOH\SUBJ ConfigResponse defines the response structure for the Config gRPC query.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\EM\b\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SUB\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SUB\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SUB\GS\RS\n\
    \\US\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\FS\STX!\SUB\DC2 pruning settings\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\FS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\FS\t\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\FS\US \n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\GS\STX!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\GS\t\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\GS\US \n\
    \Q\n\
    \\STX\EOT\STX\DC2\ETX!\NUL\CAN\SUBF StateRequest defines the request structure for the status of a node.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\NAK\n\
    \T\n\
    \\STX\EOT\ETX\DC2\EOT$\NUL*\SOH\SUBH StateResponse defines the response structure for the status of a node.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX$\b\SYN\n\
    \;\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX%\STX6\". earliest block height available in the store\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX%\FS1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX%45\n\
    \#\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX&\STX6\"\SYN current block height\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX&\FS\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX&45\n\
    \%\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX'\STXS\"\CAN block height timestamp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETX'\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX'\FS%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX'45\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\ETX'6R\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\242\251\ETX\DC2\ETX'7Q\n\
    \,\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX(\STX6\"\US app hash of the current block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX(\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX(\FS$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX(45\n\
    \>\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX)\STX6\"1 validator hash provided by the consensus header\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX)\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX)\FS*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX)45b\ACKproto3"