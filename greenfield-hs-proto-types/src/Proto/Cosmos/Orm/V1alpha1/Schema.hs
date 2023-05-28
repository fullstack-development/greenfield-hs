{- This file was auto-generated from cosmos/orm/v1alpha1/schema.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Orm.V1alpha1.Schema (
        ModuleSchemaDescriptor(), ModuleSchemaDescriptor'FileEntry(),
        StorageType(..), StorageType(), StorageType'UnrecognizedValue
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
import qualified Proto.Google.Protobuf.Descriptor
{- | Fields :
     
         * 'Proto.Cosmos.Orm.V1alpha1.Schema_Fields.schemaFile' @:: Lens' ModuleSchemaDescriptor [ModuleSchemaDescriptor'FileEntry]@
         * 'Proto.Cosmos.Orm.V1alpha1.Schema_Fields.vec'schemaFile' @:: Lens' ModuleSchemaDescriptor (Data.Vector.Vector ModuleSchemaDescriptor'FileEntry)@
         * 'Proto.Cosmos.Orm.V1alpha1.Schema_Fields.prefix' @:: Lens' ModuleSchemaDescriptor Data.ByteString.ByteString@ -}
data ModuleSchemaDescriptor
  = ModuleSchemaDescriptor'_constructor {_ModuleSchemaDescriptor'schemaFile :: !(Data.Vector.Vector ModuleSchemaDescriptor'FileEntry),
                                         _ModuleSchemaDescriptor'prefix :: !Data.ByteString.ByteString,
                                         _ModuleSchemaDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleSchemaDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleSchemaDescriptor "schemaFile" [ModuleSchemaDescriptor'FileEntry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSchemaDescriptor'schemaFile
           (\ x__ y__ -> x__ {_ModuleSchemaDescriptor'schemaFile = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleSchemaDescriptor "vec'schemaFile" (Data.Vector.Vector ModuleSchemaDescriptor'FileEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSchemaDescriptor'schemaFile
           (\ x__ y__ -> x__ {_ModuleSchemaDescriptor'schemaFile = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleSchemaDescriptor "prefix" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSchemaDescriptor'prefix
           (\ x__ y__ -> x__ {_ModuleSchemaDescriptor'prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleSchemaDescriptor where
  messageName _
    = Data.Text.pack "cosmos.orm.v1alpha1.ModuleSchemaDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\SYNModuleSchemaDescriptor\DC2V\n\
      \\vschema_file\CAN\SOH \ETX(\v25.cosmos.orm.v1alpha1.ModuleSchemaDescriptor.FileEntryR\n\
      \schemaFile\DC2\SYN\n\
      \\ACKprefix\CAN\STX \SOH(\fR\ACKprefix\SUB\136\SOH\n\
      \\tFileEntry\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\rR\STXid\DC2&\n\
      \\SIproto_file_name\CAN\STX \SOH(\tR\rprotoFileName\DC2C\n\
      \\fstorage_type\CAN\ETX \SOH(\SO2 .cosmos.orm.v1alpha1.StorageTypeR\vstorageType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        schemaFile__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "schema_file"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModuleSchemaDescriptor'FileEntry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"schemaFile")) ::
              Data.ProtoLens.FieldDescriptor ModuleSchemaDescriptor
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"prefix")) ::
              Data.ProtoLens.FieldDescriptor ModuleSchemaDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, schemaFile__field_descriptor),
           (Data.ProtoLens.Tag 2, prefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleSchemaDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ModuleSchemaDescriptor'_unknownFields = y__})
  defMessage
    = ModuleSchemaDescriptor'_constructor
        {_ModuleSchemaDescriptor'schemaFile = Data.Vector.Generic.empty,
         _ModuleSchemaDescriptor'prefix = Data.ProtoLens.fieldDefault,
         _ModuleSchemaDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleSchemaDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ModuleSchemaDescriptor'FileEntry
             -> Data.ProtoLens.Encoding.Bytes.Parser ModuleSchemaDescriptor
        loop x mutable'schemaFile
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'schemaFile <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'schemaFile)
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
                              (Data.ProtoLens.Field.field @"vec'schemaFile") frozen'schemaFile
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
                                        "schema_file"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'schemaFile y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                                  mutable'schemaFile
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'schemaFile
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'schemaFile <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'schemaFile)
          "ModuleSchemaDescriptor"
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
                   (Data.ProtoLens.Field.field @"vec'schemaFile") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"prefix") _x
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
instance Control.DeepSeq.NFData ModuleSchemaDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleSchemaDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleSchemaDescriptor'schemaFile x__)
                (Control.DeepSeq.deepseq (_ModuleSchemaDescriptor'prefix x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Orm.V1alpha1.Schema_Fields.id' @:: Lens' ModuleSchemaDescriptor'FileEntry Data.Word.Word32@
         * 'Proto.Cosmos.Orm.V1alpha1.Schema_Fields.protoFileName' @:: Lens' ModuleSchemaDescriptor'FileEntry Data.Text.Text@
         * 'Proto.Cosmos.Orm.V1alpha1.Schema_Fields.storageType' @:: Lens' ModuleSchemaDescriptor'FileEntry StorageType@ -}
data ModuleSchemaDescriptor'FileEntry
  = ModuleSchemaDescriptor'FileEntry'_constructor {_ModuleSchemaDescriptor'FileEntry'id :: !Data.Word.Word32,
                                                   _ModuleSchemaDescriptor'FileEntry'protoFileName :: !Data.Text.Text,
                                                   _ModuleSchemaDescriptor'FileEntry'storageType :: !StorageType,
                                                   _ModuleSchemaDescriptor'FileEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleSchemaDescriptor'FileEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleSchemaDescriptor'FileEntry "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSchemaDescriptor'FileEntry'id
           (\ x__ y__ -> x__ {_ModuleSchemaDescriptor'FileEntry'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleSchemaDescriptor'FileEntry "protoFileName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSchemaDescriptor'FileEntry'protoFileName
           (\ x__ y__
              -> x__ {_ModuleSchemaDescriptor'FileEntry'protoFileName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleSchemaDescriptor'FileEntry "storageType" StorageType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSchemaDescriptor'FileEntry'storageType
           (\ x__ y__
              -> x__ {_ModuleSchemaDescriptor'FileEntry'storageType = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleSchemaDescriptor'FileEntry where
  messageName _
    = Data.Text.pack
        "cosmos.orm.v1alpha1.ModuleSchemaDescriptor.FileEntry"
  packedMessageDescriptor _
    = "\n\
      \\tFileEntry\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\rR\STXid\DC2&\n\
      \\SIproto_file_name\CAN\STX \SOH(\tR\rprotoFileName\DC2C\n\
      \\fstorage_type\CAN\ETX \SOH(\SO2 .cosmos.orm.v1alpha1.StorageTypeR\vstorageType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor ModuleSchemaDescriptor'FileEntry
        protoFileName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proto_file_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protoFileName")) ::
              Data.ProtoLens.FieldDescriptor ModuleSchemaDescriptor'FileEntry
        storageType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "storage_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor StorageType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storageType")) ::
              Data.ProtoLens.FieldDescriptor ModuleSchemaDescriptor'FileEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, protoFileName__field_descriptor),
           (Data.ProtoLens.Tag 3, storageType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleSchemaDescriptor'FileEntry'_unknownFields
        (\ x__ y__
           -> x__ {_ModuleSchemaDescriptor'FileEntry'_unknownFields = y__})
  defMessage
    = ModuleSchemaDescriptor'FileEntry'_constructor
        {_ModuleSchemaDescriptor'FileEntry'id = Data.ProtoLens.fieldDefault,
         _ModuleSchemaDescriptor'FileEntry'protoFileName = Data.ProtoLens.fieldDefault,
         _ModuleSchemaDescriptor'FileEntry'storageType = Data.ProtoLens.fieldDefault,
         _ModuleSchemaDescriptor'FileEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleSchemaDescriptor'FileEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ModuleSchemaDescriptor'FileEntry
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
                                       "proto_file_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protoFileName") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "storage_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storageType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FileEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"protoFileName") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"storageType") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ModuleSchemaDescriptor'FileEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleSchemaDescriptor'FileEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleSchemaDescriptor'FileEntry'id x__)
                (Control.DeepSeq.deepseq
                   (_ModuleSchemaDescriptor'FileEntry'protoFileName x__)
                   (Control.DeepSeq.deepseq
                      (_ModuleSchemaDescriptor'FileEntry'storageType x__) ())))
newtype StorageType'UnrecognizedValue
  = StorageType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data StorageType
  = STORAGE_TYPE_DEFAULT_UNSPECIFIED |
    STORAGE_TYPE_MEMORY |
    STORAGE_TYPE_TRANSIENT |
    StorageType'Unrecognized !StorageType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum StorageType where
  maybeToEnum 0 = Prelude.Just STORAGE_TYPE_DEFAULT_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just STORAGE_TYPE_MEMORY
  maybeToEnum 2 = Prelude.Just STORAGE_TYPE_TRANSIENT
  maybeToEnum k
    = Prelude.Just
        (StorageType'Unrecognized
           (StorageType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum STORAGE_TYPE_DEFAULT_UNSPECIFIED
    = "STORAGE_TYPE_DEFAULT_UNSPECIFIED"
  showEnum STORAGE_TYPE_MEMORY = "STORAGE_TYPE_MEMORY"
  showEnum STORAGE_TYPE_TRANSIENT = "STORAGE_TYPE_TRANSIENT"
  showEnum
    (StorageType'Unrecognized (StorageType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "STORAGE_TYPE_DEFAULT_UNSPECIFIED"
    = Prelude.Just STORAGE_TYPE_DEFAULT_UNSPECIFIED
    | (Prelude.==) k "STORAGE_TYPE_MEMORY"
    = Prelude.Just STORAGE_TYPE_MEMORY
    | (Prelude.==) k "STORAGE_TYPE_TRANSIENT"
    = Prelude.Just STORAGE_TYPE_TRANSIENT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded StorageType where
  minBound = STORAGE_TYPE_DEFAULT_UNSPECIFIED
  maxBound = STORAGE_TYPE_TRANSIENT
instance Prelude.Enum StorageType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum StorageType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum STORAGE_TYPE_DEFAULT_UNSPECIFIED = 0
  fromEnum STORAGE_TYPE_MEMORY = 1
  fromEnum STORAGE_TYPE_TRANSIENT = 2
  fromEnum
    (StorageType'Unrecognized (StorageType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ STORAGE_TYPE_TRANSIENT
    = Prelude.error
        "StorageType.succ: bad argument STORAGE_TYPE_TRANSIENT. This value would be out of bounds."
  succ STORAGE_TYPE_DEFAULT_UNSPECIFIED = STORAGE_TYPE_MEMORY
  succ STORAGE_TYPE_MEMORY = STORAGE_TYPE_TRANSIENT
  succ (StorageType'Unrecognized _)
    = Prelude.error
        "StorageType.succ: bad argument: unrecognized value"
  pred STORAGE_TYPE_DEFAULT_UNSPECIFIED
    = Prelude.error
        "StorageType.pred: bad argument STORAGE_TYPE_DEFAULT_UNSPECIFIED. This value would be out of bounds."
  pred STORAGE_TYPE_MEMORY = STORAGE_TYPE_DEFAULT_UNSPECIFIED
  pred STORAGE_TYPE_TRANSIENT = STORAGE_TYPE_MEMORY
  pred (StorageType'Unrecognized _)
    = Prelude.error
        "StorageType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault StorageType where
  fieldDefault = STORAGE_TYPE_DEFAULT_UNSPECIFIED
instance Control.DeepSeq.NFData StorageType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/orm/v1alpha1/schema.proto\DC2\DC3cosmos.orm.v1alpha1\SUB google/protobuf/descriptor.proto\"\147\STX\n\
    \\SYNModuleSchemaDescriptor\DC2V\n\
    \\vschema_file\CAN\SOH \ETX(\v25.cosmos.orm.v1alpha1.ModuleSchemaDescriptor.FileEntryR\n\
    \schemaFile\DC2\SYN\n\
    \\ACKprefix\CAN\STX \SOH(\fR\ACKprefix\SUB\136\SOH\n\
    \\tFileEntry\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\rR\STXid\DC2&\n\
    \\SIproto_file_name\CAN\STX \SOH(\tR\rprotoFileName\DC2C\n\
    \\fstorage_type\CAN\ETX \SOH(\SO2 .cosmos.orm.v1alpha1.StorageTypeR\vstorageType*h\n\
    \\vStorageType\DC2$\n\
    \ STORAGE_TYPE_DEFAULT_UNSPECIFIED\DLE\NUL\DC2\ETB\n\
    \\DC3STORAGE_TYPE_MEMORY\DLE\SOH\DC2\SUB\n\
    \\SYNSTORAGE_TYPE_TRANSIENT\DLE\STX:t\n\
    \\rmodule_schema\CAN\240\179\234\&1 \SOH(\v2+.cosmos.orm.v1alpha1.ModuleSchemaDescriptor\DC2\US.google.protobuf.MessageOptionsR\fmoduleSchemaJ\205\DLE\n\
    \\ACK\DC2\EOT\NUL\NUL9\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\SOH\a\DC2\EOT\ACK\NUL\f\SOH\n\
    \\233\SOH\n\
    \\STX\a\NUL\DC2\ETX\v\STX3\SUB\221\SOH module_schema is used to define the ORM schema for an app module.\n\
    \ All module config messages that use module_schema must also declare\n\
    \ themselves as app module config messages using the cosmos.app.v1.is_module\n\
    \ option.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\ACK\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\v\STX\CAN\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\v\EM&\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\v)2\n\
    \F\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL&\SOH\SUB: ModuleSchemaDescriptor describe's a module's ORM schema.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DLE\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\NAK \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE#$\n\
    \A\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\DC3\STX!\ETX\SUB3 FileEntry describes an ORM file used in a module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\DC3\n\
    \\DC3\n\
    \\128\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\SYN\EOT\DC2\SUBq id is a prefix that will be varint encoded and prepended to all the\n\
    \ table keys specified in the file's tables.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\SYN\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\SYN\v\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\SYN\DLE\DC1\n\
    \\218\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\ESC\EOT\US\SUB\202\SOH proto_file_name is the name of a file .proto in that contains\n\
    \ table definitions. The .proto file must be in a package that the\n\
    \ module has referenced using cosmos.app.v1.ModuleDescriptor.use_package.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\ESC\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\ESC\v\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\ESC\GS\RS\n\
    \\180\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX \EOT!\SUB\164\SOH storage_type optionally indicates the type of storage this file's\n\
    \ tables should used. If it is left unspecified, the default KV-storage\n\
    \ of the app will be used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX \EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX \DLE\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX \US \n\
    \[\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX%\STX\DC3\SUBN prefix is an optional prefix that precedes all keys in this module's\n\
    \ store.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX%\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX%\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX%\DC1\DC2\n\
    \\EM\n\
    \\STX\ENQ\NUL\DC2\EOT)\NUL9\SOH\SUB\r StorageType\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX)\ENQ\DLE\n\
    \\151\SOH\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX,\STX'\SUB\137\SOH STORAGE_TYPE_DEFAULT_UNSPECIFIED indicates the persistent storage where all\n\
    \ data is stored in the regular Merkle-tree backed KV-store.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX,\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX,%&\n\
    \\233\SOH\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX2\STX\SUB\SUB\219\SOH STORAGE_TYPE_MEMORY indicates in-memory storage that will be\n\
    \ reloaded every time an app restarts. Tables with this type of storage\n\
    \ will by default be ignored when importing and exporting a module's\n\
    \ state from JSON.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX2\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX2\CAN\EM\n\
    \\227\SOH\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX8\STX\GS\SUB\213\SOH STORAGE_TYPE_TRANSIENT indicates transient storage that is reset\n\
    \ at the end of every block. Tables with this type of storage\n\
    \ will by default be ignored when importing and exporting a module's\n\
    \ state from JSON.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX8\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX8\ESC\FSb\ACKproto3"