{- This file was auto-generated from cosmos/store/snapshots/v1/snapshot.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Store.Snapshots.V1.Snapshot (
        Metadata(), Snapshot(), SnapshotExtensionMeta(),
        SnapshotExtensionPayload(), SnapshotIAVLItem(), SnapshotItem(),
        SnapshotItem'Item(..), _SnapshotItem'Store, _SnapshotItem'Iavl,
        _SnapshotItem'Extension, _SnapshotItem'ExtensionPayload,
        SnapshotStoreItem()
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
     
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.chunkHashes' @:: Lens' Metadata [Data.ByteString.ByteString]@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.vec'chunkHashes' @:: Lens' Metadata (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data Metadata
  = Metadata'_constructor {_Metadata'chunkHashes :: !(Data.Vector.Vector Data.ByteString.ByteString),
                           _Metadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Metadata "chunkHashes" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'chunkHashes
           (\ x__ y__ -> x__ {_Metadata'chunkHashes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Metadata "vec'chunkHashes" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'chunkHashes
           (\ x__ y__ -> x__ {_Metadata'chunkHashes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Metadata where
  messageName _ = Data.Text.pack "cosmos.store.snapshots.v1.Metadata"
  packedMessageDescriptor _
    = "\n\
      \\bMetadata\DC2!\n\
      \\fchunk_hashes\CAN\SOH \ETX(\fR\vchunkHashes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chunkHashes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_hashes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"chunkHashes")) ::
              Data.ProtoLens.FieldDescriptor Metadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, chunkHashes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metadata'_unknownFields
        (\ x__ y__ -> x__ {_Metadata'_unknownFields = y__})
  defMessage
    = Metadata'_constructor
        {_Metadata'chunkHashes = Data.Vector.Generic.empty,
         _Metadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Metadata
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser Metadata
        loop x mutable'chunkHashes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'chunkHashes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'chunkHashes)
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
                              (Data.ProtoLens.Field.field @"vec'chunkHashes") frozen'chunkHashes
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "chunk_hashes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'chunkHashes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'chunkHashes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'chunkHashes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'chunkHashes)
          "Metadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'chunkHashes") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Metadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metadata'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Metadata'chunkHashes x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.height' @:: Lens' Snapshot Data.Word.Word64@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.format' @:: Lens' Snapshot Data.Word.Word32@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.chunks' @:: Lens' Snapshot Data.Word.Word32@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.hash' @:: Lens' Snapshot Data.ByteString.ByteString@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.metadata' @:: Lens' Snapshot Metadata@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.maybe'metadata' @:: Lens' Snapshot (Prelude.Maybe Metadata)@ -}
data Snapshot
  = Snapshot'_constructor {_Snapshot'height :: !Data.Word.Word64,
                           _Snapshot'format :: !Data.Word.Word32,
                           _Snapshot'chunks :: !Data.Word.Word32,
                           _Snapshot'hash :: !Data.ByteString.ByteString,
                           _Snapshot'metadata :: !(Prelude.Maybe Metadata),
                           _Snapshot'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Snapshot where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Snapshot "height" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Snapshot'height (\ x__ y__ -> x__ {_Snapshot'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Snapshot "format" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Snapshot'format (\ x__ y__ -> x__ {_Snapshot'format = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Snapshot "chunks" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Snapshot'chunks (\ x__ y__ -> x__ {_Snapshot'chunks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Snapshot "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Snapshot'hash (\ x__ y__ -> x__ {_Snapshot'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Snapshot "metadata" Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Snapshot'metadata (\ x__ y__ -> x__ {_Snapshot'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Snapshot "maybe'metadata" (Prelude.Maybe Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Snapshot'metadata (\ x__ y__ -> x__ {_Snapshot'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message Snapshot where
  messageName _ = Data.Text.pack "cosmos.store.snapshots.v1.Snapshot"
  packedMessageDescriptor _
    = "\n\
      \\bSnapshot\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\EOTR\ACKheight\DC2\SYN\n\
      \\ACKformat\CAN\STX \SOH(\rR\ACKformat\DC2\SYN\n\
      \\ACKchunks\CAN\ETX \SOH(\rR\ACKchunks\DC2\DC2\n\
      \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2E\n\
      \\bmetadata\CAN\ENQ \SOH(\v2#.cosmos.store.snapshots.v1.MetadataR\bmetadataB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Snapshot
        format__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"format")) ::
              Data.ProtoLens.FieldDescriptor Snapshot
        chunks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chunks")) ::
              Data.ProtoLens.FieldDescriptor Snapshot
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor Snapshot
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor Snapshot
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, format__field_descriptor),
           (Data.ProtoLens.Tag 3, chunks__field_descriptor),
           (Data.ProtoLens.Tag 4, hash__field_descriptor),
           (Data.ProtoLens.Tag 5, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Snapshot'_unknownFields
        (\ x__ y__ -> x__ {_Snapshot'_unknownFields = y__})
  defMessage
    = Snapshot'_constructor
        {_Snapshot'height = Data.ProtoLens.fieldDefault,
         _Snapshot'format = Data.ProtoLens.fieldDefault,
         _Snapshot'chunks = Data.ProtoLens.fieldDefault,
         _Snapshot'hash = Data.ProtoLens.fieldDefault,
         _Snapshot'metadata = Prelude.Nothing,
         _Snapshot'_unknownFields = []}
  parseMessage
    = let
        loop :: Snapshot -> Data.ProtoLens.Encoding.Bytes.Parser Snapshot
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "format"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"format") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chunks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chunks") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Snapshot"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"format") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chunks") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Snapshot where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Snapshot'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Snapshot'height x__)
                (Control.DeepSeq.deepseq
                   (_Snapshot'format x__)
                   (Control.DeepSeq.deepseq
                      (_Snapshot'chunks x__)
                      (Control.DeepSeq.deepseq
                         (_Snapshot'hash x__)
                         (Control.DeepSeq.deepseq (_Snapshot'metadata x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.name' @:: Lens' SnapshotExtensionMeta Data.Text.Text@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.format' @:: Lens' SnapshotExtensionMeta Data.Word.Word32@ -}
data SnapshotExtensionMeta
  = SnapshotExtensionMeta'_constructor {_SnapshotExtensionMeta'name :: !Data.Text.Text,
                                        _SnapshotExtensionMeta'format :: !Data.Word.Word32,
                                        _SnapshotExtensionMeta'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SnapshotExtensionMeta where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SnapshotExtensionMeta "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotExtensionMeta'name
           (\ x__ y__ -> x__ {_SnapshotExtensionMeta'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SnapshotExtensionMeta "format" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotExtensionMeta'format
           (\ x__ y__ -> x__ {_SnapshotExtensionMeta'format = y__}))
        Prelude.id
instance Data.ProtoLens.Message SnapshotExtensionMeta where
  messageName _
    = Data.Text.pack "cosmos.store.snapshots.v1.SnapshotExtensionMeta"
  packedMessageDescriptor _
    = "\n\
      \\NAKSnapshotExtensionMeta\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKformat\CAN\STX \SOH(\rR\ACKformat"
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
              Data.ProtoLens.FieldDescriptor SnapshotExtensionMeta
        format__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"format")) ::
              Data.ProtoLens.FieldDescriptor SnapshotExtensionMeta
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, format__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SnapshotExtensionMeta'_unknownFields
        (\ x__ y__ -> x__ {_SnapshotExtensionMeta'_unknownFields = y__})
  defMessage
    = SnapshotExtensionMeta'_constructor
        {_SnapshotExtensionMeta'name = Data.ProtoLens.fieldDefault,
         _SnapshotExtensionMeta'format = Data.ProtoLens.fieldDefault,
         _SnapshotExtensionMeta'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SnapshotExtensionMeta
          -> Data.ProtoLens.Encoding.Bytes.Parser SnapshotExtensionMeta
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
                                       "format"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"format") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SnapshotExtensionMeta"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"format") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SnapshotExtensionMeta where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SnapshotExtensionMeta'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SnapshotExtensionMeta'name x__)
                (Control.DeepSeq.deepseq (_SnapshotExtensionMeta'format x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.payload' @:: Lens' SnapshotExtensionPayload Data.ByteString.ByteString@ -}
data SnapshotExtensionPayload
  = SnapshotExtensionPayload'_constructor {_SnapshotExtensionPayload'payload :: !Data.ByteString.ByteString,
                                           _SnapshotExtensionPayload'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SnapshotExtensionPayload where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SnapshotExtensionPayload "payload" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotExtensionPayload'payload
           (\ x__ y__ -> x__ {_SnapshotExtensionPayload'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Message SnapshotExtensionPayload where
  messageName _
    = Data.Text.pack
        "cosmos.store.snapshots.v1.SnapshotExtensionPayload"
  packedMessageDescriptor _
    = "\n\
      \\CANSnapshotExtensionPayload\DC2\CAN\n\
      \\apayload\CAN\SOH \SOH(\fR\apayload"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        payload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"payload")) ::
              Data.ProtoLens.FieldDescriptor SnapshotExtensionPayload
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, payload__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SnapshotExtensionPayload'_unknownFields
        (\ x__ y__ -> x__ {_SnapshotExtensionPayload'_unknownFields = y__})
  defMessage
    = SnapshotExtensionPayload'_constructor
        {_SnapshotExtensionPayload'payload = Data.ProtoLens.fieldDefault,
         _SnapshotExtensionPayload'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SnapshotExtensionPayload
          -> Data.ProtoLens.Encoding.Bytes.Parser SnapshotExtensionPayload
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
                                       "payload"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"payload") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SnapshotExtensionPayload"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"payload") _x
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
instance Control.DeepSeq.NFData SnapshotExtensionPayload where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SnapshotExtensionPayload'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SnapshotExtensionPayload'payload x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.key' @:: Lens' SnapshotIAVLItem Data.ByteString.ByteString@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.value' @:: Lens' SnapshotIAVLItem Data.ByteString.ByteString@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.version' @:: Lens' SnapshotIAVLItem Data.Int.Int64@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.height' @:: Lens' SnapshotIAVLItem Data.Int.Int32@ -}
data SnapshotIAVLItem
  = SnapshotIAVLItem'_constructor {_SnapshotIAVLItem'key :: !Data.ByteString.ByteString,
                                   _SnapshotIAVLItem'value :: !Data.ByteString.ByteString,
                                   _SnapshotIAVLItem'version :: !Data.Int.Int64,
                                   _SnapshotIAVLItem'height :: !Data.Int.Int32,
                                   _SnapshotIAVLItem'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SnapshotIAVLItem where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SnapshotIAVLItem "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotIAVLItem'key
           (\ x__ y__ -> x__ {_SnapshotIAVLItem'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SnapshotIAVLItem "value" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotIAVLItem'value
           (\ x__ y__ -> x__ {_SnapshotIAVLItem'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SnapshotIAVLItem "version" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotIAVLItem'version
           (\ x__ y__ -> x__ {_SnapshotIAVLItem'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SnapshotIAVLItem "height" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotIAVLItem'height
           (\ x__ y__ -> x__ {_SnapshotIAVLItem'height = y__}))
        Prelude.id
instance Data.ProtoLens.Message SnapshotIAVLItem where
  messageName _
    = Data.Text.pack "cosmos.store.snapshots.v1.SnapshotIAVLItem"
  packedMessageDescriptor _
    = "\n\
      \\DLESnapshotIAVLItem\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\fR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\fR\ENQvalue\DC2\CAN\n\
      \\aversion\CAN\ETX \SOH(\ETXR\aversion\DC2\SYN\n\
      \\ACKheight\CAN\EOT \SOH(\ENQR\ACKheight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor SnapshotIAVLItem
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor SnapshotIAVLItem
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor SnapshotIAVLItem
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor SnapshotIAVLItem
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor),
           (Data.ProtoLens.Tag 3, version__field_descriptor),
           (Data.ProtoLens.Tag 4, height__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SnapshotIAVLItem'_unknownFields
        (\ x__ y__ -> x__ {_SnapshotIAVLItem'_unknownFields = y__})
  defMessage
    = SnapshotIAVLItem'_constructor
        {_SnapshotIAVLItem'key = Data.ProtoLens.fieldDefault,
         _SnapshotIAVLItem'value = Data.ProtoLens.fieldDefault,
         _SnapshotIAVLItem'version = Data.ProtoLens.fieldDefault,
         _SnapshotIAVLItem'height = Data.ProtoLens.fieldDefault,
         _SnapshotIAVLItem'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SnapshotIAVLItem
          -> Data.ProtoLens.Encoding.Bytes.Parser SnapshotIAVLItem
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SnapshotIAVLItem"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SnapshotIAVLItem where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SnapshotIAVLItem'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SnapshotIAVLItem'key x__)
                (Control.DeepSeq.deepseq
                   (_SnapshotIAVLItem'value x__)
                   (Control.DeepSeq.deepseq
                      (_SnapshotIAVLItem'version x__)
                      (Control.DeepSeq.deepseq (_SnapshotIAVLItem'height x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.maybe'item' @:: Lens' SnapshotItem (Prelude.Maybe SnapshotItem'Item)@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.maybe'store' @:: Lens' SnapshotItem (Prelude.Maybe SnapshotStoreItem)@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.store' @:: Lens' SnapshotItem SnapshotStoreItem@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.maybe'iavl' @:: Lens' SnapshotItem (Prelude.Maybe SnapshotIAVLItem)@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.iavl' @:: Lens' SnapshotItem SnapshotIAVLItem@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.maybe'extension' @:: Lens' SnapshotItem (Prelude.Maybe SnapshotExtensionMeta)@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.extension' @:: Lens' SnapshotItem SnapshotExtensionMeta@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.maybe'extensionPayload' @:: Lens' SnapshotItem (Prelude.Maybe SnapshotExtensionPayload)@
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.extensionPayload' @:: Lens' SnapshotItem SnapshotExtensionPayload@ -}
data SnapshotItem
  = SnapshotItem'_constructor {_SnapshotItem'item :: !(Prelude.Maybe SnapshotItem'Item),
                               _SnapshotItem'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SnapshotItem where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SnapshotItem'Item
  = SnapshotItem'Store !SnapshotStoreItem |
    SnapshotItem'Iavl !SnapshotIAVLItem |
    SnapshotItem'Extension !SnapshotExtensionMeta |
    SnapshotItem'ExtensionPayload !SnapshotExtensionPayload
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SnapshotItem "maybe'item" (Prelude.Maybe SnapshotItem'Item) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SnapshotItem "maybe'store" (Prelude.Maybe SnapshotStoreItem) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SnapshotItem'Store x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SnapshotItem'Store y__))
instance Data.ProtoLens.Field.HasField SnapshotItem "store" SnapshotStoreItem where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SnapshotItem'Store x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SnapshotItem'Store y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SnapshotItem "maybe'iavl" (Prelude.Maybe SnapshotIAVLItem) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SnapshotItem'Iavl x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SnapshotItem'Iavl y__))
instance Data.ProtoLens.Field.HasField SnapshotItem "iavl" SnapshotIAVLItem where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SnapshotItem'Iavl x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SnapshotItem'Iavl y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SnapshotItem "maybe'extension" (Prelude.Maybe SnapshotExtensionMeta) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SnapshotItem'Extension x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SnapshotItem'Extension y__))
instance Data.ProtoLens.Field.HasField SnapshotItem "extension" SnapshotExtensionMeta where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SnapshotItem'Extension x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SnapshotItem'Extension y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SnapshotItem "maybe'extensionPayload" (Prelude.Maybe SnapshotExtensionPayload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SnapshotItem'ExtensionPayload x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SnapshotItem'ExtensionPayload y__))
instance Data.ProtoLens.Field.HasField SnapshotItem "extensionPayload" SnapshotExtensionPayload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotItem'item (\ x__ y__ -> x__ {_SnapshotItem'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SnapshotItem'ExtensionPayload x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SnapshotItem'ExtensionPayload y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message SnapshotItem where
  messageName _
    = Data.Text.pack "cosmos.store.snapshots.v1.SnapshotItem"
  packedMessageDescriptor _
    = "\n\
      \\fSnapshotItem\DC2D\n\
      \\ENQstore\CAN\SOH \SOH(\v2,.cosmos.store.snapshots.v1.SnapshotStoreItemH\NULR\ENQstore\DC2K\n\
      \\EOTiavl\CAN\STX \SOH(\v2+.cosmos.store.snapshots.v1.SnapshotIAVLItemH\NULR\EOTiavlB\b\226\222\US\EOTIAVL\DC2P\n\
      \\textension\CAN\ETX \SOH(\v20.cosmos.store.snapshots.v1.SnapshotExtensionMetaH\NULR\textension\DC2b\n\
      \\DC1extension_payload\CAN\EOT \SOH(\v23.cosmos.store.snapshots.v1.SnapshotExtensionPayloadH\NULR\DLEextensionPayloadB\ACK\n\
      \\EOTitem"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        store__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SnapshotStoreItem)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'store")) ::
              Data.ProtoLens.FieldDescriptor SnapshotItem
        iavl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iavl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SnapshotIAVLItem)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iavl")) ::
              Data.ProtoLens.FieldDescriptor SnapshotItem
        extension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SnapshotExtensionMeta)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extension")) ::
              Data.ProtoLens.FieldDescriptor SnapshotItem
        extensionPayload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_payload"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SnapshotExtensionPayload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extensionPayload")) ::
              Data.ProtoLens.FieldDescriptor SnapshotItem
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, store__field_descriptor),
           (Data.ProtoLens.Tag 2, iavl__field_descriptor),
           (Data.ProtoLens.Tag 3, extension__field_descriptor),
           (Data.ProtoLens.Tag 4, extensionPayload__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SnapshotItem'_unknownFields
        (\ x__ y__ -> x__ {_SnapshotItem'_unknownFields = y__})
  defMessage
    = SnapshotItem'_constructor
        {_SnapshotItem'item = Prelude.Nothing,
         _SnapshotItem'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SnapshotItem -> Data.ProtoLens.Encoding.Bytes.Parser SnapshotItem
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
                                       "store"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"store") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "iavl"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iavl") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extension"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"extension") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extension_payload"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionPayload") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SnapshotItem"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'item") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (SnapshotItem'Store v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (SnapshotItem'Iavl v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (SnapshotItem'Extension v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (SnapshotItem'ExtensionPayload v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SnapshotItem where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SnapshotItem'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SnapshotItem'item x__) ())
instance Control.DeepSeq.NFData SnapshotItem'Item where
  rnf (SnapshotItem'Store x__) = Control.DeepSeq.rnf x__
  rnf (SnapshotItem'Iavl x__) = Control.DeepSeq.rnf x__
  rnf (SnapshotItem'Extension x__) = Control.DeepSeq.rnf x__
  rnf (SnapshotItem'ExtensionPayload x__) = Control.DeepSeq.rnf x__
_SnapshotItem'Store ::
  Data.ProtoLens.Prism.Prism' SnapshotItem'Item SnapshotStoreItem
_SnapshotItem'Store
  = Data.ProtoLens.Prism.prism'
      SnapshotItem'Store
      (\ p__
         -> case p__ of
              (SnapshotItem'Store p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SnapshotItem'Iavl ::
  Data.ProtoLens.Prism.Prism' SnapshotItem'Item SnapshotIAVLItem
_SnapshotItem'Iavl
  = Data.ProtoLens.Prism.prism'
      SnapshotItem'Iavl
      (\ p__
         -> case p__ of
              (SnapshotItem'Iavl p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SnapshotItem'Extension ::
  Data.ProtoLens.Prism.Prism' SnapshotItem'Item SnapshotExtensionMeta
_SnapshotItem'Extension
  = Data.ProtoLens.Prism.prism'
      SnapshotItem'Extension
      (\ p__
         -> case p__ of
              (SnapshotItem'Extension p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SnapshotItem'ExtensionPayload ::
  Data.ProtoLens.Prism.Prism' SnapshotItem'Item SnapshotExtensionPayload
_SnapshotItem'ExtensionPayload
  = Data.ProtoLens.Prism.prism'
      SnapshotItem'ExtensionPayload
      (\ p__
         -> case p__ of
              (SnapshotItem'ExtensionPayload p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Cosmos.Store.Snapshots.V1.Snapshot_Fields.name' @:: Lens' SnapshotStoreItem Data.Text.Text@ -}
data SnapshotStoreItem
  = SnapshotStoreItem'_constructor {_SnapshotStoreItem'name :: !Data.Text.Text,
                                    _SnapshotStoreItem'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SnapshotStoreItem where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SnapshotStoreItem "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SnapshotStoreItem'name
           (\ x__ y__ -> x__ {_SnapshotStoreItem'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message SnapshotStoreItem where
  messageName _
    = Data.Text.pack "cosmos.store.snapshots.v1.SnapshotStoreItem"
  packedMessageDescriptor _
    = "\n\
      \\DC1SnapshotStoreItem\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor SnapshotStoreItem
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SnapshotStoreItem'_unknownFields
        (\ x__ y__ -> x__ {_SnapshotStoreItem'_unknownFields = y__})
  defMessage
    = SnapshotStoreItem'_constructor
        {_SnapshotStoreItem'name = Data.ProtoLens.fieldDefault,
         _SnapshotStoreItem'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SnapshotStoreItem
          -> Data.ProtoLens.Encoding.Bytes.Parser SnapshotStoreItem
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SnapshotStoreItem"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SnapshotStoreItem where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SnapshotStoreItem'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SnapshotStoreItem'name x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(cosmos/store/snapshots/v1/snapshot.proto\DC2\EMcosmos.store.snapshots.v1\SUB\DC4gogoproto/gogo.proto\"\173\SOH\n\
    \\bSnapshot\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\EOTR\ACKheight\DC2\SYN\n\
    \\ACKformat\CAN\STX \SOH(\rR\ACKformat\DC2\SYN\n\
    \\ACKchunks\CAN\ETX \SOH(\rR\ACKchunks\DC2\DC2\n\
    \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2E\n\
    \\bmetadata\CAN\ENQ \SOH(\v2#.cosmos.store.snapshots.v1.MetadataR\bmetadataB\EOT\200\222\US\NUL\"-\n\
    \\bMetadata\DC2!\n\
    \\fchunk_hashes\CAN\SOH \ETX(\fR\vchunkHashes\"\223\STX\n\
    \\fSnapshotItem\DC2D\n\
    \\ENQstore\CAN\SOH \SOH(\v2,.cosmos.store.snapshots.v1.SnapshotStoreItemH\NULR\ENQstore\DC2K\n\
    \\EOTiavl\CAN\STX \SOH(\v2+.cosmos.store.snapshots.v1.SnapshotIAVLItemH\NULR\EOTiavlB\b\226\222\US\EOTIAVL\DC2P\n\
    \\textension\CAN\ETX \SOH(\v20.cosmos.store.snapshots.v1.SnapshotExtensionMetaH\NULR\textension\DC2b\n\
    \\DC1extension_payload\CAN\EOT \SOH(\v23.cosmos.store.snapshots.v1.SnapshotExtensionPayloadH\NULR\DLEextensionPayloadB\ACK\n\
    \\EOTitem\"'\n\
    \\DC1SnapshotStoreItem\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"l\n\
    \\DLESnapshotIAVLItem\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\fR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\fR\ENQvalue\DC2\CAN\n\
    \\aversion\CAN\ETX \SOH(\ETXR\aversion\DC2\SYN\n\
    \\ACKheight\CAN\EOT \SOH(\ENQR\ACKheight\"C\n\
    \\NAKSnapshotExtensionMeta\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
    \\ACKformat\CAN\STX \SOH(\rR\ACKformat\"4\n\
    \\CANSnapshotExtensionPayload\DC2\CAN\n\
    \\apayload\CAN\SOH \SOH(\fR\apayloadB$Z\"cosmossdk.io/store/snapshots/typesJ\224\SI\n\
    \\ACK\DC2\EOT\NUL\NULB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL9\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NUL9\n\
    \D\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\SO\SOH\SUB8 Snapshot contains Tendermint state sync snapshot info.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\t\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\t\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\t\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\n\
    \\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\n\
    \\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\n\
    \\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\v\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\v\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\f\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\f\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\f\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\f\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\r\STX7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\r\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\r\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\r\CAN6\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX\r\EM5\n\
    \?\n\
    \\STX\EOT\SOH\DC2\EOT\DC1\NUL\DC3\SOH\SUB3 Metadata contains SDK-specific snapshot metadata.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC1\b\DLE\n\
    \#\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC2\STX\"\"\SYN SHA-256 chunk hashes\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC2\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC2 !\n\
    \g\n\
    \\STX\EOT\STX\DC2\EOT\CAN\NUL \SOH\SUB[ SnapshotItem is an item contained in a rootmulti.Store snapshot.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\CAN\b\DC4\n\
    \;\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOT\SUB\STX\US\ETX\SUB- item is the specific type of snapshot item.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETX\SUB\b\f\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\ESC\EOT3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\ESC\EOT\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\ESC\GS\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\ESC12\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\FS\EOTU\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX\FS\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\FS\GS!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\FS12\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX\FS3T\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\236\251\ETX\DC2\ETX\FS4S\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\GS\EOT3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX\GS\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\GS\GS&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\GS12\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\RS\EOT3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX\RS\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\RS\GS.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\RS12\n\
    \e\n\
    \\STX\EOT\ETX\DC2\EOT%\NUL'\SOH\SUBY SnapshotStoreItem contains metadata about a snapshotted store.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX%\b\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX&\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX&\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX&\DLE\DC1\n\
    \Q\n\
    \\STX\EOT\EOT\DC2\EOT,\NUL3\SOH\SUBE SnapshotIAVLItem is an exported IAVL node.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX,\b\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX-\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX-\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX-\b\v\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX-\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX.\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX.\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX.\b\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX.\DLE\DC1\n\
    \&\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX0\STX\DC4\SUB\EM version is block height\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX0\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX0\b\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX0\DC2\DC3\n\
    \+\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX2\STX\DC3\SUB\RS height is depth of the tree.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX2\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX2\b\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX2\DC1\DC2\n\
    \m\n\
    \\STX\EOT\ENQ\DC2\EOT8\NUL;\SOH\SUBa SnapshotExtensionMeta contains metadata about an external snapshotter.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX8\b\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX9\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX9\t\r\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX9\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX:\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX:\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX:\DC2\DC3\n\
    \m\n\
    \\STX\EOT\ACK\DC2\EOT@\NULB\SOH\SUBa SnapshotExtensionPayload contains payloads of an external snapshotter.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX@\b \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXA\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXA\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXA\b\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXA\DC2\DC3b\ACKproto3"