{- This file was auto-generated from cosmos/store/v1beta1/commit_info.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Store.V1beta1.CommitInfo (
        CommitID(), CommitInfo(), StoreInfo()
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
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.version' @:: Lens' CommitID Data.Int.Int64@
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.hash' @:: Lens' CommitID Data.ByteString.ByteString@ -}
data CommitID
  = CommitID'_constructor {_CommitID'version :: !Data.Int.Int64,
                           _CommitID'hash :: !Data.ByteString.ByteString,
                           _CommitID'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommitID where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommitID "version" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitID'version (\ x__ y__ -> x__ {_CommitID'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitID "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitID'hash (\ x__ y__ -> x__ {_CommitID'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommitID where
  messageName _ = Data.Text.pack "cosmos.store.v1beta1.CommitID"
  packedMessageDescriptor _
    = "\n\
      \\bCommitID\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2\DC2\n\
      \\EOThash\CAN\STX \SOH(\fR\EOThash:\EOT\152\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor CommitID
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor CommitID
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommitID'_unknownFields
        (\ x__ y__ -> x__ {_CommitID'_unknownFields = y__})
  defMessage
    = CommitID'_constructor
        {_CommitID'version = Data.ProtoLens.fieldDefault,
         _CommitID'hash = Data.ProtoLens.fieldDefault,
         _CommitID'_unknownFields = []}
  parseMessage
    = let
        loop :: CommitID -> Data.ProtoLens.Encoding.Bytes.Parser CommitID
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
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
          (do loop Data.ProtoLens.defMessage) "CommitID"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
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
instance Control.DeepSeq.NFData CommitID where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommitID'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommitID'version x__)
                (Control.DeepSeq.deepseq (_CommitID'hash x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.version' @:: Lens' CommitInfo Data.Int.Int64@
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.storeInfos' @:: Lens' CommitInfo [StoreInfo]@
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.vec'storeInfos' @:: Lens' CommitInfo (Data.Vector.Vector StoreInfo)@
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.timestamp' @:: Lens' CommitInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.maybe'timestamp' @:: Lens' CommitInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data CommitInfo
  = CommitInfo'_constructor {_CommitInfo'version :: !Data.Int.Int64,
                             _CommitInfo'storeInfos :: !(Data.Vector.Vector StoreInfo),
                             _CommitInfo'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                             _CommitInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommitInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommitInfo "version" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'version (\ x__ y__ -> x__ {_CommitInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitInfo "storeInfos" [StoreInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'storeInfos
           (\ x__ y__ -> x__ {_CommitInfo'storeInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommitInfo "vec'storeInfos" (Data.Vector.Vector StoreInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'storeInfos
           (\ x__ y__ -> x__ {_CommitInfo'storeInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitInfo "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'timestamp
           (\ x__ y__ -> x__ {_CommitInfo'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommitInfo "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'timestamp
           (\ x__ y__ -> x__ {_CommitInfo'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommitInfo where
  messageName _ = Data.Text.pack "cosmos.store.v1beta1.CommitInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \CommitInfo\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2F\n\
      \\vstore_infos\CAN\STX \ETX(\v2\US.cosmos.store.v1beta1.StoreInfoR\n\
      \storeInfosB\EOT\200\222\US\NUL\DC2B\n\
      \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor CommitInfo
        storeInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StoreInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"storeInfos")) ::
              Data.ProtoLens.FieldDescriptor CommitInfo
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor CommitInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, storeInfos__field_descriptor),
           (Data.ProtoLens.Tag 3, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommitInfo'_unknownFields
        (\ x__ y__ -> x__ {_CommitInfo'_unknownFields = y__})
  defMessage
    = CommitInfo'_constructor
        {_CommitInfo'version = Data.ProtoLens.fieldDefault,
         _CommitInfo'storeInfos = Data.Vector.Generic.empty,
         _CommitInfo'timestamp = Prelude.Nothing,
         _CommitInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommitInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StoreInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser CommitInfo
        loop x mutable'storeInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'storeInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'storeInfos)
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
                              (Data.ProtoLens.Field.field @"vec'storeInfos") frozen'storeInfos
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                                  mutable'storeInfos
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "store_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'storeInfos y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                                  mutable'storeInfos
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'storeInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'storeInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'storeInfos)
          "CommitInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                      (Data.ProtoLens.Field.field @"vec'storeInfos") _x))
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CommitInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommitInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommitInfo'version x__)
                (Control.DeepSeq.deepseq
                   (_CommitInfo'storeInfos x__)
                   (Control.DeepSeq.deepseq (_CommitInfo'timestamp x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.name' @:: Lens' StoreInfo Data.Text.Text@
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.commitId' @:: Lens' StoreInfo CommitID@
         * 'Proto.Cosmos.Store.V1beta1.CommitInfo_Fields.maybe'commitId' @:: Lens' StoreInfo (Prelude.Maybe CommitID)@ -}
data StoreInfo
  = StoreInfo'_constructor {_StoreInfo'name :: !Data.Text.Text,
                            _StoreInfo'commitId :: !(Prelude.Maybe CommitID),
                            _StoreInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StoreInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StoreInfo "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreInfo'name (\ x__ y__ -> x__ {_StoreInfo'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StoreInfo "commitId" CommitID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreInfo'commitId (\ x__ y__ -> x__ {_StoreInfo'commitId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StoreInfo "maybe'commitId" (Prelude.Maybe CommitID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StoreInfo'commitId (\ x__ y__ -> x__ {_StoreInfo'commitId = y__}))
        Prelude.id
instance Data.ProtoLens.Message StoreInfo where
  messageName _ = Data.Text.pack "cosmos.store.v1beta1.StoreInfo"
  packedMessageDescriptor _
    = "\n\
      \\tStoreInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
      \\tcommit_id\CAN\STX \SOH(\v2\RS.cosmos.store.v1beta1.CommitIDR\bcommitIdB\EOT\200\222\US\NUL"
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
              Data.ProtoLens.FieldDescriptor StoreInfo
        commitId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommitID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commitId")) ::
              Data.ProtoLens.FieldDescriptor StoreInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, commitId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StoreInfo'_unknownFields
        (\ x__ y__ -> x__ {_StoreInfo'_unknownFields = y__})
  defMessage
    = StoreInfo'_constructor
        {_StoreInfo'name = Data.ProtoLens.fieldDefault,
         _StoreInfo'commitId = Prelude.Nothing,
         _StoreInfo'_unknownFields = []}
  parseMessage
    = let
        loop :: StoreInfo -> Data.ProtoLens.Encoding.Bytes.Parser StoreInfo
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commit_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"commitId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StoreInfo"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'commitId") _x
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
instance Control.DeepSeq.NFData StoreInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StoreInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StoreInfo'name x__)
                (Control.DeepSeq.deepseq (_StoreInfo'commitId x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&cosmos/store/v1beta1/commit_info.proto\DC2\DC4cosmos.store.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\"\178\SOH\n\
    \\n\
    \CommitInfo\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2F\n\
    \\vstore_infos\CAN\STX \ETX(\v2\US.cosmos.store.v1beta1.StoreInfoR\n\
    \storeInfosB\EOT\200\222\US\NUL\DC2B\n\
    \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\"b\n\
    \\tStoreInfo\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
    \\tcommit_id\CAN\STX \SOH(\v2\RS.cosmos.store.v1beta1.CommitIDR\bcommitIdB\EOT\200\222\US\NUL\">\n\
    \\bCommitID\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\ETXR\aversion\DC2\DC2\n\
    \\EOThash\CAN\STX \SOH(\fR\EOThash:\EOT\152\160\US\NULB\SUBZ\CANcosmossdk.io/store/typesJ\218\a\n\
    \\ACK\DC2\EOT\NUL\NUL\US\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL/\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NUL/\n\
    \n\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\SI\SOH\SUBb CommitInfo defines commit information used by the multi-store when committing\n\
    \ a version/height.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\FS#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v*+\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\STXK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\f\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f\FS'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f*+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\f,J\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\f-I\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\r\STX\SOA\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\r\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\r\FS%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\r*+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\SO\ACK@\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\SO\a#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\242\251\ETX\DC2\ETX\SO%?\n\
    \\131\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\DC3\NUL\SYN\SOH\SUBw StoreInfo defines store-specific commit information. It contains a reference\n\
    \ between a store name and the commit ID.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC3\b\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC4\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC4\v\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC4\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\NAK\STX8\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\NAK\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\NAK\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\NAK\EM7\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX\NAK\SUB6\n\
    \^\n\
    \\STX\EOT\STX\DC2\EOT\SUB\NUL\US\SOH\SUBR CommitID defines the commitment information when a specific store is\n\
    \ committed.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SUB\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX\ESC\STX.\n\
    \\r\n\
    \\ACK\EOT\STX\a\131\244\ETX\DC2\ETX\ESC\STX.\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\GS\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\GS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\GS\b\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\GS\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\RS\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\RS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\RS\b\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\RS\DC2\DC3b\ACKproto3"