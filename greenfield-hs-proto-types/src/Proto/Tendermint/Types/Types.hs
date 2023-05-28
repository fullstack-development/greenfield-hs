{- This file was auto-generated from tendermint/types/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Types (
        BlockID(), BlockMeta(), Commit(), CommitSig(), Data(),
        ExtendedCommit(), ExtendedCommitSig(), Header(), LightBlock(),
        Part(), PartSetHeader(), Proposal(), SignedHeader(),
        SignedMsgType(..), SignedMsgType(),
        SignedMsgType'UnrecognizedValue, TxProof(), Vote()
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
import qualified Proto.Tendermint.Crypto.Proof
import qualified Proto.Tendermint.Types.Validator
import qualified Proto.Tendermint.Version.Types
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.hash' @:: Lens' BlockID Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.partSetHeader' @:: Lens' BlockID PartSetHeader@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'partSetHeader' @:: Lens' BlockID (Prelude.Maybe PartSetHeader)@ -}
data BlockID
  = BlockID'_constructor {_BlockID'hash :: !Data.ByteString.ByteString,
                          _BlockID'partSetHeader :: !(Prelude.Maybe PartSetHeader),
                          _BlockID'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockID where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockID "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockID'hash (\ x__ y__ -> x__ {_BlockID'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockID "partSetHeader" PartSetHeader where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockID'partSetHeader
           (\ x__ y__ -> x__ {_BlockID'partSetHeader = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BlockID "maybe'partSetHeader" (Prelude.Maybe PartSetHeader) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockID'partSetHeader
           (\ x__ y__ -> x__ {_BlockID'partSetHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockID where
  messageName _ = Data.Text.pack "tendermint.types.BlockID"
  packedMessageDescriptor _
    = "\n\
      \\aBlockID\DC2\DC2\n\
      \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2M\n\
      \\SIpart_set_header\CAN\STX \SOH(\v2\US.tendermint.types.PartSetHeaderR\rpartSetHeaderB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor BlockID
        partSetHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "part_set_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PartSetHeader)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'partSetHeader")) ::
              Data.ProtoLens.FieldDescriptor BlockID
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hash__field_descriptor),
           (Data.ProtoLens.Tag 2, partSetHeader__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockID'_unknownFields
        (\ x__ y__ -> x__ {_BlockID'_unknownFields = y__})
  defMessage
    = BlockID'_constructor
        {_BlockID'hash = Data.ProtoLens.fieldDefault,
         _BlockID'partSetHeader = Prelude.Nothing,
         _BlockID'_unknownFields = []}
  parseMessage
    = let
        loop :: BlockID -> Data.ProtoLens.Encoding.Bytes.Parser BlockID
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
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "part_set_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"partSetHeader") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockID"
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
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'partSetHeader") _x
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
instance Control.DeepSeq.NFData BlockID where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockID'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockID'hash x__)
                (Control.DeepSeq.deepseq (_BlockID'partSetHeader x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.blockId' @:: Lens' BlockMeta BlockID@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'blockId' @:: Lens' BlockMeta (Prelude.Maybe BlockID)@
         * 'Proto.Tendermint.Types.Types_Fields.blockSize' @:: Lens' BlockMeta Data.Int.Int64@
         * 'Proto.Tendermint.Types.Types_Fields.header' @:: Lens' BlockMeta Header@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'header' @:: Lens' BlockMeta (Prelude.Maybe Header)@
         * 'Proto.Tendermint.Types.Types_Fields.numTxs' @:: Lens' BlockMeta Data.Int.Int64@ -}
data BlockMeta
  = BlockMeta'_constructor {_BlockMeta'blockId :: !(Prelude.Maybe BlockID),
                            _BlockMeta'blockSize :: !Data.Int.Int64,
                            _BlockMeta'header :: !(Prelude.Maybe Header),
                            _BlockMeta'numTxs :: !Data.Int.Int64,
                            _BlockMeta'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockMeta where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockMeta "blockId" BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMeta'blockId (\ x__ y__ -> x__ {_BlockMeta'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BlockMeta "maybe'blockId" (Prelude.Maybe BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMeta'blockId (\ x__ y__ -> x__ {_BlockMeta'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockMeta "blockSize" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMeta'blockSize
           (\ x__ y__ -> x__ {_BlockMeta'blockSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockMeta "header" Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMeta'header (\ x__ y__ -> x__ {_BlockMeta'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BlockMeta "maybe'header" (Prelude.Maybe Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMeta'header (\ x__ y__ -> x__ {_BlockMeta'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockMeta "numTxs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockMeta'numTxs (\ x__ y__ -> x__ {_BlockMeta'numTxs = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockMeta where
  messageName _ = Data.Text.pack "tendermint.types.BlockMeta"
  packedMessageDescriptor _
    = "\n\
      \\tBlockMeta\DC2E\n\
      \\bblock_id\CAN\SOH \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2\GS\n\
      \\n\
      \block_size\CAN\STX \SOH(\ETXR\tblockSize\DC26\n\
      \\ACKheader\CAN\ETX \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheaderB\EOT\200\222\US\NUL\DC2\ETB\n\
      \\anum_txs\CAN\EOT \SOH(\ETXR\ACKnumTxs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor BlockMeta
        blockSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockSize")) ::
              Data.ProtoLens.FieldDescriptor BlockMeta
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor BlockMeta
        numTxs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_txs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"numTxs")) ::
              Data.ProtoLens.FieldDescriptor BlockMeta
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockId__field_descriptor),
           (Data.ProtoLens.Tag 2, blockSize__field_descriptor),
           (Data.ProtoLens.Tag 3, header__field_descriptor),
           (Data.ProtoLens.Tag 4, numTxs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockMeta'_unknownFields
        (\ x__ y__ -> x__ {_BlockMeta'_unknownFields = y__})
  defMessage
    = BlockMeta'_constructor
        {_BlockMeta'blockId = Prelude.Nothing,
         _BlockMeta'blockSize = Data.ProtoLens.fieldDefault,
         _BlockMeta'header = Prelude.Nothing,
         _BlockMeta'numTxs = Data.ProtoLens.fieldDefault,
         _BlockMeta'_unknownFields = []}
  parseMessage
    = let
        loop :: BlockMeta -> Data.ProtoLens.Encoding.Bytes.Parser BlockMeta
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
                                       "block_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "block_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockSize") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "num_txs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"numTxs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockMeta"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"blockSize") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"numTxs") _x
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
instance Control.DeepSeq.NFData BlockMeta where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockMeta'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockMeta'blockId x__)
                (Control.DeepSeq.deepseq
                   (_BlockMeta'blockSize x__)
                   (Control.DeepSeq.deepseq
                      (_BlockMeta'header x__)
                      (Control.DeepSeq.deepseq (_BlockMeta'numTxs x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.height' @:: Lens' Commit Data.Int.Int64@
         * 'Proto.Tendermint.Types.Types_Fields.round' @:: Lens' Commit Data.Int.Int32@
         * 'Proto.Tendermint.Types.Types_Fields.blockId' @:: Lens' Commit BlockID@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'blockId' @:: Lens' Commit (Prelude.Maybe BlockID)@
         * 'Proto.Tendermint.Types.Types_Fields.signatures' @:: Lens' Commit [CommitSig]@
         * 'Proto.Tendermint.Types.Types_Fields.vec'signatures' @:: Lens' Commit (Data.Vector.Vector CommitSig)@ -}
data Commit
  = Commit'_constructor {_Commit'height :: !Data.Int.Int64,
                         _Commit'round :: !Data.Int.Int32,
                         _Commit'blockId :: !(Prelude.Maybe BlockID),
                         _Commit'signatures :: !(Data.Vector.Vector CommitSig),
                         _Commit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Commit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Commit "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commit'height (\ x__ y__ -> x__ {_Commit'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Commit "round" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commit'round (\ x__ y__ -> x__ {_Commit'round = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Commit "blockId" BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commit'blockId (\ x__ y__ -> x__ {_Commit'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Commit "maybe'blockId" (Prelude.Maybe BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commit'blockId (\ x__ y__ -> x__ {_Commit'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Commit "signatures" [CommitSig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commit'signatures (\ x__ y__ -> x__ {_Commit'signatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Commit "vec'signatures" (Data.Vector.Vector CommitSig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commit'signatures (\ x__ y__ -> x__ {_Commit'signatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message Commit where
  messageName _ = Data.Text.pack "tendermint.types.Commit"
  packedMessageDescriptor _
    = "\n\
      \\ACKCommit\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\DC4\n\
      \\ENQround\CAN\STX \SOH(\ENQR\ENQround\DC2E\n\
      \\bblock_id\CAN\ETX \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2A\n\
      \\n\
      \signatures\CAN\EOT \ETX(\v2\ESC.tendermint.types.CommitSigR\n\
      \signaturesB\EOT\200\222\US\NUL"
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
              Data.ProtoLens.FieldDescriptor Commit
        round__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "round"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"round")) ::
              Data.ProtoLens.FieldDescriptor Commit
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor Commit
        signatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signatures"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommitSig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signatures")) ::
              Data.ProtoLens.FieldDescriptor Commit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, round__field_descriptor),
           (Data.ProtoLens.Tag 3, blockId__field_descriptor),
           (Data.ProtoLens.Tag 4, signatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Commit'_unknownFields
        (\ x__ y__ -> x__ {_Commit'_unknownFields = y__})
  defMessage
    = Commit'_constructor
        {_Commit'height = Data.ProtoLens.fieldDefault,
         _Commit'round = Data.ProtoLens.fieldDefault,
         _Commit'blockId = Prelude.Nothing,
         _Commit'signatures = Data.Vector.Generic.empty,
         _Commit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Commit
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CommitSig
             -> Data.ProtoLens.Encoding.Bytes.Parser Commit
        loop x mutable'signatures
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'signatures)
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
                              (Data.ProtoLens.Field.field @"vec'signatures") frozen'signatures
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                                  mutable'signatures
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "round"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"round") y x)
                                  mutable'signatures
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                                  mutable'signatures
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "signatures"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'signatures y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'signatures
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'signatures)
          "Commit"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"round") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'signatures") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Commit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Commit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Commit'height x__)
                (Control.DeepSeq.deepseq
                   (_Commit'round x__)
                   (Control.DeepSeq.deepseq
                      (_Commit'blockId x__)
                      (Control.DeepSeq.deepseq (_Commit'signatures x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.blockIdFlag' @:: Lens' CommitSig Proto.Tendermint.Types.Validator.BlockIDFlag@
         * 'Proto.Tendermint.Types.Types_Fields.validatorAddress' @:: Lens' CommitSig Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.timestamp' @:: Lens' CommitSig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'timestamp' @:: Lens' CommitSig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Types.Types_Fields.signature' @:: Lens' CommitSig Data.ByteString.ByteString@ -}
data CommitSig
  = CommitSig'_constructor {_CommitSig'blockIdFlag :: !Proto.Tendermint.Types.Validator.BlockIDFlag,
                            _CommitSig'validatorAddress :: !Data.ByteString.ByteString,
                            _CommitSig'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                            _CommitSig'signature :: !Data.ByteString.ByteString,
                            _CommitSig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommitSig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommitSig "blockIdFlag" Proto.Tendermint.Types.Validator.BlockIDFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitSig'blockIdFlag
           (\ x__ y__ -> x__ {_CommitSig'blockIdFlag = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitSig "validatorAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitSig'validatorAddress
           (\ x__ y__ -> x__ {_CommitSig'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitSig "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitSig'timestamp
           (\ x__ y__ -> x__ {_CommitSig'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommitSig "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitSig'timestamp
           (\ x__ y__ -> x__ {_CommitSig'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitSig "signature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitSig'signature
           (\ x__ y__ -> x__ {_CommitSig'signature = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommitSig where
  messageName _ = Data.Text.pack "tendermint.types.CommitSig"
  packedMessageDescriptor _
    = "\n\
      \\tCommitSig\DC2A\n\
      \\rblock_id_flag\CAN\SOH \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlag\DC2+\n\
      \\DC1validator_address\CAN\STX \SOH(\fR\DLEvalidatorAddress\DC2B\n\
      \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2\FS\n\
      \\tsignature\CAN\EOT \SOH(\fR\tsignature"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockIdFlag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id_flag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Validator.BlockIDFlag)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockIdFlag")) ::
              Data.ProtoLens.FieldDescriptor CommitSig
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor CommitSig
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor CommitSig
        signature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signature")) ::
              Data.ProtoLens.FieldDescriptor CommitSig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockIdFlag__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 4, signature__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommitSig'_unknownFields
        (\ x__ y__ -> x__ {_CommitSig'_unknownFields = y__})
  defMessage
    = CommitSig'_constructor
        {_CommitSig'blockIdFlag = Data.ProtoLens.fieldDefault,
         _CommitSig'validatorAddress = Data.ProtoLens.fieldDefault,
         _CommitSig'timestamp = Prelude.Nothing,
         _CommitSig'signature = Data.ProtoLens.fieldDefault,
         _CommitSig'_unknownFields = []}
  parseMessage
    = let
        loop :: CommitSig -> Data.ProtoLens.Encoding.Bytes.Parser CommitSig
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "block_id_flag"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockIdFlag") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
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
                                       "signature"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signature") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CommitSig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"blockIdFlag") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"validatorAddress") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"signature") _x
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
instance Control.DeepSeq.NFData CommitSig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommitSig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommitSig'blockIdFlag x__)
                (Control.DeepSeq.deepseq
                   (_CommitSig'validatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_CommitSig'timestamp x__)
                      (Control.DeepSeq.deepseq (_CommitSig'signature x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.txs' @:: Lens' Data [Data.ByteString.ByteString]@
         * 'Proto.Tendermint.Types.Types_Fields.vec'txs' @:: Lens' Data (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data Data
  = Data'_constructor {_Data'txs :: !(Data.Vector.Vector Data.ByteString.ByteString),
                       _Data'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Data where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Data "txs" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Data'txs (\ x__ y__ -> x__ {_Data'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Data "vec'txs" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Data'txs (\ x__ y__ -> x__ {_Data'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Message Data where
  messageName _ = Data.Text.pack "tendermint.types.Data"
  packedMessageDescriptor _
    = "\n\
      \\EOTData\DC2\DLE\n\
      \\ETXtxs\CAN\SOH \ETX(\fR\ETXtxs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        txs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "txs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"txs")) ::
              Data.ProtoLens.FieldDescriptor Data
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, txs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Data'_unknownFields
        (\ x__ y__ -> x__ {_Data'_unknownFields = y__})
  defMessage
    = Data'_constructor
        {_Data'txs = Data.Vector.Generic.empty, _Data'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Data
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser Data
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
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "txs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'txs y)
                                loop x v
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
          "Data"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'txs") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Data where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Data'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Data'txs x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.height' @:: Lens' ExtendedCommit Data.Int.Int64@
         * 'Proto.Tendermint.Types.Types_Fields.round' @:: Lens' ExtendedCommit Data.Int.Int32@
         * 'Proto.Tendermint.Types.Types_Fields.blockId' @:: Lens' ExtendedCommit BlockID@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'blockId' @:: Lens' ExtendedCommit (Prelude.Maybe BlockID)@
         * 'Proto.Tendermint.Types.Types_Fields.extendedSignatures' @:: Lens' ExtendedCommit [ExtendedCommitSig]@
         * 'Proto.Tendermint.Types.Types_Fields.vec'extendedSignatures' @:: Lens' ExtendedCommit (Data.Vector.Vector ExtendedCommitSig)@ -}
data ExtendedCommit
  = ExtendedCommit'_constructor {_ExtendedCommit'height :: !Data.Int.Int64,
                                 _ExtendedCommit'round :: !Data.Int.Int32,
                                 _ExtendedCommit'blockId :: !(Prelude.Maybe BlockID),
                                 _ExtendedCommit'extendedSignatures :: !(Data.Vector.Vector ExtendedCommitSig),
                                 _ExtendedCommit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtendedCommit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtendedCommit "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommit'height
           (\ x__ y__ -> x__ {_ExtendedCommit'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommit "round" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommit'round
           (\ x__ y__ -> x__ {_ExtendedCommit'round = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommit "blockId" BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommit'blockId
           (\ x__ y__ -> x__ {_ExtendedCommit'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtendedCommit "maybe'blockId" (Prelude.Maybe BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommit'blockId
           (\ x__ y__ -> x__ {_ExtendedCommit'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommit "extendedSignatures" [ExtendedCommitSig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommit'extendedSignatures
           (\ x__ y__ -> x__ {_ExtendedCommit'extendedSignatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExtendedCommit "vec'extendedSignatures" (Data.Vector.Vector ExtendedCommitSig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommit'extendedSignatures
           (\ x__ y__ -> x__ {_ExtendedCommit'extendedSignatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtendedCommit where
  messageName _ = Data.Text.pack "tendermint.types.ExtendedCommit"
  packedMessageDescriptor _
    = "\n\
      \\SOExtendedCommit\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\DC4\n\
      \\ENQround\CAN\STX \SOH(\ENQR\ENQround\DC2E\n\
      \\bblock_id\CAN\ETX \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2Z\n\
      \\DC3extended_signatures\CAN\EOT \ETX(\v2#.tendermint.types.ExtendedCommitSigR\DC2extendedSignaturesB\EOT\200\222\US\NUL"
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
              Data.ProtoLens.FieldDescriptor ExtendedCommit
        round__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "round"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"round")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommit
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommit
        extendedSignatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extended_signatures"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExtendedCommitSig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extendedSignatures")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, round__field_descriptor),
           (Data.ProtoLens.Tag 3, blockId__field_descriptor),
           (Data.ProtoLens.Tag 4, extendedSignatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtendedCommit'_unknownFields
        (\ x__ y__ -> x__ {_ExtendedCommit'_unknownFields = y__})
  defMessage
    = ExtendedCommit'_constructor
        {_ExtendedCommit'height = Data.ProtoLens.fieldDefault,
         _ExtendedCommit'round = Data.ProtoLens.fieldDefault,
         _ExtendedCommit'blockId = Prelude.Nothing,
         _ExtendedCommit'extendedSignatures = Data.Vector.Generic.empty,
         _ExtendedCommit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtendedCommit
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ExtendedCommitSig
             -> Data.ProtoLens.Encoding.Bytes.Parser ExtendedCommit
        loop x mutable'extendedSignatures
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'extendedSignatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'extendedSignatures)
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
                              (Data.ProtoLens.Field.field @"vec'extendedSignatures")
                              frozen'extendedSignatures x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                                  mutable'extendedSignatures
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "round"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"round") y x)
                                  mutable'extendedSignatures
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                                  mutable'extendedSignatures
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "extended_signatures"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extendedSignatures y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'extendedSignatures
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'extendedSignatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'extendedSignatures)
          "ExtendedCommit"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"round") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'extendedSignatures") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ExtendedCommit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtendedCommit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtendedCommit'height x__)
                (Control.DeepSeq.deepseq
                   (_ExtendedCommit'round x__)
                   (Control.DeepSeq.deepseq
                      (_ExtendedCommit'blockId x__)
                      (Control.DeepSeq.deepseq
                         (_ExtendedCommit'extendedSignatures x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.blockIdFlag' @:: Lens' ExtendedCommitSig Proto.Tendermint.Types.Validator.BlockIDFlag@
         * 'Proto.Tendermint.Types.Types_Fields.validatorAddress' @:: Lens' ExtendedCommitSig Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.timestamp' @:: Lens' ExtendedCommitSig Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'timestamp' @:: Lens' ExtendedCommitSig (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Types.Types_Fields.signature' @:: Lens' ExtendedCommitSig Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.extension' @:: Lens' ExtendedCommitSig Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.extensionSignature' @:: Lens' ExtendedCommitSig Data.ByteString.ByteString@ -}
data ExtendedCommitSig
  = ExtendedCommitSig'_constructor {_ExtendedCommitSig'blockIdFlag :: !Proto.Tendermint.Types.Validator.BlockIDFlag,
                                    _ExtendedCommitSig'validatorAddress :: !Data.ByteString.ByteString,
                                    _ExtendedCommitSig'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                    _ExtendedCommitSig'signature :: !Data.ByteString.ByteString,
                                    _ExtendedCommitSig'extension :: !Data.ByteString.ByteString,
                                    _ExtendedCommitSig'extensionSignature :: !Data.ByteString.ByteString,
                                    _ExtendedCommitSig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtendedCommitSig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtendedCommitSig "blockIdFlag" Proto.Tendermint.Types.Validator.BlockIDFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitSig'blockIdFlag
           (\ x__ y__ -> x__ {_ExtendedCommitSig'blockIdFlag = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommitSig "validatorAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitSig'validatorAddress
           (\ x__ y__ -> x__ {_ExtendedCommitSig'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommitSig "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitSig'timestamp
           (\ x__ y__ -> x__ {_ExtendedCommitSig'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtendedCommitSig "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitSig'timestamp
           (\ x__ y__ -> x__ {_ExtendedCommitSig'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommitSig "signature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitSig'signature
           (\ x__ y__ -> x__ {_ExtendedCommitSig'signature = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommitSig "extension" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitSig'extension
           (\ x__ y__ -> x__ {_ExtendedCommitSig'extension = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommitSig "extensionSignature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitSig'extensionSignature
           (\ x__ y__ -> x__ {_ExtendedCommitSig'extensionSignature = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtendedCommitSig where
  messageName _ = Data.Text.pack "tendermint.types.ExtendedCommitSig"
  packedMessageDescriptor _
    = "\n\
      \\DC1ExtendedCommitSig\DC2A\n\
      \\rblock_id_flag\CAN\SOH \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlag\DC2+\n\
      \\DC1validator_address\CAN\STX \SOH(\fR\DLEvalidatorAddress\DC2B\n\
      \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2\FS\n\
      \\tsignature\CAN\EOT \SOH(\fR\tsignature\DC2\FS\n\
      \\textension\CAN\ENQ \SOH(\fR\textension\DC2/\n\
      \\DC3extension_signature\CAN\ACK \SOH(\fR\DC2extensionSignature"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockIdFlag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id_flag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Validator.BlockIDFlag)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockIdFlag")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitSig
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitSig
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitSig
        signature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signature")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitSig
        extension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extension")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitSig
        extensionSignature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extensionSignature")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitSig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockIdFlag__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 4, signature__field_descriptor),
           (Data.ProtoLens.Tag 5, extension__field_descriptor),
           (Data.ProtoLens.Tag 6, extensionSignature__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtendedCommitSig'_unknownFields
        (\ x__ y__ -> x__ {_ExtendedCommitSig'_unknownFields = y__})
  defMessage
    = ExtendedCommitSig'_constructor
        {_ExtendedCommitSig'blockIdFlag = Data.ProtoLens.fieldDefault,
         _ExtendedCommitSig'validatorAddress = Data.ProtoLens.fieldDefault,
         _ExtendedCommitSig'timestamp = Prelude.Nothing,
         _ExtendedCommitSig'signature = Data.ProtoLens.fieldDefault,
         _ExtendedCommitSig'extension = Data.ProtoLens.fieldDefault,
         _ExtendedCommitSig'extensionSignature = Data.ProtoLens.fieldDefault,
         _ExtendedCommitSig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtendedCommitSig
          -> Data.ProtoLens.Encoding.Bytes.Parser ExtendedCommitSig
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "block_id_flag"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockIdFlag") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
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
                                       "signature"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signature") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "extension"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"extension") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "extension_signature"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionSignature") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtendedCommitSig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"blockIdFlag") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"validatorAddress") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"signature") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"extension") _x
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
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"extensionSignature") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ExtendedCommitSig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtendedCommitSig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtendedCommitSig'blockIdFlag x__)
                (Control.DeepSeq.deepseq
                   (_ExtendedCommitSig'validatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_ExtendedCommitSig'timestamp x__)
                      (Control.DeepSeq.deepseq
                         (_ExtendedCommitSig'signature x__)
                         (Control.DeepSeq.deepseq
                            (_ExtendedCommitSig'extension x__)
                            (Control.DeepSeq.deepseq
                               (_ExtendedCommitSig'extensionSignature x__) ()))))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.version' @:: Lens' Header Proto.Tendermint.Version.Types.Consensus@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'version' @:: Lens' Header (Prelude.Maybe Proto.Tendermint.Version.Types.Consensus)@
         * 'Proto.Tendermint.Types.Types_Fields.chainId' @:: Lens' Header Data.Text.Text@
         * 'Proto.Tendermint.Types.Types_Fields.height' @:: Lens' Header Data.Int.Int64@
         * 'Proto.Tendermint.Types.Types_Fields.time' @:: Lens' Header Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'time' @:: Lens' Header (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Types.Types_Fields.lastBlockId' @:: Lens' Header BlockID@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'lastBlockId' @:: Lens' Header (Prelude.Maybe BlockID)@
         * 'Proto.Tendermint.Types.Types_Fields.lastCommitHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.dataHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.validatorsHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.nextValidatorsHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.consensusHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.appHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.lastResultsHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.evidenceHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.proposerAddress' @:: Lens' Header Data.ByteString.ByteString@ -}
data Header
  = Header'_constructor {_Header'version :: !(Prelude.Maybe Proto.Tendermint.Version.Types.Consensus),
                         _Header'chainId :: !Data.Text.Text,
                         _Header'height :: !Data.Int.Int64,
                         _Header'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                         _Header'lastBlockId :: !(Prelude.Maybe BlockID),
                         _Header'lastCommitHash :: !Data.ByteString.ByteString,
                         _Header'dataHash :: !Data.ByteString.ByteString,
                         _Header'validatorsHash :: !Data.ByteString.ByteString,
                         _Header'nextValidatorsHash :: !Data.ByteString.ByteString,
                         _Header'consensusHash :: !Data.ByteString.ByteString,
                         _Header'appHash :: !Data.ByteString.ByteString,
                         _Header'lastResultsHash :: !Data.ByteString.ByteString,
                         _Header'evidenceHash :: !Data.ByteString.ByteString,
                         _Header'proposerAddress :: !Data.ByteString.ByteString,
                         _Header'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Header where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Header "version" Proto.Tendermint.Version.Types.Consensus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'version (\ x__ y__ -> x__ {_Header'version = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Header "maybe'version" (Prelude.Maybe Proto.Tendermint.Version.Types.Consensus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'version (\ x__ y__ -> x__ {_Header'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "chainId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'chainId (\ x__ y__ -> x__ {_Header'chainId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'height (\ x__ y__ -> x__ {_Header'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'time (\ x__ y__ -> x__ {_Header'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Header "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'time (\ x__ y__ -> x__ {_Header'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "lastBlockId" BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'lastBlockId (\ x__ y__ -> x__ {_Header'lastBlockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Header "maybe'lastBlockId" (Prelude.Maybe BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'lastBlockId (\ x__ y__ -> x__ {_Header'lastBlockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "lastCommitHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'lastCommitHash
           (\ x__ y__ -> x__ {_Header'lastCommitHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "dataHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'dataHash (\ x__ y__ -> x__ {_Header'dataHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "validatorsHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'validatorsHash
           (\ x__ y__ -> x__ {_Header'validatorsHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "nextValidatorsHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'nextValidatorsHash
           (\ x__ y__ -> x__ {_Header'nextValidatorsHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "consensusHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'consensusHash
           (\ x__ y__ -> x__ {_Header'consensusHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "appHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'appHash (\ x__ y__ -> x__ {_Header'appHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "lastResultsHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'lastResultsHash
           (\ x__ y__ -> x__ {_Header'lastResultsHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "evidenceHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'evidenceHash
           (\ x__ y__ -> x__ {_Header'evidenceHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Header "proposerAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'proposerAddress
           (\ x__ y__ -> x__ {_Header'proposerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message Header where
  messageName _ = Data.Text.pack "tendermint.types.Header"
  packedMessageDescriptor _
    = "\n\
      \\ACKHeader\DC2=\n\
      \\aversion\CAN\SOH \SOH(\v2\GS.tendermint.version.ConsensusR\aversionB\EOT\200\222\US\NUL\DC2&\n\
      \\bchain_id\CAN\STX \SOH(\tR\achainIdB\v\226\222\US\aChainID\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC28\n\
      \\EOTtime\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC2C\n\
      \\rlast_block_id\CAN\ENQ \SOH(\v2\EM.tendermint.types.BlockIDR\vlastBlockIdB\EOT\200\222\US\NUL\DC2(\n\
      \\DLElast_commit_hash\CAN\ACK \SOH(\fR\SOlastCommitHash\DC2\ESC\n\
      \\tdata_hash\CAN\a \SOH(\fR\bdataHash\DC2'\n\
      \\SIvalidators_hash\CAN\b \SOH(\fR\SOvalidatorsHash\DC20\n\
      \\DC4next_validators_hash\CAN\t \SOH(\fR\DC2nextValidatorsHash\DC2%\n\
      \\SOconsensus_hash\CAN\n\
      \ \SOH(\fR\rconsensusHash\DC2\EM\n\
      \\bapp_hash\CAN\v \SOH(\fR\aappHash\DC2*\n\
      \\DC1last_results_hash\CAN\f \SOH(\fR\SIlastResultsHash\DC2#\n\
      \\revidence_hash\CAN\r \SOH(\fR\fevidenceHash\DC2)\n\
      \\DLEproposer_address\CAN\SO \SOH(\fR\SIproposerAddress"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Version.Types.Consensus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'version")) ::
              Data.ProtoLens.FieldDescriptor Header
        chainId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chain_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chainId")) ::
              Data.ProtoLens.FieldDescriptor Header
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Header
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor Header
        lastBlockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastBlockId")) ::
              Data.ProtoLens.FieldDescriptor Header
        lastCommitHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_commit_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastCommitHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        dataHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dataHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        validatorsHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorsHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        nextValidatorsHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_validators_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nextValidatorsHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        consensusHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consensus_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"consensusHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        appHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"appHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        lastResultsHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_results_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastResultsHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        evidenceHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"evidenceHash")) ::
              Data.ProtoLens.FieldDescriptor Header
        proposerAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposerAddress")) ::
              Data.ProtoLens.FieldDescriptor Header
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, chainId__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor),
           (Data.ProtoLens.Tag 4, time__field_descriptor),
           (Data.ProtoLens.Tag 5, lastBlockId__field_descriptor),
           (Data.ProtoLens.Tag 6, lastCommitHash__field_descriptor),
           (Data.ProtoLens.Tag 7, dataHash__field_descriptor),
           (Data.ProtoLens.Tag 8, validatorsHash__field_descriptor),
           (Data.ProtoLens.Tag 9, nextValidatorsHash__field_descriptor),
           (Data.ProtoLens.Tag 10, consensusHash__field_descriptor),
           (Data.ProtoLens.Tag 11, appHash__field_descriptor),
           (Data.ProtoLens.Tag 12, lastResultsHash__field_descriptor),
           (Data.ProtoLens.Tag 13, evidenceHash__field_descriptor),
           (Data.ProtoLens.Tag 14, proposerAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Header'_unknownFields
        (\ x__ y__ -> x__ {_Header'_unknownFields = y__})
  defMessage
    = Header'_constructor
        {_Header'version = Prelude.Nothing,
         _Header'chainId = Data.ProtoLens.fieldDefault,
         _Header'height = Data.ProtoLens.fieldDefault,
         _Header'time = Prelude.Nothing,
         _Header'lastBlockId = Prelude.Nothing,
         _Header'lastCommitHash = Data.ProtoLens.fieldDefault,
         _Header'dataHash = Data.ProtoLens.fieldDefault,
         _Header'validatorsHash = Data.ProtoLens.fieldDefault,
         _Header'nextValidatorsHash = Data.ProtoLens.fieldDefault,
         _Header'consensusHash = Data.ProtoLens.fieldDefault,
         _Header'appHash = Data.ProtoLens.fieldDefault,
         _Header'lastResultsHash = Data.ProtoLens.fieldDefault,
         _Header'evidenceHash = Data.ProtoLens.fieldDefault,
         _Header'proposerAddress = Data.ProtoLens.fieldDefault,
         _Header'_unknownFields = []}
  parseMessage
    = let
        loop :: Header -> Data.ProtoLens.Encoding.Bytes.Parser Header
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
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
                                       "chain_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chainId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_block_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastBlockId") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "last_commit_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastCommitHash") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataHash") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "validators_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorsHash") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "next_validators_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextValidatorsHash") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "consensus_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consensusHash") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "app_hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appHash") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "last_results_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastResultsHash") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "evidence_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"evidenceHash") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "proposer_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposerAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Header"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'version") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chainId") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                                (Data.ProtoLens.Field.field @"maybe'lastBlockId") _x
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
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"lastCommitHash") _x
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
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"dataHash") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"validatorsHash") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"nextValidatorsHash") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"consensusHash") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"appHash") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                       _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"lastResultsHash")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"evidenceHash")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             106)
                                                          ((\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                             _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"proposerAddress")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                114)
                                                             ((\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                                _v))
                                                    (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                       (Lens.Family2.view
                                                          Data.ProtoLens.unknownFields
                                                          _x)))))))))))))))
instance Control.DeepSeq.NFData Header where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Header'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Header'version x__)
                (Control.DeepSeq.deepseq
                   (_Header'chainId x__)
                   (Control.DeepSeq.deepseq
                      (_Header'height x__)
                      (Control.DeepSeq.deepseq
                         (_Header'time x__)
                         (Control.DeepSeq.deepseq
                            (_Header'lastBlockId x__)
                            (Control.DeepSeq.deepseq
                               (_Header'lastCommitHash x__)
                               (Control.DeepSeq.deepseq
                                  (_Header'dataHash x__)
                                  (Control.DeepSeq.deepseq
                                     (_Header'validatorsHash x__)
                                     (Control.DeepSeq.deepseq
                                        (_Header'nextValidatorsHash x__)
                                        (Control.DeepSeq.deepseq
                                           (_Header'consensusHash x__)
                                           (Control.DeepSeq.deepseq
                                              (_Header'appHash x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Header'lastResultsHash x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Header'evidenceHash x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Header'proposerAddress x__)
                                                       ()))))))))))))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.signedHeader' @:: Lens' LightBlock SignedHeader@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'signedHeader' @:: Lens' LightBlock (Prelude.Maybe SignedHeader)@
         * 'Proto.Tendermint.Types.Types_Fields.validatorSet' @:: Lens' LightBlock Proto.Tendermint.Types.Validator.ValidatorSet@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'validatorSet' @:: Lens' LightBlock (Prelude.Maybe Proto.Tendermint.Types.Validator.ValidatorSet)@ -}
data LightBlock
  = LightBlock'_constructor {_LightBlock'signedHeader :: !(Prelude.Maybe SignedHeader),
                             _LightBlock'validatorSet :: !(Prelude.Maybe Proto.Tendermint.Types.Validator.ValidatorSet),
                             _LightBlock'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LightBlock where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LightBlock "signedHeader" SignedHeader where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightBlock'signedHeader
           (\ x__ y__ -> x__ {_LightBlock'signedHeader = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LightBlock "maybe'signedHeader" (Prelude.Maybe SignedHeader) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightBlock'signedHeader
           (\ x__ y__ -> x__ {_LightBlock'signedHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightBlock "validatorSet" Proto.Tendermint.Types.Validator.ValidatorSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightBlock'validatorSet
           (\ x__ y__ -> x__ {_LightBlock'validatorSet = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LightBlock "maybe'validatorSet" (Prelude.Maybe Proto.Tendermint.Types.Validator.ValidatorSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightBlock'validatorSet
           (\ x__ y__ -> x__ {_LightBlock'validatorSet = y__}))
        Prelude.id
instance Data.ProtoLens.Message LightBlock where
  messageName _ = Data.Text.pack "tendermint.types.LightBlock"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \LightBlock\DC2C\n\
      \\rsigned_header\CAN\SOH \SOH(\v2\RS.tendermint.types.SignedHeaderR\fsignedHeader\DC2C\n\
      \\rvalidator_set\CAN\STX \SOH(\v2\RS.tendermint.types.ValidatorSetR\fvalidatorSet"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signedHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signed_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignedHeader)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'signedHeader")) ::
              Data.ProtoLens.FieldDescriptor LightBlock
        validatorSet__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_set"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Validator.ValidatorSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validatorSet")) ::
              Data.ProtoLens.FieldDescriptor LightBlock
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signedHeader__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorSet__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LightBlock'_unknownFields
        (\ x__ y__ -> x__ {_LightBlock'_unknownFields = y__})
  defMessage
    = LightBlock'_constructor
        {_LightBlock'signedHeader = Prelude.Nothing,
         _LightBlock'validatorSet = Prelude.Nothing,
         _LightBlock'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LightBlock -> Data.ProtoLens.Encoding.Bytes.Parser LightBlock
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
                                       "signed_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"signedHeader") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validator_set"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorSet") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LightBlock"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'signedHeader") _x
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
                       (Data.ProtoLens.Field.field @"maybe'validatorSet") _x
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
instance Control.DeepSeq.NFData LightBlock where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LightBlock'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LightBlock'signedHeader x__)
                (Control.DeepSeq.deepseq (_LightBlock'validatorSet x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.index' @:: Lens' Part Data.Word.Word32@
         * 'Proto.Tendermint.Types.Types_Fields.bytes' @:: Lens' Part Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.proof' @:: Lens' Part Proto.Tendermint.Crypto.Proof.Proof@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'proof' @:: Lens' Part (Prelude.Maybe Proto.Tendermint.Crypto.Proof.Proof)@ -}
data Part
  = Part'_constructor {_Part'index :: !Data.Word.Word32,
                       _Part'bytes :: !Data.ByteString.ByteString,
                       _Part'proof :: !(Prelude.Maybe Proto.Tendermint.Crypto.Proof.Proof),
                       _Part'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Part where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Part "index" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Part'index (\ x__ y__ -> x__ {_Part'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Part "bytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Part'bytes (\ x__ y__ -> x__ {_Part'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Part "proof" Proto.Tendermint.Crypto.Proof.Proof where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Part'proof (\ x__ y__ -> x__ {_Part'proof = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Part "maybe'proof" (Prelude.Maybe Proto.Tendermint.Crypto.Proof.Proof) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Part'proof (\ x__ y__ -> x__ {_Part'proof = y__}))
        Prelude.id
instance Data.ProtoLens.Message Part where
  messageName _ = Data.Text.pack "tendermint.types.Part"
  packedMessageDescriptor _
    = "\n\
      \\EOTPart\DC2\DC4\n\
      \\ENQindex\CAN\SOH \SOH(\rR\ENQindex\DC2\DC4\n\
      \\ENQbytes\CAN\STX \SOH(\fR\ENQbytes\DC24\n\
      \\ENQproof\CAN\ETX \SOH(\v2\CAN.tendermint.crypto.ProofR\ENQproofB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor Part
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"bytes")) ::
              Data.ProtoLens.FieldDescriptor Part
        proof__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proof"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Crypto.Proof.Proof)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proof")) ::
              Data.ProtoLens.FieldDescriptor Part
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, index__field_descriptor),
           (Data.ProtoLens.Tag 2, bytes__field_descriptor),
           (Data.ProtoLens.Tag 3, proof__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Part'_unknownFields
        (\ x__ y__ -> x__ {_Part'_unknownFields = y__})
  defMessage
    = Part'_constructor
        {_Part'index = Data.ProtoLens.fieldDefault,
         _Part'bytes = Data.ProtoLens.fieldDefault,
         _Part'proof = Prelude.Nothing, _Part'_unknownFields = []}
  parseMessage
    = let
        loop :: Part -> Data.ProtoLens.Encoding.Bytes.Parser Part
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
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proof"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"proof") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Part"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bytes") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proof") _x
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
instance Control.DeepSeq.NFData Part where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Part'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Part'index x__)
                (Control.DeepSeq.deepseq
                   (_Part'bytes x__) (Control.DeepSeq.deepseq (_Part'proof x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.total' @:: Lens' PartSetHeader Data.Word.Word32@
         * 'Proto.Tendermint.Types.Types_Fields.hash' @:: Lens' PartSetHeader Data.ByteString.ByteString@ -}
data PartSetHeader
  = PartSetHeader'_constructor {_PartSetHeader'total :: !Data.Word.Word32,
                                _PartSetHeader'hash :: !Data.ByteString.ByteString,
                                _PartSetHeader'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PartSetHeader where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PartSetHeader "total" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PartSetHeader'total
           (\ x__ y__ -> x__ {_PartSetHeader'total = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PartSetHeader "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PartSetHeader'hash (\ x__ y__ -> x__ {_PartSetHeader'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message PartSetHeader where
  messageName _ = Data.Text.pack "tendermint.types.PartSetHeader"
  packedMessageDescriptor _
    = "\n\
      \\rPartSetHeader\DC2\DC4\n\
      \\ENQtotal\CAN\SOH \SOH(\rR\ENQtotal\DC2\DC2\n\
      \\EOThash\CAN\STX \SOH(\fR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        total__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"total")) ::
              Data.ProtoLens.FieldDescriptor PartSetHeader
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor PartSetHeader
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, total__field_descriptor),
           (Data.ProtoLens.Tag 2, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PartSetHeader'_unknownFields
        (\ x__ y__ -> x__ {_PartSetHeader'_unknownFields = y__})
  defMessage
    = PartSetHeader'_constructor
        {_PartSetHeader'total = Data.ProtoLens.fieldDefault,
         _PartSetHeader'hash = Data.ProtoLens.fieldDefault,
         _PartSetHeader'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PartSetHeader -> Data.ProtoLens.Encoding.Bytes.Parser PartSetHeader
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
                                       "total"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"total") y x)
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
          (do loop Data.ProtoLens.defMessage) "PartSetHeader"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"total") _x
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
instance Control.DeepSeq.NFData PartSetHeader where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PartSetHeader'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PartSetHeader'total x__)
                (Control.DeepSeq.deepseq (_PartSetHeader'hash x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.type'' @:: Lens' Proposal SignedMsgType@
         * 'Proto.Tendermint.Types.Types_Fields.height' @:: Lens' Proposal Data.Int.Int64@
         * 'Proto.Tendermint.Types.Types_Fields.round' @:: Lens' Proposal Data.Int.Int32@
         * 'Proto.Tendermint.Types.Types_Fields.polRound' @:: Lens' Proposal Data.Int.Int32@
         * 'Proto.Tendermint.Types.Types_Fields.blockId' @:: Lens' Proposal BlockID@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'blockId' @:: Lens' Proposal (Prelude.Maybe BlockID)@
         * 'Proto.Tendermint.Types.Types_Fields.timestamp' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'timestamp' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Types.Types_Fields.signature' @:: Lens' Proposal Data.ByteString.ByteString@ -}
data Proposal
  = Proposal'_constructor {_Proposal'type' :: !SignedMsgType,
                           _Proposal'height :: !Data.Int.Int64,
                           _Proposal'round :: !Data.Int.Int32,
                           _Proposal'polRound :: !Data.Int.Int32,
                           _Proposal'blockId :: !(Prelude.Maybe BlockID),
                           _Proposal'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'signature :: !Data.ByteString.ByteString,
                           _Proposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Proposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Proposal "type'" SignedMsgType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'type' (\ x__ y__ -> x__ {_Proposal'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'height (\ x__ y__ -> x__ {_Proposal'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "round" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'round (\ x__ y__ -> x__ {_Proposal'round = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "polRound" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'polRound (\ x__ y__ -> x__ {_Proposal'polRound = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "blockId" BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'blockId (\ x__ y__ -> x__ {_Proposal'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'blockId" (Prelude.Maybe BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'blockId (\ x__ y__ -> x__ {_Proposal'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'timestamp (\ x__ y__ -> x__ {_Proposal'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'timestamp (\ x__ y__ -> x__ {_Proposal'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "signature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'signature (\ x__ y__ -> x__ {_Proposal'signature = y__}))
        Prelude.id
instance Data.ProtoLens.Message Proposal where
  messageName _ = Data.Text.pack "tendermint.types.Proposal"
  packedMessageDescriptor _
    = "\n\
      \\bProposal\DC23\n\
      \\EOTtype\CAN\SOH \SOH(\SO2\US.tendermint.types.SignedMsgTypeR\EOTtype\DC2\SYN\n\
      \\ACKheight\CAN\STX \SOH(\ETXR\ACKheight\DC2\DC4\n\
      \\ENQround\CAN\ETX \SOH(\ENQR\ENQround\DC2\ESC\n\
      \\tpol_round\CAN\EOT \SOH(\ENQR\bpolRound\DC2E\n\
      \\bblock_id\CAN\ENQ \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2B\n\
      \\ttimestamp\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2\FS\n\
      \\tsignature\CAN\a \SOH(\fR\tsignature"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor SignedMsgType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        round__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "round"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"round")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        polRound__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pol_round"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"polRound")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        signature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signature")) ::
              Data.ProtoLens.FieldDescriptor Proposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, height__field_descriptor),
           (Data.ProtoLens.Tag 3, round__field_descriptor),
           (Data.ProtoLens.Tag 4, polRound__field_descriptor),
           (Data.ProtoLens.Tag 5, blockId__field_descriptor),
           (Data.ProtoLens.Tag 6, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 7, signature__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Proposal'_unknownFields
        (\ x__ y__ -> x__ {_Proposal'_unknownFields = y__})
  defMessage
    = Proposal'_constructor
        {_Proposal'type' = Data.ProtoLens.fieldDefault,
         _Proposal'height = Data.ProtoLens.fieldDefault,
         _Proposal'round = Data.ProtoLens.fieldDefault,
         _Proposal'polRound = Data.ProtoLens.fieldDefault,
         _Proposal'blockId = Prelude.Nothing,
         _Proposal'timestamp = Prelude.Nothing,
         _Proposal'signature = Data.ProtoLens.fieldDefault,
         _Proposal'_unknownFields = []}
  parseMessage
    = let
        loop :: Proposal -> Data.ProtoLens.Encoding.Bytes.Parser Proposal
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "round"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"round") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pol_round"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"polRound") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "signature"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signature") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Proposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"round") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"polRound") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"signature") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData Proposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Proposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Proposal'type' x__)
                (Control.DeepSeq.deepseq
                   (_Proposal'height x__)
                   (Control.DeepSeq.deepseq
                      (_Proposal'round x__)
                      (Control.DeepSeq.deepseq
                         (_Proposal'polRound x__)
                         (Control.DeepSeq.deepseq
                            (_Proposal'blockId x__)
                            (Control.DeepSeq.deepseq
                               (_Proposal'timestamp x__)
                               (Control.DeepSeq.deepseq (_Proposal'signature x__) ())))))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.header' @:: Lens' SignedHeader Header@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'header' @:: Lens' SignedHeader (Prelude.Maybe Header)@
         * 'Proto.Tendermint.Types.Types_Fields.commit' @:: Lens' SignedHeader Commit@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'commit' @:: Lens' SignedHeader (Prelude.Maybe Commit)@ -}
data SignedHeader
  = SignedHeader'_constructor {_SignedHeader'header :: !(Prelude.Maybe Header),
                               _SignedHeader'commit :: !(Prelude.Maybe Commit),
                               _SignedHeader'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignedHeader where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignedHeader "header" Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignedHeader'header
           (\ x__ y__ -> x__ {_SignedHeader'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignedHeader "maybe'header" (Prelude.Maybe Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignedHeader'header
           (\ x__ y__ -> x__ {_SignedHeader'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignedHeader "commit" Commit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignedHeader'commit
           (\ x__ y__ -> x__ {_SignedHeader'commit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignedHeader "maybe'commit" (Prelude.Maybe Commit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignedHeader'commit
           (\ x__ y__ -> x__ {_SignedHeader'commit = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignedHeader where
  messageName _ = Data.Text.pack "tendermint.types.SignedHeader"
  packedMessageDescriptor _
    = "\n\
      \\fSignedHeader\DC20\n\
      \\ACKheader\CAN\SOH \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheader\DC20\n\
      \\ACKcommit\CAN\STX \SOH(\v2\CAN.tendermint.types.CommitR\ACKcommit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor SignedHeader
        commit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Commit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commit")) ::
              Data.ProtoLens.FieldDescriptor SignedHeader
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, commit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignedHeader'_unknownFields
        (\ x__ y__ -> x__ {_SignedHeader'_unknownFields = y__})
  defMessage
    = SignedHeader'_constructor
        {_SignedHeader'header = Prelude.Nothing,
         _SignedHeader'commit = Prelude.Nothing,
         _SignedHeader'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignedHeader -> Data.ProtoLens.Encoding.Bytes.Parser SignedHeader
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
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"commit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SignedHeader"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'commit") _x
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
instance Control.DeepSeq.NFData SignedHeader where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignedHeader'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignedHeader'header x__)
                (Control.DeepSeq.deepseq (_SignedHeader'commit x__) ()))
newtype SignedMsgType'UnrecognizedValue
  = SignedMsgType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data SignedMsgType
  = SIGNED_MSG_TYPE_UNKNOWN |
    SIGNED_MSG_TYPE_PREVOTE |
    SIGNED_MSG_TYPE_PRECOMMIT |
    SIGNED_MSG_TYPE_PROPOSAL |
    SignedMsgType'Unrecognized !SignedMsgType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum SignedMsgType where
  maybeToEnum 0 = Prelude.Just SIGNED_MSG_TYPE_UNKNOWN
  maybeToEnum 1 = Prelude.Just SIGNED_MSG_TYPE_PREVOTE
  maybeToEnum 2 = Prelude.Just SIGNED_MSG_TYPE_PRECOMMIT
  maybeToEnum 32 = Prelude.Just SIGNED_MSG_TYPE_PROPOSAL
  maybeToEnum k
    = Prelude.Just
        (SignedMsgType'Unrecognized
           (SignedMsgType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum SIGNED_MSG_TYPE_UNKNOWN = "SIGNED_MSG_TYPE_UNKNOWN"
  showEnum SIGNED_MSG_TYPE_PREVOTE = "SIGNED_MSG_TYPE_PREVOTE"
  showEnum SIGNED_MSG_TYPE_PRECOMMIT = "SIGNED_MSG_TYPE_PRECOMMIT"
  showEnum SIGNED_MSG_TYPE_PROPOSAL = "SIGNED_MSG_TYPE_PROPOSAL"
  showEnum
    (SignedMsgType'Unrecognized (SignedMsgType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SIGNED_MSG_TYPE_UNKNOWN"
    = Prelude.Just SIGNED_MSG_TYPE_UNKNOWN
    | (Prelude.==) k "SIGNED_MSG_TYPE_PREVOTE"
    = Prelude.Just SIGNED_MSG_TYPE_PREVOTE
    | (Prelude.==) k "SIGNED_MSG_TYPE_PRECOMMIT"
    = Prelude.Just SIGNED_MSG_TYPE_PRECOMMIT
    | (Prelude.==) k "SIGNED_MSG_TYPE_PROPOSAL"
    = Prelude.Just SIGNED_MSG_TYPE_PROPOSAL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded SignedMsgType where
  minBound = SIGNED_MSG_TYPE_UNKNOWN
  maxBound = SIGNED_MSG_TYPE_PROPOSAL
instance Prelude.Enum SignedMsgType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SignedMsgType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum SIGNED_MSG_TYPE_UNKNOWN = 0
  fromEnum SIGNED_MSG_TYPE_PREVOTE = 1
  fromEnum SIGNED_MSG_TYPE_PRECOMMIT = 2
  fromEnum SIGNED_MSG_TYPE_PROPOSAL = 32
  fromEnum
    (SignedMsgType'Unrecognized (SignedMsgType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SIGNED_MSG_TYPE_PROPOSAL
    = Prelude.error
        "SignedMsgType.succ: bad argument SIGNED_MSG_TYPE_PROPOSAL. This value would be out of bounds."
  succ SIGNED_MSG_TYPE_UNKNOWN = SIGNED_MSG_TYPE_PREVOTE
  succ SIGNED_MSG_TYPE_PREVOTE = SIGNED_MSG_TYPE_PRECOMMIT
  succ SIGNED_MSG_TYPE_PRECOMMIT = SIGNED_MSG_TYPE_PROPOSAL
  succ (SignedMsgType'Unrecognized _)
    = Prelude.error
        "SignedMsgType.succ: bad argument: unrecognized value"
  pred SIGNED_MSG_TYPE_UNKNOWN
    = Prelude.error
        "SignedMsgType.pred: bad argument SIGNED_MSG_TYPE_UNKNOWN. This value would be out of bounds."
  pred SIGNED_MSG_TYPE_PREVOTE = SIGNED_MSG_TYPE_UNKNOWN
  pred SIGNED_MSG_TYPE_PRECOMMIT = SIGNED_MSG_TYPE_PREVOTE
  pred SIGNED_MSG_TYPE_PROPOSAL = SIGNED_MSG_TYPE_PRECOMMIT
  pred (SignedMsgType'Unrecognized _)
    = Prelude.error
        "SignedMsgType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault SignedMsgType where
  fieldDefault = SIGNED_MSG_TYPE_UNKNOWN
instance Control.DeepSeq.NFData SignedMsgType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.rootHash' @:: Lens' TxProof Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.data'' @:: Lens' TxProof Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.proof' @:: Lens' TxProof Proto.Tendermint.Crypto.Proof.Proof@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'proof' @:: Lens' TxProof (Prelude.Maybe Proto.Tendermint.Crypto.Proof.Proof)@ -}
data TxProof
  = TxProof'_constructor {_TxProof'rootHash :: !Data.ByteString.ByteString,
                          _TxProof'data' :: !Data.ByteString.ByteString,
                          _TxProof'proof :: !(Prelude.Maybe Proto.Tendermint.Crypto.Proof.Proof),
                          _TxProof'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxProof where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxProof "rootHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxProof'rootHash (\ x__ y__ -> x__ {_TxProof'rootHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxProof "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxProof'data' (\ x__ y__ -> x__ {_TxProof'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxProof "proof" Proto.Tendermint.Crypto.Proof.Proof where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxProof'proof (\ x__ y__ -> x__ {_TxProof'proof = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxProof "maybe'proof" (Prelude.Maybe Proto.Tendermint.Crypto.Proof.Proof) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxProof'proof (\ x__ y__ -> x__ {_TxProof'proof = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxProof where
  messageName _ = Data.Text.pack "tendermint.types.TxProof"
  packedMessageDescriptor _
    = "\n\
      \\aTxProof\DC2\ESC\n\
      \\troot_hash\CAN\SOH \SOH(\fR\brootHash\DC2\DC2\n\
      \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2.\n\
      \\ENQproof\CAN\ETX \SOH(\v2\CAN.tendermint.crypto.ProofR\ENQproof"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rootHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rootHash")) ::
              Data.ProtoLens.FieldDescriptor TxProof
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor TxProof
        proof__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proof"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Crypto.Proof.Proof)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proof")) ::
              Data.ProtoLens.FieldDescriptor TxProof
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rootHash__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor),
           (Data.ProtoLens.Tag 3, proof__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxProof'_unknownFields
        (\ x__ y__ -> x__ {_TxProof'_unknownFields = y__})
  defMessage
    = TxProof'_constructor
        {_TxProof'rootHash = Data.ProtoLens.fieldDefault,
         _TxProof'data' = Data.ProtoLens.fieldDefault,
         _TxProof'proof = Prelude.Nothing, _TxProof'_unknownFields = []}
  parseMessage
    = let
        loop :: TxProof -> Data.ProtoLens.Encoding.Bytes.Parser TxProof
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
                                       "root_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rootHash") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proof"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"proof") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TxProof"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rootHash") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proof") _x
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
instance Control.DeepSeq.NFData TxProof where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxProof'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxProof'rootHash x__)
                (Control.DeepSeq.deepseq
                   (_TxProof'data' x__)
                   (Control.DeepSeq.deepseq (_TxProof'proof x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Types_Fields.type'' @:: Lens' Vote SignedMsgType@
         * 'Proto.Tendermint.Types.Types_Fields.height' @:: Lens' Vote Data.Int.Int64@
         * 'Proto.Tendermint.Types.Types_Fields.round' @:: Lens' Vote Data.Int.Int32@
         * 'Proto.Tendermint.Types.Types_Fields.blockId' @:: Lens' Vote BlockID@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'blockId' @:: Lens' Vote (Prelude.Maybe BlockID)@
         * 'Proto.Tendermint.Types.Types_Fields.timestamp' @:: Lens' Vote Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Types.Types_Fields.maybe'timestamp' @:: Lens' Vote (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Types.Types_Fields.validatorAddress' @:: Lens' Vote Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.validatorIndex' @:: Lens' Vote Data.Int.Int32@
         * 'Proto.Tendermint.Types.Types_Fields.signature' @:: Lens' Vote Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.extension' @:: Lens' Vote Data.ByteString.ByteString@
         * 'Proto.Tendermint.Types.Types_Fields.extensionSignature' @:: Lens' Vote Data.ByteString.ByteString@ -}
data Vote
  = Vote'_constructor {_Vote'type' :: !SignedMsgType,
                       _Vote'height :: !Data.Int.Int64,
                       _Vote'round :: !Data.Int.Int32,
                       _Vote'blockId :: !(Prelude.Maybe BlockID),
                       _Vote'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                       _Vote'validatorAddress :: !Data.ByteString.ByteString,
                       _Vote'validatorIndex :: !Data.Int.Int32,
                       _Vote'signature :: !Data.ByteString.ByteString,
                       _Vote'extension :: !Data.ByteString.ByteString,
                       _Vote'extensionSignature :: !Data.ByteString.ByteString,
                       _Vote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vote "type'" SignedMsgType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'type' (\ x__ y__ -> x__ {_Vote'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'height (\ x__ y__ -> x__ {_Vote'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "round" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'round (\ x__ y__ -> x__ {_Vote'round = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "blockId" BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'blockId (\ x__ y__ -> x__ {_Vote'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Vote "maybe'blockId" (Prelude.Maybe BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'blockId (\ x__ y__ -> x__ {_Vote'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'timestamp (\ x__ y__ -> x__ {_Vote'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Vote "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'timestamp (\ x__ y__ -> x__ {_Vote'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "validatorAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'validatorAddress
           (\ x__ y__ -> x__ {_Vote'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "validatorIndex" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'validatorIndex
           (\ x__ y__ -> x__ {_Vote'validatorIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "signature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'signature (\ x__ y__ -> x__ {_Vote'signature = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "extension" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'extension (\ x__ y__ -> x__ {_Vote'extension = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "extensionSignature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'extensionSignature
           (\ x__ y__ -> x__ {_Vote'extensionSignature = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vote where
  messageName _ = Data.Text.pack "tendermint.types.Vote"
  packedMessageDescriptor _
    = "\n\
      \\EOTVote\DC23\n\
      \\EOTtype\CAN\SOH \SOH(\SO2\US.tendermint.types.SignedMsgTypeR\EOTtype\DC2\SYN\n\
      \\ACKheight\CAN\STX \SOH(\ETXR\ACKheight\DC2\DC4\n\
      \\ENQround\CAN\ETX \SOH(\ENQR\ENQround\DC2E\n\
      \\bblock_id\CAN\EOT \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2B\n\
      \\ttimestamp\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2+\n\
      \\DC1validator_address\CAN\ACK \SOH(\fR\DLEvalidatorAddress\DC2'\n\
      \\SIvalidator_index\CAN\a \SOH(\ENQR\SOvalidatorIndex\DC2\FS\n\
      \\tsignature\CAN\b \SOH(\fR\tsignature\DC2\FS\n\
      \\textension\CAN\t \SOH(\fR\textension\DC2/\n\
      \\DC3extension_signature\CAN\n\
      \ \SOH(\fR\DC2extensionSignature"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor SignedMsgType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Vote
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Vote
        round__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "round"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"round")) ::
              Data.ProtoLens.FieldDescriptor Vote
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor Vote
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor Vote
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor Vote
        validatorIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorIndex")) ::
              Data.ProtoLens.FieldDescriptor Vote
        signature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"signature")) ::
              Data.ProtoLens.FieldDescriptor Vote
        extension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extension")) ::
              Data.ProtoLens.FieldDescriptor Vote
        extensionSignature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extensionSignature")) ::
              Data.ProtoLens.FieldDescriptor Vote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, height__field_descriptor),
           (Data.ProtoLens.Tag 3, round__field_descriptor),
           (Data.ProtoLens.Tag 4, blockId__field_descriptor),
           (Data.ProtoLens.Tag 5, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 6, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 7, validatorIndex__field_descriptor),
           (Data.ProtoLens.Tag 8, signature__field_descriptor),
           (Data.ProtoLens.Tag 9, extension__field_descriptor),
           (Data.ProtoLens.Tag 10, extensionSignature__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vote'_unknownFields
        (\ x__ y__ -> x__ {_Vote'_unknownFields = y__})
  defMessage
    = Vote'_constructor
        {_Vote'type' = Data.ProtoLens.fieldDefault,
         _Vote'height = Data.ProtoLens.fieldDefault,
         _Vote'round = Data.ProtoLens.fieldDefault,
         _Vote'blockId = Prelude.Nothing, _Vote'timestamp = Prelude.Nothing,
         _Vote'validatorAddress = Data.ProtoLens.fieldDefault,
         _Vote'validatorIndex = Data.ProtoLens.fieldDefault,
         _Vote'signature = Data.ProtoLens.fieldDefault,
         _Vote'extension = Data.ProtoLens.fieldDefault,
         _Vote'extensionSignature = Data.ProtoLens.fieldDefault,
         _Vote'_unknownFields = []}
  parseMessage
    = let
        loop :: Vote -> Data.ProtoLens.Encoding.Bytes.Parser Vote
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "round"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"round") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "validator_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorIndex") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "signature"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"signature") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "extension"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"extension") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "extension_signature"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionSignature") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Vote"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"round") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                                (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"validatorAddress") _x
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
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"validatorIndex") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"signature") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"extension") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"extensionSignature")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                    _v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData Vote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Vote'type' x__)
                (Control.DeepSeq.deepseq
                   (_Vote'height x__)
                   (Control.DeepSeq.deepseq
                      (_Vote'round x__)
                      (Control.DeepSeq.deepseq
                         (_Vote'blockId x__)
                         (Control.DeepSeq.deepseq
                            (_Vote'timestamp x__)
                            (Control.DeepSeq.deepseq
                               (_Vote'validatorAddress x__)
                               (Control.DeepSeq.deepseq
                                  (_Vote'validatorIndex x__)
                                  (Control.DeepSeq.deepseq
                                     (_Vote'signature x__)
                                     (Control.DeepSeq.deepseq
                                        (_Vote'extension x__)
                                        (Control.DeepSeq.deepseq
                                           (_Vote'extensionSignature x__) ()))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FStendermint/types/types.proto\DC2\DLEtendermint.types\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\GStendermint/crypto/proof.proto\SUB\RStendermint/version/types.proto\SUB tendermint/types/validator.proto\"9\n\
    \\rPartSetHeader\DC2\DC4\n\
    \\ENQtotal\CAN\SOH \SOH(\rR\ENQtotal\DC2\DC2\n\
    \\EOThash\CAN\STX \SOH(\fR\EOThash\"h\n\
    \\EOTPart\DC2\DC4\n\
    \\ENQindex\CAN\SOH \SOH(\rR\ENQindex\DC2\DC4\n\
    \\ENQbytes\CAN\STX \SOH(\fR\ENQbytes\DC24\n\
    \\ENQproof\CAN\ETX \SOH(\v2\CAN.tendermint.crypto.ProofR\ENQproofB\EOT\200\222\US\NUL\"l\n\
    \\aBlockID\DC2\DC2\n\
    \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2M\n\
    \\SIpart_set_header\CAN\STX \SOH(\v2\US.tendermint.types.PartSetHeaderR\rpartSetHeaderB\EOT\200\222\US\NUL\"\230\EOT\n\
    \\ACKHeader\DC2=\n\
    \\aversion\CAN\SOH \SOH(\v2\GS.tendermint.version.ConsensusR\aversionB\EOT\200\222\US\NUL\DC2&\n\
    \\bchain_id\CAN\STX \SOH(\tR\achainIdB\v\226\222\US\aChainID\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC28\n\
    \\EOTtime\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC2C\n\
    \\rlast_block_id\CAN\ENQ \SOH(\v2\EM.tendermint.types.BlockIDR\vlastBlockIdB\EOT\200\222\US\NUL\DC2(\n\
    \\DLElast_commit_hash\CAN\ACK \SOH(\fR\SOlastCommitHash\DC2\ESC\n\
    \\tdata_hash\CAN\a \SOH(\fR\bdataHash\DC2'\n\
    \\SIvalidators_hash\CAN\b \SOH(\fR\SOvalidatorsHash\DC20\n\
    \\DC4next_validators_hash\CAN\t \SOH(\fR\DC2nextValidatorsHash\DC2%\n\
    \\SOconsensus_hash\CAN\n\
    \ \SOH(\fR\rconsensusHash\DC2\EM\n\
    \\bapp_hash\CAN\v \SOH(\fR\aappHash\DC2*\n\
    \\DC1last_results_hash\CAN\f \SOH(\fR\SIlastResultsHash\DC2#\n\
    \\revidence_hash\CAN\r \SOH(\fR\fevidenceHash\DC2)\n\
    \\DLEproposer_address\CAN\SO \SOH(\fR\SIproposerAddress\"\CAN\n\
    \\EOTData\DC2\DLE\n\
    \\ETXtxs\CAN\SOH \ETX(\fR\ETXtxs\"\183\ETX\n\
    \\EOTVote\DC23\n\
    \\EOTtype\CAN\SOH \SOH(\SO2\US.tendermint.types.SignedMsgTypeR\EOTtype\DC2\SYN\n\
    \\ACKheight\CAN\STX \SOH(\ETXR\ACKheight\DC2\DC4\n\
    \\ENQround\CAN\ETX \SOH(\ENQR\ENQround\DC2E\n\
    \\bblock_id\CAN\EOT \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2B\n\
    \\ttimestamp\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2+\n\
    \\DC1validator_address\CAN\ACK \SOH(\fR\DLEvalidatorAddress\DC2'\n\
    \\SIvalidator_index\CAN\a \SOH(\ENQR\SOvalidatorIndex\DC2\FS\n\
    \\tsignature\CAN\b \SOH(\fR\tsignature\DC2\FS\n\
    \\textension\CAN\t \SOH(\fR\textension\DC2/\n\
    \\DC3extension_signature\CAN\n\
    \ \SOH(\fR\DC2extensionSignature\"\192\SOH\n\
    \\ACKCommit\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\DC4\n\
    \\ENQround\CAN\STX \SOH(\ENQR\ENQround\DC2E\n\
    \\bblock_id\CAN\ETX \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2A\n\
    \\n\
    \signatures\CAN\EOT \ETX(\v2\ESC.tendermint.types.CommitSigR\n\
    \signaturesB\EOT\200\222\US\NUL\"\221\SOH\n\
    \\tCommitSig\DC2A\n\
    \\rblock_id_flag\CAN\SOH \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlag\DC2+\n\
    \\DC1validator_address\CAN\STX \SOH(\fR\DLEvalidatorAddress\DC2B\n\
    \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2\FS\n\
    \\tsignature\CAN\EOT \SOH(\fR\tsignature\"\225\SOH\n\
    \\SOExtendedCommit\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\DC4\n\
    \\ENQround\CAN\STX \SOH(\ENQR\ENQround\DC2E\n\
    \\bblock_id\CAN\ETX \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2Z\n\
    \\DC3extended_signatures\CAN\EOT \ETX(\v2#.tendermint.types.ExtendedCommitSigR\DC2extendedSignaturesB\EOT\200\222\US\NUL\"\180\STX\n\
    \\DC1ExtendedCommitSig\DC2A\n\
    \\rblock_id_flag\CAN\SOH \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlag\DC2+\n\
    \\DC1validator_address\CAN\STX \SOH(\fR\DLEvalidatorAddress\DC2B\n\
    \\ttimestamp\CAN\ETX \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2\FS\n\
    \\tsignature\CAN\EOT \SOH(\fR\tsignature\DC2\FS\n\
    \\textension\CAN\ENQ \SOH(\fR\textension\DC2/\n\
    \\DC3extension_signature\CAN\ACK \SOH(\fR\DC2extensionSignature\"\179\STX\n\
    \\bProposal\DC23\n\
    \\EOTtype\CAN\SOH \SOH(\SO2\US.tendermint.types.SignedMsgTypeR\EOTtype\DC2\SYN\n\
    \\ACKheight\CAN\STX \SOH(\ETXR\ACKheight\DC2\DC4\n\
    \\ENQround\CAN\ETX \SOH(\ENQR\ENQround\DC2\ESC\n\
    \\tpol_round\CAN\EOT \SOH(\ENQR\bpolRound\DC2E\n\
    \\bblock_id\CAN\ENQ \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2B\n\
    \\ttimestamp\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\DC2\FS\n\
    \\tsignature\CAN\a \SOH(\fR\tsignature\"r\n\
    \\fSignedHeader\DC20\n\
    \\ACKheader\CAN\SOH \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheader\DC20\n\
    \\ACKcommit\CAN\STX \SOH(\v2\CAN.tendermint.types.CommitR\ACKcommit\"\150\SOH\n\
    \\n\
    \LightBlock\DC2C\n\
    \\rsigned_header\CAN\SOH \SOH(\v2\RS.tendermint.types.SignedHeaderR\fsignedHeader\DC2C\n\
    \\rvalidator_set\CAN\STX \SOH(\v2\RS.tendermint.types.ValidatorSetR\fvalidatorSet\"\194\SOH\n\
    \\tBlockMeta\DC2E\n\
    \\bblock_id\CAN\SOH \SOH(\v2\EM.tendermint.types.BlockIDR\ablockIdB\SI\200\222\US\NUL\226\222\US\aBlockID\DC2\GS\n\
    \\n\
    \block_size\CAN\STX \SOH(\ETXR\tblockSize\DC26\n\
    \\ACKheader\CAN\ETX \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheaderB\EOT\200\222\US\NUL\DC2\ETB\n\
    \\anum_txs\CAN\EOT \SOH(\ETXR\ACKnumTxs\"j\n\
    \\aTxProof\DC2\ESC\n\
    \\troot_hash\CAN\SOH \SOH(\fR\brootHash\DC2\DC2\n\
    \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2.\n\
    \\ENQproof\CAN\ETX \SOH(\v2\CAN.tendermint.crypto.ProofR\ENQproof*\215\SOH\n\
    \\rSignedMsgType\DC2,\n\
    \\ETBSIGNED_MSG_TYPE_UNKNOWN\DLE\NUL\SUB\SI\138\157 \vUnknownType\DC2,\n\
    \\ETBSIGNED_MSG_TYPE_PREVOTE\DLE\SOH\SUB\SI\138\157 \vPrevoteType\DC20\n\
    \\EMSIGNED_MSG_TYPE_PRECOMMIT\DLE\STX\SUB\DC1\138\157 \rPrecommitType\DC2.\n\
    \\CANSIGNED_MSG_TYPE_PROPOSAL\DLE \SUB\DLE\138\157 \fProposalType\SUB\b\136\163\RS\NUL\168\164\RS\SOHB5Z3github.com/cometbft/cometbft/proto/tendermint/typesJ\191\&9\n\
    \\a\DC2\ENQ\NUL\NUL\177\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\EM\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULJ\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL*\n\
    \I\n\
    \\STX\ENQ\NUL\DC2\EOT\f\NUL\ETB\SOH\SUB= SignedMsgType is a type of signed message in the consensus.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\f\ENQ\DC2\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\r\STX2\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\197\228\ETX\DC2\ETX\r\STX2\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\SO\STX3\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\SO\STX3\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\DLE\STXQ\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\DLE\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\DLE\FS\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\ETX\DC2\ETX\DLE\RSP\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\NUL\ETX\209\131\EOT\DC2\ETX\DLE\USO\n\
    \\DC4\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\DC2\STXS\SUB\a Votes\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\DC2\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\DC2\RS\US\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\ETX\DC2\ETX\DC2 R\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\SOH\ETX\209\131\EOT\DC2\ETX\DC2!Q\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\DC3\STXU\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\DC3\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\DC3\RS\US\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\ETX\DC2\ETX\DC3 T\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\STX\ETX\209\131\EOT\DC2\ETX\DC3!S\n\
    \\CAN\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\SYN\STXT\SUB\v Proposals\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\SYN\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\SYN\GS\US\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\ETX\DC2\ETX\SYN S\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\ETX\ETX\209\131\EOT\DC2\ETX\SYN!R\n\
    \\ESC\n\
    \\STX\EOT\NUL\DC2\EOT\SUB\NUL\GS\SOH\SUB\SI PartsetHeader\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\NAK\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\FS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS\DC1\DC2\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\US\NUL#\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\US\b\f\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX \STX$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX \SUB\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX \"#\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX!\STX$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX!\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX!\SUB\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX!\"#\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\"\STXC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\"\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\"\SUB\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\"\"#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX\"$B\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX\"%A\n\
    \\NAK\n\
    \\STX\EOT\STX\DC2\EOT&\NUL)\SOH\SUB\t BlockID\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX&\b\SI\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX'\STX$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX'\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX'\DLE\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'\"#\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX(\STXC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX(\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX(\DLE\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX(\"#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX($B\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX(%A\n\
    \a\n\
    \\STX\EOT\ETX\DC2\EOT.\NULF\SOH\SUB1 Header defines the structure of a block header.\n\
    \2\" --------------------------------\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX.\b\SO\n\
    \\US\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX0\STXK\SUB\DC2 basic block info\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX0\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX0\US&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX0*+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX0,J\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETX0-I\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX1\STXQ\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX1\US'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX1*+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\ETX1,P\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\236\251\ETX\DC2\ETX1-O\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX2\STX,\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX2\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX2\US%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX2*+\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX3\STXg\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\ETX3\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX3\US#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX3*+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\b\DC2\ETX3,f\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ETX\b\233\251\ETX\DC2\ETX3-I\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ETX\b\242\251\ETX\DC2\ETX3Ke\n\
    \\RS\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX6\STX;\SUB\DC1 prev block info\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETX6\STX\t\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX6\n\
    \\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX6\SUB\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\b\DC2\ETX6\FS:\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\233\251\ETX\DC2\ETX6\GS9\n\
    \Q\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX9\STX\GS\SUB\SYN hashes of block data\n\
    \\", commit from validators from the last block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX9\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX9\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX9\ESC\FS\n\
    \\ESC\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETX:\STX\GS\"\SO transactions\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETX:\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETX:\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETX:\ESC\FS\n\
    \a\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETX=\STX!\SUB0 hashes from the app output from the prev block\n\
    \\"\" validators for the current block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\ETX=\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETX=\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETX=\US \n\
    \,\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETX>\STX!\"\US validators for the next block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ENQ\DC2\ETX>\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETX>\b\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETX>\US \n\
    \1\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETX?\STX\"\"$ consensus params for current block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\ETX?\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETX?\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETX?\US!\n\
    \6\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETX@\STX\"\") state after txs from the previous block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ENQ\DC2\ETX@\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETX@\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETX@\US!\n\
    \L\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETXA\STX\"\"? root hash of all results from the txs from the previous block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ENQ\DC2\ETXA\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETXA\b\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETXA\US!\n\
    \?\n\
    \\EOT\EOT\ETX\STX\f\DC2\ETXD\STX\RS\SUB\DLE consensus info\n\
    \\"  evidence included in the block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ENQ\DC2\ETXD\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\ETXD\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\ETXD\ESC\GS\n\
    \-\n\
    \\EOT\EOT\ETX\STX\r\DC2\ETXE\STX\RS\"  original proposer of the block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ENQ\DC2\ETXE\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\SOH\DC2\ETXE\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ETX\DC2\ETXE\ESC\GS\n\
    \I\n\
    \\STX\EOT\EOT\DC2\EOTI\NULN\SOH\SUB= Data contains the set of transactions included in the block\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXI\b\f\n\
    \\202\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXM\STX\EM\SUB\188\SOH Txs that will be applied by state @ block.Height+1.\n\
    \ NOTE: not all txs here are valid.  We're just agreeing on the order first.\n\
    \ This means that block.AppHash does not include these txs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXM\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXM\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXM\ETB\CAN\n\
    \Y\n\
    \\STX\EOT\ENQ\DC2\EOTR\NULf\SOH\SUBM Vote represents a prevote or precommit vote from validators for\n\
    \ consensus.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXR\b\f\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXS\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXS\DLE\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXS\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXT\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXT\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXT\DLE\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXT\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETXU\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETXU\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXU\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXU\ESC\FS\n\
    \$\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOTV\STXWI\"\SYN zero if vote is nil.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\ETXV\STX\t\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXV\DLE\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXV\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\b\DC2\ETXW\ACKH\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\ETX\b\233\251\ETX\DC2\ETXW\a#\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\ETX\b\236\251\ETX\DC2\ETXW%G\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOTX\STXYA\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ACK\DC2\ETXX\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETXX\FS%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETXX()\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\b\DC2\ETXY\ACK@\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\EOT\b\233\251\ETX\DC2\ETXY\a#\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\EOT\b\242\251\ETX\DC2\ETXY%?\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETXZ\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\ETXZ\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETXZ\b\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETXZ\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\ETX[\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ENQ\DC2\ETX[\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\ETX[\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\ETX[\FS\GS\n\
    \k\n\
    \\EOT\EOT\ENQ\STX\a\DC2\ETX^\STX\SYN\SUB^ Vote signature by the validator if they participated in consensus for the\n\
    \ associated block.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ENQ\DC2\ETX^\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\ETX^\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\ETX^\DC4\NAK\n\
    \^\n\
    \\EOT\EOT\ENQ\STX\b\DC2\ETXa\STX\SYN\SUBQ Vote extension provided by the application. Only valid for precommit\n\
    \ messages.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\ENQ\DC2\ETXa\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\SOH\DC2\ETXa\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\ETX\DC2\ETXa\DC4\NAK\n\
    \\154\SOH\n\
    \\EOT\EOT\ENQ\STX\t\DC2\ETXe\STX!\SUB\140\SOH Vote extension signature by the validator if they participated in\n\
    \ consensus for the associated block.\n\
    \ Only valid for precommit messages.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\ENQ\DC2\ETXe\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\SOH\DC2\ETXe\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\ETX\DC2\ETXe\RS \n\
    \]\n\
    \\STX\EOT\ACK\DC2\EOTi\NULn\SOH\SUBQ Commit contains the evidence that a block was committed by a set of validators.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXi\b\SO\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXj\STX$\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXj\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXj\NAK\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXj\"#\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXk\STX$\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXk\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXk\NAK\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXk\"#\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXl\STXg\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETXl\STX\t\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXl\NAK\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXl\"#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\b\DC2\ETXl$f\n\
    \\SI\n\
    \\b\EOT\ACK\STX\STX\b\233\251\ETX\DC2\ETXl%A\n\
    \\SI\n\
    \\b\EOT\ACK\STX\STX\b\236\251\ETX\DC2\ETXlCe\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXm\STXC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\ETXm\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXm\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXm\"#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\b\DC2\ETXm$B\n\
    \\SI\n\
    \\b\EOT\ACK\STX\ETX\b\233\251\ETX\DC2\ETXm%A\n\
    \C\n\
    \\STX\EOT\a\DC2\EOTq\NULw\SOH\SUB7 CommitSig is a part of the Vote included in a Commit.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXq\b\DC1\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXr\STX5\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXr\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXr\US,\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXr34\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXs\STX5\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXs\STX\a\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXs\US0\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXs34\n\
    \\f\n\
    \\EOT\EOT\a\STX\STX\DC2\EOTt\STXuA\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\ETXt\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXt\US(\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXt34\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\b\DC2\ETXu\ACK@\n\
    \\SI\n\
    \\b\EOT\a\STX\STX\b\233\251\ETX\DC2\ETXu\a#\n\
    \\SI\n\
    \\b\EOT\a\STX\STX\b\242\251\ETX\DC2\ETXu%?\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETXv\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETXv\STX\a\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETXv\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETXv\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTy\NUL\DEL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXy\b\SYN\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXz\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXz\STX\a\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXz\n\
    \\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXz\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX{\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETX{\STX\a\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX{\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX{\NAK\SYN\n\
    \\f\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT|\STX}I\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\ETX|\STX\t\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETX|\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETX|\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\ETX}\ACKH\n\
    \\SI\n\
    \\b\EOT\b\STX\STX\b\233\251\ETX\DC2\ETX}\a#\n\
    \\SI\n\
    \\b\EOT\b\STX\STX\b\236\251\ETX\DC2\ETX}%G\n\
    \\v\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETX~\STXT\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\ETX~\v\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETX~\GS0\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETX~34\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\ETX~5S\n\
    \\SI\n\
    \\b\EOT\b\STX\ETX\b\233\251\ETX\DC2\ETX~6R\n\
    \\255\SOH\n\
    \\STX\EOT\t\DC2\ACK\132\SOH\NUL\142\SOH\SOH\SUB\240\SOH ExtendedCommitSig retains all the same fields as CommitSig but adds vote\n\
    \ extension-related fields. We use two signatures to ensure backwards compatibility.\n\
    \ That is the digest of the original signature is still the same in prior versions\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\132\SOH\b\EM\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\133\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\133\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\133\SOH\US,\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\133\SOH34\n\
    \\f\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\134\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\134\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\134\SOH\US0\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\134\SOH34\n\
    \\SO\n\
    \\EOT\EOT\t\STX\STX\DC2\ACK\135\SOH\STX\136\SOHA\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ACK\DC2\EOT\135\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\135\SOH\US(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\135\SOH34\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\b\DC2\EOT\136\SOH\ACK@\n\
    \\DLE\n\
    \\b\EOT\t\STX\STX\b\233\251\ETX\DC2\EOT\136\SOH\a#\n\
    \\DLE\n\
    \\b\EOT\t\STX\STX\b\242\251\ETX\DC2\EOT\136\SOH%?\n\
    \\f\n\
    \\EOT\EOT\t\STX\ETX\DC2\EOT\137\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ENQ\DC2\EOT\137\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\EOT\137\SOH\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\EOT\137\SOH\DC4\NAK\n\
    \#\n\
    \\EOT\EOT\t\STX\EOT\DC2\EOT\139\SOH\STX\SYN\SUB\NAK Vote extension data\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ENQ\DC2\EOT\139\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\SOH\DC2\EOT\139\SOH\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\STX\EOT\ETX\DC2\EOT\139\SOH\DC4\NAK\n\
    \(\n\
    \\EOT\EOT\t\STX\ENQ\DC2\EOT\141\SOH\STX \SUB\SUB Vote extension signature\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\ENQ\DC2\EOT\141\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\SOH\DC2\EOT\141\SOH\b\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ENQ\ETX\DC2\EOT\141\SOH\RS\US\n\
    \\f\n\
    \\STX\EOT\n\
    \\DC2\ACK\144\SOH\NUL\153\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\144\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\145\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\EOT\145\SOH\STX\SI\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\145\SOH\FS \n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\145\SOH()\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\146\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\146\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\146\SOH\FS\"\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\146\SOH()\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\147\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\147\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\147\SOH\FS!\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\147\SOH()\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\148\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\148\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\148\SOH\FS%\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\148\SOH()\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\EOT\149\SOH\STXm\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ACK\DC2\EOT\149\SOH\STX\t\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\EOT\149\SOH\FS$\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\149\SOH()\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\b\DC2\EOT\149\SOH*l\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\EOT\b\236\251\ETX\DC2\EOT\149\SOH+M\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\EOT\b\233\251\ETX\DC2\EOT\149\SOHOk\n\
    \\SO\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\ACK\150\SOH\STX\151\SOHA\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ACK\DC2\EOT\150\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\EOT\150\SOH\FS%\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\EOT\150\SOH()\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\b\DC2\EOT\151\SOH\ACK@\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\ENQ\b\233\251\ETX\DC2\EOT\151\SOH\a#\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\ENQ\b\242\251\ETX\DC2\EOT\151\SOH%?\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\ACK\DC2\EOT\152\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ENQ\DC2\EOT\152\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ACK\SOH\DC2\EOT\152\SOH\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ETX\DC2\EOT\152\SOH\DC4\NAK\n\
    \\f\n\
    \\STX\EOT\v\DC2\ACK\155\SOH\NUL\158\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\155\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\156\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\156\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\156\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\156\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\157\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ACK\DC2\EOT\157\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\157\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\157\SOH\DC2\DC3\n\
    \\f\n\
    \\STX\EOT\f\DC2\ACK\160\SOH\NUL\163\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\160\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\161\SOH\STX2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\161\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\161\SOH -\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\161\SOH01\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\162\SOH\STX2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\162\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\162\SOH -\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\162\SOH01\n\
    \\f\n\
    \\STX\EOT\r\DC2\ACK\165\SOH\NUL\170\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\165\SOH\b\DC1\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\166\SOH\STX\\\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\166\SOH\STX\t\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\166\SOH\n\
    \\DC2\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\166\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\166\SOH\EM[\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\236\251\ETX\DC2\EOT\166\SOH\SUB<\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\233\251\ETX\DC2\EOT\166\SOH>Z\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\167\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\167\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\167\SOH\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\167\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\168\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ACK\DC2\EOT\168\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\168\SOH\n\
    \\DLE\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\168\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\b\DC2\EOT\168\SOH\EM7\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\233\251\ETX\DC2\EOT\168\SOH\SUB6\n\
    \\f\n\
    \\EOT\EOT\r\STX\ETX\DC2\EOT\169\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\EOT\169\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\169\SOH\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\169\SOH\ETB\CAN\n\
    \f\n\
    \\STX\EOT\SO\DC2\ACK\173\SOH\NUL\177\SOH\SOH\SUBX TxProof represents a Merkle proof of the presence of a transaction in the Merkle tree.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\173\SOH\b\SI\n\
    \\f\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\174\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\174\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\174\SOH\SUB#\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\174\SOH&'\n\
    \\f\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\175\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\175\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\175\SOH\SUB\RS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\175\SOH&'\n\
    \\f\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\176\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ACK\DC2\EOT\176\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\176\SOH\SUB\US\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\176\SOH&'b\ACKproto3"