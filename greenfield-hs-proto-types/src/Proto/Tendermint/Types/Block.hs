{- This file was auto-generated from tendermint/types/block.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Block (
        Block()
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
import qualified Proto.Tendermint.Types.Evidence
import qualified Proto.Tendermint.Types.Types
{- | Fields :
     
         * 'Proto.Tendermint.Types.Block_Fields.header' @:: Lens' Block Proto.Tendermint.Types.Types.Header@
         * 'Proto.Tendermint.Types.Block_Fields.maybe'header' @:: Lens' Block (Prelude.Maybe Proto.Tendermint.Types.Types.Header)@
         * 'Proto.Tendermint.Types.Block_Fields.data'' @:: Lens' Block Proto.Tendermint.Types.Types.Data@
         * 'Proto.Tendermint.Types.Block_Fields.maybe'data'' @:: Lens' Block (Prelude.Maybe Proto.Tendermint.Types.Types.Data)@
         * 'Proto.Tendermint.Types.Block_Fields.evidence' @:: Lens' Block Proto.Tendermint.Types.Evidence.EvidenceList@
         * 'Proto.Tendermint.Types.Block_Fields.maybe'evidence' @:: Lens' Block (Prelude.Maybe Proto.Tendermint.Types.Evidence.EvidenceList)@
         * 'Proto.Tendermint.Types.Block_Fields.lastCommit' @:: Lens' Block Proto.Tendermint.Types.Types.Commit@
         * 'Proto.Tendermint.Types.Block_Fields.maybe'lastCommit' @:: Lens' Block (Prelude.Maybe Proto.Tendermint.Types.Types.Commit)@ -}
data Block
  = Block'_constructor {_Block'header :: !(Prelude.Maybe Proto.Tendermint.Types.Types.Header),
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
instance Data.ProtoLens.Field.HasField Block "header" Proto.Tendermint.Types.Types.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Block'header (\ x__ y__ -> x__ {_Block'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Block "maybe'header" (Prelude.Maybe Proto.Tendermint.Types.Types.Header) where
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
  messageName _ = Data.Text.pack "tendermint.types.Block"
  packedMessageDescriptor _
    = "\n\
      \\ENQBlock\DC26\n\
      \\ACKheader\CAN\SOH \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheaderB\EOT\200\222\US\NUL\DC20\n\
      \\EOTdata\CAN\STX \SOH(\v2\SYN.tendermint.types.DataR\EOTdataB\EOT\200\222\US\NUL\DC2@\n\
      \\bevidence\CAN\ETX \SOH(\v2\RS.tendermint.types.EvidenceListR\bevidenceB\EOT\200\222\US\NUL\DC29\n\
      \\vlast_commit\CAN\EOT \SOH(\v2\CAN.tendermint.types.CommitR\n\
      \lastCommit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.Header)
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
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FStendermint/types/block.proto\DC2\DLEtendermint.types\SUB\DC4gogoproto/gogo.proto\SUB\FStendermint/types/types.proto\SUB\UStendermint/types/evidence.proto\"\238\SOH\n\
    \\ENQBlock\DC26\n\
    \\ACKheader\CAN\SOH \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheaderB\EOT\200\222\US\NUL\DC20\n\
    \\EOTdata\CAN\STX \SOH(\v2\SYN.tendermint.types.DataR\EOTdataB\EOT\200\222\US\NUL\DC2@\n\
    \\bevidence\CAN\ETX \SOH(\v2\RS.tendermint.types.EvidenceListR\bevidenceB\EOT\200\222\US\NUL\DC29\n\
    \\vlast_commit\CAN\EOT \SOH(\v2\CAN.tendermint.types.CommitR\n\
    \lastCommitB5Z3github.com/cometbft/cometbft/proto/tendermint/typesJ\163\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\SO\SOH\n\
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
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL)\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\t\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\r\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\STXO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\n\
    \\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \ &\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \./\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\n\
    \0N\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\n\
    \1M\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\v\STXO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\v\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\v $\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\v./\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\v0N\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\v1M\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\f\STXO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\f\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\f (\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\f./\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\f0N\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\f1M\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\r\STX0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\r +\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\r./b\ACKproto3"