{- This file was auto-generated from cosmos/store/streaming/abci/grpc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Store.Streaming.Abci.Grpc (
        ABCIListenerService(..), ListenCommitRequest(),
        ListenCommitResponse(), ListenFinalizeBlockRequest(),
        ListenFinalizeBlockResponse()
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
import qualified Proto.Cosmos.Store.V1beta1.Listening
import qualified Proto.Tendermint.Abci.Types
{- | Fields :
     
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.blockHeight' @:: Lens' ListenCommitRequest Data.Int.Int64@
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.res' @:: Lens' ListenCommitRequest Proto.Tendermint.Abci.Types.ResponseCommit@
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.maybe'res' @:: Lens' ListenCommitRequest (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseCommit)@
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.changeSet' @:: Lens' ListenCommitRequest [Proto.Cosmos.Store.V1beta1.Listening.StoreKVPair]@
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.vec'changeSet' @:: Lens' ListenCommitRequest (Data.Vector.Vector Proto.Cosmos.Store.V1beta1.Listening.StoreKVPair)@ -}
data ListenCommitRequest
  = ListenCommitRequest'_constructor {_ListenCommitRequest'blockHeight :: !Data.Int.Int64,
                                      _ListenCommitRequest'res :: !(Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseCommit),
                                      _ListenCommitRequest'changeSet :: !(Data.Vector.Vector Proto.Cosmos.Store.V1beta1.Listening.StoreKVPair),
                                      _ListenCommitRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenCommitRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenCommitRequest "blockHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenCommitRequest'blockHeight
           (\ x__ y__ -> x__ {_ListenCommitRequest'blockHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenCommitRequest "res" Proto.Tendermint.Abci.Types.ResponseCommit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenCommitRequest'res
           (\ x__ y__ -> x__ {_ListenCommitRequest'res = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenCommitRequest "maybe'res" (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseCommit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenCommitRequest'res
           (\ x__ y__ -> x__ {_ListenCommitRequest'res = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenCommitRequest "changeSet" [Proto.Cosmos.Store.V1beta1.Listening.StoreKVPair] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenCommitRequest'changeSet
           (\ x__ y__ -> x__ {_ListenCommitRequest'changeSet = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListenCommitRequest "vec'changeSet" (Data.Vector.Vector Proto.Cosmos.Store.V1beta1.Listening.StoreKVPair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenCommitRequest'changeSet
           (\ x__ y__ -> x__ {_ListenCommitRequest'changeSet = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenCommitRequest where
  messageName _
    = Data.Text.pack "cosmos.store.streaming.abci.ListenCommitRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3ListenCommitRequest\DC2!\n\
      \\fblock_height\CAN\SOH \SOH(\ETXR\vblockHeight\DC21\n\
      \\ETXres\CAN\STX \SOH(\v2\US.tendermint.abci.ResponseCommitR\ETXres\DC2@\n\
      \\n\
      \change_set\CAN\ETX \ETX(\v2!.cosmos.store.v1beta1.StoreKVPairR\tchangeSet"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockHeight")) ::
              Data.ProtoLens.FieldDescriptor ListenCommitRequest
        res__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "res"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.ResponseCommit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'res")) ::
              Data.ProtoLens.FieldDescriptor ListenCommitRequest
        changeSet__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "change_set"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Store.V1beta1.Listening.StoreKVPair)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"changeSet")) ::
              Data.ProtoLens.FieldDescriptor ListenCommitRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockHeight__field_descriptor),
           (Data.ProtoLens.Tag 2, res__field_descriptor),
           (Data.ProtoLens.Tag 3, changeSet__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenCommitRequest'_unknownFields
        (\ x__ y__ -> x__ {_ListenCommitRequest'_unknownFields = y__})
  defMessage
    = ListenCommitRequest'_constructor
        {_ListenCommitRequest'blockHeight = Data.ProtoLens.fieldDefault,
         _ListenCommitRequest'res = Prelude.Nothing,
         _ListenCommitRequest'changeSet = Data.Vector.Generic.empty,
         _ListenCommitRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenCommitRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Store.V1beta1.Listening.StoreKVPair
             -> Data.ProtoLens.Encoding.Bytes.Parser ListenCommitRequest
        loop x mutable'changeSet
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'changeSet <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'changeSet)
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
                              (Data.ProtoLens.Field.field @"vec'changeSet") frozen'changeSet x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "block_height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockHeight") y x)
                                  mutable'changeSet
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "res"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"res") y x)
                                  mutable'changeSet
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "change_set"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'changeSet y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'changeSet
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'changeSet <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'changeSet)
          "ListenCommitRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"blockHeight") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'res") _x
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
                         (Data.ProtoLens.Field.field @"vec'changeSet") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ListenCommitRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenCommitRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenCommitRequest'blockHeight x__)
                (Control.DeepSeq.deepseq
                   (_ListenCommitRequest'res x__)
                   (Control.DeepSeq.deepseq (_ListenCommitRequest'changeSet x__) ())))
{- | Fields :
      -}
data ListenCommitResponse
  = ListenCommitResponse'_constructor {_ListenCommitResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenCommitResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ListenCommitResponse where
  messageName _
    = Data.Text.pack "cosmos.store.streaming.abci.ListenCommitResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4ListenCommitResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenCommitResponse'_unknownFields
        (\ x__ y__ -> x__ {_ListenCommitResponse'_unknownFields = y__})
  defMessage
    = ListenCommitResponse'_constructor
        {_ListenCommitResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenCommitResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenCommitResponse
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
          (do loop Data.ProtoLens.defMessage) "ListenCommitResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ListenCommitResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenCommitResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.req' @:: Lens' ListenFinalizeBlockRequest Proto.Tendermint.Abci.Types.RequestFinalizeBlock@
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.maybe'req' @:: Lens' ListenFinalizeBlockRequest (Prelude.Maybe Proto.Tendermint.Abci.Types.RequestFinalizeBlock)@
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.res' @:: Lens' ListenFinalizeBlockRequest Proto.Tendermint.Abci.Types.ResponseFinalizeBlock@
         * 'Proto.Cosmos.Store.Streaming.Abci.Grpc_Fields.maybe'res' @:: Lens' ListenFinalizeBlockRequest (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseFinalizeBlock)@ -}
data ListenFinalizeBlockRequest
  = ListenFinalizeBlockRequest'_constructor {_ListenFinalizeBlockRequest'req :: !(Prelude.Maybe Proto.Tendermint.Abci.Types.RequestFinalizeBlock),
                                             _ListenFinalizeBlockRequest'res :: !(Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseFinalizeBlock),
                                             _ListenFinalizeBlockRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenFinalizeBlockRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenFinalizeBlockRequest "req" Proto.Tendermint.Abci.Types.RequestFinalizeBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenFinalizeBlockRequest'req
           (\ x__ y__ -> x__ {_ListenFinalizeBlockRequest'req = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenFinalizeBlockRequest "maybe'req" (Prelude.Maybe Proto.Tendermint.Abci.Types.RequestFinalizeBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenFinalizeBlockRequest'req
           (\ x__ y__ -> x__ {_ListenFinalizeBlockRequest'req = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListenFinalizeBlockRequest "res" Proto.Tendermint.Abci.Types.ResponseFinalizeBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenFinalizeBlockRequest'res
           (\ x__ y__ -> x__ {_ListenFinalizeBlockRequest'res = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListenFinalizeBlockRequest "maybe'res" (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseFinalizeBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenFinalizeBlockRequest'res
           (\ x__ y__ -> x__ {_ListenFinalizeBlockRequest'res = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenFinalizeBlockRequest where
  messageName _
    = Data.Text.pack
        "cosmos.store.streaming.abci.ListenFinalizeBlockRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBListenFinalizeBlockRequest\DC27\n\
      \\ETXreq\CAN\SOH \SOH(\v2%.tendermint.abci.RequestFinalizeBlockR\ETXreq\DC28\n\
      \\ETXres\CAN\STX \SOH(\v2&.tendermint.abci.ResponseFinalizeBlockR\ETXres"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        req__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "req"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.RequestFinalizeBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'req")) ::
              Data.ProtoLens.FieldDescriptor ListenFinalizeBlockRequest
        res__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "res"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.ResponseFinalizeBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'res")) ::
              Data.ProtoLens.FieldDescriptor ListenFinalizeBlockRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, req__field_descriptor),
           (Data.ProtoLens.Tag 2, res__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenFinalizeBlockRequest'_unknownFields
        (\ x__ y__
           -> x__ {_ListenFinalizeBlockRequest'_unknownFields = y__})
  defMessage
    = ListenFinalizeBlockRequest'_constructor
        {_ListenFinalizeBlockRequest'req = Prelude.Nothing,
         _ListenFinalizeBlockRequest'res = Prelude.Nothing,
         _ListenFinalizeBlockRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenFinalizeBlockRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenFinalizeBlockRequest
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
                                       "req"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"req") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "res"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"res") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListenFinalizeBlockRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'req") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'res") _x
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
instance Control.DeepSeq.NFData ListenFinalizeBlockRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenFinalizeBlockRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListenFinalizeBlockRequest'req x__)
                (Control.DeepSeq.deepseq (_ListenFinalizeBlockRequest'res x__) ()))
{- | Fields :
      -}
data ListenFinalizeBlockResponse
  = ListenFinalizeBlockResponse'_constructor {_ListenFinalizeBlockResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenFinalizeBlockResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ListenFinalizeBlockResponse where
  messageName _
    = Data.Text.pack
        "cosmos.store.streaming.abci.ListenFinalizeBlockResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCListenFinalizeBlockResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenFinalizeBlockResponse'_unknownFields
        (\ x__ y__
           -> x__ {_ListenFinalizeBlockResponse'_unknownFields = y__})
  defMessage
    = ListenFinalizeBlockResponse'_constructor
        {_ListenFinalizeBlockResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenFinalizeBlockResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ListenFinalizeBlockResponse
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
          (do loop Data.ProtoLens.defMessage) "ListenFinalizeBlockResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ListenFinalizeBlockResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenFinalizeBlockResponse'_unknownFields x__) ()
data ABCIListenerService = ABCIListenerService {}
instance Data.ProtoLens.Service.Types.Service ABCIListenerService where
  type ServiceName ABCIListenerService = "ABCIListenerService"
  type ServicePackage ABCIListenerService = "cosmos.store.streaming.abci"
  type ServiceMethods ABCIListenerService = '["listenCommit",
                                              "listenFinalizeBlock"]
  packedServiceDescriptor _
    = "\n\
      \\DC3ABCIListenerService\DC2\136\SOH\n\
      \\DC3ListenFinalizeBlock\DC27.cosmos.store.streaming.abci.ListenFinalizeBlockRequest\SUB8.cosmos.store.streaming.abci.ListenFinalizeBlockResponse\DC2s\n\
      \\fListenCommit\DC20.cosmos.store.streaming.abci.ListenCommitRequest\SUB1.cosmos.store.streaming.abci.ListenCommitResponse"
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIListenerService "listenFinalizeBlock" where
  type MethodName ABCIListenerService "listenFinalizeBlock" = "ListenFinalizeBlock"
  type MethodInput ABCIListenerService "listenFinalizeBlock" = ListenFinalizeBlockRequest
  type MethodOutput ABCIListenerService "listenFinalizeBlock" = ListenFinalizeBlockResponse
  type MethodStreamingType ABCIListenerService "listenFinalizeBlock" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCIListenerService "listenCommit" where
  type MethodName ABCIListenerService "listenCommit" = "ListenCommit"
  type MethodInput ABCIListenerService "listenCommit" = ListenCommitRequest
  type MethodOutput ABCIListenerService "listenCommit" = ListenCommitResponse
  type MethodStreamingType ABCIListenerService "listenCommit" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&cosmos/store/streaming/abci/grpc.proto\DC2\ESCcosmos.store.streaming.abci\SUB\ESCtendermint/abci/types.proto\SUB$cosmos/store/v1beta1/listening.proto\"\143\SOH\n\
    \\SUBListenFinalizeBlockRequest\DC27\n\
    \\ETXreq\CAN\SOH \SOH(\v2%.tendermint.abci.RequestFinalizeBlockR\ETXreq\DC28\n\
    \\ETXres\CAN\STX \SOH(\v2&.tendermint.abci.ResponseFinalizeBlockR\ETXres\"\GS\n\
    \\ESCListenFinalizeBlockResponse\"\173\SOH\n\
    \\DC3ListenCommitRequest\DC2!\n\
    \\fblock_height\CAN\SOH \SOH(\ETXR\vblockHeight\DC21\n\
    \\ETXres\CAN\STX \SOH(\v2\US.tendermint.abci.ResponseCommitR\ETXres\DC2@\n\
    \\n\
    \change_set\CAN\ETX \ETX(\v2!.cosmos.store.v1beta1.StoreKVPairR\tchangeSet\"\SYN\n\
    \\DC4ListenCommitResponse2\149\STX\n\
    \\DC3ABCIListenerService\DC2\136\SOH\n\
    \\DC3ListenFinalizeBlock\DC27.cosmos.store.streaming.abci.ListenFinalizeBlockRequest\SUB8.cosmos.store.streaming.abci.ListenFinalizeBlockResponse\DC2s\n\
    \\fListenCommit\DC20.cosmos.store.streaming.abci.ListenCommitRequest\SUB1.cosmos.store.streaming.abci.ListenCommitResponseB#Z!cosmossdk.io/store/streaming/abciJ\194\t\n\
    \\ACK\DC2\EOT\NUL\NUL#\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL%\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL8\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NUL8\n\
    \Y\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\r\SOH\SUBM ListenEndBlockRequest is the request type for the ListenEndBlock RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STX0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\v\STX&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v(+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v./\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\STX0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\f\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f(+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f./\n\
    \Z\n\
    \\STX\EOT\SOH\DC2\ETX\DLE\NUL&\SUBO ListenEndBlockResponse is the response type for the ListenEndBlock RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DLE\b#\n\
    \U\n\
    \\STX\EOT\STX\DC2\EOT\DC3\NUL\CAN\SOH\SUBI ListenCommitRequest is the request type for the ListenCommit RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC3\b\ESC\n\
    \[\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\NAK\STX;\SUBN explicitly pass in block height as ResponseCommit does not contain this info\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\NAK\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\NAK!-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\NAK9:\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\SYN\STX;\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX\SYN\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\SYN!$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\SYN9:\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\ETB\STX;\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX\ETB\v+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\ETB,6\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\ETB9:\n\
    \V\n\
    \\STX\EOT\ETX\DC2\ETX\ESC\NUL\US\SUBK ListenCommitResponse is the response type for the ListenCommit RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\ESC\b\FS\n\
    \W\n\
    \\STX\ACK\NUL\DC2\EOT\RS\NUL#\SOH\SUBK ABCIListenerService is the service for the BaseApp ABCIListener interface\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\RS\b\ESC\n\
    \`\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX \STX\\\SUBS ListenFinalizeBlock is the corresponding endpoint for ABCIListener.ListenEndBlock\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX \ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX \SUB4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX ?Z\n\
    \W\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\"\STXG\SUBJ ListenCommit is the corresponding endpoint for ABCIListener.ListenCommit\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\"\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\"\DC3&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\"1Eb\ACKproto3"