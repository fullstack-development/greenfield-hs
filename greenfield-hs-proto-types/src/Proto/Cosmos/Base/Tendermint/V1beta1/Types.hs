{- This file was auto-generated from cosmos/base/tendermint/v1beta1/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Tendermint.V1beta1.Types (
        Block(), Header()
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
import qualified Proto.Amino.Amino
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Tendermint.Types.Evidence
import qualified Proto.Tendermint.Types.Types
import qualified Proto.Tendermint.Version.Types
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.header' @:: Lens' Block Header@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.maybe'header' @:: Lens' Block (Prelude.Maybe Header)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.data'' @:: Lens' Block Proto.Tendermint.Types.Types.Data@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.maybe'data'' @:: Lens' Block (Prelude.Maybe Proto.Tendermint.Types.Types.Data)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.evidence' @:: Lens' Block Proto.Tendermint.Types.Evidence.EvidenceList@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.maybe'evidence' @:: Lens' Block (Prelude.Maybe Proto.Tendermint.Types.Evidence.EvidenceList)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.lastCommit' @:: Lens' Block Proto.Tendermint.Types.Types.Commit@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.maybe'lastCommit' @:: Lens' Block (Prelude.Maybe Proto.Tendermint.Types.Types.Commit)@ -}
data Block
  = Block'_constructor {_Block'header :: !(Prelude.Maybe Header),
                        _Block'data' :: !(Prelude.Maybe Proto.Tendermint.Types.Types.Data),
                        _Block'evidence :: !(Prelude.Maybe Proto.Tendermint.Types.Evidence.EvidenceList),
                        _Block'lastCommit :: !(Prelude.Maybe Proto.Tendermint.Types.Types.Commit),
                        _Block'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Block where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Block "header" Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'header (\ x__ y__ -> x__ {_Block'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Block "maybe'header" (Prelude.Maybe Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'header (\ x__ y__ -> x__ {_Block'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Block "data'" Proto.Tendermint.Types.Types.Data where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'data' (\ x__ y__ -> x__ {_Block'data' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Block "maybe'data'" (Prelude.Maybe Proto.Tendermint.Types.Types.Data) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'data' (\ x__ y__ -> x__ {_Block'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Block "evidence" Proto.Tendermint.Types.Evidence.EvidenceList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'evidence (\ x__ y__ -> x__ {_Block'evidence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Block "maybe'evidence" (Prelude.Maybe Proto.Tendermint.Types.Evidence.EvidenceList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'evidence (\ x__ y__ -> x__ {_Block'evidence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Block "lastCommit" Proto.Tendermint.Types.Types.Commit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'lastCommit (\ x__ y__ -> x__ {_Block'lastCommit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Block "maybe'lastCommit" (Prelude.Maybe Proto.Tendermint.Types.Types.Commit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'lastCommit (\ x__ y__ -> x__ {_Block'lastCommit = y__}))
        Prelude.id
instance Data.ProtoLens.Message Block where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.Block"
  packedMessageDescriptor _
    = "\n\
      \\ENQBlock\DC2I\n\
      \\ACKheader\CAN\SOH \SOH(\v2&.cosmos.base.tendermint.v1beta1.HeaderR\ACKheaderB\t\200\222\US\NUL\168\231\176*\SOH\DC25\n\
      \\EOTdata\CAN\STX \SOH(\v2\SYN.tendermint.types.DataR\EOTdataB\t\200\222\US\NUL\168\231\176*\SOH\DC2E\n\
      \\bevidence\CAN\ETX \SOH(\v2\RS.tendermint.types.EvidenceListR\bevidenceB\t\200\222\US\NUL\168\231\176*\SOH\DC29\n\
      \\vlast_commit\CAN\EOT \SOH(\v2\CAN.tendermint.types.CommitR\n\
      \lastCommit"
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
              Data.ProtoLens.FieldDescriptor Block
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.Data)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'data'")) ::
              Data.ProtoLens.FieldDescriptor Block
        evidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Evidence.EvidenceList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'evidence")) ::
              Data.ProtoLens.FieldDescriptor Block
        lastCommit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.Commit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lastCommit")) ::
              Data.ProtoLens.FieldDescriptor Block
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor),
           (Data.ProtoLens.Tag 3, evidence__field_descriptor),
           (Data.ProtoLens.Tag 4, lastCommit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Block'_unknownFields
        (\ x__ y__ -> x__ {_Block'_unknownFields = y__})
  defMessage
    = Block'_constructor
        {_Block'header = Prelude.Nothing, _Block'data' = Prelude.Nothing,
         _Block'evidence = Prelude.Nothing,
         _Block'lastCommit = Prelude.Nothing, _Block'_unknownFields = []}
  parseMessage
    = let
        loop :: Block -> Data.ProtoLens.Encoding.Bytes.Parser Block
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
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "evidence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"evidence") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "last_commit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastCommit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Block"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'data'") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'evidence") _x
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
                             (Data.ProtoLens.Field.field @"maybe'lastCommit") _x
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
instance Control.DeepSeq.NFData Block where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Block'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Block'header x__)
                (Control.DeepSeq.deepseq
                   (_Block'data' x__)
                   (Control.DeepSeq.deepseq
                      (_Block'evidence x__)
                      (Control.DeepSeq.deepseq (_Block'lastCommit x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.version' @:: Lens' Header Proto.Tendermint.Version.Types.Consensus@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.maybe'version' @:: Lens' Header (Prelude.Maybe Proto.Tendermint.Version.Types.Consensus)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.chainId' @:: Lens' Header Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.height' @:: Lens' Header Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.time' @:: Lens' Header Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.maybe'time' @:: Lens' Header (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.lastBlockId' @:: Lens' Header Proto.Tendermint.Types.Types.BlockID@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.maybe'lastBlockId' @:: Lens' Header (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.lastCommitHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.dataHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.validatorsHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.nextValidatorsHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.consensusHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.appHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.lastResultsHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.evidenceHash' @:: Lens' Header Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Types_Fields.proposerAddress' @:: Lens' Header Data.Text.Text@ -}
data Header
  = Header'_constructor {_Header'version :: !(Prelude.Maybe Proto.Tendermint.Version.Types.Consensus),
                         _Header'chainId :: !Data.Text.Text,
                         _Header'height :: !Data.Int.Int64,
                         _Header'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                         _Header'lastBlockId :: !(Prelude.Maybe Proto.Tendermint.Types.Types.BlockID),
                         _Header'lastCommitHash :: !Data.ByteString.ByteString,
                         _Header'dataHash :: !Data.ByteString.ByteString,
                         _Header'validatorsHash :: !Data.ByteString.ByteString,
                         _Header'nextValidatorsHash :: !Data.ByteString.ByteString,
                         _Header'consensusHash :: !Data.ByteString.ByteString,
                         _Header'appHash :: !Data.ByteString.ByteString,
                         _Header'lastResultsHash :: !Data.ByteString.ByteString,
                         _Header'evidenceHash :: !Data.ByteString.ByteString,
                         _Header'proposerAddress :: !Data.Text.Text,
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
instance Data.ProtoLens.Field.HasField Header "lastBlockId" Proto.Tendermint.Types.Types.BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'lastBlockId (\ x__ y__ -> x__ {_Header'lastBlockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Header "maybe'lastBlockId" (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID) where
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
instance Data.ProtoLens.Field.HasField Header "proposerAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Header'proposerAddress
           (\ x__ y__ -> x__ {_Header'proposerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message Header where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.Header"
  packedMessageDescriptor _
    = "\n\
      \\ACKHeader\DC2B\n\
      \\aversion\CAN\SOH \SOH(\v2\GS.tendermint.version.ConsensusR\aversionB\t\200\222\US\NUL\168\231\176*\SOH\DC2&\n\
      \\bchain_id\CAN\STX \SOH(\tR\achainIdB\v\226\222\US\aChainID\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2=\n\
      \\EOTtime\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2H\n\
      \\rlast_block_id\CAN\ENQ \SOH(\v2\EM.tendermint.types.BlockIDR\vlastBlockIdB\t\200\222\US\NUL\168\231\176*\SOH\DC2(\n\
      \\DLElast_commit_hash\CAN\ACK \SOH(\fR\SOlastCommitHash\DC2\ESC\n\
      \\tdata_hash\CAN\a \SOH(\fR\bdataHash\DC2'\n\
      \\SIvalidators_hash\CAN\b \SOH(\fR\SOvalidatorsHash\DC20\n\
      \\DC4next_validators_hash\CAN\t \SOH(\fR\DC2nextValidatorsHash\DC2%\n\
      \\SOconsensus_hash\CAN\n\
      \ \SOH(\fR\rconsensusHash\DC2\EM\n\
      \\bapp_hash\CAN\v \SOH(\fR\aappHash\DC2*\n\
      \\DC1last_results_hash\CAN\f \SOH(\fR\SIlastResultsHash\DC2#\n\
      \\revidence_hash\CAN\r \SOH(\fR\fevidenceHash\DC2)\n\
      \\DLEproposer_address\CAN\SO \SOH(\tR\SIproposerAddress"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.BlockID)
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
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
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
                                                             ((Prelude..)
                                                                (\ bs
                                                                   -> (Data.Monoid.<>)
                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                           (Prelude.fromIntegral
                                                                              (Data.ByteString.length
                                                                                 bs)))
                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                           bs))
                                                                Data.Text.Encoding.encodeUtf8 _v))
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
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*cosmos/base/tendermint/v1beta1/types.proto\DC2\RScosmos.base.tendermint.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\FStendermint/types/types.proto\SUB\UStendermint/types/evidence.proto\SUB\RStendermint/version/types.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\DC1amino/amino.proto\"\139\STX\n\
    \\ENQBlock\DC2I\n\
    \\ACKheader\CAN\SOH \SOH(\v2&.cosmos.base.tendermint.v1beta1.HeaderR\ACKheaderB\t\200\222\US\NUL\168\231\176*\SOH\DC25\n\
    \\EOTdata\CAN\STX \SOH(\v2\SYN.tendermint.types.DataR\EOTdataB\t\200\222\US\NUL\168\231\176*\SOH\DC2E\n\
    \\bevidence\CAN\ETX \SOH(\v2\RS.tendermint.types.EvidenceListR\bevidenceB\t\200\222\US\NUL\168\231\176*\SOH\DC29\n\
    \\vlast_commit\CAN\EOT \SOH(\v2\CAN.tendermint.types.CommitR\n\
    \lastCommit\"\245\EOT\n\
    \\ACKHeader\DC2B\n\
    \\aversion\CAN\SOH \SOH(\v2\GS.tendermint.version.ConsensusR\aversionB\t\200\222\US\NUL\168\231\176*\SOH\DC2&\n\
    \\bchain_id\CAN\STX \SOH(\tR\achainIdB\v\226\222\US\aChainID\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2=\n\
    \\EOTtime\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2H\n\
    \\rlast_block_id\CAN\ENQ \SOH(\v2\EM.tendermint.types.BlockIDR\vlastBlockIdB\t\200\222\US\NUL\168\231\176*\SOH\DC2(\n\
    \\DLElast_commit_hash\CAN\ACK \SOH(\fR\SOlastCommitHash\DC2\ESC\n\
    \\tdata_hash\CAN\a \SOH(\fR\bdataHash\DC2'\n\
    \\SIvalidators_hash\CAN\b \SOH(\fR\SOvalidatorsHash\DC20\n\
    \\DC4next_validators_hash\CAN\t \SOH(\fR\DC2nextValidatorsHash\DC2%\n\
    \\SOconsensus_hash\CAN\n\
    \ \SOH(\fR\rconsensusHash\DC2\EM\n\
    \\bapp_hash\CAN\v \SOH(\fR\aappHash\DC2*\n\
    \\DC1last_results_hash\CAN\f \SOH(\fR\SIlastResultsHash\DC2#\n\
    \\revidence_hash\CAN\r \SOH(\fR\fevidenceHash\DC2)\n\
    \\DLEproposer_address\CAN\SO \SOH(\tR\SIproposerAddressB5Z3github.com/cosmos/cosmos-sdk/client/grpc/cmtserviceJ\156\DC2\n\
    \\ACK\DC2\EOT\NUL\NUL3\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL'\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULJ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NULJ\n\
    \q\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL\DC3\SOH\SUBe Block is tendermint type Block, with the Header proposer address\n\
    \ field converted to bech32 string.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\r\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STXo\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI!'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SI1n\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\SI2N\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\SIPm\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\STXo\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DLE\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE!%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DLE1n\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DLE2N\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\DLEPm\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC1\STXo\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DC1\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC1!)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC1/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\DC11n\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\DC12N\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX\DC1Pm\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC2\STX1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\DC2\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC2!,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC2/0\n\
    \H\n\
    \\STX\EOT\SOH\DC2\EOT\SYN\NUL3\SOH\SUB< Header defines the structure of a Tendermint block header.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SYN\b\SO\n\
    \\US\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\CAN\STXk\SUB\DC2 basic block info\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\CAN\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\CAN '\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\CAN+,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\CAN-j\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX\CAN.J\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX\CANLi\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\EM\STXR\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\EM (\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\EM+,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\EM-Q\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\236\251\ETX\DC2\ETX\EM.P\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SUB\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SUB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SUB &\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SUB+,\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\ESC\STX\FS`\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX\ESC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\ESC $\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\ESC+,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\ETX\FS\ACK_\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\233\251\ETX\DC2\ETX\FS\a#\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\ETX\b\245\140\166\ENQ\DC2\ETX\FS%B\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\242\251\ETX\DC2\ETX\FSD^\n\
    \\RS\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\US\STXl\SUB\DC1 prev block info\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX\US\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\US\FS)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\US,-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETX\US.k\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\233\251\ETX\DC2\ETX\US/K\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\EOT\b\245\140\166\ENQ\DC2\ETX\USMj\n\
    \Q\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\"\STX\GS\SUB\SYN hashes of block data\n\
    \\", commit from validators from the last block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\"\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\"\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\"\ESC\FS\n\
    \\ESC\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX#\STX\GS\"\SO transactions\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX#\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX#\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX#\ESC\FS\n\
    \a\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX&\STX!\SUB0 hashes from the app output from the prev block\n\
    \\"\" validators for the current block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX&\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX&\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX&\US \n\
    \,\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX'\STX!\"\US validators for the next block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETX'\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX'\b\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX'\US \n\
    \1\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETX(\STX\"\"$ consensus params for current block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\ETX(\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETX(\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETX(\US!\n\
    \6\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETX)\STX\"\") state after txs from the previous block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ENQ\DC2\ETX)\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETX)\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETX)\US!\n\
    \L\n\
    \\EOT\EOT\SOH\STX\v\DC2\ETX*\STX\"\"? root hash of all results from the txs from the previous block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ENQ\DC2\ETX*\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\ETX*\b\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\ETX*\US!\n\
    \?\n\
    \\EOT\EOT\SOH\STX\f\DC2\ETX-\STX\ESC\SUB\DLE consensus info\n\
    \\"  evidence included in the block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ENQ\DC2\ETX-\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\ETX-\b\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\ETX-\CAN\SUB\n\
    \\239\SOH\n\
    \\EOT\EOT\SOH\STX\r\DC2\ETX2\STX\US\SUB\191\SOH proposer_address is the original block proposer address, formatted as a Bech32 string.\n\
    \ In Tendermint, this type is `bytes`, but in the SDK, we convert it to a Bech32 string\n\
    \ for better UX.\n\
    \\"  original proposer of the block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\ETX2\t\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\ETX2\FS\RSb\ACKproto3"