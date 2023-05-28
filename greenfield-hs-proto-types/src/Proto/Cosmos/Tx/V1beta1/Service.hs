{- This file was auto-generated from cosmos/tx/v1beta1/service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Tx.V1beta1.Service (
        Service(..), BroadcastMode(..), BroadcastMode(),
        BroadcastMode'UnrecognizedValue, BroadcastTxRequest(),
        BroadcastTxResponse(), GetBlockWithTxsRequest(),
        GetBlockWithTxsResponse(), GetTxRequest(), GetTxResponse(),
        GetTxsEventRequest(), GetTxsEventResponse(), OrderBy(..),
        OrderBy(), OrderBy'UnrecognizedValue, SimulateRequest(),
        SimulateResponse(), TxDecodeAminoRequest(),
        TxDecodeAminoResponse(), TxDecodeRequest(), TxDecodeResponse(),
        TxEncodeAminoRequest(), TxEncodeAminoResponse(), TxEncodeRequest(),
        TxEncodeResponse()
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
import qualified Proto.Cosmos.Base.Abci.V1beta1.Abci
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Tx.V1beta1.Tx
import qualified Proto.Google.Api.Annotations
import qualified Proto.Tendermint.Types.Block
import qualified Proto.Tendermint.Types.Types
newtype BroadcastMode'UnrecognizedValue
  = BroadcastMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BroadcastMode
  = BROADCAST_MODE_UNSPECIFIED |
    BROADCAST_MODE_BLOCK |
    BROADCAST_MODE_SYNC |
    BROADCAST_MODE_ASYNC |
    BroadcastMode'Unrecognized !BroadcastMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BroadcastMode where
  maybeToEnum 0 = Prelude.Just BROADCAST_MODE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just BROADCAST_MODE_BLOCK
  maybeToEnum 2 = Prelude.Just BROADCAST_MODE_SYNC
  maybeToEnum 3 = Prelude.Just BROADCAST_MODE_ASYNC
  maybeToEnum k
    = Prelude.Just
        (BroadcastMode'Unrecognized
           (BroadcastMode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum BROADCAST_MODE_UNSPECIFIED = "BROADCAST_MODE_UNSPECIFIED"
  showEnum BROADCAST_MODE_BLOCK = "BROADCAST_MODE_BLOCK"
  showEnum BROADCAST_MODE_SYNC = "BROADCAST_MODE_SYNC"
  showEnum BROADCAST_MODE_ASYNC = "BROADCAST_MODE_ASYNC"
  showEnum
    (BroadcastMode'Unrecognized (BroadcastMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BROADCAST_MODE_UNSPECIFIED"
    = Prelude.Just BROADCAST_MODE_UNSPECIFIED
    | (Prelude.==) k "BROADCAST_MODE_BLOCK"
    = Prelude.Just BROADCAST_MODE_BLOCK
    | (Prelude.==) k "BROADCAST_MODE_SYNC"
    = Prelude.Just BROADCAST_MODE_SYNC
    | (Prelude.==) k "BROADCAST_MODE_ASYNC"
    = Prelude.Just BROADCAST_MODE_ASYNC
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BroadcastMode where
  minBound = BROADCAST_MODE_UNSPECIFIED
  maxBound = BROADCAST_MODE_ASYNC
instance Prelude.Enum BroadcastMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BroadcastMode: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BROADCAST_MODE_UNSPECIFIED = 0
  fromEnum BROADCAST_MODE_BLOCK = 1
  fromEnum BROADCAST_MODE_SYNC = 2
  fromEnum BROADCAST_MODE_ASYNC = 3
  fromEnum
    (BroadcastMode'Unrecognized (BroadcastMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BROADCAST_MODE_ASYNC
    = Prelude.error
        "BroadcastMode.succ: bad argument BROADCAST_MODE_ASYNC. This value would be out of bounds."
  succ BROADCAST_MODE_UNSPECIFIED = BROADCAST_MODE_BLOCK
  succ BROADCAST_MODE_BLOCK = BROADCAST_MODE_SYNC
  succ BROADCAST_MODE_SYNC = BROADCAST_MODE_ASYNC
  succ (BroadcastMode'Unrecognized _)
    = Prelude.error
        "BroadcastMode.succ: bad argument: unrecognized value"
  pred BROADCAST_MODE_UNSPECIFIED
    = Prelude.error
        "BroadcastMode.pred: bad argument BROADCAST_MODE_UNSPECIFIED. This value would be out of bounds."
  pred BROADCAST_MODE_BLOCK = BROADCAST_MODE_UNSPECIFIED
  pred BROADCAST_MODE_SYNC = BROADCAST_MODE_BLOCK
  pred BROADCAST_MODE_ASYNC = BROADCAST_MODE_SYNC
  pred (BroadcastMode'Unrecognized _)
    = Prelude.error
        "BroadcastMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BroadcastMode where
  fieldDefault = BROADCAST_MODE_UNSPECIFIED
instance Control.DeepSeq.NFData BroadcastMode where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txBytes' @:: Lens' BroadcastTxRequest Data.ByteString.ByteString@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.mode' @:: Lens' BroadcastTxRequest BroadcastMode@ -}
data BroadcastTxRequest
  = BroadcastTxRequest'_constructor {_BroadcastTxRequest'txBytes :: !Data.ByteString.ByteString,
                                     _BroadcastTxRequest'mode :: !BroadcastMode,
                                     _BroadcastTxRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BroadcastTxRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BroadcastTxRequest "txBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BroadcastTxRequest'txBytes
           (\ x__ y__ -> x__ {_BroadcastTxRequest'txBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BroadcastTxRequest "mode" BroadcastMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BroadcastTxRequest'mode
           (\ x__ y__ -> x__ {_BroadcastTxRequest'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Message BroadcastTxRequest where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.BroadcastTxRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2BroadcastTxRequest\DC2\EM\n\
      \\btx_bytes\CAN\SOH \SOH(\fR\atxBytes\DC24\n\
      \\EOTmode\CAN\STX \SOH(\SO2 .cosmos.tx.v1beta1.BroadcastModeR\EOTmode"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"txBytes")) ::
              Data.ProtoLens.FieldDescriptor BroadcastTxRequest
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor BroadcastMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"mode")) ::
              Data.ProtoLens.FieldDescriptor BroadcastTxRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, mode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BroadcastTxRequest'_unknownFields
        (\ x__ y__ -> x__ {_BroadcastTxRequest'_unknownFields = y__})
  defMessage
    = BroadcastTxRequest'_constructor
        {_BroadcastTxRequest'txBytes = Data.ProtoLens.fieldDefault,
         _BroadcastTxRequest'mode = Data.ProtoLens.fieldDefault,
         _BroadcastTxRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BroadcastTxRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser BroadcastTxRequest
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "tx_bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"txBytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BroadcastTxRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mode") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData BroadcastTxRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BroadcastTxRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BroadcastTxRequest'txBytes x__)
                (Control.DeepSeq.deepseq (_BroadcastTxRequest'mode x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txResponse' @:: Lens' BroadcastTxResponse Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'txResponse' @:: Lens' BroadcastTxResponse (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse)@ -}
data BroadcastTxResponse
  = BroadcastTxResponse'_constructor {_BroadcastTxResponse'txResponse :: !(Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse),
                                      _BroadcastTxResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BroadcastTxResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BroadcastTxResponse "txResponse" Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BroadcastTxResponse'txResponse
           (\ x__ y__ -> x__ {_BroadcastTxResponse'txResponse = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BroadcastTxResponse "maybe'txResponse" (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BroadcastTxResponse'txResponse
           (\ x__ y__ -> x__ {_BroadcastTxResponse'txResponse = y__}))
        Prelude.id
instance Data.ProtoLens.Message BroadcastTxResponse where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.BroadcastTxResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3BroadcastTxResponse\DC2E\n\
      \\vtx_response\CAN\SOH \SOH(\v2$.cosmos.base.abci.v1beta1.TxResponseR\n\
      \txResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'txResponse")) ::
              Data.ProtoLens.FieldDescriptor BroadcastTxResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txResponse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BroadcastTxResponse'_unknownFields
        (\ x__ y__ -> x__ {_BroadcastTxResponse'_unknownFields = y__})
  defMessage
    = BroadcastTxResponse'_constructor
        {_BroadcastTxResponse'txResponse = Prelude.Nothing,
         _BroadcastTxResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BroadcastTxResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser BroadcastTxResponse
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
                                       "tx_response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"txResponse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BroadcastTxResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'txResponse") _x
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
instance Control.DeepSeq.NFData BroadcastTxResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BroadcastTxResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BroadcastTxResponse'txResponse x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.height' @:: Lens' GetBlockWithTxsRequest Data.Int.Int64@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.pagination' @:: Lens' GetBlockWithTxsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'pagination' @:: Lens' GetBlockWithTxsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data GetBlockWithTxsRequest
  = GetBlockWithTxsRequest'_constructor {_GetBlockWithTxsRequest'height :: !Data.Int.Int64,
                                         _GetBlockWithTxsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                         _GetBlockWithTxsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetBlockWithTxsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetBlockWithTxsRequest "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsRequest'height
           (\ x__ y__ -> x__ {_GetBlockWithTxsRequest'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetBlockWithTxsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsRequest'pagination
           (\ x__ y__ -> x__ {_GetBlockWithTxsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetBlockWithTxsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsRequest'pagination
           (\ x__ y__ -> x__ {_GetBlockWithTxsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetBlockWithTxsRequest where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.GetBlockWithTxsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNGetBlockWithTxsRequest\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor GetBlockWithTxsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetBlockWithTxsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetBlockWithTxsRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetBlockWithTxsRequest'_unknownFields = y__})
  defMessage
    = GetBlockWithTxsRequest'_constructor
        {_GetBlockWithTxsRequest'height = Data.ProtoLens.fieldDefault,
         _GetBlockWithTxsRequest'pagination = Prelude.Nothing,
         _GetBlockWithTxsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetBlockWithTxsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetBlockWithTxsRequest
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetBlockWithTxsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData GetBlockWithTxsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetBlockWithTxsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetBlockWithTxsRequest'height x__)
                (Control.DeepSeq.deepseq
                   (_GetBlockWithTxsRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txs' @:: Lens' GetBlockWithTxsResponse [Proto.Cosmos.Tx.V1beta1.Tx.Tx]@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.vec'txs' @:: Lens' GetBlockWithTxsResponse (Data.Vector.Vector Proto.Cosmos.Tx.V1beta1.Tx.Tx)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.blockId' @:: Lens' GetBlockWithTxsResponse Proto.Tendermint.Types.Types.BlockID@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'blockId' @:: Lens' GetBlockWithTxsResponse (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.block' @:: Lens' GetBlockWithTxsResponse Proto.Tendermint.Types.Block.Block@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'block' @:: Lens' GetBlockWithTxsResponse (Prelude.Maybe Proto.Tendermint.Types.Block.Block)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.pagination' @:: Lens' GetBlockWithTxsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'pagination' @:: Lens' GetBlockWithTxsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data GetBlockWithTxsResponse
  = GetBlockWithTxsResponse'_constructor {_GetBlockWithTxsResponse'txs :: !(Data.Vector.Vector Proto.Cosmos.Tx.V1beta1.Tx.Tx),
                                          _GetBlockWithTxsResponse'blockId :: !(Prelude.Maybe Proto.Tendermint.Types.Types.BlockID),
                                          _GetBlockWithTxsResponse'block :: !(Prelude.Maybe Proto.Tendermint.Types.Block.Block),
                                          _GetBlockWithTxsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                          _GetBlockWithTxsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetBlockWithTxsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "txs" [Proto.Cosmos.Tx.V1beta1.Tx.Tx] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'txs
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "vec'txs" (Data.Vector.Vector Proto.Cosmos.Tx.V1beta1.Tx.Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'txs
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "blockId" Proto.Tendermint.Types.Types.BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'blockId
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "maybe'blockId" (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'blockId
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "block" Proto.Tendermint.Types.Block.Block where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'block
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'block = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "maybe'block" (Prelude.Maybe Proto.Tendermint.Types.Block.Block) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'block
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'block = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'pagination
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetBlockWithTxsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockWithTxsResponse'pagination
           (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetBlockWithTxsResponse where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.GetBlockWithTxsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBGetBlockWithTxsResponse\DC2'\n\
      \\ETXtxs\CAN\SOH \ETX(\v2\NAK.cosmos.tx.v1beta1.TxR\ETXtxs\DC24\n\
      \\bblock_id\CAN\STX \SOH(\v2\EM.tendermint.types.BlockIDR\ablockId\DC2-\n\
      \\ENQblock\CAN\ETX \SOH(\v2\ETB.tendermint.types.BlockR\ENQblock\DC2G\n\
      \\n\
      \pagination\CAN\EOT \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "txs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.V1beta1.Tx.Tx)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"txs")) ::
              Data.ProtoLens.FieldDescriptor GetBlockWithTxsResponse
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor GetBlockWithTxsResponse
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Block.Block)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'block")) ::
              Data.ProtoLens.FieldDescriptor GetBlockWithTxsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetBlockWithTxsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txs__field_descriptor),
           (Data.ProtoLens.Tag 2, blockId__field_descriptor),
           (Data.ProtoLens.Tag 3, block__field_descriptor),
           (Data.ProtoLens.Tag 4, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetBlockWithTxsResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetBlockWithTxsResponse'_unknownFields = y__})
  defMessage
    = GetBlockWithTxsResponse'_constructor
        {_GetBlockWithTxsResponse'txs = Data.Vector.Generic.empty,
         _GetBlockWithTxsResponse'blockId = Prelude.Nothing,
         _GetBlockWithTxsResponse'block = Prelude.Nothing,
         _GetBlockWithTxsResponse'pagination = Prelude.Nothing,
         _GetBlockWithTxsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetBlockWithTxsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Tx.V1beta1.Tx.Tx
             -> Data.ProtoLens.Encoding.Bytes.Parser GetBlockWithTxsResponse
        loop x mutable'txs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'txs)
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
                              (Data.ProtoLens.Field.field @"vec'txs") frozen'txs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "txs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'txs y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                                  mutable'txs
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y x)
                                  mutable'txs
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'txs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'txs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'txs)
          "GetBlockWithTxsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'txs") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'block") _x
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
                             (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData GetBlockWithTxsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetBlockWithTxsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetBlockWithTxsResponse'txs x__)
                (Control.DeepSeq.deepseq
                   (_GetBlockWithTxsResponse'blockId x__)
                   (Control.DeepSeq.deepseq
                      (_GetBlockWithTxsResponse'block x__)
                      (Control.DeepSeq.deepseq
                         (_GetBlockWithTxsResponse'pagination x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.hash' @:: Lens' GetTxRequest Data.Text.Text@ -}
data GetTxRequest
  = GetTxRequest'_constructor {_GetTxRequest'hash :: !Data.Text.Text,
                               _GetTxRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetTxRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetTxRequest "hash" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxRequest'hash (\ x__ y__ -> x__ {_GetTxRequest'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetTxRequest where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.GetTxRequest"
  packedMessageDescriptor _
    = "\n\
      \\fGetTxRequest\DC2\DC2\n\
      \\EOThash\CAN\SOH \SOH(\tR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor GetTxRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetTxRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetTxRequest'_unknownFields = y__})
  defMessage
    = GetTxRequest'_constructor
        {_GetTxRequest'hash = Data.ProtoLens.fieldDefault,
         _GetTxRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetTxRequest -> Data.ProtoLens.Encoding.Bytes.Parser GetTxRequest
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
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetTxRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
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
instance Control.DeepSeq.NFData GetTxRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetTxRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetTxRequest'hash x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.tx' @:: Lens' GetTxResponse Proto.Cosmos.Tx.V1beta1.Tx.Tx@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'tx' @:: Lens' GetTxResponse (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txResponse' @:: Lens' GetTxResponse Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'txResponse' @:: Lens' GetTxResponse (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse)@ -}
data GetTxResponse
  = GetTxResponse'_constructor {_GetTxResponse'tx :: !(Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx),
                                _GetTxResponse'txResponse :: !(Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse),
                                _GetTxResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetTxResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetTxResponse "tx" Proto.Cosmos.Tx.V1beta1.Tx.Tx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxResponse'tx (\ x__ y__ -> x__ {_GetTxResponse'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetTxResponse "maybe'tx" (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxResponse'tx (\ x__ y__ -> x__ {_GetTxResponse'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxResponse "txResponse" Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxResponse'txResponse
           (\ x__ y__ -> x__ {_GetTxResponse'txResponse = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetTxResponse "maybe'txResponse" (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxResponse'txResponse
           (\ x__ y__ -> x__ {_GetTxResponse'txResponse = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetTxResponse where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.GetTxResponse"
  packedMessageDescriptor _
    = "\n\
      \\rGetTxResponse\DC2%\n\
      \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtx\DC2E\n\
      \\vtx_response\CAN\STX \SOH(\v2$.cosmos.base.abci.v1beta1.TxResponseR\n\
      \txResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.V1beta1.Tx.Tx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor GetTxResponse
        txResponse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_response"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'txResponse")) ::
              Data.ProtoLens.FieldDescriptor GetTxResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tx__field_descriptor),
           (Data.ProtoLens.Tag 2, txResponse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetTxResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetTxResponse'_unknownFields = y__})
  defMessage
    = GetTxResponse'_constructor
        {_GetTxResponse'tx = Prelude.Nothing,
         _GetTxResponse'txResponse = Prelude.Nothing,
         _GetTxResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetTxResponse -> Data.ProtoLens.Encoding.Bytes.Parser GetTxResponse
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tx_response"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"txResponse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetTxResponse"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'txResponse") _x
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
instance Control.DeepSeq.NFData GetTxResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetTxResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetTxResponse'tx x__)
                (Control.DeepSeq.deepseq (_GetTxResponse'txResponse x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.events' @:: Lens' GetTxsEventRequest [Data.Text.Text]@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.vec'events' @:: Lens' GetTxsEventRequest (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.pagination' @:: Lens' GetTxsEventRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'pagination' @:: Lens' GetTxsEventRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.orderBy' @:: Lens' GetTxsEventRequest OrderBy@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.page' @:: Lens' GetTxsEventRequest Data.Word.Word64@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.limit' @:: Lens' GetTxsEventRequest Data.Word.Word64@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.query' @:: Lens' GetTxsEventRequest Data.Text.Text@ -}
data GetTxsEventRequest
  = GetTxsEventRequest'_constructor {_GetTxsEventRequest'events :: !(Data.Vector.Vector Data.Text.Text),
                                     _GetTxsEventRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                     _GetTxsEventRequest'orderBy :: !OrderBy,
                                     _GetTxsEventRequest'page :: !Data.Word.Word64,
                                     _GetTxsEventRequest'limit :: !Data.Word.Word64,
                                     _GetTxsEventRequest'query :: !Data.Text.Text,
                                     _GetTxsEventRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetTxsEventRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "events" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'events
           (\ x__ y__ -> x__ {_GetTxsEventRequest'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "vec'events" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'events
           (\ x__ y__ -> x__ {_GetTxsEventRequest'events = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'pagination
           (\ x__ y__ -> x__ {_GetTxsEventRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'pagination
           (\ x__ y__ -> x__ {_GetTxsEventRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "orderBy" OrderBy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'orderBy
           (\ x__ y__ -> x__ {_GetTxsEventRequest'orderBy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'page
           (\ x__ y__ -> x__ {_GetTxsEventRequest'page = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "limit" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'limit
           (\ x__ y__ -> x__ {_GetTxsEventRequest'limit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventRequest "query" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventRequest'query
           (\ x__ y__ -> x__ {_GetTxsEventRequest'query = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetTxsEventRequest where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.GetTxsEventRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2GetTxsEventRequest\DC2\SUB\n\
      \\ACKevents\CAN\SOH \ETX(\tR\ACKeventsB\STX\CAN\SOH\DC2J\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \paginationB\STX\CAN\SOH\DC25\n\
      \\border_by\CAN\ETX \SOH(\SO2\SUB.cosmos.tx.v1beta1.OrderByR\aorderBy\DC2\DC2\n\
      \\EOTpage\CAN\EOT \SOH(\EOTR\EOTpage\DC2\DC4\n\
      \\ENQlimit\CAN\ENQ \SOH(\EOTR\ENQlimit\DC2\DC4\n\
      \\ENQquery\CAN\ACK \SOH(\tR\ENQquery"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventRequest
        orderBy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order_by"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor OrderBy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"orderBy")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventRequest
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"page")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventRequest
        limit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"limit")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventRequest
        query__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"query")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, events__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor),
           (Data.ProtoLens.Tag 3, orderBy__field_descriptor),
           (Data.ProtoLens.Tag 4, page__field_descriptor),
           (Data.ProtoLens.Tag 5, limit__field_descriptor),
           (Data.ProtoLens.Tag 6, query__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetTxsEventRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetTxsEventRequest'_unknownFields = y__})
  defMessage
    = GetTxsEventRequest'_constructor
        {_GetTxsEventRequest'events = Data.Vector.Generic.empty,
         _GetTxsEventRequest'pagination = Prelude.Nothing,
         _GetTxsEventRequest'orderBy = Data.ProtoLens.fieldDefault,
         _GetTxsEventRequest'page = Data.ProtoLens.fieldDefault,
         _GetTxsEventRequest'limit = Data.ProtoLens.fieldDefault,
         _GetTxsEventRequest'query = Data.ProtoLens.fieldDefault,
         _GetTxsEventRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetTxsEventRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser GetTxsEventRequest
        loop x mutable'events
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'events)
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
                              (Data.ProtoLens.Field.field @"vec'events") frozen'events x))
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
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'events
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "order_by"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"orderBy") y x)
                                  mutable'events
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                                  mutable'events
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"limit") y x)
                                  mutable'events
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "query"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"query") y x)
                                  mutable'events
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'events
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'events)
          "GetTxsEventRequest"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"orderBy") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"page") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"limit") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"query") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData GetTxsEventRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetTxsEventRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetTxsEventRequest'events x__)
                (Control.DeepSeq.deepseq
                   (_GetTxsEventRequest'pagination x__)
                   (Control.DeepSeq.deepseq
                      (_GetTxsEventRequest'orderBy x__)
                      (Control.DeepSeq.deepseq
                         (_GetTxsEventRequest'page x__)
                         (Control.DeepSeq.deepseq
                            (_GetTxsEventRequest'limit x__)
                            (Control.DeepSeq.deepseq (_GetTxsEventRequest'query x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txs' @:: Lens' GetTxsEventResponse [Proto.Cosmos.Tx.V1beta1.Tx.Tx]@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.vec'txs' @:: Lens' GetTxsEventResponse (Data.Vector.Vector Proto.Cosmos.Tx.V1beta1.Tx.Tx)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txResponses' @:: Lens' GetTxsEventResponse [Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse]@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.vec'txResponses' @:: Lens' GetTxsEventResponse (Data.Vector.Vector Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.pagination' @:: Lens' GetTxsEventResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'pagination' @:: Lens' GetTxsEventResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.total' @:: Lens' GetTxsEventResponse Data.Word.Word64@ -}
data GetTxsEventResponse
  = GetTxsEventResponse'_constructor {_GetTxsEventResponse'txs :: !(Data.Vector.Vector Proto.Cosmos.Tx.V1beta1.Tx.Tx),
                                      _GetTxsEventResponse'txResponses :: !(Data.Vector.Vector Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse),
                                      _GetTxsEventResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                      _GetTxsEventResponse'total :: !Data.Word.Word64,
                                      _GetTxsEventResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetTxsEventResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetTxsEventResponse "txs" [Proto.Cosmos.Tx.V1beta1.Tx.Tx] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventResponse'txs
           (\ x__ y__ -> x__ {_GetTxsEventResponse'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetTxsEventResponse "vec'txs" (Data.Vector.Vector Proto.Cosmos.Tx.V1beta1.Tx.Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventResponse'txs
           (\ x__ y__ -> x__ {_GetTxsEventResponse'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventResponse "txResponses" [Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventResponse'txResponses
           (\ x__ y__ -> x__ {_GetTxsEventResponse'txResponses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetTxsEventResponse "vec'txResponses" (Data.Vector.Vector Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventResponse'txResponses
           (\ x__ y__ -> x__ {_GetTxsEventResponse'txResponses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventResponse'pagination
           (\ x__ y__ -> x__ {_GetTxsEventResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetTxsEventResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventResponse'pagination
           (\ x__ y__ -> x__ {_GetTxsEventResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetTxsEventResponse "total" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetTxsEventResponse'total
           (\ x__ y__ -> x__ {_GetTxsEventResponse'total = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetTxsEventResponse where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.GetTxsEventResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3GetTxsEventResponse\DC2'\n\
      \\ETXtxs\CAN\SOH \ETX(\v2\NAK.cosmos.tx.v1beta1.TxR\ETXtxs\DC2G\n\
      \\ftx_responses\CAN\STX \ETX(\v2$.cosmos.base.abci.v1beta1.TxResponseR\vtxResponses\DC2K\n\
      \\n\
      \pagination\CAN\ETX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \paginationB\STX\CAN\SOH\DC2\DC4\n\
      \\ENQtotal\CAN\EOT \SOH(\EOTR\ENQtotal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "txs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.V1beta1.Tx.Tx)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"txs")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventResponse
        txResponses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_responses"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"txResponses")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventResponse
        total__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"total")) ::
              Data.ProtoLens.FieldDescriptor GetTxsEventResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txs__field_descriptor),
           (Data.ProtoLens.Tag 2, txResponses__field_descriptor),
           (Data.ProtoLens.Tag 3, pagination__field_descriptor),
           (Data.ProtoLens.Tag 4, total__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetTxsEventResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetTxsEventResponse'_unknownFields = y__})
  defMessage
    = GetTxsEventResponse'_constructor
        {_GetTxsEventResponse'txs = Data.Vector.Generic.empty,
         _GetTxsEventResponse'txResponses = Data.Vector.Generic.empty,
         _GetTxsEventResponse'pagination = Prelude.Nothing,
         _GetTxsEventResponse'total = Data.ProtoLens.fieldDefault,
         _GetTxsEventResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetTxsEventResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.Abci.V1beta1.Abci.TxResponse
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Tx.V1beta1.Tx.Tx
                -> Data.ProtoLens.Encoding.Bytes.Parser GetTxsEventResponse
        loop x mutable'txResponses mutable'txs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'txResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'txResponses)
                      frozen'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'txs)
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
                              (Data.ProtoLens.Field.field @"vec'txResponses") frozen'txResponses
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'txs") frozen'txs x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "txs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'txs y)
                                loop x mutable'txResponses v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "tx_responses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'txResponses y)
                                loop x v mutable'txs
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'txResponses mutable'txs
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"total") y x)
                                  mutable'txResponses mutable'txs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'txResponses mutable'txs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'txResponses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'txResponses mutable'txs)
          "GetTxsEventResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'txs") _x))
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
                      (Data.ProtoLens.Field.field @"vec'txResponses") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"total") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData GetTxsEventResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetTxsEventResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetTxsEventResponse'txs x__)
                (Control.DeepSeq.deepseq
                   (_GetTxsEventResponse'txResponses x__)
                   (Control.DeepSeq.deepseq
                      (_GetTxsEventResponse'pagination x__)
                      (Control.DeepSeq.deepseq (_GetTxsEventResponse'total x__) ()))))
newtype OrderBy'UnrecognizedValue
  = OrderBy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data OrderBy
  = ORDER_BY_UNSPECIFIED |
    ORDER_BY_ASC |
    ORDER_BY_DESC |
    OrderBy'Unrecognized !OrderBy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum OrderBy where
  maybeToEnum 0 = Prelude.Just ORDER_BY_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ORDER_BY_ASC
  maybeToEnum 2 = Prelude.Just ORDER_BY_DESC
  maybeToEnum k
    = Prelude.Just
        (OrderBy'Unrecognized
           (OrderBy'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ORDER_BY_UNSPECIFIED = "ORDER_BY_UNSPECIFIED"
  showEnum ORDER_BY_ASC = "ORDER_BY_ASC"
  showEnum ORDER_BY_DESC = "ORDER_BY_DESC"
  showEnum (OrderBy'Unrecognized (OrderBy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ORDER_BY_UNSPECIFIED"
    = Prelude.Just ORDER_BY_UNSPECIFIED
    | (Prelude.==) k "ORDER_BY_ASC" = Prelude.Just ORDER_BY_ASC
    | (Prelude.==) k "ORDER_BY_DESC" = Prelude.Just ORDER_BY_DESC
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded OrderBy where
  minBound = ORDER_BY_UNSPECIFIED
  maxBound = ORDER_BY_DESC
instance Prelude.Enum OrderBy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum OrderBy: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ORDER_BY_UNSPECIFIED = 0
  fromEnum ORDER_BY_ASC = 1
  fromEnum ORDER_BY_DESC = 2
  fromEnum (OrderBy'Unrecognized (OrderBy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ORDER_BY_DESC
    = Prelude.error
        "OrderBy.succ: bad argument ORDER_BY_DESC. This value would be out of bounds."
  succ ORDER_BY_UNSPECIFIED = ORDER_BY_ASC
  succ ORDER_BY_ASC = ORDER_BY_DESC
  succ (OrderBy'Unrecognized _)
    = Prelude.error "OrderBy.succ: bad argument: unrecognized value"
  pred ORDER_BY_UNSPECIFIED
    = Prelude.error
        "OrderBy.pred: bad argument ORDER_BY_UNSPECIFIED. This value would be out of bounds."
  pred ORDER_BY_ASC = ORDER_BY_UNSPECIFIED
  pred ORDER_BY_DESC = ORDER_BY_ASC
  pred (OrderBy'Unrecognized _)
    = Prelude.error "OrderBy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault OrderBy where
  fieldDefault = ORDER_BY_UNSPECIFIED
instance Control.DeepSeq.NFData OrderBy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.tx' @:: Lens' SimulateRequest Proto.Cosmos.Tx.V1beta1.Tx.Tx@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'tx' @:: Lens' SimulateRequest (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txBytes' @:: Lens' SimulateRequest Data.ByteString.ByteString@ -}
data SimulateRequest
  = SimulateRequest'_constructor {_SimulateRequest'tx :: !(Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx),
                                  _SimulateRequest'txBytes :: !Data.ByteString.ByteString,
                                  _SimulateRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SimulateRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SimulateRequest "tx" Proto.Cosmos.Tx.V1beta1.Tx.Tx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulateRequest'tx (\ x__ y__ -> x__ {_SimulateRequest'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SimulateRequest "maybe'tx" (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulateRequest'tx (\ x__ y__ -> x__ {_SimulateRequest'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SimulateRequest "txBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulateRequest'txBytes
           (\ x__ y__ -> x__ {_SimulateRequest'txBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message SimulateRequest where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.SimulateRequest"
  packedMessageDescriptor _
    = "\n\
      \\SISimulateRequest\DC2)\n\
      \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtxB\STX\CAN\SOH\DC2\EM\n\
      \\btx_bytes\CAN\STX \SOH(\fR\atxBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.V1beta1.Tx.Tx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor SimulateRequest
        txBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"txBytes")) ::
              Data.ProtoLens.FieldDescriptor SimulateRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tx__field_descriptor),
           (Data.ProtoLens.Tag 2, txBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SimulateRequest'_unknownFields
        (\ x__ y__ -> x__ {_SimulateRequest'_unknownFields = y__})
  defMessage
    = SimulateRequest'_constructor
        {_SimulateRequest'tx = Prelude.Nothing,
         _SimulateRequest'txBytes = Data.ProtoLens.fieldDefault,
         _SimulateRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SimulateRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser SimulateRequest
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "tx_bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"txBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SimulateRequest"
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txBytes") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SimulateRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SimulateRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SimulateRequest'tx x__)
                (Control.DeepSeq.deepseq (_SimulateRequest'txBytes x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.gasInfo' @:: Lens' SimulateResponse Proto.Cosmos.Base.Abci.V1beta1.Abci.GasInfo@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'gasInfo' @:: Lens' SimulateResponse (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.GasInfo)@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.result' @:: Lens' SimulateResponse Proto.Cosmos.Base.Abci.V1beta1.Abci.Result@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'result' @:: Lens' SimulateResponse (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.Result)@ -}
data SimulateResponse
  = SimulateResponse'_constructor {_SimulateResponse'gasInfo :: !(Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.GasInfo),
                                   _SimulateResponse'result :: !(Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.Result),
                                   _SimulateResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SimulateResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SimulateResponse "gasInfo" Proto.Cosmos.Base.Abci.V1beta1.Abci.GasInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulateResponse'gasInfo
           (\ x__ y__ -> x__ {_SimulateResponse'gasInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SimulateResponse "maybe'gasInfo" (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.GasInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulateResponse'gasInfo
           (\ x__ y__ -> x__ {_SimulateResponse'gasInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SimulateResponse "result" Proto.Cosmos.Base.Abci.V1beta1.Abci.Result where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulateResponse'result
           (\ x__ y__ -> x__ {_SimulateResponse'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SimulateResponse "maybe'result" (Prelude.Maybe Proto.Cosmos.Base.Abci.V1beta1.Abci.Result) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SimulateResponse'result
           (\ x__ y__ -> x__ {_SimulateResponse'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message SimulateResponse where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.SimulateResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLESimulateResponse\DC2<\n\
      \\bgas_info\CAN\SOH \SOH(\v2!.cosmos.base.abci.v1beta1.GasInfoR\agasInfo\DC28\n\
      \\ACKresult\CAN\STX \SOH(\v2 .cosmos.base.abci.v1beta1.ResultR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gasInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Abci.V1beta1.Abci.GasInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gasInfo")) ::
              Data.ProtoLens.FieldDescriptor SimulateResponse
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Abci.V1beta1.Abci.Result)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor SimulateResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gasInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SimulateResponse'_unknownFields
        (\ x__ y__ -> x__ {_SimulateResponse'_unknownFields = y__})
  defMessage
    = SimulateResponse'_constructor
        {_SimulateResponse'gasInfo = Prelude.Nothing,
         _SimulateResponse'result = Prelude.Nothing,
         _SimulateResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SimulateResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser SimulateResponse
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
                                       "gas_info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gasInfo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SimulateResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gasInfo") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
instance Control.DeepSeq.NFData SimulateResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SimulateResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SimulateResponse'gasInfo x__)
                (Control.DeepSeq.deepseq (_SimulateResponse'result x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.aminoBinary' @:: Lens' TxDecodeAminoRequest Data.ByteString.ByteString@ -}
data TxDecodeAminoRequest
  = TxDecodeAminoRequest'_constructor {_TxDecodeAminoRequest'aminoBinary :: !Data.ByteString.ByteString,
                                       _TxDecodeAminoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxDecodeAminoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxDecodeAminoRequest "aminoBinary" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDecodeAminoRequest'aminoBinary
           (\ x__ y__ -> x__ {_TxDecodeAminoRequest'aminoBinary = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxDecodeAminoRequest where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.TxDecodeAminoRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4TxDecodeAminoRequest\DC2!\n\
      \\famino_binary\CAN\SOH \SOH(\fR\vaminoBinary"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        aminoBinary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amino_binary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"aminoBinary")) ::
              Data.ProtoLens.FieldDescriptor TxDecodeAminoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, aminoBinary__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxDecodeAminoRequest'_unknownFields
        (\ x__ y__ -> x__ {_TxDecodeAminoRequest'_unknownFields = y__})
  defMessage
    = TxDecodeAminoRequest'_constructor
        {_TxDecodeAminoRequest'aminoBinary = Data.ProtoLens.fieldDefault,
         _TxDecodeAminoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxDecodeAminoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser TxDecodeAminoRequest
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "amino_binary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"aminoBinary") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxDecodeAminoRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"aminoBinary") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TxDecodeAminoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxDecodeAminoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxDecodeAminoRequest'aminoBinary x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.aminoJson' @:: Lens' TxDecodeAminoResponse Data.Text.Text@ -}
data TxDecodeAminoResponse
  = TxDecodeAminoResponse'_constructor {_TxDecodeAminoResponse'aminoJson :: !Data.Text.Text,
                                        _TxDecodeAminoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxDecodeAminoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxDecodeAminoResponse "aminoJson" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDecodeAminoResponse'aminoJson
           (\ x__ y__ -> x__ {_TxDecodeAminoResponse'aminoJson = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxDecodeAminoResponse where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.TxDecodeAminoResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKTxDecodeAminoResponse\DC2\GS\n\
      \\n\
      \amino_json\CAN\SOH \SOH(\tR\taminoJson"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        aminoJson__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amino_json"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"aminoJson")) ::
              Data.ProtoLens.FieldDescriptor TxDecodeAminoResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, aminoJson__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxDecodeAminoResponse'_unknownFields
        (\ x__ y__ -> x__ {_TxDecodeAminoResponse'_unknownFields = y__})
  defMessage
    = TxDecodeAminoResponse'_constructor
        {_TxDecodeAminoResponse'aminoJson = Data.ProtoLens.fieldDefault,
         _TxDecodeAminoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxDecodeAminoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser TxDecodeAminoResponse
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
                                       "amino_json"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"aminoJson") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxDecodeAminoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"aminoJson") _x
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
instance Control.DeepSeq.NFData TxDecodeAminoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxDecodeAminoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TxDecodeAminoResponse'aminoJson x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txBytes' @:: Lens' TxDecodeRequest Data.ByteString.ByteString@ -}
data TxDecodeRequest
  = TxDecodeRequest'_constructor {_TxDecodeRequest'txBytes :: !Data.ByteString.ByteString,
                                  _TxDecodeRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxDecodeRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxDecodeRequest "txBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDecodeRequest'txBytes
           (\ x__ y__ -> x__ {_TxDecodeRequest'txBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxDecodeRequest where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.TxDecodeRequest"
  packedMessageDescriptor _
    = "\n\
      \\SITxDecodeRequest\DC2\EM\n\
      \\btx_bytes\CAN\SOH \SOH(\fR\atxBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"txBytes")) ::
              Data.ProtoLens.FieldDescriptor TxDecodeRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxDecodeRequest'_unknownFields
        (\ x__ y__ -> x__ {_TxDecodeRequest'_unknownFields = y__})
  defMessage
    = TxDecodeRequest'_constructor
        {_TxDecodeRequest'txBytes = Data.ProtoLens.fieldDefault,
         _TxDecodeRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxDecodeRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser TxDecodeRequest
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "tx_bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"txBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxDecodeRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TxDecodeRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxDecodeRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TxDecodeRequest'txBytes x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.tx' @:: Lens' TxDecodeResponse Proto.Cosmos.Tx.V1beta1.Tx.Tx@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'tx' @:: Lens' TxDecodeResponse (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx)@ -}
data TxDecodeResponse
  = TxDecodeResponse'_constructor {_TxDecodeResponse'tx :: !(Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx),
                                   _TxDecodeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxDecodeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxDecodeResponse "tx" Proto.Cosmos.Tx.V1beta1.Tx.Tx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDecodeResponse'tx
           (\ x__ y__ -> x__ {_TxDecodeResponse'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxDecodeResponse "maybe'tx" (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxDecodeResponse'tx
           (\ x__ y__ -> x__ {_TxDecodeResponse'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxDecodeResponse where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.TxDecodeResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLETxDecodeResponse\DC2%\n\
      \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.V1beta1.Tx.Tx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor TxDecodeResponse
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxDecodeResponse'_unknownFields
        (\ x__ y__ -> x__ {_TxDecodeResponse'_unknownFields = y__})
  defMessage
    = TxDecodeResponse'_constructor
        {_TxDecodeResponse'tx = Prelude.Nothing,
         _TxDecodeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxDecodeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser TxDecodeResponse
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
          (do loop Data.ProtoLens.defMessage) "TxDecodeResponse"
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
instance Control.DeepSeq.NFData TxDecodeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxDecodeResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TxDecodeResponse'tx x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.aminoJson' @:: Lens' TxEncodeAminoRequest Data.Text.Text@ -}
data TxEncodeAminoRequest
  = TxEncodeAminoRequest'_constructor {_TxEncodeAminoRequest'aminoJson :: !Data.Text.Text,
                                       _TxEncodeAminoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxEncodeAminoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxEncodeAminoRequest "aminoJson" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxEncodeAminoRequest'aminoJson
           (\ x__ y__ -> x__ {_TxEncodeAminoRequest'aminoJson = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxEncodeAminoRequest where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.TxEncodeAminoRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4TxEncodeAminoRequest\DC2\GS\n\
      \\n\
      \amino_json\CAN\SOH \SOH(\tR\taminoJson"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        aminoJson__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amino_json"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"aminoJson")) ::
              Data.ProtoLens.FieldDescriptor TxEncodeAminoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, aminoJson__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxEncodeAminoRequest'_unknownFields
        (\ x__ y__ -> x__ {_TxEncodeAminoRequest'_unknownFields = y__})
  defMessage
    = TxEncodeAminoRequest'_constructor
        {_TxEncodeAminoRequest'aminoJson = Data.ProtoLens.fieldDefault,
         _TxEncodeAminoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxEncodeAminoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser TxEncodeAminoRequest
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
                                       "amino_json"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"aminoJson") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxEncodeAminoRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"aminoJson") _x
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
instance Control.DeepSeq.NFData TxEncodeAminoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxEncodeAminoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TxEncodeAminoRequest'aminoJson x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.aminoBinary' @:: Lens' TxEncodeAminoResponse Data.ByteString.ByteString@ -}
data TxEncodeAminoResponse
  = TxEncodeAminoResponse'_constructor {_TxEncodeAminoResponse'aminoBinary :: !Data.ByteString.ByteString,
                                        _TxEncodeAminoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxEncodeAminoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxEncodeAminoResponse "aminoBinary" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxEncodeAminoResponse'aminoBinary
           (\ x__ y__ -> x__ {_TxEncodeAminoResponse'aminoBinary = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxEncodeAminoResponse where
  messageName _
    = Data.Text.pack "cosmos.tx.v1beta1.TxEncodeAminoResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKTxEncodeAminoResponse\DC2!\n\
      \\famino_binary\CAN\SOH \SOH(\fR\vaminoBinary"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        aminoBinary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amino_binary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"aminoBinary")) ::
              Data.ProtoLens.FieldDescriptor TxEncodeAminoResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, aminoBinary__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxEncodeAminoResponse'_unknownFields
        (\ x__ y__ -> x__ {_TxEncodeAminoResponse'_unknownFields = y__})
  defMessage
    = TxEncodeAminoResponse'_constructor
        {_TxEncodeAminoResponse'aminoBinary = Data.ProtoLens.fieldDefault,
         _TxEncodeAminoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxEncodeAminoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser TxEncodeAminoResponse
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "amino_binary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"aminoBinary") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxEncodeAminoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"aminoBinary") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TxEncodeAminoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxEncodeAminoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxEncodeAminoResponse'aminoBinary x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.tx' @:: Lens' TxEncodeRequest Proto.Cosmos.Tx.V1beta1.Tx.Tx@
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.maybe'tx' @:: Lens' TxEncodeRequest (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx)@ -}
data TxEncodeRequest
  = TxEncodeRequest'_constructor {_TxEncodeRequest'tx :: !(Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx),
                                  _TxEncodeRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxEncodeRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxEncodeRequest "tx" Proto.Cosmos.Tx.V1beta1.Tx.Tx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxEncodeRequest'tx (\ x__ y__ -> x__ {_TxEncodeRequest'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxEncodeRequest "maybe'tx" (Prelude.Maybe Proto.Cosmos.Tx.V1beta1.Tx.Tx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxEncodeRequest'tx (\ x__ y__ -> x__ {_TxEncodeRequest'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxEncodeRequest where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.TxEncodeRequest"
  packedMessageDescriptor _
    = "\n\
      \\SITxEncodeRequest\DC2%\n\
      \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.V1beta1.Tx.Tx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor TxEncodeRequest
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, tx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxEncodeRequest'_unknownFields
        (\ x__ y__ -> x__ {_TxEncodeRequest'_unknownFields = y__})
  defMessage
    = TxEncodeRequest'_constructor
        {_TxEncodeRequest'tx = Prelude.Nothing,
         _TxEncodeRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxEncodeRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser TxEncodeRequest
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
          (do loop Data.ProtoLens.defMessage) "TxEncodeRequest"
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
instance Control.DeepSeq.NFData TxEncodeRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxEncodeRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TxEncodeRequest'tx x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Service_Fields.txBytes' @:: Lens' TxEncodeResponse Data.ByteString.ByteString@ -}
data TxEncodeResponse
  = TxEncodeResponse'_constructor {_TxEncodeResponse'txBytes :: !Data.ByteString.ByteString,
                                   _TxEncodeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxEncodeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxEncodeResponse "txBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxEncodeResponse'txBytes
           (\ x__ y__ -> x__ {_TxEncodeResponse'txBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxEncodeResponse where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.TxEncodeResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLETxEncodeResponse\DC2\EM\n\
      \\btx_bytes\CAN\SOH \SOH(\fR\atxBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"txBytes")) ::
              Data.ProtoLens.FieldDescriptor TxEncodeResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxEncodeResponse'_unknownFields
        (\ x__ y__ -> x__ {_TxEncodeResponse'_unknownFields = y__})
  defMessage
    = TxEncodeResponse'_constructor
        {_TxEncodeResponse'txBytes = Data.ProtoLens.fieldDefault,
         _TxEncodeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxEncodeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser TxEncodeResponse
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "tx_bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"txBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxEncodeResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TxEncodeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxEncodeResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TxEncodeResponse'txBytes x__) ())
data Service = Service {}
instance Data.ProtoLens.Service.Types.Service Service where
  type ServiceName Service = "Service"
  type ServicePackage Service = "cosmos.tx.v1beta1"
  type ServiceMethods Service = '["broadcastTx",
                                  "getBlockWithTxs",
                                  "getTx",
                                  "getTxsEvent",
                                  "simulate",
                                  "txDecode",
                                  "txDecodeAmino",
                                  "txEncode",
                                  "txEncodeAmino"]
  packedServiceDescriptor _
    = "\n\
      \\aService\DC2{\n\
      \\bSimulate\DC2\".cosmos.tx.v1beta1.SimulateRequest\SUB#.cosmos.tx.v1beta1.SimulateResponse\"&\130\211\228\147\STX :\SOH*\"\ESC/cosmos/tx/v1beta1/simulate\DC2q\n\
      \\ENQGetTx\DC2\US.cosmos.tx.v1beta1.GetTxRequest\SUB .cosmos.tx.v1beta1.GetTxResponse\"%\130\211\228\147\STX\US\DC2\GS/cosmos/tx/v1beta1/txs/{hash}\DC2\DEL\n\
      \\vBroadcastTx\DC2%.cosmos.tx.v1beta1.BroadcastTxRequest\SUB&.cosmos.tx.v1beta1.BroadcastTxResponse\"!\130\211\228\147\STX\ESC:\SOH*\"\SYN/cosmos/tx/v1beta1/txs\DC2|\n\
      \\vGetTxsEvent\DC2%.cosmos.tx.v1beta1.GetTxsEventRequest\SUB&.cosmos.tx.v1beta1.GetTxsEventResponse\"\RS\130\211\228\147\STX\CAN\DC2\SYN/cosmos/tx/v1beta1/txs\DC2\151\SOH\n\
      \\SIGetBlockWithTxs\DC2).cosmos.tx.v1beta1.GetBlockWithTxsRequest\SUB*.cosmos.tx.v1beta1.GetBlockWithTxsResponse\"-\130\211\228\147\STX'\DC2%/cosmos/tx/v1beta1/txs/block/{height}\DC2y\n\
      \\bTxDecode\DC2\".cosmos.tx.v1beta1.TxDecodeRequest\SUB#.cosmos.tx.v1beta1.TxDecodeResponse\"$\130\211\228\147\STX\RS:\SOH*\"\EM/cosmos/tx/v1beta1/decode\DC2y\n\
      \\bTxEncode\DC2\".cosmos.tx.v1beta1.TxEncodeRequest\SUB#.cosmos.tx.v1beta1.TxEncodeResponse\"$\130\211\228\147\STX\RS:\SOH*\"\EM/cosmos/tx/v1beta1/encode\DC2\142\SOH\n\
      \\rTxEncodeAmino\DC2'.cosmos.tx.v1beta1.TxEncodeAminoRequest\SUB(.cosmos.tx.v1beta1.TxEncodeAminoResponse\"*\130\211\228\147\STX$:\SOH*\"\US/cosmos/tx/v1beta1/encode/amino\DC2\142\SOH\n\
      \\rTxDecodeAmino\DC2'.cosmos.tx.v1beta1.TxDecodeAminoRequest\SUB(.cosmos.tx.v1beta1.TxDecodeAminoResponse\"*\130\211\228\147\STX$:\SOH*\"\US/cosmos/tx/v1beta1/decode/amino"
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "simulate" where
  type MethodName Service "simulate" = "Simulate"
  type MethodInput Service "simulate" = SimulateRequest
  type MethodOutput Service "simulate" = SimulateResponse
  type MethodStreamingType Service "simulate" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getTx" where
  type MethodName Service "getTx" = "GetTx"
  type MethodInput Service "getTx" = GetTxRequest
  type MethodOutput Service "getTx" = GetTxResponse
  type MethodStreamingType Service "getTx" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "broadcastTx" where
  type MethodName Service "broadcastTx" = "BroadcastTx"
  type MethodInput Service "broadcastTx" = BroadcastTxRequest
  type MethodOutput Service "broadcastTx" = BroadcastTxResponse
  type MethodStreamingType Service "broadcastTx" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getTxsEvent" where
  type MethodName Service "getTxsEvent" = "GetTxsEvent"
  type MethodInput Service "getTxsEvent" = GetTxsEventRequest
  type MethodOutput Service "getTxsEvent" = GetTxsEventResponse
  type MethodStreamingType Service "getTxsEvent" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getBlockWithTxs" where
  type MethodName Service "getBlockWithTxs" = "GetBlockWithTxs"
  type MethodInput Service "getBlockWithTxs" = GetBlockWithTxsRequest
  type MethodOutput Service "getBlockWithTxs" = GetBlockWithTxsResponse
  type MethodStreamingType Service "getBlockWithTxs" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "txDecode" where
  type MethodName Service "txDecode" = "TxDecode"
  type MethodInput Service "txDecode" = TxDecodeRequest
  type MethodOutput Service "txDecode" = TxDecodeResponse
  type MethodStreamingType Service "txDecode" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "txEncode" where
  type MethodName Service "txEncode" = "TxEncode"
  type MethodInput Service "txEncode" = TxEncodeRequest
  type MethodOutput Service "txEncode" = TxEncodeResponse
  type MethodStreamingType Service "txEncode" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "txEncodeAmino" where
  type MethodName Service "txEncodeAmino" = "TxEncodeAmino"
  type MethodInput Service "txEncodeAmino" = TxEncodeAminoRequest
  type MethodOutput Service "txEncodeAmino" = TxEncodeAminoResponse
  type MethodStreamingType Service "txEncodeAmino" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "txDecodeAmino" where
  type MethodName Service "txDecodeAmino" = "TxDecodeAmino"
  type MethodInput Service "txDecodeAmino" = TxDecodeAminoRequest
  type MethodOutput Service "txDecodeAmino" = TxDecodeAminoResponse
  type MethodStreamingType Service "txDecodeAmino" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/tx/v1beta1/service.proto\DC2\DC1cosmos.tx.v1beta1\SUB\FSgoogle/api/annotations.proto\SUB#cosmos/base/abci/v1beta1/abci.proto\SUB\SUBcosmos/tx/v1beta1/tx.proto\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\FStendermint/types/block.proto\SUB\FStendermint/types/types.proto\"\243\SOH\n\
    \\DC2GetTxsEventRequest\DC2\SUB\n\
    \\ACKevents\CAN\SOH \ETX(\tR\ACKeventsB\STX\CAN\SOH\DC2J\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \paginationB\STX\CAN\SOH\DC25\n\
    \\border_by\CAN\ETX \SOH(\SO2\SUB.cosmos.tx.v1beta1.OrderByR\aorderBy\DC2\DC2\n\
    \\EOTpage\CAN\EOT \SOH(\EOTR\EOTpage\DC2\DC4\n\
    \\ENQlimit\CAN\ENQ \SOH(\EOTR\ENQlimit\DC2\DC4\n\
    \\ENQquery\CAN\ACK \SOH(\tR\ENQquery\"\234\SOH\n\
    \\DC3GetTxsEventResponse\DC2'\n\
    \\ETXtxs\CAN\SOH \ETX(\v2\NAK.cosmos.tx.v1beta1.TxR\ETXtxs\DC2G\n\
    \\ftx_responses\CAN\STX \ETX(\v2$.cosmos.base.abci.v1beta1.TxResponseR\vtxResponses\DC2K\n\
    \\n\
    \pagination\CAN\ETX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \paginationB\STX\CAN\SOH\DC2\DC4\n\
    \\ENQtotal\CAN\EOT \SOH(\EOTR\ENQtotal\"e\n\
    \\DC2BroadcastTxRequest\DC2\EM\n\
    \\btx_bytes\CAN\SOH \SOH(\fR\atxBytes\DC24\n\
    \\EOTmode\CAN\STX \SOH(\SO2 .cosmos.tx.v1beta1.BroadcastModeR\EOTmode\"\\\n\
    \\DC3BroadcastTxResponse\DC2E\n\
    \\vtx_response\CAN\SOH \SOH(\v2$.cosmos.base.abci.v1beta1.TxResponseR\n\
    \txResponse\"W\n\
    \\SISimulateRequest\DC2)\n\
    \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtxB\STX\CAN\SOH\DC2\EM\n\
    \\btx_bytes\CAN\STX \SOH(\fR\atxBytes\"\138\SOH\n\
    \\DLESimulateResponse\DC2<\n\
    \\bgas_info\CAN\SOH \SOH(\v2!.cosmos.base.abci.v1beta1.GasInfoR\agasInfo\DC28\n\
    \\ACKresult\CAN\STX \SOH(\v2 .cosmos.base.abci.v1beta1.ResultR\ACKresult\"\"\n\
    \\fGetTxRequest\DC2\DC2\n\
    \\EOThash\CAN\SOH \SOH(\tR\EOThash\"}\n\
    \\rGetTxResponse\DC2%\n\
    \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtx\DC2E\n\
    \\vtx_response\CAN\STX \SOH(\v2$.cosmos.base.abci.v1beta1.TxResponseR\n\
    \txResponse\"x\n\
    \\SYNGetBlockWithTxsRequest\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\240\SOH\n\
    \\ETBGetBlockWithTxsResponse\DC2'\n\
    \\ETXtxs\CAN\SOH \ETX(\v2\NAK.cosmos.tx.v1beta1.TxR\ETXtxs\DC24\n\
    \\bblock_id\CAN\STX \SOH(\v2\EM.tendermint.types.BlockIDR\ablockId\DC2-\n\
    \\ENQblock\CAN\ETX \SOH(\v2\ETB.tendermint.types.BlockR\ENQblock\DC2G\n\
    \\n\
    \pagination\CAN\EOT \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\",\n\
    \\SITxDecodeRequest\DC2\EM\n\
    \\btx_bytes\CAN\SOH \SOH(\fR\atxBytes\"9\n\
    \\DLETxDecodeResponse\DC2%\n\
    \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtx\"8\n\
    \\SITxEncodeRequest\DC2%\n\
    \\STXtx\CAN\SOH \SOH(\v2\NAK.cosmos.tx.v1beta1.TxR\STXtx\"-\n\
    \\DLETxEncodeResponse\DC2\EM\n\
    \\btx_bytes\CAN\SOH \SOH(\fR\atxBytes\"5\n\
    \\DC4TxEncodeAminoRequest\DC2\GS\n\
    \\n\
    \amino_json\CAN\SOH \SOH(\tR\taminoJson\":\n\
    \\NAKTxEncodeAminoResponse\DC2!\n\
    \\famino_binary\CAN\SOH \SOH(\fR\vaminoBinary\"9\n\
    \\DC4TxDecodeAminoRequest\DC2!\n\
    \\famino_binary\CAN\SOH \SOH(\fR\vaminoBinary\"6\n\
    \\NAKTxDecodeAminoResponse\DC2\GS\n\
    \\n\
    \amino_json\CAN\SOH \SOH(\tR\taminoJson*H\n\
    \\aOrderBy\DC2\CAN\n\
    \\DC4ORDER_BY_UNSPECIFIED\DLE\NUL\DC2\DLE\n\
    \\fORDER_BY_ASC\DLE\SOH\DC2\DC1\n\
    \\rORDER_BY_DESC\DLE\STX*\128\SOH\n\
    \\rBroadcastMode\DC2\RS\n\
    \\SUBBROADCAST_MODE_UNSPECIFIED\DLE\NUL\DC2\FS\n\
    \\DC4BROADCAST_MODE_BLOCK\DLE\SOH\SUB\STX\b\SOH\DC2\ETB\n\
    \\DC3BROADCAST_MODE_SYNC\DLE\STX\DC2\CAN\n\
    \\DC4BROADCAST_MODE_ASYNC\DLE\ETX2\170\t\n\
    \\aService\DC2{\n\
    \\bSimulate\DC2\".cosmos.tx.v1beta1.SimulateRequest\SUB#.cosmos.tx.v1beta1.SimulateResponse\"&\130\211\228\147\STX :\SOH*\"\ESC/cosmos/tx/v1beta1/simulate\DC2q\n\
    \\ENQGetTx\DC2\US.cosmos.tx.v1beta1.GetTxRequest\SUB .cosmos.tx.v1beta1.GetTxResponse\"%\130\211\228\147\STX\US\DC2\GS/cosmos/tx/v1beta1/txs/{hash}\DC2\DEL\n\
    \\vBroadcastTx\DC2%.cosmos.tx.v1beta1.BroadcastTxRequest\SUB&.cosmos.tx.v1beta1.BroadcastTxResponse\"!\130\211\228\147\STX\ESC:\SOH*\"\SYN/cosmos/tx/v1beta1/txs\DC2|\n\
    \\vGetTxsEvent\DC2%.cosmos.tx.v1beta1.GetTxsEventRequest\SUB&.cosmos.tx.v1beta1.GetTxsEventResponse\"\RS\130\211\228\147\STX\CAN\DC2\SYN/cosmos/tx/v1beta1/txs\DC2\151\SOH\n\
    \\SIGetBlockWithTxs\DC2).cosmos.tx.v1beta1.GetBlockWithTxsRequest\SUB*.cosmos.tx.v1beta1.GetBlockWithTxsResponse\"-\130\211\228\147\STX'\DC2%/cosmos/tx/v1beta1/txs/block/{height}\DC2y\n\
    \\bTxDecode\DC2\".cosmos.tx.v1beta1.TxDecodeRequest\SUB#.cosmos.tx.v1beta1.TxDecodeResponse\"$\130\211\228\147\STX\RS:\SOH*\"\EM/cosmos/tx/v1beta1/decode\DC2y\n\
    \\bTxEncode\DC2\".cosmos.tx.v1beta1.TxEncodeRequest\SUB#.cosmos.tx.v1beta1.TxEncodeResponse\"$\130\211\228\147\STX\RS:\SOH*\"\EM/cosmos/tx/v1beta1/encode\DC2\142\SOH\n\
    \\rTxEncodeAmino\DC2'.cosmos.tx.v1beta1.TxEncodeAminoRequest\SUB(.cosmos.tx.v1beta1.TxEncodeAminoResponse\"*\130\211\228\147\STX$:\SOH*\"\US/cosmos/tx/v1beta1/encode/amino\DC2\142\SOH\n\
    \\rTxDecodeAmino\DC2'.cosmos.tx.v1beta1.TxDecodeAminoRequest\SUB(.cosmos.tx.v1beta1.TxDecodeAminoResponse\"*\130\211\228\147\STX$:\SOH*\"\US/cosmos/tx/v1beta1/decode/aminoB'Z%github.com/cosmos/cosmos-sdk/types/txJ\237C\n\
    \\a\DC2\ENQ\NUL\NUL\164\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL-\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL$\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL4\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NUL<\n\
    \O\n\
    \\STX\ACK\NUL\DC2\EOT\r\NULO\SOH\SUBC Service defines a gRPC service for interacting with transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\SI\n\
    \T\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SI\STX\DC4\ETX\SUBF Simulate simulates executing a transaction for estimating gas usage.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SI\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SI\SI\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SI)9\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\EOT\DLE\EOT\DC3\ACK\n\
    \\DC1\n\
    \\t\ACK\NUL\STX\NUL\EOT\176\202\188\"\DC2\EOT\DLE\EOT\DC3\ACK\n\
    \+\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\SYN\STX\CAN\ETX\SUB\GS GetTx fetches a tx by hash.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\SYN\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\SYN\f\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\SYN#0\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\ETB\EOTC\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\ETB\EOTC\n\
    \2\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\SUB\STX\US\ETX\SUB$ BroadcastTx broadcast transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\SUB\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\SUB\DC2$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\SUB/B\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\EOT\ESC\EOT\RS\ACK\n\
    \\DC1\n\
    \\t\ACK\NUL\STX\STX\EOT\176\202\188\"\DC2\EOT\ESC\EOT\RS\ACK\n\
    \1\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT!\STX#\ETX\SUB# GetTxsEvent fetches txs by event.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX!\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX!\DC2$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX!/B\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX\"\EOT<\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX\"\EOT<\n\
    \\\\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT'\STX*\ETX\SUBN GetBlockWithTxs fetches a block with decoded txs.\n\
    \\n\
    \ Since: cosmos-sdk 0.45.2\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX'\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX'\SYN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX(\SI&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX)\EOTK\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX)\EOTK\n\
    \J\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT.\STX3\ETX\SUB< TxDecode decodes the transaction.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX.\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX.\SI\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX.)9\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\EOT/\EOT2\ACK\n\
    \\DC1\n\
    \\t\ACK\NUL\STX\ENQ\EOT\176\202\188\"\DC2\EOT/\EOT2\ACK\n\
    \J\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT7\STX<\ETX\SUB< TxEncode encodes the transaction.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX7\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX7\SI\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX7)9\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\EOT8\EOT;\ACK\n\
    \\DC1\n\
    \\t\ACK\NUL\STX\ACK\EOT\176\202\188\"\DC2\EOT8\EOT;\ACK\n\
    \o\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT@\STXE\ETX\SUBa TxEncodeAmino encodes an Amino transaction from JSON to encoded bytes.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX@\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX@\DC4(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX@3H\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\EOTA\EOTD\ACK\n\
    \\DC1\n\
    \\t\ACK\NUL\STX\a\EOT\176\202\188\"\DC2\EOTA\EOTD\ACK\n\
    \o\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOTI\STXN\ETX\SUBa TxDecodeAmino decodes an Amino transaction from encoded bytes to JSON.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETXI\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETXI\DC4(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETXI3H\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\EOTJ\EOTM\ACK\n\
    \\DC1\n\
    \\t\ACK\NUL\STX\b\EOT\176\202\188\"\DC2\EOTJ\EOTM\ACK\n\
    \]\n\
    \\STX\EOT\NUL\DC2\EOTS\NULl\SOH\SUBQ GetTxsEventRequest is the request type for the Service.TxsByEvents\n\
    \ RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXS\b\SUB\n\
    \\150\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXW\STX1\SUB\136\SOH events is the list of transaction event type.\n\
    \ Deprecated post v0.47.x: use query instead, which should contain a valid\n\
    \ events query.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXW\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXW\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXW\GS0\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\NUL\b\ETX\DC2\ETXW\RS/\n\
    \u\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX[\STXK\SUBh pagination defines a pagination for the request.\n\
    \ Deprecated post v0.46.x: use page and limit instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX[\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX[(2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX[56\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX[7J\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\SOH\b\ETX\DC2\ETX[8I\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX]\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX]\STX\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX]\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX]\NAK\SYN\n\
    \k\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXa\STX\DC2\SUB^ page is the page number to query, starts at 1. If not provided, will\n\
    \ default to first page.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXa\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXa\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXa\DLE\DC1\n\
    \\152\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXe\STX\DC3\SUB\138\SOH limit is the total number of results to be returned in the result page.\n\
    \ If left empty it will default to a value to be set by each app.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXe\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXe\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXe\DC1\DC2\n\
    \\160\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXk\STX\DC3\SUB\146\SOH query defines the transaction event query that is proxied to Tendermint's\n\
    \ TxSearch RPC method. The query must be valid.\n\
    \\n\
    \ Since cosmos-sdk 0.50\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXk\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXk\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXk\DC1\DC2\n\
    \/\n\
    \\STX\ENQ\NUL\DC2\EOTo\NULw\SOH\SUB# OrderBy defines the sorting order\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETXo\ENQ\f\n\
    \n\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETXr\STX\ESC\SUBa ORDER_BY_UNSPECIFIED specifies an unknown sorting order. OrderBy defaults\n\
    \ to ASC in this case.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETXr\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETXr\EM\SUB\n\
    \3\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETXt\STX\DC3\SUB& ORDER_BY_ASC defines ascending order\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETXt\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETXt\DC1\DC2\n\
    \5\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETXv\STX\DC4\SUB( ORDER_BY_DESC defines descending order\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETXv\STX\SI\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETXv\DC2\DC3\n\
    \`\n\
    \\STX\EOT\SOH\DC2\ENQ{\NUL\133\SOH\SOH\SUBS GetTxsEventResponse is the response type for the Service.TxsByEvents\n\
    \ RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX{\b\ESC\n\
    \7\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX}\STX(\SUB* txs is the list of queried transactions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX}\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX}\v\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX} #\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX}&'\n\
    \?\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DEL\STX@\SUB2 tx_responses is the list of queried TxResponses.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\DEL\v.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DEL/;\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DEL>?\n\
    \n\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\130\SOH\STXL\SUB` pagination defines a pagination for the response.\n\
    \ Deprecated post v0.46.x: use total instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\130\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\130\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\130\SOH67\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT\130\SOH8K\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\STX\b\ETX\DC2\EOT\130\SOH9J\n\
    \:\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\132\SOH\STX\DC3\SUB, total is total number of results available\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\EOT\132\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\132\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\132\SOH\DC1\DC2\n\
    \f\n\
    \\STX\EOT\STX\DC2\ACK\137\SOH\NUL\141\SOH\SOH\SUBX BroadcastTxRequest is the request type for the Service.BroadcastTxRequest\n\
    \ RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\137\SOH\b\SUB\n\
    \0\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\139\SOH\STX\GS\SUB\" tx_bytes is the raw transaction.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\139\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\139\SOH\DLE\CAN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\139\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\140\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\140\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\140\SOH\DLE\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\140\SOH\ESC\FS\n\
    \c\n\
    \\STX\ENQ\SOH\DC2\ACK\145\SOH\NUL\157\SOH\SOH\SUBU BroadcastMode specifies the broadcast mode for the TxService.Broadcast RPC\n\
    \ method.\n\
    \\n\
    \\v\n\
    \\ETX\ENQ\SOH\SOH\DC2\EOT\145\SOH\ENQ\DC2\n\
    \,\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\EOT\147\SOH\STX!\SUB\RS zero-value for mode ordering\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\EOT\147\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\EOT\147\SOH\US \n\
    \\132\SOH\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\EOT\150\SOH\STX/\SUBv DEPRECATED: use BROADCAST_MODE_SYNC instead,\n\
    \ BROADCAST_MODE_BLOCK is not supported by the SDK from v0.47.x onwards.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\EOT\150\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\EOT\150\SOH\EM\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\ETX\DC2\EOT\150\SOH\ESC.\n\
    \\SO\n\
    \\ACK\ENQ\SOH\STX\SOH\ETX\SOH\DC2\EOT\150\SOH\FS-\n\
    \\129\SOH\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\EOT\153\SOH\STX\SUB\SUBs BROADCAST_MODE_SYNC defines a tx broadcasting mode where the client waits\n\
    \ for a CheckTx execution response only.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\EOT\153\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\EOT\153\SOH\CAN\EM\n\
    \j\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\EOT\156\SOH\STX\ESC\SUB\\ BROADCAST_MODE_ASYNC defines a tx broadcasting mode where the client\n\
    \ returns immediately.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\EOT\156\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\EOT\156\SOH\EM\SUB\n\
    \]\n\
    \\STX\EOT\ETX\DC2\ACK\161\SOH\NUL\164\SOH\SOH\SUBO BroadcastTxResponse is the response type for the\n\
    \ Service.BroadcastTx method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\161\SOH\b\ESC\n\
    \7\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\163\SOH\STX6\SUB) tx_response is the queried TxResponses.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\163\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\163\SOH&1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\163\SOH45\n\
    \Y\n\
    \\STX\EOT\EOT\DC2\ACK\168\SOH\NUL\176\SOH\SOH\SUBK SimulateRequest is the request type for the Service.Simulate\n\
    \ RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\168\SOH\b\ETB\n\
    \Z\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\171\SOH\STX2\SUBL tx is the transaction to simulate.\n\
    \ Deprecated. Send raw tx bytes instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\171\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\171\SOH\ETB\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\171\SOH\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT\171\SOH\RS1\n\
    \\SO\n\
    \\ACK\EOT\EOT\STX\NUL\b\ETX\DC2\EOT\171\SOH\US0\n\
    \I\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\175\SOH\STX\NAK\SUB; tx_bytes is the raw transaction.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\175\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\175\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\175\SOH\DC3\DC4\n\
    \Z\n\
    \\STX\EOT\ENQ\DC2\ACK\180\SOH\NUL\185\SOH\SOH\SUBL SimulateResponse is the response type for the\n\
    \ Service.SimulateRPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\180\SOH\b\CAN\n\
    \M\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\182\SOH\STX0\SUB? gas_info is the information about gas used in the simulation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\182\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\182\SOH#+\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\182\SOH./\n\
    \7\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\184\SOH\STX-\SUB) result is the result of the simulation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\184\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\184\SOH\"(\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\184\SOH+,\n\
    \S\n\
    \\STX\EOT\ACK\DC2\ACK\189\SOH\NUL\192\SOH\SOH\SUBE GetTxRequest is the request type for the Service.GetTx\n\
    \ RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\189\SOH\b\DC4\n\
    \F\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\191\SOH\STX\DC2\SUB8 hash is the tx hash to query, encoded as a hex string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\191\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\191\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\191\SOH\DLE\DC1\n\
    \P\n\
    \\STX\EOT\a\DC2\ACK\195\SOH\NUL\200\SOH\SOH\SUBB GetTxResponse is the response type for the Service.GetTx method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\195\SOH\b\NAK\n\
    \.\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\197\SOH\STX\RS\SUB  tx is the queried transaction.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\197\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\197\SOH\ETB\EM\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\197\SOH\FS\GS\n\
    \7\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\199\SOH\STX6\SUB) tx_response is the queried TxResponses.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\199\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\199\SOH&1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\199\SOH45\n\
    \\130\SOH\n\
    \\STX\EOT\b\DC2\ACK\206\SOH\NUL\211\SOH\SOH\SUBt GetBlockWithTxsRequest is the request type for the Service.GetBlockWithTxs\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.45.2\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\206\SOH\b\RS\n\
    \;\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\208\SOH\STX\DC3\SUB- height is the height of the block to query.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\208\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\208\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\208\SOH\DC1\DC2\n\
    \@\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\210\SOH\STX7\SUB2 pagination defines a pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\210\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\210\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\210\SOH56\n\
    \\128\SOH\n\
    \\STX\EOT\t\DC2\ACK\217\SOH\NUL\224\SOH\SOH\SUBr GetBlockWithTxsResponse is the response type for the Service.GetBlockWithTxs\n\
    \ method.\n\
    \\n\
    \ Since: cosmos-sdk 0.45.2\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\217\SOH\b\US\n\
    \6\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\219\SOH\STX-\SUB( txs are the transactions in the block.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\219\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\219\SOH\v\US\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\219\SOH #\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\219\SOH+,\n\
    \\f\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\220\SOH\STX-\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\220\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\220\SOH (\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\220\SOH+,\n\
    \\f\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\221\SOH\STX-\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ACK\DC2\EOT\221\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\221\SOH %\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\221\SOH+,\n\
    \A\n\
    \\EOT\EOT\t\STX\ETX\DC2\EOT\223\SOH\STX8\SUB3 pagination defines a pagination for the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ACK\DC2\EOT\223\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\EOT\223\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\EOT\223\SOH67\n\
    \r\n\
    \\STX\EOT\n\
    \\DC2\ACK\230\SOH\NUL\233\SOH\SOH\SUBd TxDecodeRequest is the request type for the Service.TxDecode\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\230\SOH\b\ETB\n\
    \0\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\232\SOH\STX\NAK\SUB\" tx_bytes is the raw transaction.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\232\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\232\SOH\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\232\SOH\DC3\DC4\n\
    \p\n\
    \\STX\EOT\v\DC2\ACK\239\SOH\NUL\242\SOH\SOH\SUBb TxDecodeResponse is the response type for the\n\
    \ Service.TxDecode method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\239\SOH\b\CAN\n\
    \.\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\241\SOH\STX\RS\SUB  tx is the decoded transaction.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\241\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\241\SOH\ETB\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\241\SOH\FS\GS\n\
    \r\n\
    \\STX\EOT\f\DC2\ACK\248\SOH\NUL\251\SOH\SOH\SUBd TxEncodeRequest is the request type for the Service.TxEncode\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\248\SOH\b\ETB\n\
    \0\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\250\SOH\STX\RS\SUB\" tx is the transaction to encode.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\250\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\250\SOH\ETB\EM\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\250\SOH\FS\GS\n\
    \p\n\
    \\STX\EOT\r\DC2\ACK\129\STX\NUL\132\STX\SOH\SUBb TxEncodeResponse is the response type for the\n\
    \ Service.TxEncode method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\129\STX\b\CAN\n\
    \:\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\131\STX\STX\NAK\SUB, tx_bytes is the encoded transaction bytes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\131\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\131\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\131\STX\DC3\DC4\n\
    \|\n\
    \\STX\EOT\SO\DC2\ACK\138\STX\NUL\140\STX\SOH\SUBn TxEncodeAminoRequest is the request type for the Service.TxEncodeAmino\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\138\STX\b\FS\n\
    \\f\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\139\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\139\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\139\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\139\STX\SYN\ETB\n\
    \~\n\
    \\STX\EOT\SI\DC2\ACK\146\STX\NUL\148\STX\SOH\SUBp TxEncodeAminoResponse is the response type for the Service.TxEncodeAmino\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\146\STX\b\GS\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\147\STX\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\147\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\147\STX\b\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\147\STX\ETB\CAN\n\
    \|\n\
    \\STX\EOT\DLE\DC2\ACK\154\STX\NUL\156\STX\SOH\SUBn TxDecodeAminoRequest is the request type for the Service.TxDecodeAmino\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\154\STX\b\FS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\155\STX\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\155\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\155\STX\b\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\155\STX\ETB\CAN\n\
    \~\n\
    \\STX\EOT\DC1\DC2\ACK\162\STX\NUL\164\STX\SOH\SUBp TxDecodeAminoResponse is the response type for the Service.TxDecodeAmino\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\162\STX\b\GS\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\163\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\163\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\163\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\163\STX\SYN\ETBb\ACKproto3"