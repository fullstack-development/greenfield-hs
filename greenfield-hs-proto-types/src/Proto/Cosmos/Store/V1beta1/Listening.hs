{- This file was auto-generated from cosmos/store/v1beta1/listening.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Store.V1beta1.Listening (
        BlockMetadata(), StoreKVPair()
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
import qualified Proto.Tendermint.Abci.Types
{- | Fields :
     
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.responseCommit' @:: Lens' BlockMetadata Proto.Tendermint.Abci.Types.ResponseCommit@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.maybe'responseCommit' @:: Lens' BlockMetadata (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseCommit)@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.requestFinalizeBlock' @:: Lens' BlockMetadata Proto.Tendermint.Abci.Types.RequestFinalizeBlock@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.maybe'requestFinalizeBlock' @:: Lens' BlockMetadata (Prelude.Maybe Proto.Tendermint.Abci.Types.RequestFinalizeBlock)@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.responseFinalizeBlock' @:: Lens' BlockMetadata Proto.Tendermint.Abci.Types.ResponseFinalizeBlock@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.maybe'responseFinalizeBlock' @:: Lens' BlockMetadata (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseFinalizeBlock)@ -}
data BlockMetadata
  = BlockMetadata'_constructor {_BlockMetadata'responseCommit :: !(Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseCommit),
                                _BlockMetadata'requestFinalizeBlock :: !(Prelude.Maybe Proto.Tendermint.Abci.Types.RequestFinalizeBlock),
                                _BlockMetadata'responseFinalizeBlock :: !(Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseFinalizeBlock),
                                _BlockMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockMetadata "responseCommit" Proto.Tendermint.Abci.Types.ResponseCommit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMetadata'responseCommit
           (\ x__ y__ -> x__ {_BlockMetadata'responseCommit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BlockMetadata "maybe'responseCommit" (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseCommit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMetadata'responseCommit
           (\ x__ y__ -> x__ {_BlockMetadata'responseCommit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockMetadata "requestFinalizeBlock" Proto.Tendermint.Abci.Types.RequestFinalizeBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMetadata'requestFinalizeBlock
           (\ x__ y__ -> x__ {_BlockMetadata'requestFinalizeBlock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BlockMetadata "maybe'requestFinalizeBlock" (Prelude.Maybe Proto.Tendermint.Abci.Types.RequestFinalizeBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMetadata'requestFinalizeBlock
           (\ x__ y__ -> x__ {_BlockMetadata'requestFinalizeBlock = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockMetadata "responseFinalizeBlock" Proto.Tendermint.Abci.Types.ResponseFinalizeBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMetadata'responseFinalizeBlock
           (\ x__ y__ -> x__ {_BlockMetadata'responseFinalizeBlock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BlockMetadata "maybe'responseFinalizeBlock" (Prelude.Maybe Proto.Tendermint.Abci.Types.ResponseFinalizeBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMetadata'responseFinalizeBlock
           (\ x__ y__ -> x__ {_BlockMetadata'responseFinalizeBlock = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockMetadata where
  messageName _ = Data.Text.pack "cosmos.store.v1beta1.BlockMetadata"
  packedMessageDescriptor _
    = "\n\
      \\rBlockMetadata\DC2H\n\
      \\SIresponse_commit\CAN\ACK \SOH(\v2\US.tendermint.abci.ResponseCommitR\SOresponseCommit\DC2[\n\
      \\SYNrequest_finalize_block\CAN\a \SOH(\v2%.tendermint.abci.RequestFinalizeBlockR\DC4requestFinalizeBlock\DC2^\n\
      \\ETBresponse_finalize_block\CAN\b \SOH(\v2&.tendermint.abci.ResponseFinalizeBlockR\NAKresponseFinalizeBlockJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETXJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ENQ\DLE\ACK"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        responseCommit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.ResponseCommit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseCommit")) ::
              Data.ProtoLens.FieldDescriptor BlockMetadata
        requestFinalizeBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_finalize_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.RequestFinalizeBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestFinalizeBlock")) ::
              Data.ProtoLens.FieldDescriptor BlockMetadata
        responseFinalizeBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_finalize_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.ResponseFinalizeBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseFinalizeBlock")) ::
              Data.ProtoLens.FieldDescriptor BlockMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 6, responseCommit__field_descriptor),
           (Data.ProtoLens.Tag 7, requestFinalizeBlock__field_descriptor),
           (Data.ProtoLens.Tag 8, responseFinalizeBlock__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockMetadata'_unknownFields
        (\ x__ y__ -> x__ {_BlockMetadata'_unknownFields = y__})
  defMessage
    = BlockMetadata'_constructor
        {_BlockMetadata'responseCommit = Prelude.Nothing,
         _BlockMetadata'requestFinalizeBlock = Prelude.Nothing,
         _BlockMetadata'responseFinalizeBlock = Prelude.Nothing,
         _BlockMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockMetadata -> Data.ProtoLens.Encoding.Bytes.Parser BlockMetadata
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
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_commit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseCommit") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_finalize_block"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestFinalizeBlock") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_finalize_block"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseFinalizeBlock") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'responseCommit") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                       (Data.ProtoLens.Field.field @"maybe'requestFinalizeBlock") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                          (Data.ProtoLens.Field.field @"maybe'responseFinalizeBlock") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData BlockMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockMetadata'responseCommit x__)
                (Control.DeepSeq.deepseq
                   (_BlockMetadata'requestFinalizeBlock x__)
                   (Control.DeepSeq.deepseq
                      (_BlockMetadata'responseFinalizeBlock x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.storeKey' @:: Lens' StoreKVPair Data.Text.Text@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.delete' @:: Lens' StoreKVPair Prelude.Bool@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.key' @:: Lens' StoreKVPair Data.ByteString.ByteString@
         * 'Proto.Cosmos.Store.V1beta1.Listening_Fields.value' @:: Lens' StoreKVPair Data.ByteString.ByteString@ -}
data StoreKVPair
  = StoreKVPair'_constructor {_StoreKVPair'storeKey :: !Data.Text.Text,
                              _StoreKVPair'delete :: !Prelude.Bool,
                              _StoreKVPair'key :: !Data.ByteString.ByteString,
                              _StoreKVPair'value :: !Data.ByteString.ByteString,
                              _StoreKVPair'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StoreKVPair where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StoreKVPair "storeKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreKVPair'storeKey
           (\ x__ y__ -> x__ {_StoreKVPair'storeKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StoreKVPair "delete" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreKVPair'delete (\ x__ y__ -> x__ {_StoreKVPair'delete = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StoreKVPair "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreKVPair'key (\ x__ y__ -> x__ {_StoreKVPair'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StoreKVPair "value" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreKVPair'value (\ x__ y__ -> x__ {_StoreKVPair'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message StoreKVPair where
  messageName _ = Data.Text.pack "cosmos.store.v1beta1.StoreKVPair"
  packedMessageDescriptor _
    = "\n\
      \\vStoreKVPair\DC2\ESC\n\
      \\tstore_key\CAN\SOH \SOH(\tR\bstoreKey\DC2\SYN\n\
      \\ACKdelete\CAN\STX \SOH(\bR\ACKdelete\DC2\DLE\n\
      \\ETXkey\CAN\ETX \SOH(\fR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\EOT \SOH(\fR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        storeKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storeKey")) ::
              Data.ProtoLens.FieldDescriptor StoreKVPair
        delete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delete"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"delete")) ::
              Data.ProtoLens.FieldDescriptor StoreKVPair
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor StoreKVPair
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor StoreKVPair
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, storeKey__field_descriptor),
           (Data.ProtoLens.Tag 2, delete__field_descriptor),
           (Data.ProtoLens.Tag 3, key__field_descriptor),
           (Data.ProtoLens.Tag 4, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StoreKVPair'_unknownFields
        (\ x__ y__ -> x__ {_StoreKVPair'_unknownFields = y__})
  defMessage
    = StoreKVPair'_constructor
        {_StoreKVPair'storeKey = Data.ProtoLens.fieldDefault,
         _StoreKVPair'delete = Data.ProtoLens.fieldDefault,
         _StoreKVPair'key = Data.ProtoLens.fieldDefault,
         _StoreKVPair'value = Data.ProtoLens.fieldDefault,
         _StoreKVPair'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StoreKVPair -> Data.ProtoLens.Encoding.Bytes.Parser StoreKVPair
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
                                       "store_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storeKey") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delete"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"delete") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StoreKVPair"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"storeKey") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"delete") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData StoreKVPair where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StoreKVPair'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StoreKVPair'storeKey x__)
                (Control.DeepSeq.deepseq
                   (_StoreKVPair'delete x__)
                   (Control.DeepSeq.deepseq
                      (_StoreKVPair'key x__)
                      (Control.DeepSeq.deepseq (_StoreKVPair'value x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$cosmos/store/v1beta1/listening.proto\DC2\DC4cosmos.store.v1beta1\SUB\ESCtendermint/abci/types.proto\"j\n\
    \\vStoreKVPair\DC2\ESC\n\
    \\tstore_key\CAN\SOH \SOH(\tR\bstoreKey\DC2\SYN\n\
    \\ACKdelete\CAN\STX \SOH(\bR\ACKdelete\DC2\DLE\n\
    \\ETXkey\CAN\ETX \SOH(\fR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\EOT \SOH(\fR\ENQvalue\"\180\STX\n\
    \\rBlockMetadata\DC2H\n\
    \\SIresponse_commit\CAN\ACK \SOH(\v2\US.tendermint.abci.ResponseCommitR\SOresponseCommit\DC2[\n\
    \\SYNrequest_finalize_block\CAN\a \SOH(\v2%.tendermint.abci.RequestFinalizeBlockR\DC4requestFinalizeBlock\DC2^\n\
    \\ETBresponse_finalize_block\CAN\b \SOH(\v2&.tendermint.abci.ResponseFinalizeBlockR\NAKresponseFinalizeBlockJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETXJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ENQ\DLE\ACKB\SUBZ\CANcosmossdk.io/store/typesJ\150\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL%\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL/\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NUL/\n\
    \\251\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\DC1\SOH\SUB\238\SOH StoreKVPair is a KVStore KVPair used for listening to state changes (Sets and Deletes)\n\
    \ It optionally includes the StoreKey for the originating KVStore and a Boolean flag to distinguish between Sets and\n\
    \ Deletes\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\DC3\n\
    \F\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STX\ETB\"9 the store key for the KVStore this pair originates from\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\NAK\SYN\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX\ETB\"D true indicates a delete operation, false indicates a set operation\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\a\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SI\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SI\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SI\b\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SI\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DLE\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DLE\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DLE\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DLE\NAK\SYN\n\
    \\145\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\NAK\NUL\ESC\SOH\SUB\132\SOH BlockMetadata contains all the abci event data of a block\n\
    \ the file streamer dump them into files together with the state changes.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\NAK\b\NAK\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SYN\STXD\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\SYN\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SYN(7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SYNBC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\ETB\STXD\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\ETB\STX&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\ETB(>\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\ETBBC\n\
    \-\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\CAN\STXD\"  TODO: should we renumber this?\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\CAN\STX'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\CAN(?\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\CANBC\n\
    \=\n\
    \\ETX\EOT\SOH\t\DC2\ETX\SUB\STX\EM\"1 reserved for from previous use in comet <= 0.37\n\
    \\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETX\SUB\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETX\SUB\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETX\SUB\v\f\n\
    \\v\n\
    \\EOT\EOT\SOH\t\SOH\DC2\ETX\SUB\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\SOH\DC2\ETX\SUB\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\STX\DC2\ETX\SUB\SO\SI\n\
    \\v\n\
    \\EOT\EOT\SOH\t\STX\DC2\ETX\SUB\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\STX\SOH\DC2\ETX\SUB\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\STX\STX\DC2\ETX\SUB\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\SOH\t\ETX\DC2\ETX\SUB\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\ETX\SOH\DC2\ETX\SUB\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\ETX\STX\DC2\ETX\SUB\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\SOH\t\EOT\DC2\ETX\SUB\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\EOT\SOH\DC2\ETX\SUB\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\EOT\STX\DC2\ETX\SUB\ETB\CANb\ACKproto3"